/*
Navicat MySQL Data Transfer

Source Server         : springboot
Source Server Version : 50022
Source Host           : 127.0.0.1:3306
Source Database       : springbootdemo

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2020-04-11 23:41:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL auto_increment COMMENT '城市ID',
  `province_id` varchar(20) default NULL COMMENT '省份ID',
  `city_name` varchar(100) default NULL COMMENT '城市名称',
  `description` varchar(255) default NULL COMMENT ' 城市描述',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1203', '常熟市', '嗯哼，我也不知道鬼');
INSERT INTO `city` VALUES ('2', '0603', 'xx', '噢，原来是这个样子的');
INSERT INTO `city` VALUES ('3', '1203', '兰溪市', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('5', '1205', 'wanlin', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('8', '1205', 'wanlin', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('9', '1205', 'wanlin1', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('10', '1205', 'wanlin', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('11', '1205', 'wanlin', '啊哈，我发现了什么玩意？？？？');
INSERT INTO `city` VALUES ('13', '1205', 'lin', '啊哈，........................');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(4) NOT NULL,
  `available` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `parent_ids` char(20) NOT NULL,
  `permission` char(20) NOT NULL,
  `resource_type` char(20) NOT NULL,
  `url` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', '0', '0/', 'view', 'menu', 'userInfo/userList');
INSERT INTO `sys_permission` VALUES ('2', '0', '用户添加', '1', '0/1', 'add', 'button', 'userInfo/userAdd');
INSERT INTO `sys_permission` VALUES ('3', '0', '用户删除', '1', '0/1', 'del', 'button', 'userInfo/userDel');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(4) NOT NULL,
  `available` char(20) NOT NULL,
  `description` char(20) NOT NULL,
  `role` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '0', '管理员', 'admin');
INSERT INTO `sys_role` VALUES ('2', '0', 'VIP会员', 'vip');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `permission_id` int(4) NOT NULL,
  `role_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('3', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `role_id` int(4) NOT NULL,
  `uid` int(4) NOT NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `uid` char(20) NOT NULL,
  `userName` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `password` char(50) NOT NULL,
  `salt` char(50) NOT NULL,
  `state` char(20) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', '测试', 'sfasgfaf', '24');
