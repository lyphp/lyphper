/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-10-04 12:17:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for citys
-- ----------------------------
DROP TABLE IF EXISTS `citys`;
CREATE TABLE `citys` (
  `city` varchar(255) DEFAULT NULL,
  `cityname` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of citys
-- ----------------------------
INSERT INTO `citys` VALUES ('ly', '洛阳');
INSERT INTO `citys` VALUES ('ny', '南阳');
INSERT INTO `citys` VALUES ('xy', '信阳');
INSERT INTO `citys` VALUES ('zz', '郑州');
INSERT INTO `citys` VALUES ('xx', '新乡');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('zhangyi', '张一', '1', 'ly', '111');
INSERT INTO `users` VALUES ('zhanger', '张二', '0', 'ny', '222');
INSERT INTO `users` VALUES ('zhangsan', '张三', '1', 'xy', '333');
INSERT INTO `users` VALUES ('zhangsi', '张四', '1', 'xx', '444');
INSERT INTO `users` VALUES ('zhangwu', '张五', '0', 'zz', '555');
