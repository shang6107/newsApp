/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.200_3306
Source Server Version : 50539
Source Host           : 192.168.10.200:3306
Source Database       : news_app

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2018-04-03 18:04:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_data_count
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
INSERT INTO `app_data_count` VALUES ('fc367f7f828942dba24e9da8f0d14810', null, null, 'hour', '0', '2018-04-03 13:33:57', '0', '0');
INSERT INTO `app_data_count` VALUES ('794e9e6e908640bc881a0c7f638ec2f3', '/management/news_updateRelease_list', '/management/updateReleaseById', 'hour', '5', '2018-04-03 13:37:36', '1', '2');
INSERT INTO `app_data_count` VALUES ('a5ee3af568684525bc58c9fdd4712d23', '/app/getOneNews', '/app/getOneNews', 'hour', '4', '2018-04-03 13:43:56', '4', '4');
INSERT INTO `app_data_count` VALUES ('0423f73f860d42bf954a5670915d8af9', '/management/news_updateRelease', '/management/news_updateRelease', 'hour', '3', '2018-04-03 13:45:53', '1', '1');
INSERT INTO `app_data_count` VALUES ('cc099314cc8c4a5d8441991277799061', null, null, 'hour', '0', '2018-04-03 13:47:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('a9e1b50382d54efaa68576b450c8134a', null, null, 'hour', '0', '2018-04-03 13:53:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('da2cab04f0f44c4aa8e41fc4a988ae5a', null, null, 'hour', '0', '2018-04-03 13:57:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('c048e03d359d4fcbbf527376dab07cd0', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 14:03:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('b6cffd7dac78449296928d0c25a653e2', '/app/listComment', '/app/editPassword', 'hour', '156', '2018-04-03 14:06:01', '2', '107');
INSERT INTO `app_data_count` VALUES ('33cf4e051e15420db04d8beccc4389e5', '/app/listComment', '/app/listComment', 'hour', '2', '2018-04-03 14:07:38', '2', '2');
INSERT INTO `app_data_count` VALUES ('da0d5053dfa64a9480e1742c4aa1dec9', null, null, 'hour', '0', '2018-04-03 14:07:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('78678b4f38cc4926b9ab99e09323331b', null, null, 'hour', '0', '2018-04-03 14:13:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('2aed1bcf1d2d42128a8c61f84fbedcbf', '/app/listComment', '/app/listComment', 'hour', '12', '2018-04-03 14:17:38', '12', '12');
INSERT INTO `app_data_count` VALUES ('11c504db6718458e90b262bdcdbed910', null, null, 'hour', '0', '2018-04-03 14:18:02', '0', '0');
INSERT INTO `app_data_count` VALUES ('534a52ff453a4b91a71cb0a0703cc72e', null, null, 'hour', '0', '2018-04-03 14:17:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('ef132ee7dd6440588133f2484fe2690d', null, null, 'hour', '0', '2018-04-03 14:19:21', '0', '0');
INSERT INTO `app_data_count` VALUES ('39f75ce964d44c58adf0f5df07dd3724', '/test/ajax/workType-list', '/test/ajax/workType-list', 'hour', '2', '2018-04-03 14:22:08', '1', '1');
INSERT INTO `app_data_count` VALUES ('77fae418432c4f0a903ec088117a6322', null, null, 'hour', '0', '2018-04-03 14:23:27', '0', '0');
INSERT INTO `app_data_count` VALUES ('6d089c66fb4647b295eb947aca1e9574', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 14:23:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('46054bdfe84e4ca683b96b9590d4a64e', null, null, 'hour', '0', '2018-04-03 14:26:03', '0', '0');
INSERT INTO `app_data_count` VALUES ('e7c8fe3d15f248299585d3d50f57391d', '/test/ajax/workType-list', '/test/ajax/workType-list', 'hour', '1', '2018-04-03 14:27:20', '1', '1');
INSERT INTO `app_data_count` VALUES ('b2df336abc2240678ed6b860aa07aea7', null, null, 'hour', '0', '2018-04-03 14:27:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('3c09e931cd3a4c309c501d509f3dd4df', null, null, 'hour', '0', '2018-04-03 14:27:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('bb63fff2320f4d92890cc760c7e8f5ef', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 14:33:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('cb6e053510154b94b50dbf99a701a23a', null, null, 'hour', '0', '2018-04-03 14:37:19', '0', '0');
INSERT INTO `app_data_count` VALUES ('6f615697ca444cfbbd2d17809354e56e', null, null, 'hour', '0', '2018-04-03 14:37:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('2660d3946703437d824e3e6228c5fdef', null, null, 'hour', '0', '2018-04-03 14:37:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('6f507f9ddaa846b38d735efae7b96354', null, null, 'hour', '0', '2018-04-03 14:43:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('4d445e6326e14f6d9580e2b19ee6540d', null, null, 'hour', '0', '2018-04-03 14:47:19', '0', '0');
INSERT INTO `app_data_count` VALUES ('675a09ec85444ef8a25eb0ff2305d0fc', null, null, 'hour', '0', '2018-04-03 14:47:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('684bfd545ff84fc5a0f4d78938d80074', null, null, 'hour', '0', '2018-04-03 14:47:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('77bda7185bb54296bb339fc769e2614d', null, null, 'hour', '0', '2018-04-03 14:53:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('9fd2592af059415a80e68551448d10fb', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '12', '2018-04-03 14:57:19', '1', '4');
INSERT INTO `app_data_count` VALUES ('ce87a6553e264e64b55f43b55b5c47d8', null, null, 'hour', '0', '2018-04-03 14:57:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('ef793575084c49d69a246e3b530164d8', null, null, 'hour', '0', '2018-04-03 14:57:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('4983af0cdc44447aa705e5d6100fef75', '/app/getOneNews', '/app/putCollection', 'hour', '11', '2018-04-03 15:03:56', '2', '6');
INSERT INTO `app_data_count` VALUES ('f0eeaebf0fe84277bd034e4a9824e9a3', null, null, 'hour', '0', '2018-04-03 15:07:19', '0', '0');
INSERT INTO `app_data_count` VALUES ('c4a0ac8876664d788831d4fbaef20262', null, null, 'hour', '0', '2018-04-03 15:07:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('9bf6fea952f44290bbd5cd39860b24c4', null, null, 'hour', '0', '2018-04-03 15:07:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('b4b5fc61490e4920b91b4001b817e034', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 15:13:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('861f0333f87c4e4889ea76e2cee0d9be', '/test/management/root_backlog.html', '/test/management/root_index.html', 'hour', '37', '2018-04-03 15:17:19', '1', '28');
INSERT INTO `app_data_count` VALUES ('4f20e4aa7ca8476081538ab10eb8e746', '/app/listComment', '/app/listComment', 'hour', '2', '2018-04-03 15:17:38', '2', '2');
INSERT INTO `app_data_count` VALUES ('8a4ef193f954437b93b50a81cf280f95', null, null, 'hour', '0', '2018-04-03 15:17:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('f6e757a101e042fe94828f6a70d29b8d', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 15:23:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('66ce1c3028a24c40b789235a2816a1ea', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '75', '2018-04-03 15:27:19', '21', '27');
INSERT INTO `app_data_count` VALUES ('e42df29b6f4f4eb5be448de2d6592120', null, null, 'hour', '0', '2018-04-03 15:27:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('72d7b52693804928a0c43f334156a70f', null, null, 'hour', '0', '2018-04-03 15:27:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('aff7cf3729f241f7b22b7e90bf23fa6d', '/app/userNewsHistories', '/app/getOneNews', 'hour', '13', '2018-04-03 15:33:56', '4', '9');
INSERT INTO `app_data_count` VALUES ('9519d6ccfec84505af73aec9cb037e48', '/test/management/root_backlog.html', '/test/management/root/manager-edit/m003', 'hour', '55', '2018-04-03 15:37:19', '1', '27');
INSERT INTO `app_data_count` VALUES ('d5f6b3a9e47b40b5bd964907f9492884', '/app/listComment', '/app/listComment', 'hour', '2', '2018-04-03 15:37:38', '2', '2');
INSERT INTO `app_data_count` VALUES ('73bfd9b3907b467da7b78ba2dcc6e1d2', null, null, 'hour', '0', '2018-04-03 15:37:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('ba3f7de0fbd34ba8b97c9fc6425a6219', '/app/listComment', '/app/listComment', 'hour', '2', '2018-04-03 15:40:47', '2', '2');
INSERT INTO `app_data_count` VALUES ('622d53bc81de44ba81ec6a5e31d9f866', null, null, 'hour', '0', '2018-04-03 15:41:24', '0', '0');
INSERT INTO `app_data_count` VALUES ('9441cdf4dce3494d93ec4192819dce04', '/app/userNewsHistories', '/app/getOneNews', 'hour', '20', '2018-04-03 15:43:56', '3', '17');
INSERT INTO `app_data_count` VALUES ('c6bda0ce8ca046df82872dbcef2d9576', '/app/deleteCommnetByNewIDAndUserId', '/app/listComment', 'hour', '3', '2018-04-03 15:43:59', '1', '2');
INSERT INTO `app_data_count` VALUES ('257a4ab4bcb5491785a3f56255586ee1', null, null, 'hour', '0', '2018-04-03 15:44:39', '0', '0');
INSERT INTO `app_data_count` VALUES ('65b46eefdcaa44c89a01314455154cea', null, null, 'hour', '0', '2018-04-03 15:45:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('9574f242a3b1450799c8d036b07690fd', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '47', '2018-04-03 15:47:19', '11', '21');
INSERT INTO `app_data_count` VALUES ('cb4037ed2bd0438685eb344671397a44', null, null, 'hour', '0', '2018-04-03 15:47:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('639dbb3b71c74361a46b1b92aab23f6a', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '15', '2018-04-03 15:53:56', '15', '15');
INSERT INTO `app_data_count` VALUES ('e8a16ec389b4400cab683967792a9602', '/app/listComment', '/app/deleteCommnetByNewIDAndUserId', 'hour', '18', '2018-04-03 15:55:56', '4', '14');
INSERT INTO `app_data_count` VALUES ('7dd79d1739344ed1bd18547f3cb0f4fc', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '24', '2018-04-03 15:57:19', '3', '18');
INSERT INTO `app_data_count` VALUES ('357a087dbbc147beb1c3cd3295e72c30', null, null, 'hour', '0', '2018-04-03 15:57:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('87a413922a054eb0b310a166ffabf746', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '20', '2018-04-03 16:03:56', '20', '20');
INSERT INTO `app_data_count` VALUES ('3256d733c5ca4f17bf552f762f95a32d', null, null, 'hour', '0', '2018-04-03 16:05:56', '0', '0');
INSERT INTO `app_data_count` VALUES ('8dacdd801b8547769e3f4b8966cc3d44', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '33', '2018-04-03 16:07:19', '10', '13');
INSERT INTO `app_data_count` VALUES ('482c6d60706b46daaff1e68120c1ff89', null, null, 'hour', '0', '2018-04-03 16:07:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('d0e6821914e94dc588c2a659a80e38f4', '/app/userNewsHistories', '/app/getOneNews', 'hour', '30', '2018-04-03 16:13:56', '2', '28');
INSERT INTO `app_data_count` VALUES ('c617efd333944c2986756f3a7c6a6410', '/test/ajax/workType-list', '/test/ajax/workType-list', 'hour', '33', '2018-04-03 16:15:51', '11', '11');
INSERT INTO `app_data_count` VALUES ('a39fcac8d8b247a8be0d1302c6cacd6e', '/app/listComment', '/app/listComment', 'hour', '7', '2018-04-03 16:15:56', '7', '7');
INSERT INTO `app_data_count` VALUES ('2bed2fb440eb4264b38ca320ccade01b', null, null, 'hour', '0', '2018-04-03 16:17:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('4ab14f97b878460b99d28e8194137cba', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '9', '2018-04-03 16:18:18', '1', '3');
INSERT INTO `app_data_count` VALUES ('2f286e33bb724cd8a969f1dfb062faec', '/app/listComment', '/app/listCommnt', 'hour', '6', '2018-04-03 16:20:30', '1', '5');
INSERT INTO `app_data_count` VALUES ('32fda34f36b745668f37cf16723d8e63', '/test/ajax/workType-list', '/test/ajax/workType-list', 'hour', '4', '2018-04-03 16:21:03', '1', '1');
INSERT INTO `app_data_count` VALUES ('c0da5a1af5884a1c9ec3d5c55449d667', '/app/listCommnt', '/app/listCommnt', 'hour', '4', '2018-04-03 16:21:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('66141c78deef41ddbba89d5c2c262b53', '/test/management/backlog', '/test/management/root_backlog.html', 'hour', '5', '2018-04-03 16:22:55', '1', '3');
INSERT INTO `app_data_count` VALUES ('0c2fc271abe945118985aa16a195ca44', null, null, 'hour', '0', '2018-04-03 16:22:55', '0', '0');
INSERT INTO `app_data_count` VALUES ('d55f4bd05e3948ac80a96c60d60bbfc8', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '21', '2018-04-03 16:23:56', '21', '21');
INSERT INTO `app_data_count` VALUES ('821dcc65ed5d446da5867c596705c5e1', null, null, 'hour', '0', '2018-04-03 16:27:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('09a4d7e085cb45a4a7851124b905eef7', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '9', '2018-04-03 16:30:30', '1', '2');
INSERT INTO `app_data_count` VALUES ('55072d57fd9f4026acfc52a94e942d6c', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '7', '2018-04-03 16:30:37', '7', '7');
INSERT INTO `app_data_count` VALUES ('22885636cf67480f80730b065b337a65', '/test/management/backlog', '/test/management/backlog', 'hour', '1', '2018-04-03 16:31:18', '1', '1');
INSERT INTO `app_data_count` VALUES ('8f778df8b708473c956554a4e42a483f', '/app/listComment', '/app/listCommnt', 'hour', '15', '2018-04-03 16:31:13', '6', '9');
INSERT INTO `app_data_count` VALUES ('2d08ee04340940918149f5ffdb592c06', '/test/management/backlog', '/test/management/backlog', 'hour', '1', '2018-04-03 16:32:23', '1', '1');
INSERT INTO `app_data_count` VALUES ('3c3e4f7f76c14eea93512fc67e7b104c', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '2', '2018-04-03 16:32:07', '2', '2');
INSERT INTO `app_data_count` VALUES ('c296234b337448b0acb3fd2acd406949', '/app/listCommnt', '/app/listComment', 'hour', '10', '2018-04-03 16:32:34', '4', '6');
INSERT INTO `app_data_count` VALUES ('fb983088e25044c19fd05598fef16979', '/test/management/backlog', '/test/management/backlog', 'hour', '1', '2018-04-03 16:33:49', '1', '1');
INSERT INTO `app_data_count` VALUES ('e4e4767a11c8477bbea7eb2b4e66bc9f', null, null, 'hour', '0', '2018-04-03 16:34:32', '0', '0');
INSERT INTO `app_data_count` VALUES ('b9ee99bf45014ede9633a099d1e2dfca', '/app/listCommnt', '/app/listCommnt', 'hour', '4', '2018-04-03 16:34:47', '2', '2');
INSERT INTO `app_data_count` VALUES ('0d6eac251e7b4eb7a42311e35eaba42e', '/test/management/backlog', '/test/management/backlog', 'hour', '1', '2018-04-03 16:35:58', '1', '1');
INSERT INTO `app_data_count` VALUES ('fef0631f0b3d426c87ef1d83950518eb', null, null, 'hour', '0', '2018-04-03 16:35:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('9635a9f1856f4510b1e459d2750ff404', null, null, 'hour', '0', '2018-04-03 16:36:20', '0', '0');
INSERT INTO `app_data_count` VALUES ('d78e3b27ba1d48e09bf2bbd334fd3f72', null, null, 'hour', '0', '2018-04-03 16:37:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('fb2dcc13ab384ca78c8913e0bb3c248c', '/app/userNewsHistories', '/app/userNewsHistories', 'hour', '2', '2018-04-03 16:42:07', '2', '2');
INSERT INTO `app_data_count` VALUES ('97b542481df447f79f392b23b635293a', '/app/listCommnt', '/app/listCommnt', 'hour', '14', '2018-04-03 16:46:19', '7', '7');
INSERT INTO `app_data_count` VALUES ('fcb60e45a77649548a355070bb4306c3', null, null, 'hour', '0', '2018-04-03 16:47:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('a30677085e0643119190868226f3919f', '/app/userNewsHistories', '/app/getOneNews', 'hour', '20', '2018-04-03 16:52:07', '2', '18');
INSERT INTO `app_data_count` VALUES ('f585594cbff440ee9dfb1cbb4f5ff8a1', '/test/management/root_backlog.html', '/test/management/root_backlog.html', 'hour', '3', '2018-04-03 16:53:49', '1', '1');
INSERT INTO `app_data_count` VALUES ('af79b583b18f42e69d5dfb50445fb3f9', '/app/newsSearch', '/app/newsType', 'hour', '97', '2018-04-03 16:53:32', '7', '38');
INSERT INTO `app_data_count` VALUES ('9df9ecfa83ea460299577d30dc4440de', null, null, 'hour', '0', '2018-04-03 16:55:47', '0', '0');
INSERT INTO `app_data_count` VALUES ('4e3e03868e7f4465be400a58d852ddb4', '/app/listCommnt', '/app/listComment', 'hour', '10', '2018-04-03 16:56:19', '3', '7');
INSERT INTO `app_data_count` VALUES ('b9b0f48bf80a45049f22229b12d79a40', null, null, 'hour', '0', '2018-04-03 16:57:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('1e918e6cc3b0406caf98eeeb396efc81', '/app/listCommnt', '/app/listCommnt', 'hour', '3', '2018-04-03 17:00:30', '3', '3');
INSERT INTO `app_data_count` VALUES ('e93fdacc449b4d8189f7d61678ac54fc', '/app/listCommnt', '/app/listCommnt', 'hour', '3', '2018-04-03 17:01:49', '3', '3');
INSERT INTO `app_data_count` VALUES ('4dc12b233aa74a5d939ec8264dda8dad', '/app/getOneNews', '/app/userNewsHistories', 'hour', '15', '2018-04-03 17:01:48', '3', '12');
INSERT INTO `app_data_count` VALUES ('bd2e585d598346be9d657a8decadfdbf', '/test/ajax/workType-list', '/test/management/backlog', 'hour', '10', '2018-04-03 17:03:50', '1', '3');
INSERT INTO `app_data_count` VALUES ('5a9e7780ee864260b512656ebe0c19ce', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 17:04:42', '2', '2');
INSERT INTO `app_data_count` VALUES ('b390ccf6ceaa40a791d91ca51df9667c', '/app/index', '/app/index', 'hour', '10', '2018-04-03 17:05:46', '10', '10');
INSERT INTO `app_data_count` VALUES ('f7ace2ceaf284eac86f398408f46fcab', null, null, 'hour', '0', '2018-04-03 17:07:09', '0', '0');
INSERT INTO `app_data_count` VALUES ('e6b1fb3c4e5e44d48f17e279a3e9633a', '/management/login', '/management/news_release_list', 'hour', '4', '2018-04-03 17:08:31', '1', '3');
INSERT INTO `app_data_count` VALUES ('732f8508add24d6a8061611391311093', null, null, 'hour', '0', '2018-04-03 17:09:48', '0', '0');
INSERT INTO `app_data_count` VALUES ('edb12c51ecbd44f8a401f0bb7ebb0535', '/app/index', '/app/records', 'hour', '10', '2018-04-03 17:11:02', '1', '7');
INSERT INTO `app_data_count` VALUES ('4889e85ab4a54d408a7362cbd73350c3', '/management/login', '/management/login', 'hour', '3', '2018-04-03 17:11:04', '3', '3');
INSERT INTO `app_data_count` VALUES ('6e83f3ea200e48f28e7c076489fe8ad6', '/management/login', '/management/login', 'hour', '3', '2018-04-03 17:11:04', '3', '3');
INSERT INTO `app_data_count` VALUES ('9ec3257c4f6d4db0b6c9ace7f6576e4a', '/app/listCommnt', '/app/listComment', 'hour', '33', '2018-04-03 17:11:49', '6', '27');
INSERT INTO `app_data_count` VALUES ('a758dc9f2ada42aa8d9473846d1d1102', '/app/records', '/app/index', 'hour', '3', '2018-04-03 17:12:52', '1', '2');
INSERT INTO `app_data_count` VALUES ('5fcc00de35064b3a83ec330663e03200', '/management/login', '/management/login', 'hour', '4', '2018-04-03 17:12:21', '4', '4');
INSERT INTO `app_data_count` VALUES ('f51c49cf1ff04128868713c9d6d656cc', '/test/management/root_backlog.html', '/test/management/backlog', 'hour', '94', '2018-04-03 17:13:49', '6', '34');
INSERT INTO `app_data_count` VALUES ('5901654a14264384aadf5decce076b88', null, null, 'hour', '0', '2018-04-03 17:13:18', '0', '0');
INSERT INTO `app_data_count` VALUES ('3f91a258151e470f9f2c6addd7425e36', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-03 17:14:42', '2', '2');
INSERT INTO `app_data_count` VALUES ('98cafb41657b45e3a8eff79752ec7ed2', '/app/index', '/app/index', 'hour', '2', '2018-04-03 17:15:10', '1', '1');
INSERT INTO `app_data_count` VALUES ('8f8820610f024466844971daa36f2a7e', '/management/news_update.html', '/management/news_update.html', 'hour', '3', '2018-04-03 17:14:33', '1', '1');
INSERT INTO `app_data_count` VALUES ('d9404107a11a491e86816bb19f9bc811', '/management/news_index.html', '/management/news_index.html', 'hour', '5', '2018-04-03 17:15:52', '5', '5');
INSERT INTO `app_data_count` VALUES ('c9f3564531cc4210af30432d3259e987', '/app/records', '/app/records', 'hour', '1', '2018-04-03 17:16:39', '1', '1');
INSERT INTO `app_data_count` VALUES ('49e9850d1fed40a2ad5ef552855076f0', '/management/login', '/management/login', 'hour', '2', '2018-04-03 17:17:10', '1', '1');
INSERT INTO `app_data_count` VALUES ('21ab12578d0f4f14b6478fa2c87b5aca', null, null, 'hour', '0', '2018-04-03 17:18:54', '0', '0');
INSERT INTO `app_data_count` VALUES ('9746dade75764e13b9badb2deb2bab66', '/app/records', '/app/records', 'hour', '2', '2018-04-03 17:20:15', '2', '2');
INSERT INTO `app_data_count` VALUES ('891bb2d9104e42098f0f0db934d40e6e', null, null, 'hour', '0', '2018-04-03 17:20:46', '0', '0');
INSERT INTO `app_data_count` VALUES ('356f09335d5a4c2c9cd7ad57d578d960', '/app/listComment', '/app/login_y', 'hour', '34', '2018-04-03 17:21:48', '2', '14');
INSERT INTO `app_data_count` VALUES ('46365d651fa24ef097622d0cca84fbf6', '/app/records', '/app/records', 'hour', '2', '2018-04-03 17:22:05', '2', '2');
INSERT INTO `app_data_count` VALUES ('6af0846323994043840aa2ae983ce966', null, null, 'hour', '0', '2018-04-03 17:22:16', '0', '0');
INSERT INTO `app_data_count` VALUES ('0c7d2ef7ff344317a4ad6416c4a76b90', null, null, 'hour', '0', '2018-04-03 17:23:49', '0', '0');
INSERT INTO `app_data_count` VALUES ('0c51c39a95cd472eabdd71442cc64db4', '/app/index', '/app/index', 'hour', '1', '2018-04-03 17:24:14', '1', '1');
INSERT INTO `app_data_count` VALUES ('2db30c730e54470ea2d5dc64adbb9487', '/app/userNewsHistories', '/app/getOneNews', 'hour', '5', '2018-04-03 17:24:42', '2', '3');
INSERT INTO `app_data_count` VALUES ('f1c905c9280d4eecaa1d06044a2c42f0', null, null, 'hour', '0', '2018-04-03 17:27:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('584c35fbfc294a348047eafde3fdf885', '/app/index', '/app/records', 'hour', '21', '2018-04-03 17:28:32', '3', '18');
INSERT INTO `app_data_count` VALUES ('2bcc752ecac14f07ac4ee7134e5a5f0e', null, null, 'hour', '0', '2018-04-03 17:29:51', '0', '0');
INSERT INTO `app_data_count` VALUES ('688f7d641dfd40a2a3217953d120f65d', null, null, 'hour', '0', '2018-04-03 17:30:45', '0', '0');
INSERT INTO `app_data_count` VALUES ('4b12e8ca05c945b59c315674a177bcf2', null, null, 'hour', '0', '2018-04-03 17:31:04', '0', '0');
INSERT INTO `app_data_count` VALUES ('165f221199794149b59b43faa193cbdf', '/app/listComment', '/app/listCommnt', 'hour', '9', '2018-04-03 17:31:49', '3', '6');
INSERT INTO `app_data_count` VALUES ('c0baf120f8a24abf9730c3c61bdb57b2', '/management/login', '/management/updateReleaseById', 'hour', '5', '2018-04-03 17:32:02', '1', '2');
INSERT INTO `app_data_count` VALUES ('c579403af1644ddeba903a20545bba88', '/test/management/root_backlog.html', '/test/management/backlog', 'hour', '78', '2018-04-03 17:33:49', '3', '27');
INSERT INTO `app_data_count` VALUES ('5bf34595e7c8416faf39fa257235741f', '/app/getOneNews', '/app/login_y', 'hour', '20', '2018-04-03 17:34:42', '2', '12');
INSERT INTO `app_data_count` VALUES ('ed5d89b614534ebdbf06cdcff16b635b', '/management/news_updateRelease_list', '/management/news_updateRelease_list', 'hour', '2', '2018-04-03 17:38:37', '1', '1');
INSERT INTO `app_data_count` VALUES ('16c33194861f471f917111bdab205eee', null, null, 'hour', '0', '2018-04-03 17:39:04', '0', '0');
INSERT INTO `app_data_count` VALUES ('26b11589202d4927b95942123d8ddd7f', '/app/index', '/app/records', 'hour', '35', '2018-04-03 17:39:51', '4', '31');
INSERT INTO `app_data_count` VALUES ('aaaede3fb89c4e74bb2cbae355874bc1', '/management/login', '/management/login', 'hour', '2', '2018-04-03 17:39:55', '1', '1');
INSERT INTO `app_data_count` VALUES ('0e9214ccc4274f8a89ce117b3367c3b9', null, null, 'hour', '0', '2018-04-03 17:40:12', '0', '0');
INSERT INTO `app_data_count` VALUES ('098500a0e4d64b278ced2be14f77cc68', '/app/listComment', '/app/listCommnt', 'hour', '20', '2018-04-03 17:41:49', '3', '17');
INSERT INTO `app_data_count` VALUES ('b6b8c1a1185c4f82b18965316a7c2550', '/management/login', '/management/login', 'hour', '3', '2018-04-03 17:41:28', '3', '3');
INSERT INTO `app_data_count` VALUES ('d384d26322ee42eea6025f18c7724c0c', null, null, 'hour', '0', '2018-04-03 17:41:29', '0', '0');
INSERT INTO `app_data_count` VALUES ('8d2a25c50b4d46b88ed6b255c378eff5', '/test/management/root_backlog.html', '/test/management/backlog', 'hour', '54', '2018-04-03 17:42:51', '2', '18');
INSERT INTO `app_data_count` VALUES ('490ecb18a15e4a67b9d3b6727e64f3f4', '/app/index', '/app/records', 'hour', '8', '2018-04-03 17:42:42', '1', '7');
INSERT INTO `app_data_count` VALUES ('7181acef08df451bb6c978ff773baea8', '/management/login', '/management/login', 'hour', '7', '2018-04-03 17:42:41', '7', '7');
INSERT INTO `app_data_count` VALUES ('1888c2ae622049a7b83e5dc96bddf286', '/management/login', '/management/login', 'hour', '3', '2018-04-03 17:43:57', '3', '3');
INSERT INTO `app_data_count` VALUES ('47661e2c24e640a4978e669065879df2', '/app/getOneNews', '/app/getOneNews', 'hour', '32', '2018-04-03 17:44:42', '32', '32');
INSERT INTO `app_data_count` VALUES ('ae80a10e184a4c1bb2a78969e64298ac', '/test/management/root_backlog.html', '/test/ajax/workType-list', 'hour', '12', '2018-04-03 17:49:07', '1', '3');
INSERT INTO `app_data_count` VALUES ('d7ce68679b094633b00b743187fff97f', null, null, 'hour', '0', '2018-04-03 17:49:03', '0', '0');
INSERT INTO `app_data_count` VALUES ('58fa564f38914e23b1910c17c08a1aab', null, null, 'hour', '0', '2018-04-03 17:50:04', '0', '0');
INSERT INTO `app_data_count` VALUES ('be80b9aa134544fc9fa5c20f02622da6', '/app/apsLogin', '/app/login_y', 'hour', '19', '2018-04-03 17:51:49', '2', '6');
INSERT INTO `app_data_count` VALUES ('85073c6716f647ffaedc3cecc4ea6733', null, null, 'hour', '0', '2018-04-03 17:53:57', '0', '0');
INSERT INTO `app_data_count` VALUES ('04bd218eb4a347009b3b237cc231b09e', '/app/getOneNews', '/app/index', 'hour', '18', '2018-04-03 17:54:42', '1', '13');
INSERT INTO `app_data_count` VALUES ('40ac32a2985c4a96a1234082a1eeae13', null, null, 'hour', '0', '2018-04-03 17:58:31', '0', '0');
INSERT INTO `app_data_count` VALUES ('a071eb1c1b05417f9c90512446c2a98b', null, null, 'hour', '0', '2018-04-03 17:59:03', '0', '0');
INSERT INTO `app_data_count` VALUES ('78d87fb71f26417d9c47eccb4fbba5fe', '/app/listComment', '/app/listComment', 'hour', '4', '2018-04-03 18:01:49', '4', '4');
INSERT INTO `app_data_count` VALUES ('7af38c48396244ad88eb247fe773030d', null, null, 'hour', '0', '2018-04-03 18:02:39', '0', '0');
INSERT INTO `app_data_count` VALUES ('0234b13c58c04b1ab23e90385f6baee5', null, null, 'hour', '0', '2018-04-03 18:02:43', '0', '0');

-- ----------------------------
-- Table structure for authorities
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
-- Table structure for authorities_groups
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
-- Table structure for backlog
-- ----------------------------
DROP TABLE IF EXISTS `backlog`;
CREATE TABLE `backlog` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `work_type` varchar(255) DEFAULT NULL,
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
INSERT INTO `backlog` VALUES ('8970e5781c6a4bfebd5294b05958e836', '新闻审核,新闻管理', 'm001', '2018-04-03 00:00:00', '2018-04-20 00:00:00', 'asfdafdsafdsa', 'asfdsafdsafdsaf', null);

-- ----------------------------
-- Table structure for collections
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
INSERT INTO `collections` VALUES ('coll1522738850010', null, 'null', 'null', '2018-04-03 15:00:49');

-- ----------------------------
-- Table structure for comment
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
INSERT INTO `comment` VALUES ('1522720027797', '4444444444', '0', '201804021596283481146979532', '3fbea1c3c6c6409b92f1a7767ae940ca', '2018-04-03 09:47:07');
INSERT INTO `comment` VALUES ('1522720654010', '0909090', '0', '201804021596283481146979532', '57adda1c1c544918992f7637031954c7', '2018-04-03 09:57:34');
INSERT INTO `comment` VALUES ('1522720921671', '090909090', '0', '201804021596283481146979532', '3b10e2ff57014784b8a51f965105024a', '2018-04-03 10:02:01');
INSERT INTO `comment` VALUES ('1522721101848', '888888888888', '1', '201804021596283481146979532', '3b10e2ff57014784b8a51f965105024a', '2018-04-03 10:05:01');
INSERT INTO `comment` VALUES ('1522721367912', 'jjjjjjjjjjjjj', '1', '201804021596283481146979532', '3b10e2ff57014784b8a51f965105024a', '2018-04-03 10:09:27');
INSERT INTO `comment` VALUES ('1522723401385', '222222222333333333', '1', '201804021596160636103950394', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 10:43:21');
INSERT INTO `comment` VALUES ('1522723401386', '啦啦啦啦', '1', '201804021596160636103950394', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 10:43:21');
INSERT INTO `comment` VALUES ('1522723401387', '好的很', '1', '201804021596160636103950394', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 10:43:21');
INSERT INTO `comment` VALUES ('1522723401388', '雄起', '1', '201804021596160636103950394', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 10:43:21');
INSERT INTO `comment` VALUES ('1522747698611', '777777', '0', '201804021596283481146979532', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 17:28:18');
INSERT INTO `comment` VALUES ('1522748880470', '你跑啊', '0', '201804021596283481146979532', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-04-03 17:48:00');

-- ----------------------------
-- Table structure for groups
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
-- Table structure for history
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
INSERT INTO `history` VALUES ('2', '12', '5645', '1234', '2018-04-03 15:24:56');
INSERT INTO `history` VALUES ('3', '5445', '22', '1234', '2018-04-02 15:25:14');

-- ----------------------------
-- Table structure for manager
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
INSERT INTO `manager` VALUES ('70b614d1b0d94efe95e1e9cbef59a86c', 'm000', '$2a$10$EyvpMVjf7fnY2BN0DcJH.unpUW/rLZuC/KI5F71gVBpjnaze0oPem', 'root_mgr', '3a5eb3ec8c5b47e8bbe18817b3ae06ec', '2018-04-03 17:48:39', '2013-04-02 14:56:12', null, '0:0:0:0:0:0:0:1', '42', '3');
INSERT INTO `manager` VALUES ('bb21ba909cfa41b88694dd001f9d4a25', 'm001', '$2a$10$jzGJxyF.yaz5dnbJcZ85Y.lG8vkKEyDAraPHQgBx5aPgaO40RBsKm', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-04-03 17:32:15', '2014-04-02 14:56:16', 'C:\\Users\\Administrator\\IdeaProjects\\newsApp\\target\\newsApp-0.0.1-SNAPSHOT\\static\\img\\user\\head\\1522663189105-m001-timg1.jpg', '0:0:0:0:0:0:0:1', '55', '3');
INSERT INTO `manager` VALUES ('c003a9703675499587557f9aa643f7e9', 'm003', '$2a$10$zLlb4MH5Pr8VQw07bg4pZuEobdW2dAnsraJenA0xRSr8ll5bpf2bq', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-03-22 11:10:50', '2011-04-02 14:56:19', 'C:\\Users\\Administrator\\IdeaProjects\\newsApp\\target\\newsApp-0.0.1-SNAPSHOT\\static\\img\\user\\head\\1522667815893-m003-timg1.jpg', null, '0', '1');

-- ----------------------------
-- Table structure for news
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
INSERT INTO `news` VALUES ('201804021582877521928519744', '骑士没救了？三年前他们19胜20负开局', 'Jordan', 'D:\\news\\20180402\\2\\201804021582877521928519744', '2', '13', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021587406807434788928', '抛开荣誉谈数据，詹皇将成史上第一大魔王？', '大菠萝盖', 'D:\\news\\20180402\\2\\201804021587406807434788928', '2', '213', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021592253197368426567', '历史第七！詹姆斯这一项技能紧追科比奥尼尔！', '技巧君侃球', 'D:\\news\\20180402\\2\\201804021592253197368426567', '2', '13', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021593543951022817364', '当今联盟中的超级巨星都有谁？', '请叫我，超人', 'D:\\news\\20180402\\2\\201804021593543951022817364', '2', '12', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595172207768633405', '杜库将同砍25+5+5创史！他们是历史最具威胁组合？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021595172207768633405', '2', '3', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595469564648155745', '「同性恋基因」到底存不存在｜大象公会', '大象公会', 'D:\\news\\20180402\\1\\201804021595469564648155745', '1', '2', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595561305120135939', '藏族人为什么也拜关公｜大象公会', '大象公会', 'D:\\news\\20180402\\1\\201804021595561305120135939', '1', '5', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595691297946056183', '毛婷：最牛综艺们御用的色彩鲜师', '善缘街0号', 'D:\\news\\20180402\\1\\201804021595691297946056183', '1', '51', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595817091392340029', '无库里的勇士季后赛和火箭几几开？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021595817091392340029', '2', '16', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595827939596861220', '成本2亿票房3600万，《妈妈咪鸭》等国产动画电影还差了些什么？', '三文娱', 'D:\\news\\20180402\\1\\201804021595827939596861220', '1', '6', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595922264762216997', '腾讯一天赚2亿，投资人觉得不够多 ｜ 三文娱周刊', '三文娱', 'D:\\news\\20180402\\1\\201804021595922264762216997', '1', '1', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595964906145989586', '黄奉铎谈恕：恕是推己及人', '黄大仙', 'D:\\news\\20180402\\1\\201804021595964906145989586', '1', '31', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595966043598405268', '黄奉铎谈节德：节是自然规律', '黄大仙', 'D:\\news\\20180402\\1\\201804021595966043598405268', '1', '6', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595971576018239571', '就像打游戏一样，给郎佐鲍尔定个成长曲线吧', '静易墨', 'D:\\news\\20180402\\2\\201804021595971576018239571', '2', '6', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596055402729247077', '《吃货宇宙》与《美食大冒险》，两个国产美食动画的知识产权之争', '三文娱', 'D:\\news\\20180402\\1\\201804021596055402729247077', '1', '1', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596056890144859905', '铁打的唐家三少，流水的二次元', '三文娱', 'D:\\news\\20180402\\1\\201804021596056890144859905', '1', '6', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596149357436741584', '黄奉铎谈富贵病：节德是最好的方剂', '黄大仙', 'D:\\news\\20180402\\1\\201804021596149357436741584', '1', '3', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596160636103950394', '就在今天，韦德连续大帽詹姆斯！而赛后这一幕让多少球迷泪目啊！', '篮球技巧教学', 'D:\\news\\20180402\\2\\201804021596160636103950394', '2', '1', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596169069415705619', '共享经济遇冷，共享书架如何通过“企业共读”破局？', '盒饭财经', 'D:\\news\\20180402\\1\\201804021596169069415705619', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596235827602417088', '黄奉铎谈智：大智若愚的内在逻辑', '黄大仙', 'D:\\news\\20180402\\1\\201804021596235827602417088', '1', '16', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596283000183586901', '安东尼和乔治，雷霆的大问题', 'Mangangang', 'D:\\news\\20180402\\2\\201804021596283000183586901', '2', '1', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596283481146979532', '儿童图书市场也抢占热门IP，《哈利·波特》等授权图书占比超28%', '三文娱', 'D:\\news\\20180402\\1\\201804021596283481146979532', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596372777003005843', '《雏蜂》全新升级，《镇魂街》第二季？有妖气的2018全面发力！', '三文娱', 'D:\\news\\20180402\\1\\201804021596372777003005843', '1', '6459', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596420256671203394', '哈登本赛季将成联盟三分王，他三分能力什么水平', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596420256671203394', '2', '4', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596434252774244425', '美媒发问：这四大超巨，谁是最被高估的？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596434252774244425', '2', '416', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596472545611087952', '猛龙 VS 凯尔特人：谁更有机会翻过勒布朗？', '至爱戴维斯', 'D:\\news\\20180402\\2\\201804021596472545611087952', '2', '41', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596504761126879303', '基德纳什阿伦希尔携手入选名人堂，现役哪些球员铁定能进？', 'Greatness', 'D:\\news\\20180402\\2\\201804021596504761126879303', '2', '1', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596510304441729104', '【贫道侃球】献给伟大的你——杰森•基德', '外海道人', 'D:\\news\\20180402\\2\\201804021596510304441729104', '2', '1', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596552136062140474', '美媒发问：罗斯未来能否入选名人堂？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596552136062140474', '2', '6', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596553335754719314', '除了冠军数，乔丹还有哪些方面强于詹姆斯？', '麦迪', 'D:\\news\\20180402\\2\\201804021596553335754719314', '2', '651', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596565985295335490', '宿命对决！难兄难弟般的雷霆和鹈鹕，会如愿进入季后赛吗？', '菠萝', 'D:\\news\\20180402\\2\\201804021596565985295335490', '2', '61', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596596320978600019', '我想知道这个赛季有多少球队十连胜以上？', '崔先森，', 'D:\\news\\20180402\\2\\201804021596596320978600019', '2', '6', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596600494919303979', '艾尔平方获数千万元B轮融资，将出品开发更多原创动画作品', '三文娱', 'D:\\news\\20180402\\1\\201804021596600494919303979', '1', '16', null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596602896117399610', '当年全明星5大控卫，如今2人成为了名人堂！', '技巧君侃球', 'D:\\news\\20180402\\2\\201804021596602896117399610', '2', '61', null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596604996813931300', '艾诚专访RJ Pittman：eBay拿什么阻击“阿里亚马逊们”？', '艾问人物', 'D:\\news\\20180402\\4\\201804021596604996813931300', '4', '165', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596605422693693839', '并购百度外卖不久，刚刚，饿了么又被马云95亿美元全资收购了！', '一牛财经', 'D:\\news\\20180402\\4\\201804021596605422693693839', '4', '16', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596607906834537487', '掘金明星IP 新三板分享时代2017年营收2.37亿净赚5109万', '挖贝网', 'D:\\news\\20180402\\4\\201804021596607906834537487', '4', '15', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596609876902019480', '确认过眼神，你不是我要的贷款人', '金评媒', 'D:\\news\\20180402\\4\\201804021596609876902019480', '4', '651651', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596611591901463099', '厉害我的国！7天，人民币原油期货交易额1159亿！连美国都佩服？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596611591901463099', '4', '6', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596618832260880896', '刚刚，白银市场传来一个好消息！银价或要暴涨，连黄金都跟不上？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596618832260880896', '4', '6', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596619272277657081', '楚山科技CEO郝鹏：迎来无线充电技术的曙光', 'GPLP', 'D:\\news\\20180402\\4\\201804021596619272277657081', '4', '1', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596619344666281987', '看！高盛带着中国顶尖大佬一起打酱油', '君临', 'D:\\news\\20180402\\4\\201804021596619344666281987', '4', '16', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621291172674154', '感谢《歌手》，让我们看见了青春里的张韶涵', '娱史通鉴', 'D:\\news\\20180402\\3\\201804021596621291172674154', '3', '6', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596621366693436815', '遇见你真好｜张海宇将体育生谢伦的痴情拿捏得刚刚好', '鱼为', 'D:\\news\\20180402\\3\\201804021596621366693436815', '3', '651', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596621597233021618', '比起贸易战，更让人担心的是养老金', '政商参阅', 'D:\\news\\20180402\\4\\201804021596621597233021618', '4', '6165', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621662441666581', '人民币创汇改新高 外贸企业该如何应对？', '平说财经张平', 'D:\\news\\20180402\\4\\201804021596621662441666581', '4', '616', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621752057789675', '以史为鉴！4月，或许是股市大红大紫的一个月！', '一牛财经', 'D:\\news\\20180402\\4\\201804021596621752057789675', '4', '16', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596622303854934881', '《歌手》QQ音乐人气排行榜前三甲，最受欢迎的不是结石姐而是他', '温翔', 'D:\\news\\20180402\\3\\201804021596622303854934881', '3', '168', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596622755301631209', '最美岳灵珊，嫁小演员隐退，倾家荡产帮老公拍戏，现成亿万富婆', '阳光八卦君', 'D:\\news\\20180402\\3\\201804021596622755301631209', '3', '16', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596622769073814450', '倪萍用风衣袖子挡镜头，网友的反应是否误解了她？', '海蛎子', 'D:\\news\\20180402\\3\\201804021596622769073814450', '3', '16', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596623489089641981', '蓝盈莹这样的鬼马少女，让每个少年都怦然心动', '鱼为', 'D:\\news\\20180402\\3\\201804021596623489089641981', '3', '16', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596623587708714388', '关晓彤新造型被群嘲像妇女，丧失少女感，网友：得罪造型师了？', '孤烟', 'D:\\news\\20180402\\3\\201804021596623587708714388', '3', '1685', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596624149355036897', '曾炫耀打过蓝洁瑛的她，如今儿子在美国被捕，网友却一点也不意外', '不八卦会死星人', 'D:\\news\\20180402\\3\\201804021596624149355036897', '3', '561', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596624420197009251', '黄斌汉：加息预期引冲高回落', '黄斌汉', 'D:\\news\\20180402\\4\\201804021596624420197009251', '4', '651', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596624789835926441', '李大霄：中美贸易冲突对股市带来的长期影响有多大？', '功夫财经', 'D:\\news\\20180402\\4\\201804021596624789835926441', '4', '16551', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625240163634100', '世界货币地位动摇！除了人民币原油期货，黄金也加速美元的衰落？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596625240163634100', '4', '1651', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625641697773201', '小米MIX 2S确认过眼神iPhone X是怼的“人”', 'IT时报', 'D:\\news\\20180402\\5\\201804021596625641697773201', '5', '165', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596625726780148920', '《武动乾坤》《斗破苍穹》将播令人期待，可《大主宰》被女主坑了', '八卦娱', 'D:\\news\\20180402\\3\\201804021596625726780148920', '3', '65', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625812340482658', '高云翔出事后妻子董璇首次现身，妆容虽然精致但面容十分憔悴', '阳光八卦君', 'D:\\news\\20180402\\3\\201804021596625812340482658', '3', '1965', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625839738213354', '赵薇晒女儿和老公温馨日常，小四月长发及腰继承了妈妈的好基因', '铁任', 'D:\\news\\20180402\\3\\201804021596625839738213354', '3', '51', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625980114111102', '月薪3000能买下3套房？这种理财故事你相信吗？', '融金所', 'D:\\news\\20180402\\4\\201804021596625980114111102', '4', '5156', null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625984660980456', '言豫津生日靖王发文祝福，马天宇的评论亮了，网友直呼：笑哭了', '娱乐大爆炸', 'D:\\news\\20180402\\3\\201804021596625984660980456', '3', '16', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596626022989556710', '新iPad、Apple Pencil，还有一波教育软件', 'IT时报', 'D:\\news\\20180402\\5\\201804021596626022989556710', '5', '651', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596626311339574833', '这次真的要来了？HTC U12再次曝光：前置双摄没跑了', '雷科技', 'D:\\news\\20180402\\5\\201804021596626311339574833', '5', '156', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596626635811310750', 'OPPO R15首销火爆 三平台拿下销量/销售额双料冠军', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596626635811310750', '5', '195', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596627090296224041', '《南方有乔木》评分口碑下滑，白百何女主惹争议，陈伟霆成亮点', '娱乐大爆炸', 'D:\\news\\20180402\\3\\201804021596627090296224041', '3', '894', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596627627940547700', '网曝高云翔案出现关键猛料，受害女信息遭曝光 10年前移民澳洲', '金牌娱乐', 'D:\\news\\20180402\\3\\201804021596627627940547700', '3', '95', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596627897373779539', 'UC Berkeley课程CS 294：深度强化学习', '机器之心', 'D:\\news\\20180402\\5\\201804021596627897373779539', '5', '69', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596627933552032313', 'OPPO R15标配6+128GB存储组合，带来绝佳流畅体验', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596627933552032313', '5', '15', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628307292226880', 'Moto G6将于5月开卖：骁龙630+全面屏，毫无惊喜？', '雷科技', 'D:\\news\\20180402\\5\\201804021596628307292226880', '5', '94', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628482981413199', '就长这样了！LG G7渲染图曝光：刘海屏+骁龙845', '雷科技', 'D:\\news\\20180402\\5\\201804021596628482981413199', '5', '5', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628591909320703', 'NYU联合Google Brain提出结合工作记忆的视觉推理架构和数据集', '机器之心', 'D:\\news\\20180402\\5\\201804021596628591909320703', '5', '5', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628606532312454', '开源云计算博弈，左手技术、右手行业', '郑凯Kay', 'D:\\news\\20180402\\5\\201804021596628606532312454', '5', '598', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628877054922672', '荣耀愚人节提前泄露天机：AI摄影能打败iPhone吗？', '雷科技', 'D:\\news\\20180402\\5\\201804021596628877054922672', '5', '5', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628987164859216', 'ofo否认愚人节合并传闻，摩拜为何态度暧昧？', '百略网', 'D:\\news\\20180402\\5\\201804021596628987164859216', '5', '52', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629220315613058', '也许这才是人们需要的人工智能！vivo Jovi真的太好用了', '雷科技', 'D:\\news\\20180402\\5\\201804021596629220315613058', '5', '9', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629381937880078', '上市即被对手碾压？小米游戏本还有很长的路要走', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596629381937880078', '5', '984', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629864493124244', '周杰伦上央视节目，曝料担心被时代淘汰，曾经为刘德华写歌被弃用', '温翔', 'D:\\news\\20180402\\3\\201804021596629864493124244', '3', '56', null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596630205947143847', '樱智热水器被质监局点名 只因这几项不合格之处', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596630205947143847', '5', '89', null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804031539249424797007910', '谁才是当今联盟第一人？', '詹欧乐（卫冕）', 'D:\\news\\20180403\\2\\201804031539249424797007910', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031571559713984741414', '“登炮组合”开启夺冠之旅？他们接下来要考虑的问题还有很多', '愁容骑士', 'D:\\news\\20180403\\2\\201804031571559713984741414', '2', '5', null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031578853531384807485', '篮球之神称现役只有三人是超巨！其他的都不是！', 'Sunny girl', 'D:\\news\\20180403\\2\\201804031578853531384807485', '2', '984', null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031595172207768633405', '杜库将同砍25+5+5创史！他们是历史最具威胁组合？', 'T-Bag', 'D:\\news\\20180403\\2\\201804031595172207768633405', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031595447248609607738', '保罗一数据将超乔丹居历史首位 火箭夺冠对他历史地位有多大加成', 'T-Bag', 'D:\\news\\20180403\\2\\201804031595447248609607738', '2', '95', null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031595469564648155745', '「同性恋基因」到底存不存在｜大象公会', '大象公会', 'D:\\news\\20180403\\1\\201804031595469564648155745', '1', '5', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595561305120135939', '藏族人为什么也拜关公｜大象公会', '大象公会', 'D:\\news\\20180403\\1\\201804031595561305120135939', '1', '89', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595691297946056183', '毛婷：最牛综艺们御用的色彩鲜师', '善缘街0号', 'D:\\news\\20180403\\1\\201804031595691297946056183', '1', '56', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595827939596861220', '成本2亿票房3600万，《妈妈咪鸭》等国产动画电影还差了些什么？', '三文娱', 'D:\\news\\20180403\\1\\201804031595827939596861220', '1', '89', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595922264762216997', '腾讯一天赚2亿，投资人觉得不够多 ｜ 三文娱周刊', '三文娱', 'D:\\news\\20180403\\1\\201804031595922264762216997', '1', '894', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595964906145989586', '黄奉铎谈恕：恕是推己及人', '黄大仙', 'D:\\news\\20180403\\1\\201804031595964906145989586', '1', '519', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031595966043598405268', '黄奉铎谈节德：节是自然规律', '黄大仙', 'D:\\news\\20180403\\1\\201804031595966043598405268', '1', '918', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596055402729247077', '《吃货宇宙》与《美食大冒险》，两个国产美食动画的知识产权之争', '三文娱', 'D:\\news\\20180403\\1\\201804031596055402729247077', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596056890144859905', '铁打的唐家三少，流水的二次元', '三文娱', 'D:\\news\\20180403\\1\\201804031596056890144859905', '1', '95189', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596149357436741584', '黄奉铎谈富贵病：节德是最好的方剂', '黄大仙', 'D:\\news\\20180403\\1\\201804031596149357436741584', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596169069415705619', '共享经济遇冷，共享书架如何通过“企业共读”破局？', '盒饭财经', 'D:\\news\\20180403\\1\\201804031596169069415705619', '1', '9', null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596235827602417088', '黄奉铎谈智：大智若愚的内在逻辑', '黄大仙', 'D:\\news\\20180403\\1\\201804031596235827602417088', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596283481146979532', '儿童图书市场也抢占热门IP，《哈利·波特》等授权图书占比超28%', '三文娱', 'D:\\news\\20180403\\1\\201804031596283481146979532', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596345869148356669', '【黝黑蜗壳】火箭坐稳西部第一，只因当初没签甜瓜吗?', '《黝黑蜗壳》节目组', 'D:\\news\\20180403\\2\\201804031596345869148356669', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596372777003005843', '《雏蜂》全新升级，《镇魂街》第二季？有妖气的2018全面发力！', '三文娱', 'D:\\news\\20180403\\1\\201804031596372777003005843', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596434252774244425', '美媒发问：这四大超巨，谁是最被高估的？', 'T-Bag', 'D:\\news\\20180403\\2\\201804031596434252774244425', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596445389313015874', '美媒统计字母哥对联盟所有球队最高得分 谁能达成科比神迹？', '麦迪', 'D:\\news\\20180403\\2\\201804031596445389313015874', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596472545611087952', '猛龙 VS 凯尔特人：谁更有机会翻过勒布朗？', '至爱戴维斯', 'D:\\news\\20180403\\2\\201804031596472545611087952', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596504761126879303', '基德纳什阿伦希尔携手入选名人堂，现役哪些球员铁定能进？', 'Greatness', 'D:\\news\\20180403\\2\\201804031596504761126879303', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596553335754719314', '除了冠军数，乔丹还有哪些方面强于詹姆斯？', '麦迪', 'D:\\news\\20180403\\2\\201804031596553335754719314', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596600494919303979', '艾尔平方获数千万元B轮融资，将出品开发更多原创动画作品', '三文娱', 'D:\\news\\20180403\\1\\201804031596600494919303979', '1', null, null, '2018-04-03 10:00:34');
INSERT INTO `news` VALUES ('201804031596615525533745223', 'NCAA半决赛堪萨斯VS维拉诺瓦这场的嘉宾是谁啊？如图', 'PandaD', 'D:\\news\\20180403\\2\\201804031596615525533745223', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596615831390781506', '真特么假！打这60秒铁，收了不少钱吧', '懂球妹', 'D:\\news\\20180403\\2\\201804031596615831390781506', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596626831252914256', '雄鹿是如何一步步把字母哥逼到悬崖边上的？', 'Jordan', 'D:\\news\\20180403\\2\\201804031596626831252914256', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596627963372109905', '狂言君：西部群英荟萃，谁会最后倒霉？', '狂言Doggy', 'D:\\news\\20180403\\2\\201804031596627963372109905', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596637201281581139', '【吐槽篮球】既想首轮打勇士, 又不想首轮打火箭, 雷霆维持西部第7是最好的结果？', '吐槽篮球_TC', 'D:\\news\\20180403\\2\\201804031596637201281581139', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596644140069683273', '明天有骑士打猛龙，雷霆打勇士，你们想看哪一场', '答案', 'D:\\news\\20180403\\2\\201804031596644140069683273', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596646263653138498', '三巨头关键时刻都掉链子！雷霆的季后赛真的稳操胜券了？', '奥巴马', 'D:\\news\\20180403\\2\\201804031596646263653138498', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596648888980209745', '【三十分说球】最佳防守阵容预测', 'sailor', 'D:\\news\\20180403\\2\\201804031596648888980209745', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596676654584823869', '周最佳球员：东部奥拉迪波当选 西部利拉德当选', '在岸一方', 'D:\\news\\20180403\\2\\201804031596676654584823869', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596678219966185538', '什么情况？今天怎么没有NBA比赛了', '在岸一方', 'D:\\news\\20180403\\2\\201804031596678219966185538', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596681019880112210', '利拉德和奥拉迪波当选周最佳 他们是各自位置第几人？', 'T-Bag', 'D:\\news\\20180403\\2\\201804031596681019880112210', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596682004648571792', '林青霞的每个造型都是精心搭配，真正的女神美在骨子里', '娱乐全搜索', 'D:\\news\\20180403\\3\\201804031596682004648571792', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596682460285408980', '四月即将上映的四部大戏，最后一部从万众期待到深受抵制', '娱乐全搜索', 'D:\\news\\20180403\\3\\201804031596682460285408980', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596682505434431572', '差点吵起来！各位过来讲一讲，这球走步吗？', '枉凝眉❄️', 'D:\\news\\20180403\\2\\201804031596682505434431572', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596682601109651529', '为什么今天没有一场nba', '扬xi', 'D:\\news\\20180403\\2\\201804031596682601109651529', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596682867264454722', 'NBA官方宣布球迷可以给各大奖项投票 心疼登哥……', 'T-Bag', 'D:\\news\\20180403\\2\\201804031596682867264454722', '2', null, null, '2018-04-03 10:01:13');
INSERT INTO `news` VALUES ('201804031596683097275280787', '洪欣携儿子张镐濂为张丹峰庆生，网友惊奇发现继父子长得越来越像', '娱乐全搜索', 'D:\\news\\20180403\\3\\201804031596683097275280787', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596683625566370078', '她是马天宇的好闺蜜，一手烂牌打出精彩，邓莎和大麟子有点甜', '娱乐全搜索', 'D:\\news\\20180403\\3\\201804031596683625566370078', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596684195788841735', '童颜陈乔恩甜美林志玲，但是她们都比不过69岁却如19岁少女的她', '娱乐全搜索', 'D:\\news\\20180403\\3\\201804031596684195788841735', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596685129985723045', '生日不送祝福作品未帮忙宣传，李小璐的做法会让贾乃亮心寒', '金牌娱乐', 'D:\\news\\20180403\\3\\201804031596685129985723045', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596685364913246642', '网综进入7亿时代，金主揭秘：我为什么愿意为它买单？', '娱乐资本论', 'D:\\news\\20180403\\3\\201804031596685364913246642', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596685410637916712', '比霍建华大三岁有没有问题是否由林心如说了算？网友是这样说的', '海蛎子', 'D:\\news\\20180403\\3\\201804031596685410637916712', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596685483301936654', '2亿签约斗鱼后，快手能不能走出第二个主播骚白？', '娱乐资本论', 'D:\\news\\20180403\\3\\201804031596685483301936654', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596685583657282474', '《头号玩家》中美票房均喜人；Hulu因相关女主播不当言论或遭抵制', '娱乐资本论', 'D:\\news\\20180403\\3\\201804031596685583657282474', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596686531408323474', '袁立曝光人身攻击邮件，言语太恶毒，袁立气坏了，网友纷纷出招', '温翔', 'D:\\news\\20180403\\3\\201804031596686531408323474', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596686636844217797', 'TVB新晋小生 被称“翻版cool魔”今跟无线咪神承认分手', 'TVB剧透社', 'D:\\news\\20180403\\3\\201804031596686636844217797', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596688814777036217', '陈赫张子萱婚后首次公开同框秀恩爱！却因为插队被狂批？！', '达人钧钧', 'D:\\news\\20180403\\3\\201804031596688814777036217', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596689517886015413', '狄莺之子孙安佐又被搜出1600发子弹，还通过网络自制武器', '金牌娱乐', 'D:\\news\\20180403\\3\\201804031596689517886015413', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596689834439260897', '林志玲一双鞋穿7年，这双42码脚与女神颜值真不搭配', '娱史通鉴', 'D:\\news\\20180403\\3\\201804031596689834439260897', '3', null, null, '2018-04-03 10:56:37');
INSERT INTO `news` VALUES ('201804031596691709746479186', '比赛中受伤的镜头：乔治骨折众球星不敢看，科比最让人心疼', '在岸一方', 'D:\\news\\20180403\\2\\201804031596691709746479186', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596694487327172710', '黄斌汉：贸易战利好自贸港', '黄斌汉', 'D:\\news\\20180403\\4\\201804031596694487327172710', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596694647051873995', '爆料：摩拜尚未定卖身美团，据说滴滴也想投资', '开八', 'D:\\news\\20180403\\5\\201804031596694647051873995', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596695129647280541', '重磅！600亿！从此，饿了请叫“爸爸”！', '政商参阅', 'D:\\news\\20180403\\4\\201804031596695129647280541', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596695134675440660', '贸易战：下一个战役的主战场是大豆？', '陶短房', 'D:\\news\\20180403\\4\\201804031596695134675440660', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596695239273635602', '潘玮柏回应秘恋空姐，发跑车照声称以黑治黑，却被网友打脸', '孤烟', 'D:\\news\\20180403\\3\\201804031596695239273635602', '3', '100', null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596695274908567413', '阿里全资收购饿了么，并且独家代理《旅行青蛙》，首个5G电话打通', '差评', 'D:\\news\\20180403\\5\\201804031596695274908567413', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596695371144313703', '初入「专利代理行业菜鸟」如何快速成长？', 'IPRdaily', 'D:\\news\\20180403\\4\\201804031596695371144313703', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596695459022117703', '三星Exynos 9820首曝：支持5G网络+自研GPU？', '雷科技', 'D:\\news\\20180403\\5\\201804031596695459022117703', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596695550054295903', '第一次追剧追到想拆CP，真想跳进屏幕里抱抱wuli刀三小姐', '娱史通鉴', 'D:\\news\\20180403\\3\\201804031596695550054295903', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596695593804288001', 'B站董事长陈睿的进击之路', '经济微观察', 'D:\\news\\20180403\\4\\201804031596695593804288001', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596695923542212220', '芮勇《最强大脑》秀肌肉 联想智能生态416要搞大动作？', '熊出墨请注意', 'D:\\news\\20180403\\5\\201804031596695923542212220', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596695980155893413', '肖峰：滴滴，以革命者姿态进入，以垄断者姿态告终', '功夫财经', 'D:\\news\\20180403\\4\\201804031596695980155893413', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596696252326174285', '别急着接受今日头条的道歉，你考虑过张一鸣和资本的感受吗？', '冯先生失眠中', 'D:\\news\\20180403\\5\\201804031596696252326174285', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596696572741025865', '【黝黑蜗壳】详细分析西部季后赛排位，谁将杀出重围？', '《黝黑蜗壳》节目组', 'D:\\news\\20180403\\2\\201804031596696572741025865', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596696624770844456', '从影32年曾打败陈坤夺影帝，新戏碾压陈思诚的他要火了吗？', '不八卦会死星人', 'D:\\news\\20180403\\3\\201804031596696624770844456', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596696666606024215', '来自93亿年前的神秘闪光！哈勃观测到最遥远的恒星', '三体迷', 'D:\\news\\20180403\\5\\201804031596696666606024215', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596696934932607240', '艾问张旭豪：“卖身”之后的饿了么听谁的？', '艾问人物', 'D:\\news\\20180403\\4\\201804031596696934932607240', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596697052200793271', '日本为何投资100亿美元到东南亚？专家：去库存，还可讨好美国！', '一牛财经', 'D:\\news\\20180403\\4\\201804031596697052200793271', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596697085433509328', '乐视的土地去哪儿了？', '华商韬略', 'D:\\news\\20180403\\4\\201804031596697085433509328', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596697214578589754', '3年2冠！NCAA维拉诺瓦，你他娘的意大利炮，真厉害！', '篮圈妞', 'D:\\news\\20180403\\2\\201804031596697214578589754', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596697330105966205', '中国电信：统一申请用户授权，网友表示：谁来保护用户隐私？', '俊世太保', 'D:\\news\\20180403\\5\\201804031596697330105966205', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596697370746052662', '谷歌战略性一步：分拆搜索和AI部门，Jeff Dean任AI总负责人', '大数据文摘', 'D:\\news\\20180403\\5\\201804031596697370746052662', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596697390445756498', '【黝黑蜗壳】超越乔丹后陷萎靡，詹姆斯说骑士会在季后赛里强上一档？', '《黝黑蜗壳》节目组', 'D:\\news\\20180403\\2\\201804031596697390445756498', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596697408711075736', '1980年上映的恐怖片《闪灵》吓坏无数观众，还被各种大师模仿致敬', '婊姐影评', 'D:\\news\\20180403\\3\\201804031596697408711075736', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596697472497893064', '外观不变功能更丰富！小米手环3曝光：触控屏+游泳监测功能', '雷科技', 'D:\\news\\20180403\\5\\201804031596697472497893064', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596697594960699647', '腾讯本色！微信《跳一跳》推出皮肤系统，不过暂时不需花钱解锁', '雷科技', 'D:\\news\\20180403\\5\\201804031596697594960699647', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596698282272291106', '距离《偶像练习生》9人男团解散，还有19个月', '娱乐硬糖', 'D:\\news\\20180403\\3\\201804031596698282272291106', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596698342439957376', '黄奇帆一走 重庆房价和火锅一样火爆', '叶檀', 'D:\\news\\20180403\\4\\201804031596698342439957376', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596698709827387084', 'B站上市刚重启二次元风口，可能被Cosplay的版权陷阱所湮没', '张书乐', 'D:\\news\\20180403\\5\\201804031596698709827387084', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596698752064913449', '一位港片迷写给香港电影的信', '香港电影', 'D:\\news\\20180403\\3\\201804031596698752064913449', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596699078573793815', '技术创新+时尚潮流 这才是一个完整的OPPO', '五道狗', 'D:\\news\\20180403\\5\\201804031596699078573793815', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596699081691577459', '王家卫担任北京国际电影节评委会主席', '香港电影', 'D:\\news\\20180403\\3\\201804031596699081691577459', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596699165670777562', '《僵尸》之后，这位香港最有才的富二代又将开辟新天地！', '香港电影', 'D:\\news\\20180403\\3\\201804031596699165670777562', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596699180821060954', '平常不理财，出门连“浪”的钱都没有！', '天方燕谈李燕', 'D:\\news\\20180403\\5\\201804031596699180821060954', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596699212177903264', '奚梦瑶与何猷君家人同游泰国，一个举动证明已经半只脚踏进豪门', '阳光八卦君', 'D:\\news\\20180403\\3\\201804031596699212177903264', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596699222354657668', '官方宣布重审张紫妍案，遗书曾曝31人陪睡名单，自杀9年仍无真相', '铁任', 'D:\\news\\20180403\\3\\201804031596699222354657668', '3', '100', null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596699367385963583', '我做微商，我是好姑娘……', '越女读财', 'D:\\news\\20180403\\4\\201804031596699367385963583', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596699591099547709', '无意的愧疚和有意的一笑而过', '吴欣荣', 'D:\\news\\20180403\\2\\201804031596699591099547709', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596699830237731745', '出道39年曾为夫还巨债后却离婚收场 当年在TVB与亚视都是一姐', 'TVB剧透社', 'D:\\news\\20180403\\3\\201804031596699830237731745', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596700147334762683', '微信又出爆款，超便宜了', '越女读财', 'D:\\news\\20180403\\4\\201804031596700147334762683', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596700176905863100', '靠价格战，改变出行市场格局？没戏', '盒饭财经', 'D:\\news\\20180403\\4\\201804031596700176905863100', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596700422968169638', '四大理由力证高云翔是被陷害，或4月6日当庭释放，36岁编导不简单', '铁任', 'D:\\news\\20180403\\3\\201804031596700422968169638', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596700686421866590', '高云翔事件惊天大逆转！澳媒改口性侵为袭击！36岁女子正面照曝光', '达人钧钧', 'D:\\news\\20180403\\3\\201804031596700686421866590', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596701301903237717', '奚梦瑶被网友偶遇和赌王四太一家游泰国，疑确定和何猷君恋爱关系', '温翔', 'D:\\news\\20180403\\3\\201804031596701301903237717', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596701347206651086', '爆料：摩拜今天开董事会 讨论接受美团收购还是引入滴滴？', '微文', 'D:\\news\\20180403\\5\\201804031596701347206651086', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596701390222320400', '文章马伊琍机场起争执！马伊琍哭着说：我也是个女人啊！', '达人钧钧', 'D:\\news\\20180403\\3\\201804031596701390222320400', '3', null, null, '2018-04-03 14:20:02');
INSERT INTO `news` VALUES ('201804031596702008568627450', '阿里95亿美金吞下饿了么，非常迫切！', '犀利财经', 'D:\\news\\20180403\\5\\201804031596702008568627450', '5', null, null, '2018-04-03 14:17:40');
INSERT INTO `news` VALUES ('201804031596703005624762448', '【柚子篮球】18选秀新星？总冠军球队的绝对超巨！艾顿，东契奇都达不到他这个成就！', '柚子篮球', 'D:\\news\\20180403\\2\\201804031596703005624762448', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596703133756820192', '滴滴回应联合软银收购摩拜：没有，假的', '投中网', 'D:\\news\\20180403\\4\\201804031596703133756820192', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596703465560604755', '【柚子篮球】两个业余打球的歌手都拿了周最佳？NBA乱来！', '柚子篮球', 'D:\\news\\20180403\\2\\201804031596703465560604755', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596703713698825821', '携程入局网约车，三国大战哪有群雄争霸好看？', '投中网', 'D:\\news\\20180403\\4\\201804031596703713698825821', '4', null, null, '2018-04-03 14:18:17');
INSERT INTO `news` VALUES ('201804031596704210232016967', '20+11的大帝翻版！我为他摆烂怎么了', '懂球妹', 'D:\\news\\20180403\\2\\201804031596704210232016967', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596704949175058493', '夺冠的维拉诺瓦大学，其实就是NCAA的休斯顿火箭', '乌潮篮球', 'D:\\news\\20180403\\2\\201804031596704949175058493', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596705351613284418', '被篮球原因毁掉的真神要复出了！东部局势怕是要变一变了', '懂球妹', 'D:\\news\\20180403\\2\\201804031596705351613284418', '2', '100', null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596708072892399689', '詹姆斯：韦德的位置可以让一让了。', 'BallU', 'D:\\news\\20180403\\2\\201804031596708072892399689', '2', null, null, '2018-04-03 17:08:17');
INSERT INTO `news` VALUES ('201804031596713416475541577', '猛龙VS骑士，骑士获胜大', '文', 'D:\\news\\20180403\\2\\201804031596713416475541577', '2', null, null, '2018-04-03 17:08:17');

-- ----------------------------
-- Table structure for news_type
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
-- Table structure for release
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
INSERT INTO `release` VALUES ('1', '2018-03-06 10:05:27', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '1', '1', '196816', '2');
INSERT INTO `release` VALUES ('112', '2018-03-09 09:50:32', null, '33008257788b414b8d81323567680c71', '353', '2', 'asdgasdfga', '2');
INSERT INTO `release` VALUES ('116', '2018-03-27 10:06:29', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '343', '4', '16', '2');
INSERT INTO `release` VALUES ('12345', null, '159753123654', null, null, null, 'test', '1');
INSERT INTO `release` VALUES ('147', '2018-03-04 10:06:58', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '4563', '4', '16516', '1');
INSERT INTO `release` VALUES ('23', '2018-03-08 10:05:57', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '86', '2', '165461', '2');
INSERT INTO `release` VALUES ('235', '2018-03-08 10:05:57', null, '33008257788b414b8d81323567680c71', '545', '5', 'test', '3');
INSERT INTO `release` VALUES ('798', '2018-03-05 09:51:07', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '8676', '3', 'adsgwrehgah', null);
INSERT INTO `release` VALUES ('999', '2018-03-29 00:00:00', 'path路径', '40e7e6a691ca43bb8d1d771dacb7ff98', '1', '1', '陌上花开', '1');

-- ----------------------------
-- Table structure for report
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
-- Table structure for subscribe
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
-- Table structure for subscribe_type
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
-- Table structure for users
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
INSERT INTO `users` VALUES ('914d9d32c0ff47a4a4412c1267c4fbdb', '13541509103', 'ooooo', '21218CCA77804D2BA1922C33E0151105', '/userfiles/images/1522657037263.jpg', '1', '1995-12-03', '四川省 成都市 锦江区', '篮球 足球 羽毛球 乒乓球 游泳', '遇之人而愚人，足以死已 ! 聪之人而愚人，为其乐者，需斩杀！', '2018-03-28 13:59:08', '普通用户', '1', '2018-03-28 13:59:08');
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
INSERT INTO `users` VALUES ('eb3adbace10d4782a2dff0b4a23f9949', '13566669999', '李大爷', '666999', '../imgs/shuijiao.jpg', '1', '1996-11-15', '苏州', '篮球 羽毛球 乒乓球 足球 游泳', '千里之行，始于足下。凤舞玩', null, null, '1', null);
INSERT INTO `users` VALUES ('f02da31444c84befa9990fe64a0e411e', '13304480219', '花和尚', '117079', null, '1', '1989-10-03', '丽水', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('f12f2fd94d5445e6b615290f9d877ed4', '18830936444', '扑天雕', '387252', null, '0', '1984-12-12', '无锡 ', null, null, null, null, '4', null);
INSERT INTO `users` VALUES ('f2483ea166574a1dbbd8675e4bc084f2', '13110851800', '出林龙', '880127', null, '0', '1985-07-08', '大理 ', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('f42c51bff21a4a24813d337701f27c09', '17745424205', '双鞭', '655961', null, '1', '1973-11-15', '太原 ', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('fa3d0decbdba4f41836cb557500c83ad', '15487507861', '急先锋', '931270', null, '1', '1978-02-22', '阜阳', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('fcad4055e1984970b10d8aed1157d8d5', '13102230708', '豹子头', '626591', null, '1', '1968-08-23', '唐山 ', null, null, null, null, '3', null);

-- ----------------------------
-- Table structure for validate_code
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
-- Table structure for work_record
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
