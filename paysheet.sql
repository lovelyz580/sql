/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 118.89.242.116:3306
 Source Schema         : paysheet

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/04/2019 09:17:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sheet
-- ----------------------------
DROP TABLE IF EXISTS `sheet`;
CREATE TABLE `sheet`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `money` int(255) NOT NULL COMMENT '工资',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sheet
-- ----------------------------
INSERT INTO `sheet` VALUES (6, 1015, '2018-09-30 17:45:25', '第一次工资 7天');
INSERT INTO `sheet` VALUES (7, 3720, '2018-10-31 17:44:35', '第二次工资');
INSERT INTO `sheet` VALUES (8, 4180, '2018-11-30 17:55:05', '第三次工资');
INSERT INTO `sheet` VALUES (12, 3770, '2019-01-06 07:22:23', '这回工资有点少');
INSERT INTO `sheet` VALUES (13, 3620, '2019-01-31 04:22:51', '又少了');
INSERT INTO `sheet` VALUES (14, 1000, '2019-01-31 18:06:58', '项目提成');
INSERT INTO `sheet` VALUES (15, 3725, '2019-02-28 07:00:11', '上回的全勤奖 这回也没有补回来');
INSERT INTO `sheet` VALUES (16, 3650, '2019-03-30 06:39:12', '本月30号发的工资');

SET FOREIGN_KEY_CHECKS = 1;
