/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 118.89.242.116:3306
 Source Schema         : liuyan

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/04/2019 09:17:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for liuliu
-- ----------------------------
DROP TABLE IF EXISTS `liuliu`;
CREATE TABLE `liuliu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liuliu
-- ----------------------------
INSERT INTO `liuliu` VALUES (29, '我喜欢你', '2017-09-22 00:49:23', '爱你的人');

SET FOREIGN_KEY_CHECKS = 1;
