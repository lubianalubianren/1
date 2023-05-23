/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : reagent_new

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/05/2023 13:10:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for billinfo
-- ----------------------------
DROP TABLE IF EXISTS `billinfo`;
CREATE TABLE `billinfo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `count` int NULL DEFAULT NULL COMMENT '试剂数量',
  `total` float(20, 2) NULL DEFAULT NULL COMMENT '总金额',
  `buytime` datetime(0) NULL DEFAULT NULL COMMENT '进货时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账单信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of billinfo
-- ----------------------------
INSERT INTO `billinfo` VALUES (1, '供应商1', '1', 1000, 22500.00, '2021-02-02 16:00:00');
INSERT INTO `billinfo` VALUES (2, '供应商2', '2', 600, 60.00, '2022-11-28 16:00:00');

-- ----------------------------
-- Table structure for owinfo
-- ----------------------------
DROP TABLE IF EXISTS `owinfo`;
CREATE TABLE `owinfo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库/入库',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出入库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of owinfo
-- ----------------------------
INSERT INTO `owinfo` VALUES (4, '1', '出库', 2, '1', '2023-05-06 15:41:08');
INSERT INTO `owinfo` VALUES (5, '2', '入库', 2, '1', '2023-05-08 17:05:17');
INSERT INTO `owinfo` VALUES (6, '4', '出库', 4, '4', '2023-05-08 17:12:14');
INSERT INTO `owinfo` VALUES (7, '3', '入库', 3, '3', '2023-05-08 17:14:48');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `rcount` int NULL DEFAULT NULL COMMENT '问题试剂数量',
  `rprice` float(20, 2) NULL DEFAULT NULL COMMENT '试剂单价',
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题原因',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问题药品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES (5, '1', 1, 1.00, '1', '2023-05-07 07:19:22');
INSERT INTO `problem` VALUES (7, '2', 2, 2.00, '2', '2023-05-08 17:06:22');

-- ----------------------------
-- Table structure for reagentinfo
-- ----------------------------
DROP TABLE IF EXISTS `reagentinfo`;
CREATE TABLE `reagentinfo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `producttime` date NULL DEFAULT NULL COMMENT '生产时间',
  `warrenty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保质期（月）',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂编码',
  `price` float(20, 2) NULL DEFAULT NULL COMMENT '价格',
  `stock` int NULL DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reagentinfo
-- ----------------------------
INSERT INTO `reagentinfo` VALUES (6, '1', '供应商1', '2023-05-06', '1', '1', 1.00, 1);
INSERT INTO `reagentinfo` VALUES (7, '2', '供应商2', '2023-05-05', '2', '2', 2.00, 2);
INSERT INTO `reagentinfo` VALUES (8, '3', '供应商2', '2023-05-05', '3', '3', 3.00, 3);
INSERT INTO `reagentinfo` VALUES (9, '4', '供应商2', '2023-05-05', '4', '4', 4.00, 4);
INSERT INTO `reagentinfo` VALUES (10, '5', '供应商3', '2023-05-05', '5', '5', 5.00, 5);
INSERT INTO `reagentinfo` VALUES (11, '6', '供应商2', '2023-05-05', '6', '6', 6.00, 6);
INSERT INTO `reagentinfo` VALUES (12, '7', '供应商3', '2023-05-06', '7', '7', 7.00, 7);
INSERT INTO `reagentinfo` VALUES (13, '8', '供应商2', '2023-05-05', '8', '8', 8.00, 8);
INSERT INTO `reagentinfo` VALUES (14, '9', '供应商2', '2023-05-05', '9', '9', 9.00, 9);
INSERT INTO `reagentinfo` VALUES (15, '8', '供应商1', '2023-05-05', '8', '8', 8.00, 8);
INSERT INTO `reagentinfo` VALUES (16, '11', '供应商1', '2022-05-06', '1', '11', 11.00, 11);
INSERT INTO `reagentinfo` VALUES (17, '13', '供应商1', '2023-03-08', '1', '13', 13.00, 1);

-- ----------------------------
-- Table structure for returngoods
-- ----------------------------
DROP TABLE IF EXISTS `returngoods`;
CREATE TABLE `returngoods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货原因',
  `total` float(20, 2) NULL DEFAULT NULL COMMENT '总金额',
  `operatetime` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收到退货' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of returngoods
-- ----------------------------
INSERT INTO `returngoods` VALUES (1, '1', 1, '过期了', 22.50, '2021-02-25 16:00:00');
INSERT INTO `returngoods` VALUES (2, '4', 60, '过期啦', 60.00, '2022-11-28 16:00:00');

-- ----------------------------
-- Table structure for returnsupplier
-- ----------------------------
DROP TABLE IF EXISTS `returnsupplier`;
CREATE TABLE `returnsupplier`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `rcount` int NULL DEFAULT NULL COMMENT '数量',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `buytime` datetime(0) NULL DEFAULT NULL COMMENT '进货时间',
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货原因',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '退货时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货给供应商' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of returnsupplier
-- ----------------------------
INSERT INTO `returnsupplier` VALUES (2, '1', 90, '供应商1', '2023-05-08 16:00:00', '过期了', '2022-11-26 16:00:00');

-- ----------------------------
-- Table structure for saleinfo
-- ----------------------------
DROP TABLE IF EXISTS `saleinfo`;
CREATE TABLE `saleinfo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名称',
  `rnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂编号',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `total` float(20, 2) NULL DEFAULT NULL COMMENT '金额',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `operatetime` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '销售记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of saleinfo
-- ----------------------------
INSERT INTO `saleinfo` VALUES (4, '2', '2', 2, 2.00, '2', '2023-05-21 16:00:00');
INSERT INTO `saleinfo` VALUES (5, '3', '3', 3, 3.00, '3', '2023-05-06 16:00:00');
INSERT INTO `saleinfo` VALUES (6, '4', '4', 4, 4.00, '4', '2023-05-06 16:00:00');
INSERT INTO `saleinfo` VALUES (7, '5', '5', 5, 5.00, '5', '2023-05-06 16:00:00');
INSERT INTO `saleinfo` VALUES (8, '6', '6', 6, 6.00, '6', '2023-05-06 16:00:00');
INSERT INTO `saleinfo` VALUES (9, '7', '7', 7, 7.00, '7', '2023-05-29 16:00:00');
INSERT INTO `saleinfo` VALUES (10, '8', '8', 8, 8.00, '8', '2023-05-06 16:00:00');
INSERT INTO `saleinfo` VALUES (11, '9', '9', 9, 9.00, '9', '2023-05-21 16:00:00');
INSERT INTO `saleinfo` VALUES (12, '8', '10', 10, 10.00, '10', '2023-05-27 16:00:00');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商描述',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, '供应商1', '供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1供应商1', '2018-01-17 11:52:53');
INSERT INTO `supplier` VALUES (2, '供应商2', '供应商2', '2021-02-18 14:20:49');
INSERT INTO `supplier` VALUES (3, '供应商3', '挺厉害啊', '2022-11-27 12:43:52');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '12345');

SET FOREIGN_KEY_CHECKS = 1;
