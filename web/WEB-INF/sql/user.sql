/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80100
Source Host           : localhost:3306
Source Database       : cc

Target Server Type    : MYSQL
Target Server Version : 80100
File Encoding         : 65001

Date: 2024-04-23 16:53:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'aa', 'e10adc3949ba59abbe56e057f20f883e', '18407151865');
INSERT INTO `user` VALUES ('4', 'bb', '123456', '15527320160');
INSERT INTO `user` VALUES ('9', '张三', '123456', '15527320161');
INSERT INTO `user` VALUES ('11', '李四', '123456', '15527320162');
INSERT INTO `user` VALUES ('13', '王五', 'e10adc3949ba59abbe56e057f20f883e', '15527320163');
