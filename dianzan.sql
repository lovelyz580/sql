/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 118.89.242.116:3306
 Source Schema         : dianzan

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/04/2019 09:17:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xDiningHall
-- ----------------------------
DROP TABLE IF EXISTS `xDiningHall`;
CREATE TABLE `xDiningHall`  (
  `iID` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `dDate` datetime(0) NOT NULL COMMENT '日期',
  `sKind` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '早a中 b晚 c 餐',
  `sRecipe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜谱',
  `Regtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iID`, `sRecipe`, `sKind`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xDiningHall
-- ----------------------------
INSERT INTO `xDiningHall` VALUES (1, '2019-03-22 18:42:57', 'c', '宫保鸡丁', '2019-03-22 18:43:21');
INSERT INTO `xDiningHall` VALUES (2, '2019-03-31 15:13:04', 'b', '鱼香肉丝', '2019-03-31 15:13:22');
INSERT INTO `xDiningHall` VALUES (3, '2019-03-31 15:13:07', 'b', '大盘鸡', '2019-03-31 15:14:01');
INSERT INTO `xDiningHall` VALUES (4, '2019-03-31 15:14:06', 'c', '麻婆豆腐', '2019-03-31 15:14:18');

-- ----------------------------
-- Table structure for xDiningHall_Book
-- ----------------------------
DROP TABLE IF EXISTS `xDiningHall_Book`;
CREATE TABLE `xDiningHall_Book`  (
  `iID` int(11) NOT NULL AUTO_INCREMENT COMMENT '预定餐id',
  `dDate` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `sKind` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '晚餐',
  `OpenID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'openid',
  `sNickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `Regtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xDiningHall_Book
-- ----------------------------
INSERT INTO `xDiningHall_Book` VALUES (7, '2019-03-31 19:59:09', 'c', '77582580', '本田员工', NULL);
INSERT INTO `xDiningHall_Book` VALUES (8, '2019-03-31 20:03:08', 'c', '77582580', '本田员工', NULL);

-- ----------------------------
-- Table structure for xDiningHall_Evalute
-- ----------------------------
DROP TABLE IF EXISTS `xDiningHall_Evalute`;
CREATE TABLE `xDiningHall_Evalute`  (
  `iID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `dDate` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `sKind` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '早中晚餐',
  `OpenID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户OPenID',
  `sNickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `REID` int(11) NULL DEFAULT NULL COMMENT '菜谱ID',
  `iEvalute` int(11) NOT NULL COMMENT '评价 1赞 2差',
  `Regtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`iID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xDiningHall_Evalute
-- ----------------------------
INSERT INTO `xDiningHall_Evalute` VALUES (1, '2019-03-31 20:00:13', 'c', '77582580', '本田XRV', 1, 1, NULL);
INSERT INTO `xDiningHall_Evalute` VALUES (2, '2019-03-31 20:03:14', 'b', '77582580', '本田XRV', 2, 1, NULL);
INSERT INTO `xDiningHall_Evalute` VALUES (3, '2019-03-31 20:03:18', 'b', '77582580', '本田XRV', 2, 2, NULL);
INSERT INTO `xDiningHall_Evalute` VALUES (4, '2019-03-31 20:03:23', 'b', '77582580', '本田XRV', 2, 1, NULL);
INSERT INTO `xDiningHall_Evalute` VALUES (5, '2019-03-31 20:03:27', 'b', '77582580', '本田XRV', 2, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
