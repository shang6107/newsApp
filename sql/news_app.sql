/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : news_app

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-01 22:59:58
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
INSERT INTO `app_data_count` VALUES ('27d4e36d8dd74843a049a756a50da679', '/test/management/root_index.html', '/test/login', 'minutes', '10', '2018-03-31 20:00:45', '1', '3');
INSERT INTO `app_data_count` VALUES ('df85ad7a35074bcaa040a4b504b13f2e', '/test/management/user-list', '/test/management/user-list', 'minutes', '2', '2018-03-31 20:01:44', '1', '1');
INSERT INTO `app_data_count` VALUES ('b6addce5195442418a1000b041ab1b8a', null, null, 'minutes', '0', '2018-03-31 20:02:44', '0', '0');
INSERT INTO `app_data_count` VALUES ('1f0c5429556f449e8c94496cf5200cbd', '/test/management/user-list', '/test/login', 'minutes', '16', '2018-03-31 20:56:47', '1', '4');
INSERT INTO `app_data_count` VALUES ('ef298ede950d43c9bbc3ae78da3d5bef', null, null, 'minutes', '0', '2018-03-31 20:57:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('60beb3111fde4a07a0fcec38e4185974', null, null, 'minutes', '0', '2018-03-31 20:58:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('622db10332c8468bbb2fef40f8d37eb1', null, null, 'minutes', '0', '2018-03-31 20:59:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('ea0aa10e1cd944d181deb1ce8340fd30', null, null, 'minutes', '0', '2018-03-31 21:00:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('fa69d2cbe41149329ebf4b0cde5c3518', null, null, 'minutes', '0', '2018-03-31 21:01:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('7cff6b13665c464397fca8e9928f13bf', null, null, 'minutes', '0', '2018-03-31 21:02:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('d7d6f83e405944909086e6701713fa2a', null, null, 'minutes', '0', '2018-03-31 21:03:05', '100', '0');
INSERT INTO `app_data_count` VALUES ('c597aebb29664449a0d1f055aeba62cb', '/test/management/news_search_engine.html', '/test/login', 'minutes', '9', '2018-03-31 23:04:04', '1', '2');
INSERT INTO `app_data_count` VALUES ('a6121057f8b945a0aaf76af8de593526', '/test/management/user-list', '/test/management/news_search_engine.html', 'minutes', '11', '2018-03-31 23:04:41', '1', '3');
INSERT INTO `app_data_count` VALUES ('3886a78a8321457dba86e468450e0e4f', '/test/login', '/test/login', 'minutes', '4', '2018-03-31 23:18:19', '1', '1');
INSERT INTO `app_data_count` VALUES ('a4a4d9732c954345a4f6a74b6bba8d88', '/test/login', '/test/login', 'minutes', '3', '2018-03-31 23:20:48', '1', '1');
INSERT INTO `app_data_count` VALUES ('217cd517df9a493fa2c80708235b12ba', null, null, 'minutes', '0', '2018-03-31 23:21:48', '0', '0');
INSERT INTO `app_data_count` VALUES ('2631fdfd63c84864b507c58fcd6cd746', null, null, 'minutes', '0', '2018-03-31 23:21:57', '100', '0');
INSERT INTO `app_data_count` VALUES ('af88b175d4844730aac84339f77d4ad2', '/test/login', '/test/login', 'minutes', '2', '2018-03-31 23:22:49', '2', '2');
INSERT INTO `app_data_count` VALUES ('e8a1823a95a64f308dfdd60ed98be528', '/test/login', '/test/login', 'minutes', '2', '2018-03-31 23:24:12', '1', '1');
INSERT INTO `app_data_count` VALUES ('b35019eedaa94c36a906819be86f185b', null, null, 'minutes', '0', '2018-03-31 23:24:30', '100', '0');
INSERT INTO `app_data_count` VALUES ('ac9faacdf1d94096bb5e7b58cbef0a74', '/test/management/root_index.html', '/test/login', 'minutes', '6', '2018-03-31 23:26:39', '1', '2');
INSERT INTO `app_data_count` VALUES ('9bed135fe81644abb79ae8402cebac70', null, null, 'minutes', '0', '2018-03-31 23:27:25', '100', '0');
INSERT INTO `app_data_count` VALUES ('f2a47a5fe7094044ab4b45f09b3e0d75', '/test/login', '/test/login', 'minutes', '3', '2018-03-31 23:33:14', '1', '1');
INSERT INTO `app_data_count` VALUES ('7daea2485253421aa65a38dbe50f1329', null, null, 'minutes', '0', '2018-03-31 23:34:14', '0', '0');
INSERT INTO `app_data_count` VALUES ('136d842a19664e48bf67c60f8279cd3f', null, null, 'minutes', '0', '2018-03-31 23:35:10', '100', '0');
INSERT INTO `app_data_count` VALUES ('421bd6ce51f643ab829731c36eb8e912', '/test/login', '/test/login', 'minutes', '2', '2018-03-31 23:37:09', '1', '1');
INSERT INTO `app_data_count` VALUES ('28618e763adb4bbc960a8fcb98ce3fe4', '/test/management/root_index.html', '/test/login', 'minutes', '4', '2018-03-31 23:52:03', '1', '2');
INSERT INTO `app_data_count` VALUES ('8076ba4d1e614692afb8679c9351051e', null, null, 'minutes', '0', '2018-04-01 13:41:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('f65dc4ccb252467e9e87c12da8bcd6b9', null, null, 'minutes', '0', '2018-04-01 13:42:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('f6a4d44c70924a8d91ae56ba1498dfe4', null, null, 'minutes', '0', '2018-04-01 13:43:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('8083dff851ce49229c2a6100eaac4469', '/test/management/login', '/test/management/login', 'minutes', '1', '2018-04-01 13:44:40', '1', '1');
INSERT INTO `app_data_count` VALUES ('59b53e398e6c4b08b53802392610db8f', null, null, 'minutes', '0', '2018-04-01 13:45:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('d83d60058a744fc98e41be5fdd3bdad1', '/test/management/static/css1/layout.css', '/test/test/management/login', 'minutes', '18', '2018-04-01 13:46:40', '1', '3');
INSERT INTO `app_data_count` VALUES ('fb65f9e7f673431093d238775f33a1bf', '/test/management/static/js/jquery.js', '/test/management/static/img/login-bg.png', 'minutes', '21', '2018-04-01 13:47:40', '1', '4');
INSERT INTO `app_data_count` VALUES ('de775a7405ec47deae441be130850107', '/test/management/static/js/Validform_v5.3.2_min.js', '/test/login', 'minutes', '18', '2018-04-01 13:48:40', '1', '3');
INSERT INTO `app_data_count` VALUES ('9e7661c823dd4664a355b341314e430b', '/test/management/static/img/logo.png', '/test/login', 'minutes', '59', '2018-04-01 13:49:40', '1', '4');
INSERT INTO `app_data_count` VALUES ('0e170a9fa35041f9b05523fbc5b7c688', '/test/management/static/js/select.js', '/test/login', 'minutes', '108', '2018-04-01 13:50:40', '1', '6');
INSERT INTO `app_data_count` VALUES ('ea97c518c0484c39a120d3c8310ea642', '/test/management/static/js/select.js', '/test/management/static/js/Validform_v5.3.2_min.js', 'minutes', '91', '2018-04-01 13:51:40', '1', '5');
INSERT INTO `app_data_count` VALUES ('9fa89e94eed44f98a29afb8f0c2e38f2', null, null, 'minutes', '0', '2018-04-01 13:52:03', '100', '0');
INSERT INTO `app_data_count` VALUES ('476b16fba6d04ddba03d5ebdb70a6d3b', '/test/management/news_search_engine.html', '/test/management/news_search_engine.html', 'minutes', '4', '2018-04-01 14:05:00', '1', '1');
INSERT INTO `app_data_count` VALUES ('fc28e2c5fbf74f388a204c0ad65b8335', null, null, 'minutes', '0', '2018-04-01 14:05:47', '100', '0');
INSERT INTO `app_data_count` VALUES ('c20ca8b06e374bba8bf8629307b520ae', '/test/management/login', '/test/management/manager_home.html', 'hour', '3', '2018-04-01 14:23:26', '1', '2');
INSERT INTO `app_data_count` VALUES ('b0ce236c88164e82b34d806d49f784d1', '/test/management/login', '/test/management/root_index.html', 'hour', '4', '2018-04-01 14:25:18', '1', '2');
INSERT INTO `app_data_count` VALUES ('fa6f5a9aae2241d9a55bce05d4c14872', null, null, 'hour', '0', '2018-04-01 14:25:22', '100', '0');
INSERT INTO `app_data_count` VALUES ('5b1a6d5bac34473484021d7a957f8943', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '1', '2018-04-01 14:51:29', '1', '1');
INSERT INTO `app_data_count` VALUES ('46d1f6b5fdf641a1a7f2d6e2800d7fbb', '/test/management/news_list.html', '/test/management/news_list.html', 'hour', '4', '2018-04-01 14:52:48', '1', '1');
INSERT INTO `app_data_count` VALUES ('67c55cbdcc284e269eb3561c4408e5b1', '/test/management/root_index.html', '/test/management/root_index.html', 'hour', '3', '2018-04-01 14:54:07', '1', '1');
INSERT INTO `app_data_count` VALUES ('fa07cb1dbba64d1d96c575575aeb45bc', '/test/management/manager_management.html', '/test/ajax/user-list', 'hour', '9', '2018-04-01 15:04:07', '1', '6');
INSERT INTO `app_data_count` VALUES ('c845784cc846407bb512e9d200d52401', null, null, 'hour', '0', '2018-04-01 15:14:07', '0', '0');
INSERT INTO `app_data_count` VALUES ('65ef6d67a5104bab90ef15e16610fefa', '/test/management/manager_management.html', '/test/ajax/user-list', 'hour', '9', '2018-04-01 15:24:07', '1', '8');
INSERT INTO `app_data_count` VALUES ('5a56f64b7e8e4e90ae80ccfc53859423', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '3', '2018-04-01 15:26:29', '3', '3');
INSERT INTO `app_data_count` VALUES ('7505f9cae65a41b6a0cf4d746788839b', '/test/ajax//manager-list', '/test/ajax//manager-list', 'hour', '1', '2018-04-01 15:46:12', '1', '1');
INSERT INTO `app_data_count` VALUES ('e009416bd0364391a0eddb9d399b05ac', '/test/management/manager_management.html', '/test/management/root_index.html', 'hour', '13', '2018-04-01 15:56:12', '1', '6');
INSERT INTO `app_data_count` VALUES ('bc9c4efe239c421d967d8caeb55caae5', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '24', '2018-04-01 16:06:13', '12', '12');
INSERT INTO `app_data_count` VALUES ('8504e108e6d6447c8e2390725de7c26e', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '44', '2018-04-01 16:16:12', '22', '22');
INSERT INTO `app_data_count` VALUES ('a0753e0ceb214687bca66d70bb8f0a2a', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '42', '2018-04-01 16:26:12', '21', '21');
INSERT INTO `app_data_count` VALUES ('78c759182df6408f93ae79aa4502ee9a', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '10', '2018-04-01 16:36:13', '5', '5');
INSERT INTO `app_data_count` VALUES ('a509f3b2ba784d34b9f3a6afebc3086b', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '32', '2018-04-01 16:46:12', '16', '16');
INSERT INTO `app_data_count` VALUES ('2abf1c29d0cd4ec4aea36acc83da3ccc', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '24', '2018-04-01 16:56:12', '12', '12');
INSERT INTO `app_data_count` VALUES ('7a960f9371d14cd485de88123e4b9d52', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '12', '2018-04-01 17:06:12', '6', '6');
INSERT INTO `app_data_count` VALUES ('bcf88b8831ca4cd995ea9ae9f8a578a3', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '38', '2018-04-01 17:16:12', '19', '19');
INSERT INTO `app_data_count` VALUES ('4a660e8481e947a58d60e5d13618632b', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '8', '2018-04-01 17:26:12', '4', '4');
INSERT INTO `app_data_count` VALUES ('90ddae5516964044aebd786d56eebac7', null, null, 'hour', '0', '2018-04-01 17:36:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('eda75d55a96a48a98edc15886c2ac42e', null, null, 'hour', '0', '2018-04-01 17:46:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('624245197f9a4579b060906a224a5a90', null, null, 'hour', '0', '2018-04-01 17:56:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('3d03372930a8403f862fea0ad06dc267', null, null, 'hour', '0', '2018-04-01 18:06:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('fcc2d0fe757749359edb8765e2dbe6f7', null, null, 'hour', '0', '2018-04-01 18:16:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('06dd5a2f7a1b4ed5876209cc8036c1d5', null, null, 'hour', '0', '2018-04-01 18:26:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('7f9edd127fc545f88dc472784a8c070f', null, null, 'hour', '0', '2018-04-01 18:36:13', '0', '0');
INSERT INTO `app_data_count` VALUES ('3243006977cc45a6929e87692d162899', '/test/management/manager_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-01 18:46:12', '1', '2');
INSERT INTO `app_data_count` VALUES ('6fc62ec4db1d4ff7a21c133a15c6aa70', '/test/management/manager_management.html', '/test/ajax/manager-list', 'hour', '50', '2018-04-01 18:56:13', '24', '26');
INSERT INTO `app_data_count` VALUES ('ecdea46efa874a32a4be9007dfc1b07f', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '24', '2018-04-01 19:06:12', '12', '12');
INSERT INTO `app_data_count` VALUES ('6584f4dc49e347399c528e4fda8ef239', '/test/management/manager_management.html', '/test/management/manager-freeze/m001', 'hour', '47', '2018-04-01 19:16:12', '1', '23');
INSERT INTO `app_data_count` VALUES ('3d9dbe0f380640adacfef12285edcc50', '/test/management/manager_management.html', '/test/ajax/manager-list', 'hour', '13', '2018-04-01 19:26:12', '6', '7');
INSERT INTO `app_data_count` VALUES ('ae9969ca00fc4347aa2aa163d473adb1', null, null, 'hour', '0', '2018-04-01 19:33:47', '100', '0');
INSERT INTO `app_data_count` VALUES ('33447542a1b14db18295064c9cbbf6db', null, null, 'hour', '0', '2018-04-01 19:51:54', '100', '0');
INSERT INTO `app_data_count` VALUES ('0524ae965ae74ff387783fb86071347d', null, null, 'hour', '0', '2018-04-01 19:52:23', '100', '0');
INSERT INTO `app_data_count` VALUES ('d42e462dcccd4983b2b1ba791f8b6007', '/test/management/manager_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-01 19:54:23', '1', '2');
INSERT INTO `app_data_count` VALUES ('6c6f27e3e8ad44e99744095355687afd', null, null, 'hour', '0', '2018-04-01 19:55:13', '100', '0');
INSERT INTO `app_data_count` VALUES ('194024bd578c4a57be2db163ff2540c1', '/test/management/manager_management.html', '/test/management/root/manager-freeze/m001', 'hour', '6', '2018-04-01 19:56:32', '1', '2');
INSERT INTO `app_data_count` VALUES ('9832a7c108ee4039ac075bd686a69c98', '/test/ajax//manager-list', '/test/ajax//manager-list', 'hour', '2', '2018-04-01 19:56:58', '1', '1');
INSERT INTO `app_data_count` VALUES ('d1f5b55aaa594d058e2b65cc036a2ce4', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '1', '2018-04-01 19:57:46', '1', '1');
INSERT INTO `app_data_count` VALUES ('e9b867a503f9410f83aed4b49bafe424', null, null, 'hour', '0', '2018-04-01 19:58:17', '100', '0');
INSERT INTO `app_data_count` VALUES ('f713aac17d1c40e99947b3214d3b6c06', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '1', '2018-04-01 19:59:42', '1', '1');
INSERT INTO `app_data_count` VALUES ('eb7587258ab24bfc9c6c484898031ec9', null, null, 'hour', '0', '2018-04-01 20:00:40', '100', '0');
INSERT INTO `app_data_count` VALUES ('3c0ebf4785f048ed849aa95179231e80', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '1', '2018-04-01 20:02:42', '1', '1');
INSERT INTO `app_data_count` VALUES ('5dc561b11bb9412d976db524273449e9', null, null, 'hour', '0', '2018-04-01 20:03:58', '100', '0');
INSERT INTO `app_data_count` VALUES ('a5fd3e94e81e44ca9d954179c2371d24', '/test/management/login', '/test/management/root/manager-freeze/m001', 'hour', '5', '2018-04-01 20:05:19', '1', '2');
INSERT INTO `app_data_count` VALUES ('f2886c45ea4d4b62ba52d221647c4f32', null, null, 'hour', '0', '2018-04-01 20:06:24', '100', '0');
INSERT INTO `app_data_count` VALUES ('5b4404fcb0cd4de081b412d738503b0d', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '1', '2018-04-01 20:07:45', '1', '1');
INSERT INTO `app_data_count` VALUES ('fb80dce88b054452b44b175be6aef437', null, null, 'hour', '0', '2018-04-01 20:09:28', '100', '0');
INSERT INTO `app_data_count` VALUES ('21944484fe5f4d0e8e78abf01b5a8444', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '2', '2018-04-01 20:10:49', '1', '1');
INSERT INTO `app_data_count` VALUES ('bc5b467eef9349e186b138b87d753444', null, null, 'hour', '0', '2018-04-01 20:11:14', '100', '0');
INSERT INTO `app_data_count` VALUES ('a4e38a3f46b24d88a39ef46d45151ee0', '/test/management/login', '/test/management/rootadsads21321', 'hour', '4', '2018-04-01 20:12:49', '1', '2');
INSERT INTO `app_data_count` VALUES ('7be63b1a1b264151b8c18fbaec782c91', '/test/management/root_index.html', '/test/management/root_index.html', 'hour', '3', '2018-04-01 20:14:09', '1', '1');
INSERT INTO `app_data_count` VALUES ('506aced036e243b9a5f1d26966cb1843', '/test/management/root/manager-freeze/m000', '/test/management/root/manager-freeze/m000', 'hour', '2', '2018-04-01 20:15:11', '1', '1');
INSERT INTO `app_data_count` VALUES ('5cbf4e3cfa4544fb9ca5ae403bfeb976', '/test/management/root/manager-freeze/m000', '/test/management/root/manager-freeze/m000', 'hour', '4', '2018-04-01 20:17:37', '1', '1');
INSERT INTO `app_data_count` VALUES ('d84a8ac97e1f43fb88587cbc355ed122', null, null, 'hour', '0', '2018-04-01 20:19:56', '100', '0');
INSERT INTO `app_data_count` VALUES ('8db23dca4936450db9a173d2fb3dd465', '/test/management/manager_management.html', '/test/management/root/manager-freeze/m001', 'hour', '6', '2018-04-01 20:21:16', '1', '2');
INSERT INTO `app_data_count` VALUES ('03216920513747b1b6ffbac206675e7f', null, null, 'hour', '0', '2018-04-01 20:25:34', '100', '0');
INSERT INTO `app_data_count` VALUES ('559ce08790b04249941f50d5e21b0cbc', '/test/management/manager_management.html', '/test/management/login', 'hour', '5', '2018-04-01 20:26:52', '1', '3');
INSERT INTO `app_data_count` VALUES ('cd1713c1025e4f2c9e305cc4c2674366', '/test/management/manager_management.html', '/test/management/root/manager-freeze/m000', 'hour', '19', '2018-04-01 20:36:53', '1', '7');
INSERT INTO `app_data_count` VALUES ('d0ab091bd1374666a80af0317c1b27ad', '/test/management/manager_management.html', '/test/management/manager_management.html', 'hour', '2', '2018-04-01 20:42:21', '1', '1');
INSERT INTO `app_data_count` VALUES ('2787edfb58ab46758870e368fb33824d', '/test/management/login', '/test/management/login', 'hour', '4', '2018-04-01 20:53:14', '1', '1');
INSERT INTO `app_data_count` VALUES ('a3ae19f1805e45c9bb321c8b3b266cb9', '/test/management/root_index.html', '/test/ajax/manager-list', 'hour', '14', '2018-04-01 21:01:45', '1', '6');
INSERT INTO `app_data_count` VALUES ('6c88763bba274574aae0566a091cfe24', null, null, 'hour', '0', '2018-04-01 21:03:05', '0', '0');
INSERT INTO `app_data_count` VALUES ('c6540d0247e24867bf715f9e7c86ef3d', '/test/management/login', '/test/management/root_index.html', 'hour', '7', '2018-04-01 21:06:51', '1', '2');
INSERT INTO `app_data_count` VALUES ('e6e2880252134959935ae718a097818b', '/test/management/root/manager-freeze/m001', '/test/management/root_index.html', 'hour', '7', '2018-04-01 21:08:11', '1', '2');
INSERT INTO `app_data_count` VALUES ('0e47ba001cb3492caf3c883ba3a33b2b', '/test/management/root/manager-freeze/m001', '/test/management/root/manager-freeze/m001', 'hour', '1', '2018-04-01 21:14:31', '1', '1');
INSERT INTO `app_data_count` VALUES ('21e39c19ccab4fcba32e53bcf01192e1', null, null, 'hour', '0', '2018-04-01 21:16:24', '100', '0');
INSERT INTO `app_data_count` VALUES ('ce9f6be38f6945aca91988fe5b16eb9c', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-01 21:18:44', '1', '2');
INSERT INTO `app_data_count` VALUES ('687183ca00a542b7b797028e677020cb', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '4', '2018-04-01 21:20:18', '2', '2');
INSERT INTO `app_data_count` VALUES ('107c4649c1d2496abc00dd907594f026', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-01 21:24:28', '1', '2');
INSERT INTO `app_data_count` VALUES ('ec303352e11841b9a398f9f4f9dc1629', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '12', '2018-04-01 21:34:28', '6', '6');
INSERT INTO `app_data_count` VALUES ('ea13ed11ba9e42d69416519790a039b6', '/test/management/root_management.html', '/test/management/root/manager-freeze/m001', 'hour', '24', '2018-04-01 21:44:28', '3', '11');
INSERT INTO `app_data_count` VALUES ('fe975a57509344b8862e714b1585ae88', '/test/ajax/manager-list', '/test/management/root/manager-freeze/m002', 'hour', '14', '2018-04-01 21:54:28', '1', '4');
INSERT INTO `app_data_count` VALUES ('9df9c407c88c4734bc67bd7f0b0222dd', '/test/ajax/manager-list', '/test/management/root_index.html', 'hour', '33', '2018-04-01 22:04:28', '1', '11');
INSERT INTO `app_data_count` VALUES ('afdd5410a8584fa7972b5b11084f3fb9', '/test/management/root/manager-freeze/m002', '/test/management/root/manager-freeze/m002', 'hour', '2', '2018-04-01 22:11:17', '2', '2');
INSERT INTO `app_data_count` VALUES ('7162a8b298bf47d98a009f42da662aa7', '/test/management/root_management.html', '/test/management/root/manager-freeze', 'hour', '6', '2018-04-01 22:21:40', '1', '2');
INSERT INTO `app_data_count` VALUES ('7c597962b2a64ebe985ce88701a33b1b', null, null, 'hour', '0', '2018-04-01 22:31:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('d98441e1e26344e29fad97d0649b5bea', null, null, 'hour', '0', '2018-04-01 22:38:06', '100', '0');
INSERT INTO `app_data_count` VALUES ('356e28bc47a94a6f974fd5300b336a89', '/test/management/login', '/test/management/login', 'hour', '2', '2018-04-01 22:39:11', '1', '1');
INSERT INTO `app_data_count` VALUES ('57abc4c7350143edbf23449770dc393e', '/test/management/login', '/test/management/root_index.html', 'hour', '5', '2018-04-01 22:40:31', '1', '2');
INSERT INTO `app_data_count` VALUES ('7d1a864265d547ea85d8c26c341cb25e', '/test/management/root/manager-freeze', '/test/management/root/manager-freeze', 'hour', '3', '2018-04-01 22:42:19', '1', '1');
INSERT INTO `app_data_count` VALUES ('4dd54b46e09b4031a045aaca56ba5446', '/test/management/root_management.html', '/test/management/root/manager-freeze', 'hour', '6', '2018-04-01 22:43:38', '1', '2');
INSERT INTO `app_data_count` VALUES ('9ebea015ca4943fdb1f98901fb2ca92b', null, null, 'hour', '0', '2018-04-01 22:44:01', '100', '0');
INSERT INTO `app_data_count` VALUES ('77dfb98b302446c5847da96dd2e97770', '/test/management/root_management.html', '/test/management/root/manager-freeze', 'hour', '6', '2018-04-01 22:45:38', '1', '2');
INSERT INTO `app_data_count` VALUES ('9779b2a0ff7744ee9da1f4ff46316cfe', null, null, 'hour', '0', '2018-04-01 22:45:38', '100', '0');
INSERT INTO `app_data_count` VALUES ('7177a1d3dd55426b82a1b60663726281', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '13', '2018-04-01 22:47:48', '1', '5');
INSERT INTO `app_data_count` VALUES ('1ff2afbd7f5a4e1f8afadebdf5d3f9cf', '/test/management/root/manager-freeze', '/test/management/root/manager-freeze', 'hour', '1', '2018-04-01 22:49:25', '1', '1');
INSERT INTO `app_data_count` VALUES ('f049b6e491fa499ba963c7b7b2c4e04b', '/test/management/root_management.html', '/test/management/root/manager-freeze', 'hour', '8', '2018-04-01 22:55:19', '1', '3');
INSERT INTO `app_data_count` VALUES ('8a912e12b30c44f29fda570b4c9c0abb', '/test/management/root/manager-freeze', '/test/management/root/manager-freeze', 'hour', '1', '2018-04-01 22:55:37', '1', '1');

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
INSERT INTO `comment` VALUES ('4', '明天见', '143', '1', '19268abf589c4600aa64d1c45f549861', '2018-03-23 17:40:40');

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
INSERT INTO `manager` VALUES ('30de037bc2174adf9e1ca84803e42ef1', 'm002', '222222', 'users_mgr', '1e1f8ce640b0451197a1ee650463d695', '2018-03-05 11:10:41', null, null, null, null, '3');
INSERT INTO `manager` VALUES ('70b614d1b0d94efe95e1e9cbef59a86c', 'm000', '$2a$10$EyvpMVjf7fnY2BN0DcJH.unpUW/rLZuC/KI5F71gVBpjnaze0oPem', 'root_mgr', '3a5eb3ec8c5b47e8bbe18817b3ae06ec', '2018-04-01 22:54:41', null, null, '127.0.0.1', null, '3');
INSERT INTO `manager` VALUES ('bb21ba909cfa41b88694dd001f9d4a25', 'm001', '$2a$10$HurynLTwWMEdoS2mViax.ecWjKjJLkRg8VaLci5.wbl9EnnExOCQG', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-04-01 21:04:33', null, null, '127.0.0.1', null, '3');
INSERT INTO `manager` VALUES ('c003a9703675499587557f9aa643f7e9', 'm003', '333333', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-03-22 11:10:50', null, null, null, null, '3');

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
INSERT INTO `news` VALUES ('1', '成都哈哈', '烦烦烦', 'F:\\J39班唐倩个人日报表（8）.txt', '1', '124', null, '2018-03-23 14:42:56');
INSERT INTO `news` VALUES ('1588715087759147081', '詹姆斯月和周最佳均是历史第一 谁能达到这高度？', 'T-Bag', 'D:\\news\\20180329\\5\\1588715087759147081', '5', '101', null, '2018-03-29 16:48:50');
INSERT INTO `news` VALUES ('1594268511375458362', '高中与詹姆斯齐名，欠债10万扬言成超巨，如今却靠卖烤翅为生', '准者老爹', 'D:\\news\\20180329\\5\\1594268511375458362', '5', '100', null, '2018-03-29 16:48:50');
INSERT INTO `news` VALUES ('1594778752071499861', '后卫盛世！除登哥外最佳阵容的后卫你怎么选？', '韦少爷', 'D:\\news\\20180329\\5\\1594778752071499861', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1595008047929884753', '恩比德未来最强内线？他表示不服', 'Jordan', 'D:\\news\\20180329\\5\\1595008047929884753', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1595020264138226609', '迪士尼业务部门大变革，即将强推流媒体', '三文娱', 'D:\\news\\20180329\\4\\1595020264138226609', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595099833821916976', '43亿元市场规模的韩国网络漫画，十大平台有这些玩法', '三文娱', 'D:\\news\\20180329\\4\\1595099833821916976', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595465499725904896', '奥斯卡最佳影片《水形物语》概念设计和特效制作揭秘！', '三文娱', 'D:\\news\\20180329\\4\\1595465499725904896', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595469564648155745', '「同性恋基因」到底存不存在｜大象公会', '大象公会', 'D:\\news\\20180329\\4\\1595469564648155745', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595561305120135939', '藏族人为什么也拜关公｜大象公会', '大象公会', 'D:\\news\\20180329\\4\\1595561305120135939', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595646930726158407', '生涯低谷！格里芬上限已至？', '小天狼星', 'D:\\news\\20180329\\5\\1595646930726158407', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1595691297946056183', '毛婷：最牛综艺们御用的色彩鲜师', '善缘街0号', 'D:\\news\\20180329\\4\\1595691297946056183', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595827939596861220', '成本2亿票房3600万，《妈妈咪鸭》等国产动画电影还差了些什么？', '三文娱', 'D:\\news\\20180329\\4\\1595827939596861220', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595922264762216997', '腾讯一天赚2亿，投资人觉得不够多 ｜ 三文娱周刊', '三文娱', 'D:\\news\\20180329\\4\\1595922264762216997', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595923922171199571', '最强伤病潮来袭！志在卫冕的勇士还有多少战斗力？', '大菠萝盖', 'D:\\news\\20180329\\5\\1595923922171199571', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1595964906145989586', '黄奉铎谈恕：恕是推己及人', '黄大仙', 'D:\\news\\20180329\\4\\1595964906145989586', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1595966043598405268', '黄奉铎谈节德：节是自然规律', '黄大仙', 'D:\\news\\20180329\\4\\1595966043598405268', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596002530508144723', '勒布朗.詹姆斯就算加盟西部球队又有何惧！', 'vvvvv', 'D:\\news\\20180329\\5\\1596002530508144723', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596055402729247077', '《吃货宇宙》与《美食大冒险》，两个国产美食动画的知识产权之争', '三文娱', 'D:\\news\\20180329\\4\\1596055402729247077', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596056890144859905', '铁打的唐家三少，流水的二次元', '三文娱', 'D:\\news\\20180329\\4\\1596056890144859905', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596083223618650173', '火箭对西部前十球队胜率高达83.3% 含金量如何', '麦迪', 'D:\\news\\20180329\\5\\1596083223618650173', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596098052299423827', '强势阿德势如破竹 他能助马刺上演下克上好戏吗？', 'tempo', 'D:\\news\\20180329\\5\\1596098052299423827', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596149357436741584', '黄奉铎谈富贵病：节德是最好的方剂', '黄大仙', 'D:\\news\\20180329\\4\\1596149357436741584', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596163604629946449', '【四图流】瓜一其随？风尘四侠如何被冒得体无完肤', '历史第一人', 'D:\\news\\20180329\\5\\1596163604629946449', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596169069415705619', '共享经济遇冷，共享书架如何通过“企业共读”破局？', '盒饭财经', 'D:\\news\\20180329\\4\\1596169069415705619', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596171245041221717', '12分已是队内最高得分  勇士替补输火箭一大截？', '何方小仙', 'D:\\news\\20180329\\5\\1596171245041221717', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596176547548495930', '社区晚报：没有四巨头的勇士，究竟是什么水平的球队？', '菠萝', 'D:\\news\\20180329\\5\\1596176547548495930', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596180459393384530', '【论道】克利夫兰三重危机：防守与轮换、勒布朗之心', '摩卡', 'D:\\news\\20180329\\5\\1596180459393384530', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596185838800076866', '若非伤病，他们才是东部霸主', '小天狼星', 'D:\\news\\20180329\\5\\1596185838800076866', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596191997015621706', '骑士常规赛排名相差一位，对进军总决赛有直接影响？', 'Jordan', 'D:\\news\\20180329\\5\\1596191997015621706', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596204238598934230', '《遇见你真好》：简单纯真的心跳回忆', '赤叶青枫', 'D:\\news\\20180329\\2\\1596204238598934230', '2', null, null, '2018-03-29 11:31:33');
INSERT INTO `news` VALUES ('1596226820526688412', '高云翔涉性侵在悉尼被抓，老婆董璇怀二胎，另一涉案人叫“王晶”', '金牌娱乐', 'D:\\news\\20180329\\2\\1596226820526688412', '2', null, null, '2018-03-29 11:31:36');
INSERT INTO `news` VALUES ('1596229625260210884', '《动物系恋人啊》3.29搜狐上线，粉丝现场人肉弹幕打Call阿娇', '娱乐资本论', 'D:\\news\\20180329\\2\\1596229625260210884', '2', null, null, '2018-03-29 11:31:39');
INSERT INTO `news` VALUES ('1596229714725493500', 'B站IPO引发用户集体狂欢，当我们谈论B站，我们在谈什么？', '娱乐资本论', 'D:\\news\\20180329\\3\\1596229714725493500', '3', null, null, '2018-03-29 11:31:42');
INSERT INTO `news` VALUES ('1596229799817444683', '马云宋卫平入局投资，茅威涛任董事长，百越文创要戏剧全产业链！', '娱乐资本论', 'D:\\news\\20180329\\2\\1596229799817444683', '2', null, null, '2018-03-29 11:32:32');
INSERT INTO `news` VALUES ('1596229849700296662', '如何陪伴孤独的电影人守护初心', '娱乐资本论', 'D:\\news\\20180329\\2\\1596229849700296662', '2', null, null, '2018-03-29 11:32:34');
INSERT INTO `news` VALUES ('1596229947914411834', '《新歌声》请厨师谢霆锋当导师引网友吐槽：王菲若不来有啥意义？', '海蛎子', 'D:\\news\\20180329\\2\\1596229947914411834', '2', null, null, '2018-03-29 11:32:37');
INSERT INTO `news` VALUES ('1596230326748600635', '黄斌汉：中央通过资管新规(一句话看懂)', '黄斌汉', 'D:\\news\\20180329\\3\\1596230326748600635', '3', null, null, '2018-03-29 11:32:39');
INSERT INTO `news` VALUES ('1596230364024004263', '《动物系恋人啊》这温顺的爱，这凶猛的爱', '战台烽', 'D:\\news\\20180329\\2\\1596230364024004263', '2', null, null, '2018-03-29 11:32:42');
INSERT INTO `news` VALUES ('1596231280173005706', '最正确的抄底姿势，比亚迪你要不要错过？', '港股挖掘机', 'D:\\news\\20180329\\3\\1596231280173005706', '3', null, null, '2018-03-29 11:32:45');
INSERT INTO `news` VALUES ('1596231697401440324', '业绩会实录︱广州农商银行：资金运用游刃有余，今年净息差会改善', '港股挖掘机', 'D:\\news\\20180329\\3\\1596231697401440324', '3', null, null, '2018-03-29 11:32:47');
INSERT INTO `news` VALUES ('1596231711548403504', '澳大利亚新闻曝演员高云翔性侵被捕，网友心疼董璇步佟丽娅后尘', '温翔', 'D:\\news\\20180329\\2\\1596231711548403504', '2', null, null, '2018-03-29 11:32:50');
INSERT INTO `news` VALUES ('1596231751599192766', '年薪赚不到80万的！还是尽早去二线城市吧', '齐俊杰看财经', 'D:\\news\\20180329\\3\\1596231751599192766', '3', null, null, '2018-03-29 11:32:53');
INSERT INTO `news` VALUES ('1596231970482378566', '业绩会实录︱北控水务：2018年资本开支约165亿，PPP指引300亿', '港股挖掘机', 'D:\\news\\20180329\\3\\1596231970482378566', '3', null, null, '2018-03-29 11:32:55');
INSERT INTO `news` VALUES ('1596232005508855685', '无可奈何！美国石油产量屡破新高，欧佩克俄罗斯却还得继续减产？', '一牛财经', 'D:\\news\\20180329\\3\\1596232005508855685', '3', null, null, '2018-03-29 11:32:57');
INSERT INTO `news` VALUES ('1596232072300287061', '据说这家P2P网贷比微众银行和京东金融值钱，究竟是什么情况？', '董希淼', 'D:\\news\\20180329\\3\\1596232072300287061', '3', null, null, '2018-03-29 11:33:00');
INSERT INTO `news` VALUES ('1596232216217129151', '业绩会实录︱华晨中国：预计2020年宝马X3电动车将出口到全世界', '港股挖掘机', 'D:\\news\\20180329\\3\\1596232216217129151', '3', null, null, '2018-03-29 11:33:04');
INSERT INTO `news` VALUES ('1596232630555871746', '并非所有人，生来便是一手好牌', '崔汀', 'D:\\news\\20180329\\2\\1596232630555871746', '2', null, null, '2018-03-29 11:33:06');
INSERT INTO `news` VALUES ('1596232643277330052', '毕殿龙：郭德纲是不被主流相声待见还是不被某些人待见？', '毕殿龙评论', 'D:\\news\\20180329\\2\\1596232643277330052', '2', null, null, '2018-03-29 11:33:09');
INSERT INTO `news` VALUES ('1596234027576262489', '精锐教育登陆纽交所：发行价11美元 主打个性化培优', '雷帝触网', 'D:\\news\\20180329\\1\\1596234027576262489', '1', null, null, '2018-03-29 11:33:11');
INSERT INTO `news` VALUES ('1596234148009253288', '高云翔性侵36岁女子被捕，6月开庭现被拘留，董璇反常回应有原因', '铁任', 'D:\\news\\20180329\\2\\1596234148009253288', '2', null, null, '2018-03-29 11:33:13');
INSERT INTO `news` VALUES ('1596234258614372272', '儒卓力将于CITE 2018展示四大应用领域解决方案及电商平台', '半导体投资联盟', 'D:\\news\\20180329\\1\\1596234258614372272', '1', null, null, '2018-03-29 11:33:15');
INSERT INTO `news` VALUES ('1596234346180329435', '好消息！中国4000亿减税措施落地，幅度相当于特朗普减税的一半！', '一牛财经', 'D:\\news\\20180329\\3\\1596234346180329435', '3', null, null, '2018-03-29 11:33:18');
INSERT INTO `news` VALUES ('1596234584337939967', '从宜家的成功看SaaS产品通关的七种武器', '牛透社', 'D:\\news\\20180329\\1\\1596234584337939967', '1', null, null, '2018-03-29 11:33:20');
INSERT INTO `news` VALUES ('1596234779803654123', '高云翔在悉尼性侵36岁女子被捕，出事当天曾发微博露出不祥预兆', '铁任', 'D:\\news\\20180329\\2\\1596234779803654123', '2', null, null, '2018-03-29 11:33:22');
INSERT INTO `news` VALUES ('1596235028810073031', '马云也要来养猪，网友直呼：要抢丁磊的饭碗？', '俊世太保', 'D:\\news\\20180329\\1\\1596235028810073031', '1', null, null, '2018-03-29 11:33:24');
INSERT INTO `news` VALUES ('1596235040305450237', '三星（中国）半导体有限公司存储芯片二期项目开工', '半导体投资联盟', 'D:\\news\\20180329\\1\\1596235040305450237', '1', null, null, '2018-03-29 11:33:26');
INSERT INTO `news` VALUES ('1596235109995699464', '不要PS要Photoshop？公众号这10大难题更让人崩溃好吗', '微果酱', 'D:\\news\\20180329\\1\\1596235109995699464', '1', null, null, '2018-03-29 11:33:31');
INSERT INTO `news` VALUES ('1596235254392467926', '九鼎再度接近跌停致新三板市值榜洗牌 神州优车成老大', '挖贝网', 'D:\\news\\20180329\\3\\1596235254392467926', '3', null, null, '2018-03-29 11:33:34');
INSERT INTO `news` VALUES ('1596235325070543946', '京东已成新机聚集地，线上每卖两台必有一台来自这里', 'IT168', 'D:\\news\\20180329\\1\\1596235325070543946', '1', null, null, '2018-03-29 11:33:37');
INSERT INTO `news` VALUES ('1596235342663089456', '巨亏的瑞立达内部矛盾公开化：董事长指责部分股东情绪激动', '挖贝网', 'D:\\news\\20180329\\3\\1596235342663089456', '3', null, null, '2018-03-29 11:33:39');
INSERT INTO `news` VALUES ('1596235477182544869', '一年365天都缺人！新媒体公司招人难是求职者太菜还是用人方太作', '微果酱', 'D:\\news\\20180329\\1\\1596235477182544869', '1', null, null, '2018-03-29 11:33:42');
INSERT INTO `news` VALUES ('1596235493700605936', '高云翔性侵悉尼被捕？家有娇妻董璇难逃7年之痒！最倒霉是范冰冰', '达人钧钧', 'D:\\news\\20180329\\2\\1596235493700605936', '2', null, null, '2018-03-29 11:33:44');
INSERT INTO `news` VALUES ('1596235620743138712', '李力游辞去紫光职务，下月出任Imagination全球CEO', '半导体投资联盟', 'D:\\news\\20180329\\1\\1596235620743138712', '1', null, null, '2018-03-29 11:33:46');
INSERT INTO `news` VALUES ('1596235687977708922', '不设总代 亲自操刀 NEC教育胜算几何', '依马狮视听传媒', 'D:\\news\\20180329\\1\\1596235687977708922', '1', null, null, '2018-03-29 11:33:48');
INSERT INTO `news` VALUES ('1596235758228311707', '斯皮尔伯格重回科幻巅峰，3月最期待非它莫属！', '电影迷', 'D:\\news\\20180329\\2\\1596235758228311707', '2', null, null, '2018-03-29 11:33:51');
INSERT INTO `news` VALUES ('1596235827602417088', '黄奉铎谈智：大智若愚的内在逻辑', '黄大仙', 'D:\\news\\20180329\\4\\1596235827602417088', '4', null, null, '2018-03-29 16:09:22');
INSERT INTO `news` VALUES ('1596235935378133678', '物联网结合区块链，未来能够更好的实现供应链金融', '耳朵财经', 'D:\\news\\20180329\\1\\1596235935378133678', '1', null, null, '2018-03-29 11:33:53');
INSERT INTO `news` VALUES ('1596236284988404024', '黄斌汉：资管新规冲击指数今看创业板', '黄斌汉', 'D:\\news\\20180329\\3\\1596236284988404024', '3', null, null, '2018-03-29 11:33:55');
INSERT INTO `news` VALUES ('1596236369142407115', '库克麻烦了！苹果降频门还没完：美国用户的集体诉讼就要来了', '雷科技', 'D:\\news\\20180329\\1\\1596236369142407115', '1', null, null, '2018-03-29 11:33:58');
INSERT INTO `news` VALUES ('1596236398419592899', '证监会又传重大利好信号 投资者投资A股现金分红更有保障', '莫开伟', 'D:\\news\\20180329\\3\\1596236398419592899', '3', null, null, '2018-03-29 11:34:00');
INSERT INTO `news` VALUES ('1596236437748874166', '恩智浦合资公司股份1.27亿卖与日月光', '半导体投资联盟', 'D:\\news\\20180329\\1\\1596236437748874166', '1', null, null, '2018-03-29 11:34:03');
INSERT INTO `news` VALUES ('1596236548786342694', '黄金如何投资交易？很简单，现在，你只要紧盯美元就够了！', '一牛财经', 'D:\\news\\20180329\\3\\1596236548786342694', '3', null, null, '2018-03-29 11:34:05');
INSERT INTO `news` VALUES ('1596236753034146429', '嵌入式神经网络赋予机器视觉、听觉和分析能力', '半导体投资联盟', 'D:\\news\\20180329\\1\\1596236753034146429', '1', null, null, '2018-03-29 11:34:07');
INSERT INTO `news` VALUES ('1596236879104081313', '顾长卫用一部《遇见你真好》记录了青春的各种可能性', '扣儿小姐', 'D:\\news\\20180329\\2\\1596236879104081313', '2', null, null, '2018-03-29 11:34:10');
INSERT INTO `news` VALUES ('1596237151370159420', '重磅更新来临，iOS 11.3正式推送：但只有iPad收到？', '雷科技', 'D:\\news\\20180329\\1\\1596237151370159420', '1', null, null, '2018-03-29 11:34:12');
INSERT INTO `news` VALUES ('1596242069550006354', 'ESPN评改变联盟球员：乔丹榜首勒布朗次席库里超科比哈登仅53', '不若随风', 'D:\\news\\20180329\\5\\1596242069550006354', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596242220452579199', '英伟达推出了一款250万一个的显卡', '差评', 'D:\\news\\20180329\\1\\1596242220452579199', '1', null, null, null);
INSERT INTO `news` VALUES ('1596242277201991836', '三星本土化进程加速中：Galaxy S9系列更加贴近中国市场', '通信观察家', 'D:\\news\\20180329\\1\\1596242277201991836', '1', null, null, null);
INSERT INTO `news` VALUES ('1596242583563352971', '一波未平一波又起！英特尔处理器惊现新漏洞：多代产品中枪', '雷科技', 'D:\\news\\20180329\\1\\1596242583563352971', '1', null, null, null);
INSERT INTO `news` VALUES ('1596242728242153279', '拼多多“传销式”砍价0元购靠谱吗？宝鸡用户砍下剃须刀收到土豆', '喻拓', 'D:\\news\\20180329\\1\\1596242728242153279', '1', null, null, null);
INSERT INTO `news` VALUES ('1596242985197292850', '百度云联合浪潮发布ABC一体机最新版，内置百度人脸识别核心能力', '马继华', 'D:\\news\\20180329\\1\\1596242985197292850', '1', null, null, null);
INSERT INTO `news` VALUES ('1596243036991686788', '无人机老大发布了一款黑科技相机：能够拍到肉眼看不到的东西', '雷科技', 'D:\\news\\20180329\\1\\1596243036991686788', '1', null, null, null);
INSERT INTO `news` VALUES ('1596243440337901363', '自动驾驶技术日趋成熟，那一天离我们不远了', '差评', 'D:\\news\\20180329\\1\\1596243440337901363', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244211677655456', 'AI强势进驻金融科技的重要一环——智能客服', 'GPLP', 'D:\\news\\20180329\\1\\1596244211677655456', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244289801837646', '今日头条有意接盘A站，可口可乐涨价，支付宝可提取公积金', '差评', 'D:\\news\\20180329\\1\\1596244289801837646', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244301170347581', '互金中概股抢滩金融科技', 'GPLP', 'D:\\news\\20180329\\3\\1596244301170347581', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596244792755472236', '新科技的洪流之下，金融科技时代到底新奇在哪？', '孟永辉', 'D:\\news\\20180329\\1\\1596244792755472236', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244806683010296', 'COINFO：携数字货币用户，用最便捷的方式，做最专业的投资', '李安嶙', 'D:\\news\\20180329\\1\\1596244806683010296', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244818148347851', '英伟达股票暴跌8%, Uber特斯拉自动驾驶相继发生死亡命案', '硅发布', 'D:\\news\\20180329\\1\\1596244818148347851', '1', null, null, null);
INSERT INTO `news` VALUES ('1596244882040824923', '蚂蚁金服又被盯上了，网友表示：真不让人安心？', '俊世太保', 'D:\\news\\20180329\\1\\1596244882040824923', '1', null, null, null);
INSERT INTO `news` VALUES ('1596245177854427547', '重要文件下发！数百万人要“换饭碗”了！', '政商参阅', 'D:\\news\\20180329\\3\\1596245177854427547', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596245475765446411', '艾诚+吴晓波=？《艾问企投家》今日重磅发布', '艾问人物', 'D:\\news\\20180329\\3\\1596245475765446411', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596245562383925319', '【大梦原创】“库里引力”的另一个版本', '氧气是个地铁', 'D:\\news\\20180329\\5\\1596245562383925319', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596245978203048517', '马云的湖畔大学又要开学了！饿了么，快手CEO成新学员？', '罗超频道', 'D:\\news\\20180329\\1\\1596245978203048517', '1', null, null, null);
INSERT INTO `news` VALUES ('1596246278071977122', '媒体问孙宏斌，贾跃亭造车，你们还投资吗？', '俊世太保', 'D:\\news\\20180329\\1\\1596246278071977122', '1', null, null, null);
INSERT INTO `news` VALUES ('1596246368642746031', '百度做好产品的激情，用一台音箱说出来', '唆麻', 'D:\\news\\20180329\\1\\1596246368642746031', '1', null, null, null);
INSERT INTO `news` VALUES ('1596247222393649023', '恒荣汇彬财报增幅超200%“互联网+保险”弯道超车', '挖贝网', 'D:\\news\\20180329\\3\\1596247222393649023', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596247224144101459', '史蒂芬-库里：容易被人忽略的组织能力', '老三的篮球笔记', 'D:\\news\\20180329\\5\\1596247224144101459', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596247411112805962', '还在苦恼直男拍照？会后期的拍立得也可以轻松撩妹', '中国家电网', 'D:\\news\\20180329\\1\\1596247411112805962', '1', null, null, null);
INSERT INTO `news` VALUES ('1596247719900199377', '时寒冰：中美贸易战，大豆能否担当杀手锏？', '功夫财经', 'D:\\news\\20180329\\3\\1596247719900199377', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596248357473708975', '大难临头各自飞！彩通科技高管全部跑光 穷到是剩下官司', '挖贝网', 'D:\\news\\20180329\\3\\1596248357473708975', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596248370123049594', '封杀支付宝，消费者被迫二选一！', '董毅智律师', 'D:\\news\\20180329\\3\\1596248370123049594', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596248863500522054', '野蛮生长之后迎来自律，催收行业该如何转型？', '经济微观察', 'D:\\news\\20180329\\1\\1596248863500522054', '1', null, null, null);
INSERT INTO `news` VALUES ('1596249090337222672', '孙宏斌打9折卖乐视说明了什么', '皮海洲', 'D:\\news\\20180329\\3\\1596249090337222672', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596250993860237886', '没钱没石油！委内瑞拉想用加密货币还债，俄罗斯：不行！中国……', '一牛财经', 'D:\\news\\20180329\\3\\1596250993860237886', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596251596892217439', '关于男性与女性理财的三点不同', '金评媒', 'D:\\news\\20180329\\3\\1596251596892217439', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596251907666963819', '1天市值蒸发四百亿！茅台土豪分红无人领情？', '平说财经张平', 'D:\\news\\20180329\\3\\1596251907666963819', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596252252427780180', '火箭是怎么了', '我', 'D:\\news\\20180329\\5\\1596252252427780180', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596253759120242192', '宿舍吃鸡，室友都喊绝的装备', '科技蟹', 'D:\\news\\20180329\\1\\1596253759120242192', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596253921523085899', '1G到4G的标准历程', '中国好4G', 'D:\\news\\20180329\\1\\1596253921523085899', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254049185117028', '3G时代的到来，是加速狼吃羊的过程', '中国好4G', 'D:\\news\\20180329\\1\\1596254049185117028', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254065585350602', '鼠标垫也可以给手机充电？小米众筹上架的这款新品也太创意了', '雷科技', 'D:\\news\\20180329\\1\\1596254065585350602', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254216550087535', '国产手机学了刘海却留着“下巴”？一加创始人告诉你为什么会这样', '喻拓', 'D:\\news\\20180329\\1\\1596254216550087535', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254381256633123', '中国联通混改后，交出了一份关于“5G”的成绩单！', '俊世太保', 'D:\\news\\20180329\\1\\1596254381256633123', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254418627628967', '华为正式发布畅享8系新机：青年用户的全面屏新选择', '雷科技', 'D:\\news\\20180329\\1\\1596254418627628967', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254641595586462', '这颜值你给几分？华为畅享8上手玩：千元大屏新体验', '雷科技', 'D:\\news\\20180329\\1\\1596254641595586462', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596254773375513221', '华为畅享8图赏：红蓝组CP，千元大屏全面屏手机', '雷科技', 'D:\\news\\20180329\\1\\1596254773375513221', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596255160006628497', '为自拍量身定制，拍照不P也很美', '科技蟹', 'D:\\news\\20180329\\1\\1596255160006628497', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596255201462695826', '华为完美了：结构色+像素6800万+1024G，苹果、三星自愧不如！', '耿彪', 'D:\\news\\20180329\\1\\1596255201462695826', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596255232969807883', '支付宝微信攻城略地：ATM机受冷落，1小时仅3人光顾', '中国电子银行网', 'D:\\news\\20180329\\3\\1596255232969807883', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596255250112198689', '没有小确幸的人生，不过是干巴巴的沙漠罢了', '中国家电网', 'D:\\news\\20180329\\1\\1596255250112198689', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596255267922664260', '黄斌汉：三利好支撑大涨！', '黄斌汉', 'D:\\news\\20180329\\3\\1596255267922664260', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596255435493370582', '涨姿势！用深度学习LSTM炒股：对冲基金案例分析', '大数据文摘', 'D:\\news\\20180329\\1\\1596255435493370582', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596255500946162223', 'Cloud Harbor战略蓝图背后 VMware新时代的布局与格局', '申耀的科技观察', 'D:\\news\\20180329\\1\\1596255500946162223', '1', null, null, '2018-03-29 16:02:56');
INSERT INTO `news` VALUES ('1596255622785895306', '模拟世界：谷歌大脑与Jürgen Schmidhuber提出「人工智能梦境」', '机器之心', 'D:\\news\\20180329\\1\\1596255622785895306', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596256032648881303', '谷歌DeepMind最新动作：使用强化对抗学习，理解绘画笔触', '大数据文摘', 'D:\\news\\20180329\\1\\1596256032648881303', '1', null, null, '2018-03-29 16:27:58');
INSERT INTO `news` VALUES ('1596256129885667409', '《球妹时刻》玩法揭秘，一起进入球妹的预言世界！', '天天NBA', 'D:\\news\\20180329\\5\\1596256129885667409', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596256174942978121', '哈登今年又要陪跑了', '天天服装辅料', 'D:\\news\\20180329\\5\\1596256174942978121', '5', null, null, '2018-03-29 16:20:44');
INSERT INTO `news` VALUES ('1596256224269383091', '《芈月传》中他是孙俪的情人，高云翔曾饰演过这些经典角色', '影视口碑榜', 'D:\\news\\20180329\\2\\1596256224269383091', '2', null, null, '2018-03-29 16:38:28');
INSERT INTO `news` VALUES ('1596256281923564570', '除了三摄，华为保时捷版新机，再度起飞！', '科技蟹', 'D:\\news\\20180329\\1\\1596256281923564570', '1', null, null, '2018-03-29 15:58:46');
INSERT INTO `news` VALUES ('1596256296215091833', '万万没想到，宗庆后的这个问题，居然难倒了马化腾？', '俊世太保', 'D:\\news\\20180329\\1\\1596256296215091833', '1', null, null, '2018-03-29 16:23:25');
INSERT INTO `news` VALUES ('1596256458348243129', '谷歌大脑开源多种新型神经网络优化器，AutoML探索新架构', '机器之心', 'D:\\news\\20180329\\1\\1596256458348243129', '1', null, null, '2018-03-29 16:27:58');
INSERT INTO `news` VALUES ('1596256489235340228', '贾跃亭妻子甘薇发博，是非难辨，怨怼孙宏斌？', '爆料汇', 'D:\\news\\20180329\\1\\1596256489235340228', '1', null, null, '2018-03-29 16:23:25');
INSERT INTO `news` VALUES ('1596256762740553587', 'QFII建仓动向曝光 19股成“新宠”', '金融投资报', 'D:\\news\\20180329\\3\\1596256762740553587', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596256993744309010', '提高Win10系统预装费用，微软这是倒行逆施？', '百略网', 'D:\\news\\20180329\\1\\1596256993744309010', '1', null, null, '2018-03-29 16:47:30');
INSERT INTO `news` VALUES ('1596257161121905576', '在运营商的推动下，2G将成为历史', '柏颖', 'D:\\news\\20180329\\1\\1596257161121905576', '1', null, null, '2018-03-29 16:47:30');
INSERT INTO `news` VALUES ('1596257202246212764', '对话美瑞健康国际美女总裁周文川：医用大麻百亿市场风口才刚开启', '港股挖掘机', 'D:\\news\\20180329\\3\\1596257202246212764', '3', null, null, '2018-03-29 16:48:13');
INSERT INTO `news` VALUES ('1596257367863914155', '学界 ｜ 斯坦福数据科学Phd新课放出阅读清单，你读过哪些？', '大数据文摘', 'D:\\news\\20180329\\1\\1596257367863914155', '1', null, null, '2018-03-29 16:27:58');
INSERT INTO `news` VALUES ('1596257529081420871', '印度佳片！《起跑线》讽刺教育问题，但为什么会让人笑出声？', '木易电影', 'D:\\news\\20180329\\2\\1596257529081420871', '2', null, null, '2018-03-29 16:38:28');
INSERT INTO `news` VALUES ('1596257698385994850', '坚决不做游戏的马云食言了，终于禁不住诱惑，这次马化腾要慌了！', '耿彪', 'D:\\news\\20180329\\1\\1596257698385994850', '1', null, null, '2018-03-29 16:47:30');
INSERT INTO `news` VALUES ('1596258054969125944', '业界 ｜ 阿里巴巴宣布全面进军IoT，五年要链接100亿设备', '大数据文摘', 'D:\\news\\20180329\\1\\1596258054969125944', '1', null, null, '2018-03-29 16:27:58');
INSERT INTO `news` VALUES ('1596258138523213538', '是枝裕和拍了一部悬疑片，却要因此走下神坛了？', '电影集结号', 'D:\\news\\20180329\\2\\1596258138523213538', '2', null, null, '2018-03-29 16:38:28');
INSERT INTO `news` VALUES ('1596258188432167830', '又一国产巨头倒下？金立东莞工厂遣散员工 资金断裂，负债百亿！', '喻拓', 'D:\\news\\20180329\\1\\1596258188432167830', '1', null, null, '2018-03-29 16:23:25');
INSERT INTO `news` VALUES ('1596258328279272980', '《动物系恋人啊》：一本关于爱与成长的修炼手册', '孙月月鸟', 'D:\\news\\20180329\\2\\1596258328279272980', '2', null, null, '2018-03-29 16:38:28');
INSERT INTO `news` VALUES ('1596258674804440891', '读懂ABC一体机升级：场景化的点和人工智能的面', '郑凯Kay', 'D:\\news\\20180329\\1\\1596258674804440891', '1', null, null, '2018-03-29 16:31:54');
INSERT INTO `news` VALUES ('1596258695123982106', '据说，快播王欣也要做区块链了？', '华商韬略', 'D:\\news\\20180329\\3\\1596258695123982106', '3', null, null, '2018-03-29 16:59:04');
INSERT INTO `news` VALUES ('1596258706724614567', '黄圣依家豪宅曝光，为儿子修滑雪场，日常喝红酒六万一支', '孤烟', 'D:\\news\\20180329\\2\\1596258706724614567', '2', null, null, '2018-03-29 16:38:28');
INSERT INTO `news` VALUES ('1596258833818813544', '华为畅享8搭配用骁龙430？网友吐槽：天天发心机？', '俊世太保', 'D:\\news\\20180329\\1\\1596258833818813544', '1', null, null, '2018-03-29 16:23:25');
INSERT INTO `news` VALUES ('1596258912493076819', 'AI与影音的碰撞，ISHE深圳智能家居展带你尽享视听盛宴', '乐智网', 'D:\\news\\20180329\\1\\1596258912493076819', '1', null, null, '2018-03-29 16:23:25');
INSERT INTO `news` VALUES ('1596259310546807295', '苹果不行？恐怕令你失望，一大波国产手机“跪舔”刘海屏！', '科技说说', 'D:\\news\\20180329\\1\\1596259310546807295', '1', null, null, '2018-03-29 16:29:16');
INSERT INTO `news` VALUES ('1596259877739744031', '“海豚音王子”维塔斯自甘堕落，屡次触犯法律，37岁的他变肥塔斯', '温翔', 'D:\\news\\20180329\\2\\1596259877739744031', '2', null, null, '2018-03-29 17:13:47');
INSERT INTO `news` VALUES ('1596259947830492646', '变革教育撬动市场，全新iPad正式登场', '科技蟹', 'D:\\news\\20180329\\1\\1596259947830492646', '1', null, null, '2018-03-29 16:47:30');
INSERT INTO `news` VALUES ('1596283481146979532', '儿童图书市场也抢占热门IP，《哈利·波特》等授权图书占比超28%', '三文娱', 'D:\\news\\20180330\\1\\1596283481146979532', '1', null, null, '2018-03-30 11:58:23');
INSERT INTO `news` VALUES ('1596299809465245859', '小米 MIX 2s比 vivo x21只贵1元，为何却完爆对方？', '冯先生失眠中', 'D:\\news\\20180330\\5\\1596299809465245859', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596300236026100449', '高价低配、厂机形象、抄袭成疾的OPPO为何叫嚣超越小米？', '冯先生失眠中', 'D:\\news\\20180330\\5\\1596300236026100449', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596309203130097456', '傲娇的滴滴遇上了好战的美团，美团为生存而战，滴滴外卖只是袭扰', '西域刀客', 'D:\\news\\20180330\\5\\1596309203130097456', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596312709391214513', '评判骁龙845和三星Exynos9810谁更强，外媒也用安兔兔', '数码评价', 'D:\\news\\20180330\\5\\1596312709391214513', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596312791125576397', '“齐刘海儿”惹人嫌？华为P20早有准备，一步解决问题', '数码评价', 'D:\\news\\20180330\\5\\1596312791125576397', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596314114510631624', 'MTK处理器到底还行不行？OPPO与魅蓝两款特色手机分析', '数码评价', 'D:\\news\\20180330\\5\\1596314114510631624', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596316332676980190', '小米MIX 2S来了 雷军最想登上世界舞台中央', '蓝科技网', 'D:\\news\\20180330\\5\\1596316332676980190', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596317885790333120', '爱奇艺IPO 一张图告诉你与Netflix还有哪些差距？', '微文', 'D:\\news\\20180330\\5\\1596317885790333120', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596317955126979895', '骂运营商暴利日赚3亿？摸摸自己良心放在哪里了', '马继华', 'D:\\news\\20180330\\5\\1596317955126979895', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596319246460871946', '爱奇艺敲钟纳斯达克，一个版权付费者的百亿新IP炼成记', '张书乐', 'D:\\news\\20180330\\5\\1596319246460871946', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596320936630316689', '孙宏斌说投乐视就是沙比，贾跃亭老婆发微博隔空喊冤', '实说新语', 'D:\\news\\20180330\\5\\1596320936630316689', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596321014574464736', '猩便利大溃败！无人货架2018或将是顺丰、京东和每日优鲜的天下', '天方燕谈李燕', 'D:\\news\\20180330\\5\\1596321014574464736', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596321881152619974', '用户体验至上 三星Pay与苹果Pay谁更胜一筹？', '孟永辉', 'D:\\news\\20180330\\5\\1596321881152619974', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596321972184219008', '华为青年机：AI柔光自拍+一体全金属，小米、魅族措手不及！', '耿彪', 'D:\\news\\20180330\\5\\1596321972184219008', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596322040941674062', '即使美国限制也阻止不了华为的发展壮大', '柏颖', 'D:\\news\\20180330\\5\\1596322040941674062', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596322072569098491', '又一新三板影视公司将登A股？森宇文化10.5亿估值被光一科技收购', '娱乐资本论', 'D:\\news\\20180330\\4\\1596322072569098491', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596322777243916567', '大赞！中国或推动人民币结算石油！俄罗斯安哥拉：支持去美元化！', '一牛财经', 'D:\\news\\20180330\\4\\1596322777243916567', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596323770767094147', '买房摇号的地方就等着房价上涨吧！', '齐俊杰看财经', 'D:\\news\\20180330\\4\\1596323770767094147', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596324046728055096', 'TCL营业额创5年新高 着力打造多元化国际领先品牌', '家电网', 'D:\\news\\20180330\\5\\1596324046728055096', '5', null, null, '2018-03-30 09:47:22');
INSERT INTO `news` VALUES ('1596324679373125504', '关税大棒下的中国家电：欲戴王冠必承其重', '中国家电网', 'D:\\news\\20180330\\5\\1596324679373125504', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596324910537837688', '新三板“股王”绝情而去 高思教育模式受考', '挖贝网', 'D:\\news\\20180330\\4\\1596324910537837688', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596325031599801286', '为2020奥运会8K广播做准备', '依马狮视听传媒', 'D:\\news\\20180330\\5\\1596325031599801286', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596325046711973198', '“赖皮”集散地！新三板半年51位企业家或公司被列入失信执行名单', '挖贝网', 'D:\\news\\20180330\\4\\1596325046711973198', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596325579522148986', '机械师发布多款电竞新品，构建让用户“痛快”的游戏生态', '钉科技', 'D:\\news\\20180330\\5\\1596325579522148986', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596325606071434264', '看好医药板块 基金称将有独立行情', '天天基金网', 'D:\\news\\20180330\\4\\1596325606071434264', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596325693480697405', '短视频市场再添变数，网易云音乐投数千万推出短视频激励计划', '雷科技', 'D:\\news\\20180330\\5\\1596325693480697405', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596325922743942230', '品牌“六连冠”，解密伊利为何备受青睐', '盒饭财经', 'D:\\news\\20180330\\4\\1596325922743942230', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596325973890168960', '中央政府再放减税三大招式 实体经济将再获重大利好', '莫开伟', 'D:\\news\\20180330\\4\\1596325973890168960', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596326058390337306', '没有承担好社会责任的今日头条，何谈和BAT的竞争', '砺石商业评论', 'D:\\news\\20180330\\4\\1596326058390337306', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596326264133772770', '黄斌汉：创业板强势', '黄斌汉', 'D:\\news\\20180330\\4\\1596326264133772770', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596326341893315034', '以太币矿机ASIC芯片将面市？内存方面可能会面临挑战', '半导体投资联盟', 'D:\\news\\20180330\\5\\1596326341893315034', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596326698878792463', '一半交易员看空金价！黄金好日子到头？不，未来还得看这2个人！', '一牛财经', 'D:\\news\\20180330\\4\\1596326698878792463', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596327275490938427', '“鸭子”笑了！“鸡”哭了！只因《商标法》这一条款', 'IPRdaily', 'D:\\news\\20180330\\4\\1596327275490938427', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596327737502611587', '荣耀10惊艳曝光：全面屏+麒麟970+前刘海，这是你想要的华为吗？', '耿彪', 'D:\\news\\20180330\\5\\1596327737502611587', '5', null, null, '2018-03-30 10:56:28');
INSERT INTO `news` VALUES ('1596328080589579434', '网贷平台300家红途备案评审报告——上海4号平台系列报告集', '红途风控汇', 'D:\\news\\20180330\\4\\1596328080589579434', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596328448570518980', '什么情况？比特币1天内就跌了950美元，原来是中国央行……', '一牛财经', 'D:\\news\\20180330\\4\\1596328448570518980', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596329962880989024', '产品召回、事故频发、财务欺诈，特斯拉离破产真的不远了？', '爆料汇', 'D:\\news\\20180330\\5\\1596329962880989024', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596330179143172262', '高鑫零售，阿里一个千亿级的新零售赌局', '李成东', 'D:\\news\\20180330\\5\\1596330179143172262', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596330406247157841', '张朝阳：看世界杯不忘竞猜，网友：奖金有300万？', '俊世太保', 'D:\\news\\20180330\\5\\1596330406247157841', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596330597829093940', '打破业内规则 惊曝格兰仕员工称总裁为“贤哥”', '蓝科技网', 'D:\\news\\20180330\\5\\1596330597829093940', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596330771473786184', '打造国民家电，格兰仕做对了三件事', '钉科技', 'D:\\news\\20180330\\5\\1596330771473786184', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331008257394377', '除了金句，融创业绩会还有万字干货：今年要让公司更安全（实录）', '港股挖掘机', 'D:\\news\\20180330\\4\\1596331008257394377', '4', null, null, '2018-03-30 12:37:12');
INSERT INTO `news` VALUES ('1596331019757678387', '身轻如燕！灰色版小米蓝牙项圈耳机图赏：外观颜值让人过目难忘', '雷科技', 'D:\\news\\20180330\\5\\1596331019757678387', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331055203004060', '当前房地产差异化调控的目的是什么？', '易宪容', 'D:\\news\\20180330\\4\\1596331055203004060', '4', null, null, '2018-03-30 12:37:12');
INSERT INTO `news` VALUES ('1596331471508721700', '国内外出版社内容+AI聚能，独角兽哒哒英语不再隐形', '蓝鲸TMT网', 'D:\\news\\20180330\\5\\1596331471508721700', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331487863841377', '苹果这项新专利堪称逆天，你们见过能弯曲的手机电池？', '俊世太保', 'D:\\news\\20180330\\5\\1596331487863841377', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331532616580067', '华为这次牛大了！6000多亿元营收，15.7%增长令人惊艳！', '通信世界', 'D:\\news\\20180330\\5\\1596331532616580067', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331691061438227', '第四套人民币退市在即，曙光助推无现金时代来临', '中科曙光', 'D:\\news\\20180330\\5\\1596331691061438227', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596331861158756962', '揭示：中国联通“王卡宽带”的秘密', 'C114中国通信网', 'D:\\news\\20180330\\5\\1596331861158756962', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596332069832564054', '买保时捷送华为手机？揭秘1.63万元华为手机由来 土豪专享', '喻拓', 'D:\\news\\20180330\\5\\1596332069832564054', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596332286953024208', '165亿打水漂！孙宏斌：投资乐视都断脑袋了，再借它100亿我傻啊？', '九点半财经', 'D:\\news\\20180330\\4\\1596332286953024208', '4', null, null, '2018-03-30 11:59:34');
INSERT INTO `news` VALUES ('1596332412340551556', '楼市巨震！杭州打响第一枪……', '政商参阅', 'D:\\news\\20180330\\4\\1596332412340551556', '4', null, null, '2018-03-30 12:37:12');
INSERT INTO `news` VALUES ('1596332782103206777', '降价还不够？老罗卖手机新套路：买坚果Pro 2送发布会门票', '雷科技', 'D:\\news\\20180330\\5\\1596332782103206777', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596332983792770582', '出门问问李志飞入选“2018新智元人工智能创业家”', '出门问问', 'D:\\news\\20180330\\5\\1596332983792770582', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596333007332039390', '面对BAT进军区块链，为何他认为LittleBee仍有机会？｜ 艾问人物', '艾问人物', 'D:\\news\\20180330\\4\\1596333007332039390', '4', null, null, '2018-03-30 14:17:14');
INSERT INTO `news` VALUES ('1596333058166723469', '罗永浩测试自家输入法，不指名吐槽李敖：40多年前就该死了', '爆料汇', 'D:\\news\\20180330\\5\\1596333058166723469', '5', null, null, '2018-03-30 12:36:46');
INSERT INTO `news` VALUES ('1596334253488685692', '李小璐曾对高云翔说四个谢字，皆因他一个举动，太给贾乃亮面子了', '铁任', 'D:\\news\\20180330\\3\\1596334253488685692', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596334461866595207', '《巴清传》凉凉，唐德市值蒸发8.5亿，高云翔强奸毁了谁的生活？', '娱乐硬糖', 'D:\\news\\20180330\\3\\1596334461866595207', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596334590928719814', '许晴、宁静、章子怡、郭敬明，那些年明星在综艺里作过的妖', '娱史通鉴', 'D:\\news\\20180330\\3\\1596334590928719814', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596334767509396092', '20年前他的人气不亚于如今的鹿晗吴亦凡，如今却鲜有人问津', '金牌娱乐', 'D:\\news\\20180330\\3\\1596334767509396092', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596334774480579654', '谢霆锋《中国新歌声》当导师，却被网友狠批没资格和周杰伦同台！', '不八卦会死星人', 'D:\\news\\20180330\\3\\1596334774480579654', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596334837137283516', '“未富先老”的80后，将来养老只能靠自己', '孙骁骥', 'D:\\news\\20180330\\4\\1596334837137283516', '4', null, null, '2018-03-30 14:17:14');
INSERT INTO `news` VALUES ('1596335007888277410', '《动物系恋人啊》：耳目一新的纯爱物语，令人反思的婚恋哲学', '赤叶青枫', 'D:\\news\\20180330\\3\\1596335007888277410', '3', '100', null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596335272395655883', '《世界奇妙物语》要拍中国版，富士电视台又IP大甩卖了！', '娱乐硬糖', 'D:\\news\\20180330\\3\\1596335272395655883', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596335793445138411', '女明星一到夏天纷纷露腿，可有些女星下半身却不能直视', '不八卦会死星人', 'D:\\news\\20180330\\3\\1596335793445138411', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596336336362093751', '同为澳门赌王，何鸿燊三妻四妾，他却只有一个原配！', '不八卦会死星人', 'D:\\news\\20180330\\3\\1596336336362093751', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596337476367452578', '《大主宰》官宣欧阳娜娜演女一号洛璃，网友们不淡定了，疯狂吐槽', '温翔', 'D:\\news\\20180330\\3\\1596337476367452578', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596338315432665745', '“中国版Netflix”的故事不好讲 爱奇艺IPO首日破发股价大跌13%', '娱乐调查局', 'D:\\news\\20180330\\3\\1596338315432665745', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596338379063224641', '烂片预警｜ 小沈阳新片《我说的都是真的》智商欠费，毫无逻辑！', '毒舌列文', 'D:\\news\\20180330\\3\\1596338379063224641', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596338890896228181', '从天堂到地狱，陈伟霆出演苦情男任人摆布，终于不是霸道总裁了', '娱史通鉴', 'D:\\news\\20180330\\3\\1596338890896228181', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596340081052652577', '涉嫌性侵人设崩溃，高云翔有何魅力，获妻子董璇痴心力挺？', '卦神君', 'D:\\news\\20180330\\3\\1596340081052652577', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596340962225370426', '张国荣初恋，为自闭症儿治疗13年，自曝与儿子近照让人看的好心酸', '阳光八卦君', 'D:\\news\\20180330\\3\\1596340962225370426', '3', null, null, '2018-03-30 14:15:32');
INSERT INTO `news` VALUES ('1596342189352559796', '特斯拉叩开心扉，扫地僧制霸江湖', '君临', 'D:\\news\\20180330\\4\\1596342189352559796', '4', null, null, '2018-03-30 14:29:50');
INSERT INTO `news` VALUES ('3', '阿克苏记得发货咯手法上看', null, 'http://mini.eastday.com/mobile/180323044428944.html', '1', '111', null, '2018-03-23 14:43:01');
INSERT INTO `news` VALUES ('4', '啊实打实的噶士大夫啊', null, 'http://mini.eastday.com/mobile/180323084404484.html', '1', '6356', null, '2018-03-23 14:43:03');
INSERT INTO `news` VALUES ('5', '要围绕一个房间哈稍等', null, 'http://mini.eastday.com/mobile/180323073043481.html', '2', '3541', null, '2018-03-23 14:43:08');
INSERT INTO `news` VALUES ('6', '上的花费多少个副本VS', null, 'http://mini.eastday.com/mobile/180323073545589.html', '2', '3451', null, '2018-03-23 14:43:11');
INSERT INTO `news` VALUES ('666', '陌上花开', '夜莺', '新闻详情url', '1', '9999', '1', '2018-03-29 00:00:00');
INSERT INTO `news` VALUES ('7', '是大反攻的萨芬公司的股份', null, 'http://mini.eastday.com/mobile/180323053524374.html', '2', '2143', null, '2018-03-23 14:43:14');
INSERT INTO `news` VALUES ('8', '岁的法国色弱飞洒人', null, 'http://mini.eastday.com/mobile/180323053527935.html', '2', '234', null, '2018-03-23 14:43:16');
INSERT INTO `news` VALUES ('9', '一望无际', '月空', null, '2', '666999', null, '2018-03-29 11:31:19');
INSERT INTO `news` VALUES ('dhf', '宝宝宝宝', '雷科技', 'D:\\news\\20180329\\2\\1596204238598934231', '1', null, null, '2018-03-23 14:42:59');

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
INSERT INTO `release` VALUES ('1', '2018-03-06 10:05:27', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '1651', '2', '196816', '1');
INSERT INTO `release` VALUES ('111', '2018-03-05 20:22:57', null, '1596256762740553587', '159', '2', 'asdf', '2');
INSERT INTO `release` VALUES ('112', '2018-03-09 09:50:32', null, '33008257788b414b8d81323567680c71', '456', '1', 'asdgasdfga', '1');
INSERT INTO `release` VALUES ('116', '2018-03-27 10:06:29', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '456', '2', '16', '1');
INSERT INTO `release` VALUES ('123', '2018-03-12 19:55:39', null, '0de84e32615b40e9b27b1f3d8526ee43', '123', '2', 'sadfadvxz', '2');
INSERT INTO `release` VALUES ('147', '2018-03-04 10:06:58', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '15', '3', '16516', '1');
INSERT INTO `release` VALUES ('23', '2018-03-08 10:05:57', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '16', '3', '165461', '2');
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
  `password` varchar(52) DEFAULT NULL,
  `head_img` varchar(256) DEFAULT NULL,
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
INSERT INTO `users` VALUES ('0b3130db8a574cd599bd226bb107dfa7', '18155524640', '火眼狻猊', '733968', null, '1', '1979-10-17', '广安 ', null, null, '2018-03-27 10:37:22', null, '1', '2018-03-06 10:36:20');
INSERT INTO `users` VALUES ('0de84e32615b40e9b27b1f3d8526ee43', '15416689013', '混江龙', '379514', null, '0', '2000-11-11', '烟台 ', null, null, null, '编辑人员', '3', null);
INSERT INTO `users` VALUES ('19268abf589c4600aa64d1c45f549861', '17468463986', '大刀', '903115', '', '1', '1960-01-01', '石家庄 ', null, null, null, '编辑人员', '2', null);
INSERT INTO `users` VALUES ('193eac0e6ba749d4a2f0e6a0d69df125', '13995507005', '井木犴', '109117', null, '0', '1989-12-31', '中山 ', null, null, null, '编辑人员', '4', null);
INSERT INTO `users` VALUES ('2619eaddce0b429a81627c75bbb08e41', '17170311327', '拼命三郎', '994917', null, '0', '1997-06-11', '湘西', null, null, null, '编辑人员', '1', null);
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
INSERT INTO `users` VALUES ('914d9d32c0ff47a4a4412c1267c4fbdb', '13541509103', '琉璃', '21218CCA77804D2BA1922C33E0151105', '../imgs/shuijiao.jpg', '0', '2014-01-30', '北京市 北京市 东城区', '篮球 羽毛球 足球 ', '北冥有鱼，其名为鲲好红红火火恍恍惚惚', '2018-03-28 13:59:08', '普通用户', '1', '2018-03-28 13:59:08');
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
