/*
 Navicat MySQL Data Transfer

 Source Server         : 我的远程
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 47.101.51.245:3306
 Source Schema         : group5

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 02/06/2020 01:22:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `address` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地方名',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES (1, '句容', 0);
INSERT INTO `t_address` VALUES (2, '溧阳', 0);
INSERT INTO `t_address` VALUES (3, '张家港', 0);
INSERT INTO `t_address` VALUES (4, '盱眙', 0);
INSERT INTO `t_address` VALUES (5, '泰兴', 0);
INSERT INTO `t_address` VALUES (6, '东台', 0);
INSERT INTO `t_address` VALUES (7, '沐阳', 0);
INSERT INTO `t_address` VALUES (8, '高邮', 0);
INSERT INTO `t_address` VALUES (9, '江宁', 0);
INSERT INTO `t_address` VALUES (10, '溧水', 0);
INSERT INTO `t_address` VALUES (11, '宿迁', 0);
INSERT INTO `t_address` VALUES (12, '响水', 0);
INSERT INTO `t_address` VALUES (13, '丰县', 0);
INSERT INTO `t_address` VALUES (14, '金湖', 0);
INSERT INTO `t_address` VALUES (15, '宿城', 0);
INSERT INTO `t_address` VALUES (16, '睢宁', 0);
INSERT INTO `t_address` VALUES (17, '南通', 0);
INSERT INTO `t_address` VALUES (18, '江苏', 0);

-- ----------------------------
-- Table structure for t_advertise
-- ----------------------------
DROP TABLE IF EXISTS `t_advertise`;
CREATE TABLE `t_advertise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '广告图',
  `type` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `content` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '截止时间',
  `is_open` int(11) NULL DEFAULT 0 COMMENT '0是首页的广告，1是开机的广告',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_advertise
-- ----------------------------
INSERT INTO `t_advertise` VALUES (1, '22', NULL, '默认', '内容是空的吧', 0, NULL, '2019-05-30 20:25:13', 0, 0);
INSERT INTO `t_advertise` VALUES (2, '天行九歌', NULL, '默认', '空空如也', 1, '2019-05-30 20:26:13', '2019-05-31 20:26:16', 1, 0);
INSERT INTO `t_advertise` VALUES (3, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (4, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (5, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (6, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (7, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (8, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (9, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (10, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (11, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (12, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (13, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (14, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);
INSERT INTO `t_advertise` VALUES (15, '杰哥', NULL, '袍哥', '举世无双', 0, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for t_animal
-- ----------------------------
DROP TABLE IF EXISTS `t_animal`;
CREATE TABLE `t_animal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `sort_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类名',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '图标地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_animal
-- ----------------------------
INSERT INTO `t_animal` VALUES (1, '猪', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E7%8C%AA.png', 0);
INSERT INTO `t_animal` VALUES (2, '羊', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E7%BE%8A.png', 0);
INSERT INTO `t_animal` VALUES (3, '蛋鸡', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E8%9B%8B%E9%B8%A1.png', 0);
INSERT INTO `t_animal` VALUES (4, '肉鸡', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E8%82%89%E9%B8%A1.png', 0);
INSERT INTO `t_animal` VALUES (5, '鸭', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E9%B8%AD.png', 0);
INSERT INTO `t_animal` VALUES (6, '鹅', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E9%B9%85.png', 0);
INSERT INTO `t_animal` VALUES (7, '牛', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E7%89%9B.png', 0);
INSERT INTO `t_animal` VALUES (8, '鸽', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E9%B8%BD.png', 0);
INSERT INTO `t_animal` VALUES (9, '兔', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%85%94.png', 0);
INSERT INTO `t_animal` VALUES (10, '其他', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%85%B6%E4%BB%96.png', 0);

-- ----------------------------
-- Table structure for t_attention
-- ----------------------------
DROP TABLE IF EXISTS `t_attention`;
CREATE TABLE `t_attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	主键自增',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '快速提问的id',
  `expert_question_id` int(11) NULL DEFAULT NULL COMMENT '专家提问的id',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '是否关注，0是不关注，1是关注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attention
-- ----------------------------
INSERT INTO `t_attention` VALUES (1, 2, 1, NULL, 1);
INSERT INTO `t_attention` VALUES (2, 2, 3, NULL, 0);
INSERT INTO `t_attention` VALUES (3, 4, 1, NULL, 0);
INSERT INTO `t_attention` VALUES (4, 3, 1, NULL, 0);
INSERT INTO `t_attention` VALUES (5, 3, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (6, 2, 30, NULL, 0);
INSERT INTO `t_attention` VALUES (7, 1, 1, NULL, 1);
INSERT INTO `t_attention` VALUES (8, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (11, 3, 3, 1, 0);
INSERT INTO `t_attention` VALUES (12, 1, 3, NULL, 0);
INSERT INTO `t_attention` VALUES (15, 1, 13, NULL, 1);
INSERT INTO `t_attention` VALUES (17, 33, 1, NULL, 1);
INSERT INTO `t_attention` VALUES (21, 33, 105, NULL, 1);
INSERT INTO `t_attention` VALUES (22, 33, 92, NULL, 0);
INSERT INTO `t_attention` VALUES (23, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (24, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (25, 14, 113, NULL, 0);
INSERT INTO `t_attention` VALUES (26, 33, 107, NULL, 0);
INSERT INTO `t_attention` VALUES (27, 17, 1, NULL, 1);
INSERT INTO `t_attention` VALUES (28, 2, 96, NULL, 0);
INSERT INTO `t_attention` VALUES (29, 17, 113, NULL, 1);
INSERT INTO `t_attention` VALUES (30, 17, 114, NULL, 1);
INSERT INTO `t_attention` VALUES (31, 2, 110, NULL, 0);
INSERT INTO `t_attention` VALUES (32, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (33, 2, 115, NULL, 1);
INSERT INTO `t_attention` VALUES (34, 17, 115, NULL, 1);
INSERT INTO `t_attention` VALUES (35, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (36, 17, 117, NULL, 1);
INSERT INTO `t_attention` VALUES (37, 17, 116, NULL, 1);
INSERT INTO `t_attention` VALUES (38, 2, 116, NULL, 1);
INSERT INTO `t_attention` VALUES (39, 2, 117, NULL, 0);
INSERT INTO `t_attention` VALUES (40, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (42, 3, 118, NULL, 1);
INSERT INTO `t_attention` VALUES (43, 3, 114, NULL, 0);
INSERT INTO `t_attention` VALUES (44, 3, 108, NULL, 0);
INSERT INTO `t_attention` VALUES (46, 14, 123, NULL, 1);
INSERT INTO `t_attention` VALUES (47, 48, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (48, 17, 119, NULL, 1);
INSERT INTO `t_attention` VALUES (49, 3, 123, NULL, 0);
INSERT INTO `t_attention` VALUES (50, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (51, 3, 135, NULL, 1);
INSERT INTO `t_attention` VALUES (52, 3, 119, NULL, 1);
INSERT INTO `t_attention` VALUES (53, 17, 135, NULL, 1);
INSERT INTO `t_attention` VALUES (54, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (55, 48, 1, NULL, 0);
INSERT INTO `t_attention` VALUES (58, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (59, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (60, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (63, 1, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (70, 48, 4, NULL, 0);
INSERT INTO `t_attention` VALUES (73, 2, 142, NULL, 0);
INSERT INTO `t_attention` VALUES (76, 4, 148, NULL, 0);
INSERT INTO `t_attention` VALUES (77, 3, 166, NULL, 0);
INSERT INTO `t_attention` VALUES (78, 3, 146, NULL, 1);
INSERT INTO `t_attention` VALUES (79, 14, 1, NULL, 0);
INSERT INTO `t_attention` VALUES (80, 14, 170, NULL, 1);
INSERT INTO `t_attention` VALUES (81, 14, 171, NULL, 0);
INSERT INTO `t_attention` VALUES (82, 14, 175, NULL, 0);
INSERT INTO `t_attention` VALUES (83, 14, 174, NULL, 0);
INSERT INTO `t_attention` VALUES (84, 17, 181, NULL, 1);
INSERT INTO `t_attention` VALUES (85, 1, NULL, 1, 1);
INSERT INTO `t_attention` VALUES (86, 1, NULL, 2, 0);
INSERT INTO `t_attention` VALUES (87, 3, 184, NULL, 1);
INSERT INTO `t_attention` VALUES (88, 48, 3, NULL, 1);
INSERT INTO `t_attention` VALUES (89, 1, NULL, 9, 0);
INSERT INTO `t_attention` VALUES (97, 3, 194, NULL, 1);
INSERT INTO `t_attention` VALUES (98, 14, 194, NULL, 0);
INSERT INTO `t_attention` VALUES (100, 3, 196, NULL, 1);
INSERT INTO `t_attention` VALUES (101, 3, 24, NULL, 0);
INSERT INTO `t_attention` VALUES (102, 3, NULL, 24, 1);
INSERT INTO `t_attention` VALUES (103, 4, 205, NULL, 1);
INSERT INTO `t_attention` VALUES (104, 14, 205, NULL, 0);
INSERT INTO `t_attention` VALUES (105, 17, 194, NULL, 1);
INSERT INTO `t_attention` VALUES (106, 17, 29, NULL, 1);
INSERT INTO `t_attention` VALUES (107, 17, 30, NULL, 1);
INSERT INTO `t_attention` VALUES (108, 17, 171, NULL, 0);
INSERT INTO `t_attention` VALUES (109, 14, 212, NULL, 0);
INSERT INTO `t_attention` VALUES (110, 4, NULL, 31, 0);
INSERT INTO `t_attention` VALUES (111, 17, 212, NULL, 0);
INSERT INTO `t_attention` VALUES (112, 3, 217, NULL, 0);
INSERT INTO `t_attention` VALUES (113, 2, NULL, 28, 0);
INSERT INTO `t_attention` VALUES (114, 2, NULL, 27, 1);
INSERT INTO `t_attention` VALUES (118, 48, NULL, 33, 0);
INSERT INTO `t_attention` VALUES (119, 17, 218, NULL, 1);
INSERT INTO `t_attention` VALUES (120, 93, 218, NULL, 1);
INSERT INTO `t_attention` VALUES (121, 93, 212, NULL, 0);
INSERT INTO `t_attention` VALUES (122, 14, 213, NULL, 0);
INSERT INTO `t_attention` VALUES (123, 17, 213, NULL, 0);
INSERT INTO `t_attention` VALUES (124, 14, 222, NULL, 0);
INSERT INTO `t_attention` VALUES (125, 3, 229, NULL, 0);
INSERT INTO `t_attention` VALUES (126, 2, 229, NULL, 0);
INSERT INTO `t_attention` VALUES (127, 17, 230, NULL, 0);
INSERT INTO `t_attention` VALUES (128, 17, 231, NULL, 0);
INSERT INTO `t_attention` VALUES (129, 17, 229, NULL, 0);
INSERT INTO `t_attention` VALUES (130, 17, 233, NULL, 1);
INSERT INTO `t_attention` VALUES (131, 2, NULL, 34, 0);
INSERT INTO `t_attention` VALUES (132, 2, 2, NULL, 0);
INSERT INTO `t_attention` VALUES (133, 98, 234, NULL, 1);
INSERT INTO `t_attention` VALUES (134, 1, 2, NULL, 0);

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型名称',
  `type` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES (1, '动态', '图文资讯', 0);
INSERT INTO `t_brand` VALUES (2, '专题', '图文资讯', 0);
INSERT INTO `t_brand` VALUES (3, '农药', '农资', 0);
INSERT INTO `t_brand` VALUES (4, '肥料', '农资', 0);
INSERT INTO `t_brand` VALUES (5, '种子', '农资', 0);
INSERT INTO `t_brand` VALUES (6, '其他', '农资', 0);

-- ----------------------------
-- Table structure for t_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '提问表id',
  `exchange_id` int(11) NULL DEFAULT NULL COMMENT '交流表id',
  `news_id` int(11) NULL DEFAULT NULL COMMENT '资讯表id',
  `video` int(11) NULL DEFAULT NULL COMMENT '视频表id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '收藏时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '是否收藏，0是收藏，1是不收藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 305 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_collection
-- ----------------------------
INSERT INTO `t_collection` VALUES (1, 1, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (2, 2, 2, 1, NULL, NULL, '2019-06-26 00:35:43', 0);
INSERT INTO `t_collection` VALUES (3, 1, 2, NULL, 1, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (4, 2, 1, NULL, NULL, 1, '2019-06-26 00:32:49', 0);
INSERT INTO `t_collection` VALUES (6, 2, NULL, NULL, NULL, 2, NULL, 1);
INSERT INTO `t_collection` VALUES (11, 2, NULL, NULL, 13, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (14, 1, NULL, NULL, 14, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (15, 1, NULL, NULL, 15, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (23, 4, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (24, 4, NULL, 2, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (25, 4, NULL, 16, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (26, 4, 68, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (27, 4, NULL, 19, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (28, 4, NULL, 20, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (29, 4, NULL, 21, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (31, 4, NULL, NULL, 1, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (32, 4, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (35, 3, NULL, 1, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (36, 3, 53, 5, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (44, 3, NULL, NULL, 13, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (50, 1, NULL, NULL, 13, NULL, '2019-06-24 11:12:24', 1);
INSERT INTO `t_collection` VALUES (51, 33, 1, NULL, NULL, NULL, '2019-06-24 09:22:13', 0);
INSERT INTO `t_collection` VALUES (52, 33, 1, NULL, NULL, NULL, '2019-06-24 09:22:15', 0);
INSERT INTO `t_collection` VALUES (53, 1, NULL, NULL, 131, NULL, '2019-06-24 09:21:55', 0);
INSERT INTO `t_collection` VALUES (54, 1, 11, NULL, NULL, NULL, '2019-06-24 09:21:51', 0);
INSERT INTO `t_collection` VALUES (55, 1, NULL, 1, NULL, NULL, '2019-06-24 09:21:19', 0);
INSERT INTO `t_collection` VALUES (56, 1, NULL, 11, NULL, NULL, '2019-06-24 10:03:53', 0);
INSERT INTO `t_collection` VALUES (57, 1, NULL, NULL, NULL, 1, '2019-06-24 09:22:04', 0);
INSERT INTO `t_collection` VALUES (58, 1, NULL, NULL, NULL, 11, '2019-06-24 09:22:06', 0);
INSERT INTO `t_collection` VALUES (59, 1, NULL, NULL, 131, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (60, 1, 21, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (61, 1, NULL, NULL, 131, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (62, 1, 21, NULL, NULL, NULL, '2019-06-24 09:22:17', 0);
INSERT INTO `t_collection` VALUES (63, 14, 113, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (64, 14, NULL, 63, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (65, 2, 110, NULL, NULL, NULL, '2019-06-24 09:22:19', 1);
INSERT INTO `t_collection` VALUES (66, 2, NULL, 63, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (67, 2, NULL, 66, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (68, 1, NULL, NULL, 131, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (69, 1, 21, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (70, 2, 115, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (71, 2, NULL, 68, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (72, 1, NULL, NULL, 131, NULL, '2019-06-19 09:51:32', 0);
INSERT INTO `t_collection` VALUES (73, 1, 21, NULL, NULL, NULL, '2019-06-20 09:51:36', 0);
INSERT INTO `t_collection` VALUES (74, 17, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (75, 17, 117, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (76, 2, 117, NULL, NULL, NULL, '2019-06-24 09:22:22', 0);
INSERT INTO `t_collection` VALUES (77, 2, 113, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (78, 2, NULL, 69, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (79, 2, 116, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (80, 17, 116, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (81, 17, 115, NULL, NULL, NULL, '2019-06-24 14:37:03', 1);
INSERT INTO `t_collection` VALUES (82, 3, NULL, 2, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (83, 3, NULL, 3, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (84, 3, NULL, 6, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (85, 3, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (86, 48, NULL, 69, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (87, 48, NULL, 67, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (88, 48, NULL, 55, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (89, 48, NULL, 68, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (90, 48, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (91, 48, 2, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (92, 3, 116, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (93, 3, 117, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (94, 3, 110, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (95, 3, 79, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (96, 3, 114, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (97, 1, NULL, NULL, 131, NULL, '2019-06-22 09:51:40', 0);
INSERT INTO `t_collection` VALUES (98, 1, 21, NULL, NULL, NULL, '2019-06-21 09:51:44', 0);
INSERT INTO `t_collection` VALUES (99, 3, 115, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (100, 3, 118, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (101, 48, 118, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (102, 3, NULL, 67, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (103, 3, NULL, 69, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (104, 3, NULL, 71, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (105, 17, 118, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (106, 14, NULL, 71, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (107, 3, NULL, 55, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (108, 48, NULL, 77, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (109, 14, NULL, 77, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (110, 14, 123, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (111, 48, NULL, 63, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (112, 48, 123, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (113, 14, NULL, 80, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (114, 3, 123, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (115, 3, NULL, 98, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (116, 1, NULL, NULL, 131, NULL, '2019-06-23 09:51:48', 0);
INSERT INTO `t_collection` VALUES (117, 1, 21, NULL, NULL, NULL, '2019-06-27 09:51:52', 0);
INSERT INTO `t_collection` VALUES (118, 17, NULL, 1, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (119, 17, 129, NULL, NULL, NULL, '2019-06-24 14:36:42', 1);
INSERT INTO `t_collection` VALUES (120, 17, NULL, 109, NULL, NULL, '2019-06-24 15:59:30', 1);
INSERT INTO `t_collection` VALUES (121, 17, NULL, 108, NULL, NULL, '2019-06-24 16:00:16', 1);
INSERT INTO `t_collection` VALUES (122, 3, 129, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (123, 3, NULL, 109, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (124, 17, 135, NULL, NULL, NULL, '2019-06-24 14:36:32', 1);
INSERT INTO `t_collection` VALUES (125, 1, NULL, NULL, 131, NULL, '2019-06-27 09:51:57', 0);
INSERT INTO `t_collection` VALUES (126, 1, 21, NULL, NULL, NULL, '2019-06-24 09:52:00', 0);
INSERT INTO `t_collection` VALUES (127, 48, 126, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (128, 1, NULL, NULL, 131, NULL, '2019-06-24 09:52:06', 0);
INSERT INTO `t_collection` VALUES (129, 1, 21, NULL, NULL, NULL, '2019-06-24 09:52:04', 0);
INSERT INTO `t_collection` VALUES (130, 1, NULL, NULL, 131, NULL, '2019-06-24 09:52:12', 0);
INSERT INTO `t_collection` VALUES (131, 1, 21, NULL, NULL, NULL, '2019-06-24 09:52:08', 0);
INSERT INTO `t_collection` VALUES (132, 1, NULL, NULL, 131, NULL, '2019-06-24 09:52:14', 0);
INSERT INTO `t_collection` VALUES (133, 1, 21, NULL, NULL, NULL, '2019-06-24 09:52:16', 0);
INSERT INTO `t_collection` VALUES (134, 48, 147, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (135, 48, NULL, 110, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (136, 48, NULL, 94, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (137, 48, 109, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (138, 1, NULL, NULL, 131, NULL, '2019-06-24 09:52:18', 0);
INSERT INTO `t_collection` VALUES (139, 1, 21, NULL, NULL, NULL, '2019-06-24 09:52:23', 0);
INSERT INTO `t_collection` VALUES (140, 48, 117, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (141, 48, 83, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (142, 48, 101, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (143, 48, NULL, 50, NULL, NULL, '2019-06-24 16:38:46', 1);
INSERT INTO `t_collection` VALUES (144, 48, NULL, 93, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (145, 48, NULL, 1, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (146, 48, NULL, 53, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (147, 48, 84, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (148, 48, 82, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (149, 48, 81, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (150, 48, 4, NULL, NULL, NULL, '2019-11-07 08:59:15', 0);
INSERT INTO `t_collection` VALUES (151, 48, 73, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (152, 2, NULL, NULL, 16, NULL, '2019-06-25 14:38:20', 0);
INSERT INTO `t_collection` VALUES (153, 1, NULL, NULL, 16, NULL, '2019-06-24 09:52:20', 1);
INSERT INTO `t_collection` VALUES (154, 2, NULL, NULL, 1, NULL, '2019-06-25 15:31:54', 0);
INSERT INTO `t_collection` VALUES (155, 1, NULL, NULL, 2, NULL, '2019-06-24 09:52:27', 0);
INSERT INTO `t_collection` VALUES (156, 2, NULL, NULL, 2, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (157, 2, NULL, NULL, 14, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (158, 2, NULL, NULL, 22, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (159, 2, NULL, NULL, 20, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (160, 2, NULL, NULL, 31, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (161, 2, 149, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (162, 17, NULL, 115, NULL, NULL, '2019-06-24 16:00:01', 1);
INSERT INTO `t_collection` VALUES (163, 2, NULL, NULL, NULL, 4, '2019-06-26 00:36:15', 1);
INSERT INTO `t_collection` VALUES (164, 2, 148, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (165, 2, 140, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (166, 2, 152, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (167, 2, NULL, 115, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (168, 48, 152, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (169, 48, NULL, NULL, 16, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (170, 48, NULL, NULL, NULL, 1, '2019-11-06 09:13:48', 1);
INSERT INTO `t_collection` VALUES (171, 48, NULL, NULL, NULL, 2, '2019-06-24 10:35:11', 0);
INSERT INTO `t_collection` VALUES (172, 2, 146, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (173, 3, NULL, 115, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (174, 48, 163, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (175, 48, 164, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (176, 2, 164, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (177, 4, 148, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (178, 3, NULL, 139, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (179, 48, NULL, 141, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (180, 3, 166, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (181, 14, NULL, 113, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (182, 14, NULL, 141, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (183, 14, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (184, 14, 166, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (185, 14, 168, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (186, 14, 170, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (187, 48, NULL, NULL, NULL, 4, '2019-06-24 10:16:27', 0);
INSERT INTO `t_collection` VALUES (188, 48, NULL, NULL, NULL, 5, '2019-06-24 10:35:05', 0);
INSERT INTO `t_collection` VALUES (189, 48, NULL, NULL, NULL, 3, NULL, 1);
INSERT INTO `t_collection` VALUES (190, 14, 171, NULL, NULL, NULL, '2019-06-24 10:05:47', 0);
INSERT INTO `t_collection` VALUES (191, 14, NULL, 145, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (192, 17, 171, NULL, NULL, NULL, '2019-06-24 14:36:14', 1);
INSERT INTO `t_collection` VALUES (193, 48, NULL, NULL, 31, NULL, '2019-06-24 10:33:43', 1);
INSERT INTO `t_collection` VALUES (194, 48, NULL, NULL, 1, NULL, '2019-06-25 08:49:09', 1);
INSERT INTO `t_collection` VALUES (195, 48, NULL, 146, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (196, 48, NULL, 140, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (197, 48, NULL, 139, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (198, 14, NULL, 114, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (199, 17, 174, NULL, NULL, NULL, '2019-06-24 14:36:54', 1);
INSERT INTO `t_collection` VALUES (200, 14, 175, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (201, 14, 174, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (202, 17, NULL, 148, NULL, NULL, '2019-06-24 16:01:24', 1);
INSERT INTO `t_collection` VALUES (203, 14, NULL, 146, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (204, 1, 175, NULL, NULL, NULL, '2019-06-24 09:52:28', 0);
INSERT INTO `t_collection` VALUES (205, 48, NULL, 148, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (206, 48, NULL, NULL, 30, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (207, 3, 179, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (208, 3, 16, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (209, 3, NULL, NULL, 16, NULL, '2019-06-24 13:31:27', 0);
INSERT INTO `t_collection` VALUES (210, 48, NULL, NULL, 24, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (211, 48, NULL, 152, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (212, 3, NULL, 152, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (213, 14, 182, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (214, 4, NULL, 113, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (215, 3, NULL, NULL, 90, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (216, 3, NULL, 141, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (217, 4, NULL, NULL, 31, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (218, 48, NULL, NULL, 11, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (219, 17, 181, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (220, 2, NULL, NULL, 11, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (221, 48, NULL, 153, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (222, 3, NULL, NULL, NULL, 1, NULL, 0);
INSERT INTO `t_collection` VALUES (223, 48, 194, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (224, 14, NULL, 159, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (225, 14, NULL, 158, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (226, 3, NULL, NULL, 11, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (227, 14, NULL, 109, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (228, 14, NULL, 157, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (229, 14, 194, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (230, 48, NULL, 157, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (231, 48, NULL, NULL, 3, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (232, 48, NULL, NULL, 4, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (233, 48, NULL, NULL, 5, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (234, 48, NULL, NULL, 23, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (235, 2, NULL, NULL, 3, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (236, 3, 196, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (237, 48, 192, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (238, 4, NULL, 111, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (239, 3, 181, NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (240, 48, NULL, NULL, 17, NULL, '2019-06-25 08:51:10', 1);
INSERT INTO `t_collection` VALUES (241, 3, 205, NULL, NULL, NULL, '2019-06-24 14:23:00', 1);
INSERT INTO `t_collection` VALUES (242, 14, 205, NULL, NULL, NULL, '2019-06-24 10:04:31', 0);
INSERT INTO `t_collection` VALUES (243, 1, 22, NULL, NULL, NULL, '2019-06-24 09:32:45', 0);
INSERT INTO `t_collection` VALUES (244, 1, NULL, 123, NULL, NULL, '2019-06-24 10:03:14', 0);
INSERT INTO `t_collection` VALUES (245, 1, NULL, 56, NULL, NULL, '2019-06-24 09:57:02', 0);
INSERT INTO `t_collection` VALUES (246, 48, NULL, NULL, NULL, 6, '2019-06-24 10:16:59', 0);
INSERT INTO `t_collection` VALUES (247, 48, NULL, NULL, NULL, 10, NULL, 0);
INSERT INTO `t_collection` VALUES (248, 4, NULL, NULL, 88, NULL, NULL, 1);
INSERT INTO `t_collection` VALUES (249, 4, NULL, NULL, 6, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (250, 3, 207, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_collection` VALUES (251, 48, NULL, NULL, NULL, 7, '2019-06-24 10:35:09', 0);
INSERT INTO `t_collection` VALUES (252, 48, NULL, NULL, NULL, 8, '2019-06-24 10:35:19', 0);
INSERT INTO `t_collection` VALUES (253, 17, NULL, 154, NULL, NULL, '2019-06-24 15:59:10', 1);
INSERT INTO `t_collection` VALUES (254, 4, NULL, 163, NULL, NULL, '2019-06-24 11:06:07', 1);
INSERT INTO `t_collection` VALUES (255, 4, NULL, 165, NULL, NULL, '2019-06-24 14:24:45', 1);
INSERT INTO `t_collection` VALUES (256, 14, 207, NULL, NULL, NULL, '2019-06-24 14:30:06', 1);
INSERT INTO `t_collection` VALUES (257, 17, NULL, 164, NULL, NULL, '2019-06-24 15:58:31', 1);
INSERT INTO `t_collection` VALUES (258, 17, NULL, 163, NULL, NULL, '2019-06-24 16:01:41', 0);
INSERT INTO `t_collection` VALUES (259, 48, NULL, NULL, 6, NULL, '2019-07-01 07:38:29', 0);
INSERT INTO `t_collection` VALUES (260, 4, NULL, 164, NULL, NULL, '2019-06-24 15:16:35', 0);
INSERT INTO `t_collection` VALUES (261, 17, NULL, 120, NULL, NULL, '2019-06-24 15:59:21', 1);
INSERT INTO `t_collection` VALUES (262, 48, NULL, 164, NULL, NULL, '2019-06-25 08:49:27', 0);
INSERT INTO `t_collection` VALUES (263, 14, 212, NULL, NULL, NULL, '2019-06-24 17:46:51', 0);
INSERT INTO `t_collection` VALUES (264, 14, NULL, 164, NULL, NULL, '2019-06-24 17:50:10', 0);
INSERT INTO `t_collection` VALUES (265, 14, NULL, 169, NULL, NULL, '2019-06-25 09:31:00', 0);
INSERT INTO `t_collection` VALUES (266, 14, 210, NULL, NULL, NULL, '2019-06-25 09:31:32', 0);
INSERT INTO `t_collection` VALUES (267, 2, NULL, NULL, 17, NULL, '2019-06-25 10:00:05', 0);
INSERT INTO `t_collection` VALUES (268, 2, NULL, NULL, 4, NULL, '2019-06-25 10:00:24', 0);
INSERT INTO `t_collection` VALUES (269, 3, 217, NULL, NULL, NULL, '2019-06-25 13:49:01', 1);
INSERT INTO `t_collection` VALUES (270, 48, NULL, NULL, 55, NULL, '2019-06-25 10:52:53', 0);
INSERT INTO `t_collection` VALUES (271, 14, NULL, 178, NULL, NULL, '2019-06-25 14:57:28', 0);
INSERT INTO `t_collection` VALUES (272, 3, 218, NULL, NULL, NULL, '2019-06-25 13:03:37', 1);
INSERT INTO `t_collection` VALUES (273, 17, 212, NULL, NULL, NULL, '2019-06-25 13:04:46', 0);
INSERT INTO `t_collection` VALUES (274, 3, NULL, NULL, 1, NULL, '2019-06-25 13:48:52', 1);
INSERT INTO `t_collection` VALUES (275, 93, NULL, NULL, 6, NULL, '2019-06-25 13:58:18', 0);
INSERT INTO `t_collection` VALUES (276, 93, 218, NULL, NULL, NULL, '2019-06-25 14:02:22', 1);
INSERT INTO `t_collection` VALUES (277, 93, NULL, NULL, 1, NULL, '2019-06-25 14:01:47', 1);
INSERT INTO `t_collection` VALUES (278, 93, 212, NULL, NULL, NULL, '2019-06-25 14:02:13', 0);
INSERT INTO `t_collection` VALUES (279, 14, 213, NULL, NULL, NULL, '2019-06-25 14:05:15', 0);
INSERT INTO `t_collection` VALUES (280, 48, NULL, 178, NULL, NULL, '2019-06-25 14:09:39', 0);
INSERT INTO `t_collection` VALUES (281, 17, NULL, 178, NULL, NULL, '2019-06-25 14:22:41', 0);
INSERT INTO `t_collection` VALUES (282, 17, 213, NULL, NULL, NULL, '2019-06-25 14:26:16', 0);
INSERT INTO `t_collection` VALUES (283, 14, 222, NULL, NULL, NULL, '2019-06-25 14:57:55', 0);
INSERT INTO `t_collection` VALUES (284, 3, 229, NULL, NULL, NULL, '2019-06-25 15:14:52', 0);
INSERT INTO `t_collection` VALUES (285, 3, NULL, NULL, 3, NULL, '2019-06-25 15:17:26', 0);
INSERT INTO `t_collection` VALUES (286, 4, NULL, 181, NULL, NULL, '2019-06-25 15:23:24', 0);
INSERT INTO `t_collection` VALUES (287, 2, NULL, NULL, 6, NULL, '2019-06-26 00:36:10', 1);
INSERT INTO `t_collection` VALUES (288, 2, 229, NULL, NULL, NULL, '2019-06-25 15:30:07', 0);
INSERT INTO `t_collection` VALUES (289, 2, NULL, 181, NULL, NULL, '2019-06-26 00:34:31', 0);
INSERT INTO `t_collection` VALUES (290, 17, 230, NULL, NULL, NULL, '2019-06-25 17:10:09', 0);
INSERT INTO `t_collection` VALUES (291, 17, NULL, 181, NULL, NULL, '2019-06-25 17:08:52', 0);
INSERT INTO `t_collection` VALUES (292, 17, 231, NULL, NULL, NULL, '2019-06-25 16:56:29', 0);
INSERT INTO `t_collection` VALUES (293, 17, 229, NULL, NULL, NULL, '2019-06-25 17:04:49', 0);
INSERT INTO `t_collection` VALUES (294, 17, 233, NULL, NULL, NULL, '2019-06-25 17:17:58', 1);
INSERT INTO `t_collection` VALUES (295, 17, NULL, 184, NULL, NULL, '2019-06-25 17:18:59', 1);
INSERT INTO `t_collection` VALUES (296, 98, 234, NULL, NULL, NULL, '2019-06-26 16:34:05', 0);
INSERT INTO `t_collection` VALUES (297, 98, NULL, 185, NULL, NULL, '2019-06-26 16:36:13', 0);
INSERT INTO `t_collection` VALUES (298, 98, NULL, NULL, 14, NULL, '2019-06-26 16:39:41', 0);
INSERT INTO `t_collection` VALUES (299, 48, NULL, 185, NULL, NULL, '2019-07-01 07:35:57', 0);
INSERT INTO `t_collection` VALUES (300, 48, NULL, 187, NULL, NULL, '2019-11-07 08:56:46', 1);
INSERT INTO `t_collection` VALUES (301, 1, NULL, NULL, 131, NULL, '2020-05-12 10:31:50', 0);
INSERT INTO `t_collection` VALUES (302, 1, 22, NULL, NULL, NULL, '2020-05-12 10:31:54', 0);
INSERT INTO `t_collection` VALUES (303, 107, NULL, NULL, 1, NULL, '2020-05-12 13:49:57', 0);
INSERT INTO `t_collection` VALUES (304, 107, NULL, 187, NULL, NULL, '2020-05-13 11:33:25', 0);

-- ----------------------------
-- Table structure for t_commodity
-- ----------------------------
DROP TABLE IF EXISTS `t_commodity`;
CREATE TABLE `t_commodity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `sort_id` int(11) NULL DEFAULT NULL COMMENT '精选分类，1农药2肥料3种子4其他',
  `source` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `read_number` int(11) NULL DEFAULT NULL COMMENT '阅读量',
  `phone_number` int(11) NULL DEFAULT NULL COMMENT '客服电话',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_commodity
-- ----------------------------
INSERT INTO `t_commodity` VALUES (1, '吡虫啉', 1, '0514-86739571', '灭虫效果一级棒', 12, 800820880, 0);
INSERT INTO `t_commodity` VALUES (2, '敌敌畏', 1, '2661-3737173', '人吃了都得死翘翘', 666, 800820888, 0);
INSERT INTO `t_commodity` VALUES (3, '复合肥料', 2, '3213-2131445151', '人体排泄物制作而成', 222, 3123141, 0);

-- ----------------------------
-- Table structure for t_enterprise_recommend
-- ----------------------------
DROP TABLE IF EXISTS `t_enterprise_recommend`;
CREATE TABLE `t_enterprise_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `enterprise_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '企业介绍',
  `img_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '企业图片',
  `sort` int(11) NULL DEFAULT NULL COMMENT '分类，与品牌农资分类关联',
  `count` int(11) NULL DEFAULT NULL COMMENT '浏览量',
  `phone_number` int(11) NULL DEFAULT NULL COMMENT '客服电话',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0是不删除，1是删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_enterprise_recommend
-- ----------------------------
INSERT INTO `t_enterprise_recommend` VALUES (1, '江苏东宝农化股份有限公司', '江苏东宝农化股份有限公司坐落于风景秀丽的扬州东郊', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=234634259,4236876085&fm=27&gp=0.jpg', 1, NULL, 800820880, 0);
INSERT INTO `t_enterprise_recommend` VALUES (2, '阿里巴巴有限公司', NULL, NULL, 2, NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_exchange
-- ----------------------------
DROP TABLE IF EXISTS `t_exchange`;
CREATE TABLE `t_exchange`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	主键自增',
  `user_id` int(11) NOT NULL COMMENT '用户id,即提问者的id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交流内容',
  `create_time` datetime(0) NOT NULL COMMENT '交流发布时间',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '哪个地区的交流',
  `img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片地址',
  `like` int(11) NULL DEFAULT 0 COMMENT '点赞数量',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布地点',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '0表示不删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exchange
-- ----------------------------
INSERT INTO `t_exchange` VALUES (1, 2, '敌敌畏敌敌畏', '2019-05-15 17:47:54', 1, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/5bcd5f2d-5802-4e85-ae67-d40921dc3804.jpg?Expires=1874554424&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=Gdv%2BQLnXLvHvsWla8DaMnol4jC0%3D', 0, '天上人间', 1);
INSERT INTO `t_exchange` VALUES (5, 3, '今天天气真好', '2019-05-24 10:28:49', 1, NULL, 0, '江苏南京', 0);
INSERT INTO `t_exchange` VALUES (6, 3, '这个小麦品种很好', '2019-05-24 10:29:32', 2, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (7, 3, '这个小麦品种很好', '2019-05-24 11:02:20', 2, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (8, 3, '江苏省基层农技推广人员培训', '2019-05-24 13:02:54', 3, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (9, 3, 'aaaaaaaaaaa', '2019-05-24 13:07:30', 4, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (10, 3, 'saaasss', '2019-05-24 13:08:33', 5, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (11, 3, 'dhfsjkhfjkdsjkfds', '2019-05-25 11:38:18', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (12, 3, '江苏省南京市栖霞区', '2019-05-27 07:53:24', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (13, 4, '123', '2019-05-27 08:06:20', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (14, 4, '123', '2019-05-27 08:06:21', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (18, 3, 'tetertretr', '2019-05-27 13:23:16', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (19, 1, '我贼帅', '2019-05-28 11:32:54', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (20, 5, '我冯杰贼帅', '2019-05-28 12:00:13', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (21, 3, '不见天地不思归', '2019-05-28 12:01:13', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (22, 5, '天上白玉京，十二楼五城', '2019-05-28 12:06:24', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (27, 5, '额额额额', '2019-05-28 12:14:15', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (28, 5, '大哥别打我1', '2019-05-28 12:25:02', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (29, 5, '难受啊马飞信', '2019-05-28 12:26:45', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (30, 5, '能否放过在下1', '2019-05-28 12:29:05', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (31, 5, '为何不见鄙人文章？', '2019-05-28 12:30:26', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (36, 1, '测试测试', '2019-05-29 08:57:41', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (38, 4, '花花草草', '2019-05-29 11:18:22', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (41, 2, '你好', '2019-05-29 11:27:37', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (42, 2, '高立伟', '2019-05-29 11:35:44', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (44, 3, '生者为过客，死者为归尘。天地一逆旅，同悲万古尘。', '2019-05-30 08:29:40', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (45, 3, 'aaaa', '2019-05-30 08:29:48', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (46, 1, '下雨了，记得带伞', '2019-05-30 13:14:27', NULL, '', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (47, 1, '33333', '2019-05-30 13:30:20', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (48, 1, '777', '2019-05-30 13:33:44', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/5bcd5f2d-5802-4e85-ae67-d40921dc3804.jpg?Expires=1874554424&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=Gdv%2BQLnXLvHvsWla8DaMnol4jC0%3D', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (49, 4, '下雨了  好开心', '2019-05-30 14:01:22', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (50, 1, '好好学习，天天向上', '2019-05-30 16:47:26', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/5eb149c0-6816-44e1-b2b4-13f418569b79.jpg?Expires=1874566045&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=QOvmUZmmwHne0bhM4JfwRllba08%3D', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (51, 1, '扫黑除恶', '2019-05-30 16:48:17', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (52, 27, '嗝～', '2019-05-30 17:12:06', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (53, 14, '我好烦，我是房老师', '2019-05-31 15:24:54', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (54, 17, '我贼强', '2019-05-31 15:48:07', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (55, 3, '小龙虾好吃吗', '2019-06-03 09:31:41', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (56, 17, '1111', '2019-06-03 09:42:04', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (57, 2, 'qfwEAGVDBSRTGXNDTYMUY', '2019-06-03 11:31:16', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (58, 3, '看看', '2019-06-03 16:21:27', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (59, 3, 'aaaaa', '2019-06-03 16:24:59', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (60, 33, 'efqewfrewvbgrtbytnmtuy6renetn5yhbnyrtnyr', '2019-06-04 10:23:17', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (61, 33, '艾斯如果和惹他棒棒糖那一天化剂荣誉巨坑米糠理论可交换他沟通然后捏鱼科蜜题目甜蜜，', '2019-06-04 10:23:46', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (62, 33, '法案的好男人身体机能一套基于加缪国家每年', '2019-06-04 13:33:40', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (63, 14, '热', '2019-06-05 08:13:16', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (64, 3, '123456', '2019-06-10 10:26:52', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (65, 1, '1234', '2019-06-10 11:08:53', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/69cabc88-2194-4689-b0e8-c02b97baeea0.png?Expires=1875496139&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=5H%2FucD%2BS34W8rnQTwb3fePbQ6K8%3D', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (66, 1, '1234', '2019-06-10 11:09:00', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/45f30a95-50ec-4017-84a9-c7046d25b719.png?Expires=1875496146&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=By2tLiLbWcvkSkxyhQU5JO8Mrz8%3D', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (67, 1, '111111111', '2019-06-10 11:34:17', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/9111fc42-3a1e-4076-a6e0-8a08df66cef2.jpg?Expires=1875497656&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=eSfg6zF04KcQ1uES5nfnaIqPDF4%3D', 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (68, 14, '123456', '2019-06-10 11:35:52', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (69, 14, '11223334444555', '2019-06-10 12:53:22', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/b116b2da-6ce9-4c56-8b3a-7ccc4173d860.png?Expires=1875502408&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=sAbBUkrHE418rrKuIskUTga0MZU%3D', 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (70, 3, 'llllllll', '2019-06-10 16:58:55', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (71, 48, 'wwfrefrregwfw', '2019-06-11 09:56:32', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (72, 3, '11111111', '2019-06-11 11:17:17', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (73, 3, '112222', '2019-06-11 11:18:09', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/b116b2da-6ce9-4c56-8b3a-7ccc4173d860.png?Expires=1875502408&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=sAbBUkrHE418rrKuIskUTga0MZU%3D', 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (74, 3, 'lalallallal', '2019-06-11 14:19:35', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (75, 3, 'dfadsfdfdsfds', '2019-06-11 14:20:14', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (76, 3, 'sasdadsadsad', '2019-06-11 14:20:38', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (77, 4, '养花2到3天换一次水', '2019-06-12 09:04:39', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (78, 1, '111111111', '2019-06-12 11:11:53', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/5a20f127-9f7d-4fda-847b-0dc304e2246a.png?Expires=1875669118&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=lMCocJDmn3bv9ktgEFzdL7xjrr8%3D', 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (79, 3, 'bcbcvbv', '2019-06-12 11:29:39', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (80, 48, '任何哥特人沟通过程儿童国策v欢迎任何一句话你也别太如果v个体人格的发表v给你不会他们能天花板广泛的v分为别人的吧', '2019-06-12 11:33:19', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (81, 3, 'hghgjg', '2019-06-12 11:59:33', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (82, 1, '测试', '2019-06-12 15:28:40', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (83, 1, '测试', '2019-06-12 15:34:59', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (84, 1, '测试', '2019-06-12 15:39:18', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (85, 1, '测试', '2019-06-12 15:43:27', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (86, 1, '测试', '2019-06-12 15:49:57', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (87, 1, '测试', '2019-06-12 16:47:02', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (88, 1, '测试', '2019-06-12 17:01:17', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (89, 1, '测试内容', '2019-06-12 17:28:18', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (90, 1, '232', '2019-06-12 17:32:22', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (91, 1, '232', '2019-06-12 17:35:23', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (92, 1, '123', '2019-06-12 17:45:50', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (93, 1, '123', '2019-06-12 17:46:03', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (94, 1, '123', '2019-06-12 17:46:55', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (95, 1, '123', '2019-06-12 17:50:29', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (96, 12, '333', '2019-06-12 17:54:24', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (97, 1, '444', '2019-06-12 18:00:33', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (98, 1, '2', '2019-06-12 18:02:20', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (99, 12, '12', '2019-06-12 18:08:20', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (100, 1, '多图片上传测试', '2019-06-12 21:42:11', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (101, 3, 'XZCXZCXZ', '2019-06-13 07:46:17', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (102, 3, 'XCZXCXZCX', '2019-06-13 07:48:16', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (103, 3, 'dsfdfsfds', '2019-06-13 08:05:28', NULL, 'http://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/5bcd5f2d-5802-4e85-ae67-d40921dc3804.jpg?Expires=1874554424&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=Gdv%2BQLnXLvHvsWla8DaMnol4jC0%3D', 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (104, 3, 'dfasdf', '2019-06-13 09:34:31', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (105, 48, 'QERFQEGFWREGV', '2019-06-13 10:24:23', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (106, 48, '二分钱发热', '2019-06-13 10:30:43', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (107, 48, '343非凡的3放4', '2019-06-13 10:59:35', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (108, 48, 'sadvfeabhwrntrw', '2019-06-13 13:27:59', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (109, 48, '上的任何博古特虽然你就要对他们返回大部分都是给v人都会白发魔女那天到一半突然什么呢等同于明天你要和她明天父母他父母那一天美图闽南方言的表格广东省都能体验到煤化工体内的买衣服， 结果天赋和媒体见面郭富城', '2019-06-13 13:49:10', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (110, 1, '测试数据', '2019-06-13 22:29:43', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (111, 48, '麦秆回收利用', '2019-06-14 09:51:57', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (112, 48, '到县局拿材料', '2019-06-14 09:52:57', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (113, 48, '让家中植物安全度夏！像茉莉花或月季花等这些花卉都喜欢在炎热的夏季生长，而夏季又会持续高温，可能会对植株造成一定的影响，这时候我们就需要来做一些事情保护我们家中的植物。今天我们要说的这个小方法就是\"套盆\"。顾名思义，套盆就是将其他的花盆套在种植着植物的花盆上，这样就可以降低花盆的温度，而且还能起到很好的隔热效果。这样一来就能让我们家中的花草更舒服一些啦！同时还能有效隔绝烂根的病症。', '2019-06-14 09:54:08', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (114, 48, '青椒挂果了！！！', '2019-06-14 09:55:28', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (115, 48, '自家种的西红柿', '2019-06-14 09:58:49', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (116, 3, '21212', '2019-06-16 13:25:50', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (117, 3, 'djdjdjdd', '2019-06-16 13:35:37', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (118, 3, 'hbhnmbn', '2019-06-16 13:54:25', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (119, 3, 'vbcbcbvc', '2019-06-16 14:09:54', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (120, 3, 'hhj', '2019-06-16 14:11:01', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (121, 3, 'dfdsfdsafd', '2019-06-16 14:13:09', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (122, 3, 'dfgsgdsg', '2019-06-16 14:17:07', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (123, 3, 'ghfgdgh', '2019-06-16 14:20:37', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (124, 3, 'sdsadsa', '2019-06-16 14:24:45', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (125, 3, 'adsadsa', '2019-06-16 14:28:17', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (126, 3, 'dafdfd', '2019-06-16 14:31:04', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (127, 3, 'xzscsczxcx', '2019-06-16 14:34:12', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (128, 3, 'dsfdafds', '2019-06-16 14:35:36', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (129, 3, '价目表你忙吧', '2019-06-16 14:41:34', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (130, 3, 'sdsdafd', '2019-06-16 14:49:01', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (131, 3, 'sdsad', '2019-06-16 14:49:35', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (132, 3, 'hbhjbj', '2019-06-16 15:13:10', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (133, 3, 'fdgfdgf', '2019-06-16 15:20:28', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (134, 3, 'fgfg', '2019-06-16 15:21:17', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (135, 3, 'dsfdsf', '2019-06-16 15:22:39', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (136, 3, 'xvxvcxv', '2019-06-16 15:24:45', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (137, 3, '', '2019-06-16 15:38:18', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (138, 3, '对方水电费第三方', '2019-06-16 16:02:31', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (139, 1, '内容', '2019-06-17 09:14:07', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 0);
INSERT INTO `t_exchange` VALUES (140, 1, '内容', '2019-06-17 09:41:46', NULL, NULL, 0, '测试地址', 0);
INSERT INTO `t_exchange` VALUES (141, 1, '内容2', '2019-06-17 09:42:52', NULL, NULL, 0, '测试地址2', 0);
INSERT INTO `t_exchange` VALUES (142, 17, '1111', '2019-06-17 12:01:30', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (143, 17, '没有图片1', '2019-06-17 13:25:20', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (144, 17, '没有图片1', '2019-06-17 13:29:28', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (145, 17, '还是没有图片1', '2019-06-17 13:34:02', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (146, 14, '12345', '2019-06-17 14:01:37', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (147, 3, '热敷法人', '2019-06-17 14:20:11', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路', 1);
INSERT INTO `t_exchange` VALUES (148, 17, '这条留着测试', '2019-06-17 16:25:47', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (149, 3, '第三方大师傅', '2019-06-17 18:38:54', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_exchange` VALUES (150, 3, 'fdgdfgfd', '2019-06-17 19:02:12', NULL, NULL, 0, 'undefined', 1);
INSERT INTO `t_exchange` VALUES (151, 3, 'SDSADSA', '2019-06-18 07:51:42', NULL, NULL, 0, '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_exchange` VALUES (152, 3, 'gjhgjhgjh', '2019-06-18 12:04:02', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_exchange` VALUES (153, 4, 'fdsafds', '2019-06-19 09:58:15', NULL, NULL, 0, 'undefined', 1);
INSERT INTO `t_exchange` VALUES (154, 26, '啦啦啦', '2019-06-19 18:31:26', NULL, NULL, 0, '江苏省南京市栖霞区仙境路29号', 0);
INSERT INTO `t_exchange` VALUES (155, 3, '持续持续', '2019-06-19 18:35:34', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_exchange` VALUES (156, 17, '考试稳了', '2019-06-20 12:24:37', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (157, 14, '时间到', '2019-06-20 14:52:55', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (158, 14, '赵磊', '2019-06-20 14:53:13', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (159, 14, '李宗盛', '2019-06-20 14:53:20', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (160, 14, '定位OK', '2019-06-21 14:08:56', NULL, NULL, 0, '上传图片或15秒微视频 (最多9张图片)   发布的信息可以在列表中长按删除或撤销', 1);
INSERT INTO `t_exchange` VALUES (161, 14, '定位', '2019-06-21 14:11:32', NULL, NULL, 0, '江苏省南京市栖霞区羊山北路靠近南京工业职业技术学院', 1);
INSERT INTO `t_exchange` VALUES (162, 27, '', '2019-06-22 23:59:09', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (163, 4, '分辨花的种类', '2019-06-24 10:09:18', NULL, NULL, 0, 'undefined', 0);
INSERT INTO `t_exchange` VALUES (164, 4, '牡丹（学名：Paeonia suffruticosa Andr.）是毛茛科、芍药属植物，为多年生落叶灌木。茎高达2米；分枝短而粗。叶通常为二回三出复叶，偶尔近枝顶的叶为3小叶；顶生小叶宽卵形，表面绿色，无毛，背面淡绿色，有时具白粉，侧生小叶狭卵形或长圆状卵形，叶柄长5-11厘米，', '2019-06-24 11:28:00', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 0);
INSERT INTO `t_exchange` VALUES (165, 4, '12345678', '2019-06-24 14:24:17', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_exchange` VALUES (166, 4, '猜猜这是哪', '2019-06-25 08:36:08', NULL, NULL, 0, 'undefined', 1);
INSERT INTO `t_exchange` VALUES (167, 17, '发布了就删除1', '2019-06-25 08:40:50', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (168, 1, '上单', '2019-06-25 09:01:48', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (169, 15, '今天也是nice的一天', '2019-06-25 09:18:35', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (170, 3, '测试测试', '2019-06-25 09:28:28', NULL, NULL, 0, '江苏省南京市玄武区北京东路41号', 0);
INSERT INTO `t_exchange` VALUES (171, 15, '鸡你太美', '2019-06-25 09:40:56', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (172, 15, '鸡你真的美', '2019-06-25 09:41:43', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (173, 4, '荷兰猪    一只小小又可爱的猪   哼哼哼', '2019-06-25 09:54:35', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 1);
INSERT INTO `t_exchange` VALUES (174, 4, '荷兰猪    一只小小又可爱的猪   哼哼哼', '2019-06-25 09:54:37', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 1);
INSERT INTO `t_exchange` VALUES (175, 4, '荷兰猪    一只小小又可爱的猪   哼哼哼', '2019-06-25 09:54:37', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 0);
INSERT INTO `t_exchange` VALUES (176, 4, '荷兰猪    一只小小又可爱的猪   哼哼哼', '2019-06-25 09:54:38', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 1);
INSERT INTO `t_exchange` VALUES (177, 4, '荷兰猪    一只小小又可爱的猪   哼哼哼', '2019-06-25 09:54:40', NULL, NULL, 0, '江苏省南京市栖霞区任之北路', 1);
INSERT INTO `t_exchange` VALUES (178, 4, '水稻按稻谷类型分为籼稻和粳稻、早稻和中晚稻、糯稻和非糯稻。还有其它分类，按是否无土栽培分为水田稻与浮水稻；按生存周期分为季节稻与“懒人稻”（越年再生稻）；按高矮分为普通水稻与2米左右的巨型稻；按耐盐碱性分为普通淡水稻与“海水稻”（其实它主要使用淡水）。', '2019-06-25 10:15:02', NULL, NULL, 0, 'undefined', 0);
INSERT INTO `t_exchange` VALUES (179, 17, '今天考察', '2019-06-25 14:20:50', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (180, 15, '文字文字萨顶顶多多多多多多多阿诗丹顿多多多多萨顶顶多多多多多多阿诗丹顿多多多多多多多萨顶顶多多多多多多多多多多多气味儿二二二二二二王企鹅二二二二二二二二二二二二二文起呃呃呃呃呃呃呃呃呃文起呃呃呃呃呃呃呃呃呃二文起呃呃呃呃呃呃呃呃呃二二二二气味儿二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二二气味儿二二二二二二二二二二二二二二气味儿二二二二二二二', '2019-06-25 14:55:27', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (181, 4, '百合花的球根含丰富淀粉质，部分更可作为蔬菜食用，在中国，食用百合具有悠久的历史，而且中医认为百合性微寒平，具有润肺止咳，清火，宁心安神的功效，花鳞状茎均可入药，是一种药食兼用的花卉。', '2019-06-25 15:23:12', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 0);
INSERT INTO `t_exchange` VALUES (182, 17, '今天很开心', '2019-06-25 16:55:40', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (183, 17, '测试1', '2019-06-25 17:09:38', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (184, 17, '交流', '2019-06-25 17:18:16', NULL, NULL, 0, NULL, 1);
INSERT INTO `t_exchange` VALUES (185, 15, '你好中国', '2019-06-26 08:25:23', NULL, NULL, 0, NULL, 0);
INSERT INTO `t_exchange` VALUES (186, 98, '哈哈哈哈哈哈', '2019-06-26 16:35:41', NULL, NULL, 0, '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_exchange` VALUES (187, 1, '你好呀', '2019-10-17 18:10:23', NULL, NULL, 0, '江苏', 0);
INSERT INTO `t_exchange` VALUES (188, 107, '交个朋友呀', '2020-05-13 17:08:56', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (189, 107, '嘻嘻', '2020-05-13 17:17:22', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (190, 107, '嘿嘿', '2020-05-13 17:28:36', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (191, 107, '土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土土', '2020-05-13 22:24:18', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (192, 98, '测试一下呀', '2020-05-13 23:37:47', NULL, NULL, 0, '南京', 0);
INSERT INTO `t_exchange` VALUES (193, 98, '测试一下呀', '2020-05-13 23:37:49', NULL, NULL, 0, '南京', 0);
INSERT INTO `t_exchange` VALUES (194, 98, '测试一下呀', '2020-05-13 23:37:50', NULL, NULL, 0, '南京', 0);
INSERT INTO `t_exchange` VALUES (195, 107, '不错呀哈哈', '2020-05-14 09:47:49', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (196, 107, '不错呀哈哈', '2020-05-14 09:47:55', NULL, NULL, 0, '正在定位...', 0);
INSERT INTO `t_exchange` VALUES (197, 107, '不错呀哈哈', '2020-05-14 09:48:00', NULL, NULL, 0, '正在定位...', 0);

-- ----------------------------
-- Table structure for t_exhibition
-- ----------------------------
DROP TABLE IF EXISTS `t_exhibition`;
CREATE TABLE `t_exhibition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '展播标题',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '展播图片',
  `state` int(11) NULL DEFAULT 0 COMMENT '发布状态，0未发布，1已发布',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exhibition
-- ----------------------------
INSERT INTO `t_exhibition` VALUES (1, '第一个展播', NULL, 0, 0);
INSERT INTO `t_exhibition` VALUES (2, '第二个展播', NULL, 0, 0);

-- ----------------------------
-- Table structure for t_expert
-- ----------------------------
DROP TABLE IF EXISTS `t_expert`;
CREATE TABLE `t_expert`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `expert_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专家名字',
  `head_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '头像',
  `unit_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `email` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `profession` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业方向',
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '履历',
  `sys_sort` int(11) NULL DEFAULT NULL COMMENT '体系专家分类',
  `expert_sort` int(11) NULL DEFAULT NULL COMMENT '专家分类',
  `job_title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  `grade` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份，专家等级',
  `check_all` int(11) NULL DEFAULT 88 COMMENT '签到次数',
  `phone_number` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `score` int(11) NULL DEFAULT 99 COMMENT '积分',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  `logo` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签',
  `state` int(11) NULL DEFAULT 0 COMMENT '状态，0正常，1异常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_expert
-- ----------------------------
INSERT INTO `t_expert` VALUES (1, '郭文善', 'https://object.jsnjy.net.cn/OSS/20161101/20161101195635233.jpg', '扬州大学农学院', 'guows@yzu.edu.cn', '小麦', '郭文善，男，1961年生，汉族，江苏姜堰人，博士，现任扬州大学农学院教授、博士生导师、院党委书记；兼任农业部小麦专家指导组组长、教育部教指委委员、江苏省小麦高产创建专家组组长、扬州大学小麦研究中心主任；为中国作物学会理事、栽培委员会小麦学组副组长、江苏省作物学会常务理事、小麦专业委员会主任。 长期从事小麦栽培与生理的教学与科研工作，在麦类作物产量品质生理与高产优质高效栽培、作物逆境生理和作物遥感监测等研究领域取得重要进展。先后主持国家自然科学基金及部省级项目40多项。发表论文130余篇，主编、合编著作5部，参编9部。作为主持人或主要完成人，获国家、省部级成果奖12项，其中 “小麦籽粒品质形成机理及调优栽培技术的研究与应用”获国家科技进步二等奖、江苏省科技进步一等奖，“小麦产量生理调节机理及应用技术” 获江苏省科技进步一等奖，“专用小麦品质栽培改良机理及其调控技术”获江苏省农业科技成果转化奖一等奖，“小麦高产稳产优质抗逆栽培技术集成与推广”获江苏省政府农业技术推广奖一等奖，“优质弱筋小麦生产技术体系的研究与开发应用”获农业部农牧渔业丰收奖一等奖，“小麦源库协调栽培途径与综合配套技术”获国家教委科技进步二等奖。曾获中国青年科技奖、江苏省青年科技奖、中国农学会青年科技奖、全国农业科技推广先进个人、江苏省有突出贡献中青年专家、江苏省粮食生产突出贡献科技人员、江苏省高校优秀共产党员，享受国务院特贴，是国家“百千万人才工程”第一、二层次人选和江苏省“333高层次人才培养工程”首批中青年科技领军人才人选。', 1, 2, '教授', '省级专家', 88, '17805136692', 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (2, '王秀娥', 'https://object.jsnjy.net.cn/OSS/20180610/1607abf4b80e4f90b80e5462edb51e9f.jpg', '南京农业大学', 'xiuew@njau.edu.cn', '小麦', '1987年获北京农业大学农学学士学位， 1993年获南京农业大学农学硕士学位，1996年获南京农业大学农学博士学位，1999～2000年赴美国堪萨斯州立大学访问学者，2004～2005年在美国威斯康辛大学博士后。现为南京农业大学教授，博士生导师，南京农业大学农学院副院长，作物遗传与种质创新国家重点实验室常务副主任，农业部华东区作物基因资源与种质创制重点开放实验室主任，中国遗传学会理事，江苏省遗传学会理事长，中国作物学会理事，中国农业生物技术学会理事。 主持国家自然基金、国家“863”、国家转基因重大专项和其他部省级项目30余项；发表论文100余篇，其中在PNAS、Genome Res、Plant J等发表 SCI论文46篇。参编教材和专著4部。申请发明专利25项，获批19项。作为主要完成人育成小麦新品种2个，或新品种权2项。获国家技术发明奖二等奖和科技进步奖二等奖各1项，教育部高校科学研究优秀成果奖（技术发明奖）一等奖1项，教育部高校科学研究优秀成果奖（科技进步奖）一等奖和二等奖各1项；入选江苏省“333工程”第二层次培养对象和江苏省“六大人才高峰”高层次人才；江苏省小麦抗赤霉病和白粉病创新团队首席科学家；江苏省现代农业产业技术体系岗位科学家(小麦遗传育种)。 主要学术成就：面向小麦育种对重要性状新基因特别是抗病新基因资源的迫切需求，致力于麦类作物新基因的发掘、鉴定、定位、克隆和育种利用以及种质创新的方法和技术研究，主要内容包括：1）分子细胞遗传学和基因组学与小麦种质创新；2）小麦及近缘物种重要育种目标性状基因发掘、定位、克隆和作用机制解析；3）小麦染色体工程和分子育种。建立远缘种质创制和鉴定技术体系，利用远缘杂交、染色体工程结合分子细胞遗传学和基因组学创制涉及不同亲缘物种的、携带重要目标性状基因的异染色体系；开发外源染色体特异分子标记，明确小麦近缘物种染色体的部分同源群归属；在小麦及其近缘物种中发现多个重要性状新基因，其中来自簇毛麦的抗黄花叶病基因被国际小麦基因命名委员会定名；解析簇毛麦广谱抗白粉病的分子通路，解析小麦抗赤霉病的分子通路，克隆了多个抗病相关基因，阐明其功能，获得多份功能明确的小麦转基因材料；以上研究为小麦育种提供了丰富的新种质和新基因', 1, 2, '教授', '省级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (3, '周宏', 'https://object.jsnjy.net.cn/OSS/20190505/30c3133051f848768561f252af281e42.png', '南京农业大学', 'zhouhong@njau.edu.cn', '小麦', '束兆林,男，1964年生，汉族，江苏丹阳人,中共党员，大学本科，研究员，现任江苏丘陵地区镇江农业科学研究所植保研究室主任,系江苏省昆虫学会理事，江苏省农业产业体系（镇江）综合示范基地（稻麦）主任。主要从事粮油作物病虫害、农药应用技术和水稻植保专业化服务模式研究，在植物保护和农药领域中，主持和协助主持国家、省市科研项目30余项，发表科研论文80余篇，主编和共同编著专著3部。曾获将江苏省科技进步一等奖二项（第7、10完成人）、四等奖一项（第5完成人），江苏省科技成果转化一等奖一项（第19完成人），江苏省农科院科技进步一等奖一项（第5），镇江市科技进步二等奖二项（第4、5完成人）、三等奖四项（第1、3、5、5完成人），获国家发明专利授权26项（第一完成人11项）、外观专利9项；项目研究的应用技术《基于种子处理的水稻病虫简约化防控技术》2017列入江苏省农科院首批主推技术，《水稻病虫害简约化防控技术》列入2018-2019年江苏省重大技术推广计划，同时，利用自身的科研成果和技术优势，年植保专业化服务面积达2万余亩，减少农药的污染，节省农本200万元，为规模化水稻种植提供技术支撑。曾获江苏省省优秀科技工作者，镇江市突出贡献的中青年专家， 市“169”学术技术带头人，镇江市优秀科技工作者、镇江市知识产权先进个人等荣誉称号。', 1, 2, '教授', '地方专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (4, '李刚华', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E4%B8%93%E5%AE%B6/%E6%9D%8E%E5%88%9A%E5%8D%8E.jpg', '南京农业大学', 'liganghua@qq.com', '水稻', '李刚华博士，教授，南京农业大学农学系主任。农业部水稻机械化生产专家组副组长、中国农业自然灾害减灾委员会理事、江苏省水稻绿色增产创建技术指导专家。 主要从事作物生理生态和水稻栽培高产高效方面的教学与科研工作。涉及水稻高产生理生态与高产栽培、水稻抗逆栽培与节能减排、水稻高产机械化稻作技术研发。2011年以来，主持国家级项目4项，省部级项目多项。获省科技进步二等奖1项，省（部）级科技推广一等奖2项，二等奖1项。获得专利7项，颁布技术规程5项。在国内外发表学术论文100多篇，其中第1作者或通讯作者SCI论文15篇。', 2, 1, '教授', '省级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (5, '王才林', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E4%B8%93%E5%AE%B6/%E7%8E%8B%E6%89%8D%E6%9E%97.png', '江苏省农业科技院', 'wangcailin@163.com', '水稻', '1982年1月毕业于原江苏农学院苏州地区专科班农学专业，1986年获南京农业大学农学硕士学位，1996年获日本鹿儿岛大学农学博士学位。现任江苏省农科院粮食作物研究所二级研究员，兼任江苏省优质水稻工程技术研究中心主任、江苏省农作物品种审定委员会水稻专业委员会副主任、国家水稻产业技术体系执行专家组成员、江苏省水稻协作攻关组首席专家、中国作物学会水稻专业委员会理事、江苏省作物学会水稻专业委员会副主任委员、江苏省遗传学会副秘书长、江苏省种业协会理事、江苏省注册咨询专家，南京农业大学和南京林业大学博士生导师、扬州大学兼职教授，江苏省农科院博士后工作站导师。 1986年以来一直从事水稻遗传育种研究，主持和参加国家和省部级重大项目30多项。参加育成杂交粳稻3个、不育系2个、两系杂交稻3个、光敏核不育系4个。主持育成抗条纹叶枯病的优质高产粳稻“南粳44”、优良食味新品种“南粳46”、“南粳5055”、“南粳9108”、“南粳50”、“南粳52”、“南粳0212”、“南粳9212”、杂交粳稻“95优161”、杂交籼稻“宁香优88”、“宁籼优8号”、粳稻不育系“95122A”、籼稻不育系“宁香1A”、“宁籼2A”通过省级审定或鉴定，其中杂交粳稻“95优161”通过国家审定。“南粳44”2009年成为江苏省推广面积最大的品种，2010年被农业部认定为超级稻，累计推广面积1500多万亩；“南粳46”、“南粳5055”和“南粳9108”被誉为江苏省“最好吃的大米”，累计推广2000多万亩。获得国家发明专利17项、实用新型专利12项、植物新品种权34项，申请国家发明专利6项、实用新型专利3项、植物新品种权20项。主持获得省科技进步一等奖1项、大北农科技进步二等奖2项、院科技进步一等奖2项、市科技进步二等奖1项，作为主要完成人获得国家科技进步一等奖1项（第2）、国家发明二等奖1项、农业部科技进步二等奖1项、中国高校科技进步一等奖1项（第2）、省科技进步一等奖3项、二等奖3项（第二2项、第三1项）、省农业科技推广一等奖1项（第2）、院科技开发特等奖1项、院科技进步一等奖3项、市科技进步三等奖3项，院、市和全国青年优秀论文奖多项，在国内外学术刊物上发表论文270多篇，其中SCI论文8篇。主编著作3部、参编2部，先后培养硕士生23名、指导博士生2名、博士后7名。先后获得省留学回国人员先进个人、江苏省有突出贡献中青年专家、江苏省先进工作者、江苏省十大优秀专利发明人、江苏创新创业人才奖、江苏省优秀科技工作者、江苏省 “333工程”第一层次培养对象、全国粮食生产突出贡献科技人员、全国优秀科技工作者、全国先进工作者等荣誉称号，享受国务院特殊津贴。', 2, 1, '教授', '省级专家', 88, NULL, 100, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (6, '严国红', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E4%B8%93%E5%AE%B6/%E4%B8%A5%E5%9B%BD%E7%BA%A2.png', '江苏沿海地区农科所', 'yanguohong@139.com', '水稻', '1、主要学术成就：先后主持或参加国家级、部省级有关科研项目30多项。主持或参加育成盐稻系列品种5个（8、9、10、11、12号）、559系列和888系列杂交籼稻组合10个及不育系5个，其中丰优559、盐两优888、盐两优2208通过国家品种审定。获品种权授权11项，获发明专利授权4项。 2、成果奖励：“抗条纹叶枯病高产优质粳稻新品种选育及应用”2010年获国家科技进步一等奖，主要参加 人；“高产优质多抗杂交籼稻汕优559的育成”、 “抗条纹叶枯病中粳稻盐稻8号的选育与应用”、“国审优质杂交籼稻丰优559选育与应用”获江苏省科技进步三等奖，“光温敏两用核不育系盐582S及其两系杂交稻盐两优888选育与应用”盐城市科学技术特等奖”，主要完成人。 3、文章专著：在省级以上专业期刊发表论文100余篇，其中第一作者20余篇。转基因水稻安全性问题的探讨,江西农业学报，2009.4；植物基因组学育种实践上的研究进展, 江苏农业科学，2011.1；肥料类型及用量对盐碱地甜高粱主要经济性状的影响, 江苏农业科学。 4、荣誉称号：2003年被授予江苏省新长征突击手，2006被盐城市总工会授予盐城市五一劳动奖章，2011年被江苏省农科院授予知识产权工作先进个人，2013年盐城市机关工委授予优秀共产党员。', 2, 1, '教授', '地方专家', 555, NULL, 125, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (7, '吴春芳', 'https://object.jsnjy.net.cn/OSS/20181218/78fa400f3ad54436abe2af2655516ac6.png', '江苏沿江地区农业科学研究所', '326852850@qq.com', '特粮特经', '吴春芳，研究员，1965年出生，硕士学位。从事蚕豆新品种选育及春化设施栽培技术研究30年，作为第一完成人育成了4个豆类新品种、获8项国家发明专利，先后主持省、市课题20多项；育成的大粒青皮蚕豆品种通鲜2号、发明的蚕豆芽苗培育、春化及移栽技术居于国际先进或领先；作为第一完成人于2004年获南通市科技进步二等奖、于2013年12月获南通市科技进步一等奖；2009年被南通市政府评为专业技术拔尖人才，2014年度荣获“南通市科技兴市功臣”称号。', 3, 3, '研究员', '省级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (8, '袁建华', 'https://object.jsnjy.net.cn/OSS/20161226/20161226123455795.png', '江苏省农业科学院', 'yuanjh1123@163.com', '特粮特经', '袁建华，博士，研究员，江苏省突出贡献中青年专家。现任江苏省农科院粮食所副所长、江苏沿江地区农科所所长、国家产业技术体系江苏试验站站长、江苏省玉米育种首席专家、江苏省玉米品种审定委员会副主任、江苏省高产创建专家组成员。先后主持国家农业科技成果转化资金项目、江苏省高技术项目、江苏省农业科技自主创新资金项目、江苏省科技支撑计划项目、江苏省农业三项工程等20多项课题，参与国家科技支撑计划、国家863计划、国家转基因专项等项目的研究工作。主持育成苏玉18、苏玉20、苏玉28、苏玉29、苏玉36、苏玉37苏玉39、苏玉41等8个普通玉米品种和江南花糯、江南紫糯、苏科花糯2008、苏科糯2号、苏科糯3号、苏科糯4号、苏科糯5号、苏科糯6号、明玉1203、苏科糯8号、苏科糯9号、苏科糯10号等12个糯玉米品种。申请品种权26项，已授权14项。制定江苏省地方标准7项。获中华农业科技二等奖1项（第1）、江苏省科技进步二等奖1项（第1）、江苏省科技进步三等奖2项（第1、7）、江苏省农业技术推广奖三等奖1项（第5）。', 3, 3, '研究员', '省级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (9, '田青英', 'https://object.jsnjy.net.cn/OSS/20190308/e0a1fd2eb30f4f4cbe08b27e68299436.jpg', '南京市园艺技术推广站', '785897437@qq.com', '蔬菜', '1986年7月参加工作，先后主持、参加完成省、市科研、推广等各类项目20多项，其中关于西瓜、笋用竹等省级技术体系、三新项目8项。参加完成的“设施西瓜新品种及优质高效生产技术集成推广”成果经省级鉴定总体水平达国内领先，获省农业技术推广一等奖（4）。主持完成的“设施蔬菜病虫害绿色防控技术研究与推广”成果获省农业丰收奖二等奖（2）、南京市科技进步三等奖（2）。获省农林厅科技进步三等奖、四等奖2项。主持制、修定了西瓜、蚕桑、早园竹等市级农业地方标准6部。先后发表论文、撰写技术报告20多篇，多篇论文先后获市自然科学和市科协优秀论文奖、市高效农业论坛论文二等奖、市农林系统优秀调研成果一等奖、三等奖等。2013年主编《早园竹林高效生态经营》于12月出版。2003年合作完成《南京农业通览》园艺篇西瓜章节的撰稿，独立完成蚕桑章节的撰稿。2000年独立编写 “金土地”丛书—《蚕桑栽培技术》—桑树栽培技术、《笋用竹栽培技术》。 2015年获南京市农技推广服务先进工作者称号。', 4, 4, '推广研究员', '地方级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (10, '朱立民', 'https://object.jsnjy.net.cn/OSS/20171228/20171228174952082.png', '徐州市铜山区农委', 'jsstsxjzk@163.com', '蔬菜', '1982年月进入铜山县农业局蔬菜技术指导站工作，有35年工作经验,先后任技术员、副站长、站长等工作，对铜山地区蔬菜的适宜品种、主推技术有多年的工作经验。', 4, 4, '正高', '地方级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (11, '陶书田', 'https://object.jsnjy.net.cn/OSS/20190404/e568de1effd94c7eb9a20bb74b2ab71d.png', '南京农业大学', 'taost@njau.edu.cn', '果树', '陶书田，1980年出生，博士，教授。2007-2008年，于加拿大农业及农业食品部开展果品酚类物质成分及其生理功能合作研究，2009年毕业于南京农业大学，获得发育生物学博士学位，并获教育部支持继续促进与加拿大农业及农业部的科研合作与高层次人才培养计划。目前在南京农业大学园艺学院/科学研究院主要从事果实品质调控、优质安全标准化栽培方面的教学、科研工作和科研管理工作，获2018年“南京青年英才”称号。个人及团队发表科研及管理论文六十余篇，获得发明专利十余项，省部级二等奖以上五项，主持国家及省部级项目六项。 成果技术内容主要用于果树生产及栽培调控，提高劳动效率及果品品质，如“一种节本增效的梨树液体授粉方法”提高了果树人工授粉效率36倍，“一种提高梨果实脱萼率的方法”提高了‘库尔勒香梨’的“母梨”率，售价提高1元/公斤。', 5, 5, '教授', '省级专家', 88, NULL, 99, 0, NULL, 0);
INSERT INTO `t_expert` VALUES (12, '吴俊', 'https://object.jsnjy.net.cn/OSS/20180502/8f13e2c355ed477a800934a36bdae005.png', '南京农业大学', 'wujun@njau.edu.cn', '果树', '吴俊，南京农业大学园艺学院/作物遗传与种质创新国家重点实验室 教授，博士生导师，主要从事梨的种质资源与育种技术方面的研究，国家杰出青年科学基金获得者，现任江苏现代农业梨产业技术体系首席专家、国家梨产业技术体系育种岗位科学家。已主持国家及省部级基础研究与技术应用类项目20多项；发表学术论文130多篇，其中SCI论文60余篇；获授权国家发明专利12项、国家软件著作权1项；制定江苏省地方标准5项；参与选育梨新品种6个；曾获教育部自然科学一等奖（排名第一）、国家科技进步二等奖（排名第四）、教育部技术发明一等奖（排名第二）、教育部科技进步二等奖（排名第二）、以及其他省部级及行业科技奖励共7项。获中国青年科技奖、教育部新世纪优秀人才、江苏省 “青蓝工程”科技创新团队带头人、江苏省杰出青年科学基金、“333高层次人才工程”第二层次和“六大人才高峰”A类等多项国家及省部级人才计划。', 5, 5, '教授', '省级专家', 88, NULL, 99, 0, NULL, 0);

-- ----------------------------
-- Table structure for t_expert_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_expert_grade`;
CREATE TABLE `t_expert_grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `expert_id` int(11) NULL DEFAULT NULL COMMENT '专家id',
  `grade_id` int(11) NULL DEFAULT NULL COMMENT '等级id',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_expert_grade
-- ----------------------------
INSERT INTO `t_expert_grade` VALUES (1, 1, 1, 0);
INSERT INTO `t_expert_grade` VALUES (2, 1, 4, 0);
INSERT INTO `t_expert_grade` VALUES (3, 2, 1, 0);
INSERT INTO `t_expert_grade` VALUES (4, 2, 5, 0);
INSERT INTO `t_expert_grade` VALUES (5, 3, 1, 0);
INSERT INTO `t_expert_grade` VALUES (6, 3, 4, 0);
INSERT INTO `t_expert_grade` VALUES (7, 4, 5, 0);
INSERT INTO `t_expert_grade` VALUES (8, 5, 6, 0);
INSERT INTO `t_expert_grade` VALUES (9, 4, 2, 0);
INSERT INTO `t_expert_grade` VALUES (10, 5, 2, 0);
INSERT INTO `t_expert_grade` VALUES (11, 6, 2, 0);

-- ----------------------------
-- Table structure for t_expert_question
-- ----------------------------
DROP TABLE IF EXISTS `t_expert_question`;
CREATE TABLE `t_expert_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '提问人',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '提问内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '提问时间',
  `expert_id` int(11) NULL DEFAULT NULL COMMENT '咨询的专家',
  `address` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_expert_question
-- ----------------------------
INSERT INTO `t_expert_question` VALUES (1, 1, '专家你好，可以加个微信吗', '2019-05-24 14:32:03', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (2, 1, '真的勇士，敢于面对惨淡的人生，敢于面对淋漓的鲜血', '2019-05-26 14:31:47', 2, '南京', 1);
INSERT INTO `t_expert_question` VALUES (3, 3, '啦啦啦', '2019-06-13 19:08:03', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (4, 3, 'dsadfdsfsdf', '2019-06-13 19:13:28', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (5, 3, 'fdsgfkhsjkhdjkasjkcvnmnzxdcm,vnkasdkfjsdkajf;klsdajfkl;dsjajf;lkjdsakl;fjklsdjfkkasdl;fjksad;fkjsda;klfjksd;ljfklasdjkfwea', '2019-06-13 19:17:33', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (6, 3, 'dddff', '2019-06-13 19:37:41', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (9, 3, '专家你好', '2019-06-17 08:24:36', 2, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (10, 3, '你好', '2019-06-17 08:39:47', 3, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (11, 3, '12234', '2019-06-17 09:23:46', 2, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (12, 3, '11111123456', '2019-06-17 09:27:19', 2, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (13, 48, '哈哈哈哈', '2019-06-19 11:15:59', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (14, 48, 'sergfrwegw', '2019-06-19 11:36:17', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (15, 48, '而非过热v根本任务', '2019-06-19 11:36:55', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (17, 48, '却为何如果请问v个人波特率而且而无人不v让他把你如果是我让你他们呢人事部二五五你不热也没人额二分Vern不会突然昏迷也如果v人文今天要不要他果然是v热污染那边突然昏迷你突然好吧任何他挺唬人的热比他们宁愿贴吧突然', '2019-06-19 13:04:08', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (18, 48, '热谈何容易美女人体，uu突然被天热三百特没有惹怒人员准备特', '2019-06-19 13:06:24', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (19, 48, '哈哈哈哈哈哈', '2019-06-19 15:41:29', 6, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (21, 48, '的方式不过是个纪念的一天很特别而非虽然输入法', '2019-06-20 10:33:19', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (22, 48, '散热grew和个人他Bret是s\'d\'f', '2019-06-20 13:14:49', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (23, 48, 'wegertjnertberbverbfewbwr', '2019-06-20 13:18:48', 1, '江苏', 1);
INSERT INTO `t_expert_question` VALUES (24, 3, '专家你好，请问小麦生虫用什么药啊', '2019-06-22 16:35:24', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (26, 3, '你好你好', '2019-06-23 14:57:54', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (27, 4, '冬小麦的种植需要注意什么', '2019-06-24 08:35:19', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (28, 3, '专家你好', '2019-06-24 11:39:30', 1, '江苏', 0);
INSERT INTO `t_expert_question` VALUES (33, 2, '专家你好！栽培小麦，一般在多久过后开始进行施肥', '2019-06-25 11:46:02', 1, NULL, 1);
INSERT INTO `t_expert_question` VALUES (34, 3, '专家你好', '2019-06-25 15:18:23', 1, '江苏省南京市玄武区北京东路41号', 0);
INSERT INTO `t_expert_question` VALUES (35, 2, '专家你好', '2019-06-26 00:34:15', 1, NULL, 0);
INSERT INTO `t_expert_question` VALUES (36, 98, '你好呀吧', '2019-06-26 16:40:40', 1, '江苏省南京市栖霞区文枢东路1号', 0);

-- ----------------------------
-- Table structure for t_expert_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_expert_reply`;
CREATE TABLE `t_expert_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '关联的问题',
  `expert_id` int(11) NULL DEFAULT NULL COMMENT '回答的专家',
  `content` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回答的专家',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '回答时间',
  `like` int(11) NULL DEFAULT NULL COMMENT '点赞量',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_expert_reply
-- ----------------------------
INSERT INTO `t_expert_reply` VALUES (1, 1, 1, '同学你好，很高兴认识你', '2019-05-26 15:05:50', 88, 0);
INSERT INTO `t_expert_reply` VALUES (2, 2, 2, '好诗好诗，当代鲁讯啊', '2019-05-26 15:05:52', 66, 0);
INSERT INTO `t_expert_reply` VALUES (3, 1, 1, '请问你有什么想问的吗', '2019-05-26 16:04:51', 77, 0);

-- ----------------------------
-- Table structure for t_farmer_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_farmer_apply`;
CREATE TABLE `t_farmer_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `identity_number` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `phone_number` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `education` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度',
  `job` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '从事产业',
  `job_address` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产业所在地',
  `job_size` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产业规模',
  `age_limit` int(11) NULL DEFAULT NULL COMMENT '年限',
  `size_unit` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规模单位',
  `user_sort` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员类别',
  `state` int(11) NULL DEFAULT 0 COMMENT '申请是否通过，0是未通过，1是通过',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0删除，1不删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_farmer_apply
-- ----------------------------

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '反馈内容',
  `feedback_time` date NULL DEFAULT NULL COMMENT '反馈时间',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0表示不删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO `t_feedback` VALUES (1, 2, '反馈意见', '2019-05-15', 0);
INSERT INTO `t_feedback` VALUES (2, 26, '很好哦', '2019-05-23', 0);
INSERT INTO `t_feedback` VALUES (3, 26, '不错不错', '2019-05-23', 0);
INSERT INTO `t_feedback` VALUES (4, 26, 'aaaaa', '2019-05-23', 0);
INSERT INTO `t_feedback` VALUES (5, 26, '11111111', '2019-05-23', 0);
INSERT INTO `t_feedback` VALUES (6, 3, '很好', '2019-06-01', 0);
INSERT INTO `t_feedback` VALUES (7, 3, '非常好', '2019-06-01', 0);
INSERT INTO `t_feedback` VALUES (8, 3, 'aaaa', '2019-06-01', 0);
INSERT INTO `t_feedback` VALUES (9, 1, 'cewdcea', '2019-06-08', 0);
INSERT INTO `t_feedback` VALUES (10, 14, 'Nihao', '2019-06-08', 0);
INSERT INTO `t_feedback` VALUES (11, 14, 'Nihao', '2019-06-08', 0);
INSERT INTO `t_feedback` VALUES (12, 3, '继续努力', '2019-06-17', 0);
INSERT INTO `t_feedback` VALUES (13, 1, '1', '2019-06-17', 0);
INSERT INTO `t_feedback` VALUES (14, 14, '1234567', '2019-06-18', 0);
INSERT INTO `t_feedback` VALUES (15, 1, '1', '2019-06-19', 0);
INSERT INTO `t_feedback` VALUES (16, 1, '1', '2019-06-20', 0);
INSERT INTO `t_feedback` VALUES (17, 15, '11111', '2019-06-20', 0);
INSERT INTO `t_feedback` VALUES (18, 15, '1111', '2019-06-20', 0);
INSERT INTO `t_feedback` VALUES (19, 15, '111', '2019-06-20', 0);
INSERT INTO `t_feedback` VALUES (20, 4, '', '2019-06-22', 0);
INSERT INTO `t_feedback` VALUES (21, 4, '11', '2019-06-22', 0);
INSERT INTO `t_feedback` VALUES (22, 4, '', '2019-06-24', 0);
INSERT INTO `t_feedback` VALUES (23, 4, '反应太慢了', '2019-06-25', 0);
INSERT INTO `t_feedback` VALUES (24, 14, '城市的', '2019-06-25', 0);
INSERT INTO `t_feedback` VALUES (25, 15, '我爱你', '2019-06-26', 0);
INSERT INTO `t_feedback` VALUES (26, 98, '1234567', '2019-06-26', 0);

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `grade` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专家等级名称',
  `sort` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专家等级分类',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES (1, '省级专家', '农业专家', 0);
INSERT INTO `t_grade` VALUES (2, '地方专家', '农业专家', 0);
INSERT INTO `t_grade` VALUES (3, '驻村专家', '农业专家', 0);
INSERT INTO `t_grade` VALUES (4, '首席专家', '体系专家', 0);
INSERT INTO `t_grade` VALUES (5, '岗位专家', '体系专家', 0);
INSERT INTO `t_grade` VALUES (6, '基地主任', '体系专家', 0);

-- ----------------------------
-- Table structure for t_img
-- ----------------------------
DROP TABLE IF EXISTS `t_img`;
CREATE TABLE `t_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '提问id',
  `exchange_id` int(11) NULL DEFAULT NULL COMMENT '交流id',
  `news_id` int(11) NULL DEFAULT NULL COMMENT '资讯id',
  `buy_id` int(11) NULL DEFAULT NULL COMMENT '供应模块的图片',
  `expert_question_id` int(11) NULL DEFAULT NULL COMMENT '专家问题的图片',
  `img_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_img
-- ----------------------------
INSERT INTO `t_img` VALUES (1, 1, NULL, NULL, NULL, 1, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/a6bb0e50-c44f-4be6-81a1-ca6bbacbe2ee.jpg');
INSERT INTO `t_img` VALUES (2, 2, NULL, NULL, NULL, 2, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/92c39b78-8da6-4e70-8c9a-30c97827b446.jpg');
INSERT INTO `t_img` VALUES (3, 1, NULL, NULL, NULL, 1, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/87705fb5-8ef6-47c4-8e2e-b485db03c946.jpg');
INSERT INTO `t_img` VALUES (4, 1, NULL, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/4550bd57-225c-40c3-b68b-4f382f3f791f.jpg?Expires=1874884235&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=jNcNxNh4xNjM08iYP2koRPhxn3g%3D');
INSERT INTO `t_img` VALUES (5, 30, NULL, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/77be1e3a-cc33-4d70-9089-9cf27a01ed07.jpg?Expires=1874537023&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=O253vD64lNBYS%2B9Dtba1DDUl%2FE8%3D');
INSERT INTO `t_img` VALUES (6, 30, NULL, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/7b934eb0-76f3-4b6e-8a79-a28f777c9307.jpg?Expires=1873475915&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=jcvx6ZZdoFt%2BSsBZ6DwxQqgFFrY%3D');
INSERT INTO `t_img` VALUES (7, NULL, 1, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/e2d5b183-4050-4fd8-972b-228fd43ab163.jpg?Expires=1873470970&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=05eMfDEX3tBIqypPxwsxEYSh0Nk%3D');
INSERT INTO `t_img` VALUES (8, NULL, 1, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/a0bd89b5-b54c-4961-8c73-3f230d740ef6.png?Expires=1874217300&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=ozR4DmNhPRu4wcBnwgYlYpuPDHA%3D');
INSERT INTO `t_img` VALUES (9, NULL, 5, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (10, NULL, NULL, 1, NULL, NULL, 'https://t1.hxzdhn.com/uploads/tu/201905/9999/rnab1ec7445c.jpg');
INSERT INTO `t_img` VALUES (11, NULL, NULL, 2, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (12, NULL, NULL, 3, NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190619/6e3687f0f34a4e4597fe0844b90030b8.jpg');
INSERT INTO `t_img` VALUES (13, NULL, 88, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (14, NULL, 88, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/2c857824-89b2-4a11-9485-136d34573a30.jpg');
INSERT INTO `t_img` VALUES (15, NULL, 89, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dcd16d24-5bf4-4c5f-bcfc-3ad30b55be71.jpg');
INSERT INTO `t_img` VALUES (16, NULL, 93, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b4eb4564-04c5-4c73-9b27-1ca300364080.jpg?Expires=1875692760');
INSERT INTO `t_img` VALUES (17, NULL, 94, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/4626b8db-c242-4c9a-b10e-1819c8c9de9f.jpg?Expires=1875661093&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=8XV9W%2FhwtQwtvuoNOPbgnOfagAw%3D');
INSERT INTO `t_img` VALUES (18, NULL, 95, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b4eb4564-04c5-4c73-9b27-1ca300364080.jpg?Expires=1875692760');
INSERT INTO `t_img` VALUES (19, NULL, 96, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/0c535c69-4082-426c-af18-a1fb4cb1c723.jpg?Expires=1875693260');
INSERT INTO `t_img` VALUES (22, NULL, 98, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b4eb4564-04c5-4c73-9b27-1ca300364080.jpg?Expires=1875692760');
INSERT INTO `t_img` VALUES (23, NULL, 98, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b4eb4564-04c5-4c73-9b27-1ca300364080.jpg?Expires=1875692760');
INSERT INTO `t_img` VALUES (26, NULL, 100, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/b1097210-6669-469a-a2c1-3ad1d2b2dead.jpg?Expires=1874888602&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=o0yd9pyPwlnl%2Fp1h2W4gAv%2BD%2BJk%3D');
INSERT INTO `t_img` VALUES (27, NULL, 100, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d5ad0834-748a-4141-a730-06ecacb886ee.jpg');
INSERT INTO `t_img` VALUES (28, NULL, 100, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/4cc72d46-3a5e-4588-be99-b127f8c108c2.jpg');
INSERT INTO `t_img` VALUES (29, NULL, 100, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/96eceb2b-b179-4889-90de-f08d8e32a1c5.jpg');
INSERT INTO `t_img` VALUES (30, NULL, 105, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d0d4006c-fed5-455c-b614-7aa1d81f998d.jpg');
INSERT INTO `t_img` VALUES (31, NULL, 106, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3fd75424-9861-4788-a66d-5db1b31318b4.jpg');
INSERT INTO `t_img` VALUES (32, NULL, 106, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c6b5c05d-91a6-4f1c-874b-121b525fb11b.jpg');
INSERT INTO `t_img` VALUES (33, NULL, 107, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/53b62b82-49d5-4876-9aeb-e5b2dbcc71e7.jpg');
INSERT INTO `t_img` VALUES (34, 127, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/96c69fea-946a-4337-8d27-803b484305e4.jpg');
INSERT INTO `t_img` VALUES (35, 128, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/1838a136-9c49-4948-918b-51287b8b9f72.jpg');
INSERT INTO `t_img` VALUES (36, 129, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ced2a72a-2d5b-4a06-a691-11edfc4000ce.jpg');
INSERT INTO `t_img` VALUES (37, 129, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/2c6b7313-17f5-4387-af6e-b7d93ece8402.jpg');
INSERT INTO `t_img` VALUES (38, 129, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d6b06c66-c3be-4fbe-b953-81f5622703b0.jpg');
INSERT INTO `t_img` VALUES (39, 129, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/31a62d52-ef3a-4a3f-9120-ae5fd1871c43.jpg');
INSERT INTO `t_img` VALUES (41, NULL, 108, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/5e6193a1-269e-4b1c-a553-b6899d8a5acd.jpg');
INSERT INTO `t_img` VALUES (42, NULL, 108, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/de9222b4-3dc2-4a9f-b07d-b37b890296e5.jpg');
INSERT INTO `t_img` VALUES (43, NULL, 108, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9c302279-7973-4858-8486-ab675aadbd09.jpg');
INSERT INTO `t_img` VALUES (44, NULL, 109, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/498fcebf-d9da-4078-9507-3c12a70a7dff.jpg');
INSERT INTO `t_img` VALUES (45, NULL, 109, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/0da796da-a2b4-4feb-b93a-9c48feab9cf1.jpg');
INSERT INTO `t_img` VALUES (51, 135, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/37ef9329-38f5-430a-a7e1-8f53c0097b70.jpg');
INSERT INTO `t_img` VALUES (52, 135, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/90450f8c-9680-4da1-99dd-c02f22511ea1.jpg');
INSERT INTO `t_img` VALUES (53, 135, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3104c724-fb97-4223-9965-c304549d34ce.jpg');
INSERT INTO `t_img` VALUES (54, 139, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/1de8d3c7-6aa9-42b8-b335-8969895f205f.jpg');
INSERT INTO `t_img` VALUES (55, 140, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/08d224e3-06b8-4810-8c6b-909464467392.jpg');
INSERT INTO `t_img` VALUES (56, 140, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d1d98ce1-63b9-4e1c-ab24-52b79acdaf55.jpg');
INSERT INTO `t_img` VALUES (57, 141, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b83b6b25-9c32-4d1f-ba97-ad80fbc7c153.jpg');
INSERT INTO `t_img` VALUES (58, 141, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/06e07e86-8d5a-497c-8228-6b01e7e8c474.jpg');
INSERT INTO `t_img` VALUES (59, 142, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c8d6c38d-03f0-41f2-ac41-92e54fc4170b.jpg');
INSERT INTO `t_img` VALUES (60, 143, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ce329418-fe72-4f79-b052-b8505ccbdf9d.jpg');
INSERT INTO `t_img` VALUES (61, 144, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/132d43f9-bc68-4892-80f7-3efb22b1bbe2.jpg');
INSERT INTO `t_img` VALUES (62, 146, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/5d8a5970-1ac4-4664-b72d-43710b3670de.jpg');
INSERT INTO `t_img` VALUES (63, 146, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ac0bae09-3a20-48c9-a729-af70902a840f.jpg');
INSERT INTO `t_img` VALUES (64, NULL, 111, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/4a404f28-2fc9-49cd-bbd7-0a11a79fec17.jpg');
INSERT INTO `t_img` VALUES (65, NULL, 112, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/941800cd-5748-47d6-bcd7-7f6267d8035e.jpg');
INSERT INTO `t_img` VALUES (66, NULL, 113, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e821b0ec-1a48-4a3b-a4f8-2373796239d9.jpg');
INSERT INTO `t_img` VALUES (67, NULL, 113, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/42a5b0a0-e22e-44bf-98a5-8d113017f0fa.jpg');
INSERT INTO `t_img` VALUES (68, NULL, 114, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/872bc468-ad21-491d-84f4-345678a97760.jpg');
INSERT INTO `t_img` VALUES (69, NULL, 115, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/1ef90ac0-6416-4eff-9628-6237ef18db84.jpg');
INSERT INTO `t_img` VALUES (70, NULL, 115, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/01508101-62dd-4276-a764-001bb5a8cd43.jpg');
INSERT INTO `t_img` VALUES (71, 148, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3c131082-d542-4051-9762-aae71ff6e4d0.jpg?Expires=1875676150&OSSAccessKeyId=LTAIelFvJkV74tTC&Signature=e9%2FD36Xl1KA2yI8FfjEjOAlRqBE%3D');
INSERT INTO `t_img` VALUES (72, 148, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9ee96f7f-7ae1-4c0a-a463-0379493c2daf.jpg');
INSERT INTO `t_img` VALUES (102, 166, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/cff109b9-09b0-47b2-99e3-d3870006fbc9.jpg');
INSERT INTO `t_img` VALUES (103, 166, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/207910ce-be65-4133-b62e-3cecbdf40a56.jpg');
INSERT INTO `t_img` VALUES (106, NULL, 141, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/9111fc42-3a1e-4076-a6e0-8a08df66cef2.jpg?Expires=1875497656&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=eSfg6zF04KcQ1uES5nfnaIqPDF4%3D');
INSERT INTO `t_img` VALUES (107, NULL, 141, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/f3aceb5e-85c9-4faa-a9a7-f5a68486da2e.jpg');
INSERT INTO `t_img` VALUES (108, 168, NULL, NULL, NULL, NULL, 'https://tmp/wx5ba7d04a4ed910ad.o6zAJs2-u_F1hy-_aUyxj4ilAwIs.1Z7FFc4oQMwJc7de5bb2415799eb27c85b6155496a80.jpg');
INSERT INTO `t_img` VALUES (109, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e7821426-7a39-4d48-92ea-1d124064ecda.jpg');
INSERT INTO `t_img` VALUES (110, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9fea3104-b752-4318-b41d-de7f5083287d.jpg');
INSERT INTO `t_img` VALUES (111, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c78af926-fa0c-4da3-8a91-742e75462055.jpg');
INSERT INTO `t_img` VALUES (112, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e1bdda31-fd7b-4877-9bd1-de864b21e0f7.jpg');
INSERT INTO `t_img` VALUES (113, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dfadd179-ff25-4412-8a8a-05c002a74226.jpg');
INSERT INTO `t_img` VALUES (114, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/f874a064-689e-4e30-9358-fd0c4b690e54.jpg');
INSERT INTO `t_img` VALUES (115, 170, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dd040448-6993-445c-8415-fcc939aac786.jpg');
INSERT INTO `t_img` VALUES (116, 171, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/86c1c7cc-3965-4c80-bf98-3399becf1352.jpg');
INSERT INTO `t_img` VALUES (117, 174, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/8d15e81e-e30e-49a1-9717-b3d5b20c54c4.jpg');
INSERT INTO `t_img` VALUES (118, NULL, 147, NULL, NULL, NULL, 'https://tmp/wxd26aada3f5cf0318.o6zAJs_sYWSf7vcaSborsuQvj-84.yTKovedZ6Z0Had773d5edf5362f30d6df8f1406a558c.jpeg');
INSERT INTO `t_img` VALUES (153, NULL, NULL, NULL, NULL, 14, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/47d0db17-8f73-46ec-b66d-34cefb98e95a.jpg');
INSERT INTO `t_img` VALUES (154, NULL, NULL, NULL, NULL, 15, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/040a6387-8daa-41b8-a321-d880a4d3e873.jpg');
INSERT INTO `t_img` VALUES (155, NULL, NULL, NULL, NULL, 16, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ca7773fa-bec6-4ef2-8703-1ddfbbaf5a84.jpg');
INSERT INTO `t_img` VALUES (156, 192, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/2622452d-01ee-40de-af14-e6997c558c27.jpg');
INSERT INTO `t_img` VALUES (157, 193, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/75bb760e-611d-44ce-b6e4-3c451217176e.jpg');
INSERT INTO `t_img` VALUES (158, 193, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/2f1176b2-eb61-463c-9e60-94f16e9226b4.jpg');
INSERT INTO `t_img` VALUES (159, NULL, NULL, NULL, NULL, 17, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/61f46906-6a91-454f-acaa-e149d5558098.jpg');
INSERT INTO `t_img` VALUES (160, NULL, NULL, NULL, NULL, 19, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e7db7326-1ccc-42bf-8144-f7864b247e57.jpg');
INSERT INTO `t_img` VALUES (163, 194, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/87814018-4f59-4cd5-8d66-312304b6bec3.jpg');
INSERT INTO `t_img` VALUES (164, 194, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/a54abf44-be16-4a48-941a-02750c133849.jpg');
INSERT INTO `t_img` VALUES (165, NULL, NULL, NULL, NULL, 20, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/5ed32dee-1a63-4463-b0e3-86a52831692e.jpg');
INSERT INTO `t_img` VALUES (166, NULL, NULL, NULL, NULL, 21, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/cbc14ece-ae80-488c-9b7b-3d637af7bede.jpg');
INSERT INTO `t_img` VALUES (167, NULL, NULL, NULL, NULL, 21, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/af76dad1-782d-4cef-8ce1-0c0f4e600db2.jpg');
INSERT INTO `t_img` VALUES (168, NULL, NULL, NULL, NULL, 22, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/f638d47c-6fcd-40b9-8d2e-a898e9a9acc7.jpg');
INSERT INTO `t_img` VALUES (169, NULL, NULL, NULL, NULL, 23, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/a42b5bf8-2167-42cd-a52f-f9bfe96eee74.jpg');
INSERT INTO `t_img` VALUES (170, NULL, NULL, 4, NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190620/6079dc3995c84e019b0f1df7c52f2c27.JPG');
INSERT INTO `t_img` VALUES (171, NULL, NULL, 11, NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190620/6079dc3995c84e019b0f1df7c52f2c27.JPG');
INSERT INTO `t_img` VALUES (172, NULL, NULL, 5, NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190619/1d049e6754394d48bd389ad94f093b85.jpg');
INSERT INTO `t_img` VALUES (173, 196, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dd732fc2-5eb3-41eb-a300-ed7322cb5e40.jpg');
INSERT INTO `t_img` VALUES (174, 196, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dd732fc2-5eb3-41eb-a300-ed7322cb5e40.jpg');
INSERT INTO `t_img` VALUES (175, NULL, NULL, NULL, NULL, 24, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c92fa9f1-e30f-4b9a-b572-d8f9f48e717f.jpg');
INSERT INTO `t_img` VALUES (176, 197, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/8471dc64-01af-4557-994e-e705c33ca39d.jpg');
INSERT INTO `t_img` VALUES (177, 198, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c8413bd7-ae08-4cba-b408-bf8fe0c1d75d.jpg');
INSERT INTO `t_img` VALUES (178, 199, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b07cdd9e-6fa7-4bec-9bc7-fec360903852.jpg');
INSERT INTO `t_img` VALUES (179, 200, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ed42514c-c9f1-423e-8df0-4cb92d5a48e3.jpg');
INSERT INTO `t_img` VALUES (180, 201, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/89f71020-71fe-4888-90df-e509664f4b40.jpg');
INSERT INTO `t_img` VALUES (181, 201, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6feed3ee-4b18-4524-bf4e-7d953eec6b2c.jpg');
INSERT INTO `t_img` VALUES (182, 202, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b7722177-d1e0-4b14-9e7d-5d83f8e381e7.jpg');
INSERT INTO `t_img` VALUES (183, 202, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b0e760a2-4b0e-40c3-8589-f0db831ae4e7.jpg');
INSERT INTO `t_img` VALUES (184, 203, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/433fb9fe-e83c-479a-97c7-1a1b274b3d21.jpg');
INSERT INTO `t_img` VALUES (185, 204, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/11af03fe-d7a9-46f0-9691-125d60e281b4.jpg');
INSERT INTO `t_img` VALUES (186, 204, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9a98edbc-8694-4cfa-827b-2e87ba3f3529.jpg');
INSERT INTO `t_img` VALUES (187, NULL, NULL, NULL, NULL, 25, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e4278fcc-d288-4802-b66f-01ecf5600468.jpg');
INSERT INTO `t_img` VALUES (188, NULL, NULL, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (189, NULL, NULL, 16, NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190619/18ed82ad344f4bb0b0368c65dfcd0b14.png');
INSERT INTO `t_img` VALUES (190, 205, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ae442d94-c46c-411e-83f5-8e17ec945b5a.jpg');
INSERT INTO `t_img` VALUES (191, 205, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3f641ab8-9e26-47c6-be73-d8d41e4c13a9.jpg');
INSERT INTO `t_img` VALUES (192, 207, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/66c9d3f1-704b-4f02-bd69-55e321dae314.jpg');
INSERT INTO `t_img` VALUES (193, 207, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/1301f90e-aca0-49d2-b481-a274ac2472b9.jpg');
INSERT INTO `t_img` VALUES (194, NULL, 163, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b6bdfd01-6260-4323-a635-719509871ee2.jpg');
INSERT INTO `t_img` VALUES (195, NULL, 163, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/a986676f-a96c-4d8e-8a22-42e99cdab58c.jpg');
INSERT INTO `t_img` VALUES (196, NULL, 164, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/562e39ac-2aca-4ee3-96d1-b0c72d62fec3.jpg');
INSERT INTO `t_img` VALUES (197, 208, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d1da859b-d121-414e-8079-1487de639903.jpg');
INSERT INTO `t_img` VALUES (198, 210, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/68b40093-d06d-4f23-bba4-4d4060b65784.jpg');
INSERT INTO `t_img` VALUES (199, 211, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/16a07b8f-4442-472c-9fd2-ba91b5ebe2f6.jpg');
INSERT INTO `t_img` VALUES (200, 212, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7b9c3677-3c4e-4c3a-abff-e28cb43de50a.jpg');
INSERT INTO `t_img` VALUES (201, 213, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7365a704-682c-4c1f-9376-211165d35005.jpg');
INSERT INTO `t_img` VALUES (202, NULL, NULL, NULL, NULL, 1, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7365a704-682c-4c1f-9376-211165d35005.jpg');
INSERT INTO `t_img` VALUES (203, NULL, NULL, NULL, NULL, 1, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7365a704-682c-4c1f-9376-211165d35005.jpg');
INSERT INTO `t_img` VALUES (204, NULL, 166, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7797c461-1bde-4e70-bb2b-ea5cd539130b.jpg');
INSERT INTO `t_img` VALUES (205, NULL, 169, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/23bd17aa-ebab-4629-b31c-57f9985e643d.jpg');
INSERT INTO `t_img` VALUES (206, NULL, 171, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/860c5fc6-e772-4075-858a-445246c98361.jpg');
INSERT INTO `t_img` VALUES (207, NULL, 172, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (208, NULL, 173, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ecdc8d90-5166-4735-bdab-3820b5b7571b.jpg');
INSERT INTO `t_img` VALUES (209, NULL, 174, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ecdc8d90-5166-4735-bdab-3820b5b7571b.jpg');
INSERT INTO `t_img` VALUES (210, NULL, 175, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ecdc8d90-5166-4735-bdab-3820b5b7571b.jpg');
INSERT INTO `t_img` VALUES (211, NULL, 176, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ecdc8d90-5166-4735-bdab-3820b5b7571b.jpg');
INSERT INTO `t_img` VALUES (212, NULL, 177, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/ecdc8d90-5166-4735-bdab-3820b5b7571b.jpg');
INSERT INTO `t_img` VALUES (213, 215, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/7281fd1b-0395-4e3d-a5b3-05621f8fc593.jpg');
INSERT INTO `t_img` VALUES (214, 215, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3b41f2fd-5c71-4232-9088-fe03980de15c.jpg');
INSERT INTO `t_img` VALUES (215, NULL, 178, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/f4b4524a-2880-41f6-83f1-70340dcedadc.jpg');
INSERT INTO `t_img` VALUES (216, NULL, 178, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3d2029d0-2653-4897-a399-055222dd821b.jpg');
INSERT INTO `t_img` VALUES (217, 217, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/0684dfcf-f9bc-4a24-b54a-e5250dd7063e.jpg');
INSERT INTO `t_img` VALUES (218, NULL, NULL, NULL, NULL, 33, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/99110e24-e6e6-4029-b421-cc1767c7b77d.jpg');
INSERT INTO `t_img` VALUES (219, NULL, NULL, NULL, NULL, 33, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/09f7d48f-e03f-4159-a99e-7bb23a9c5de9.jpg');
INSERT INTO `t_img` VALUES (220, 218, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/303fa3ec-cdec-4c03-a8d9-9448df084398.jpg');
INSERT INTO `t_img` VALUES (221, 219, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/78eca9b0-84ad-45b7-bc59-8f5915d12f49.jpg');
INSERT INTO `t_img` VALUES (222, 220, NULL, NULL, NULL, NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/92e9eef8-812f-4dac-aded-3cfb89a4fff8.jpg?Expires=1874282487&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=6XGrts4RXtLo77qcfLqk%2FOVqOiw%3D');
INSERT INTO `t_img` VALUES (223, 222, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/183af9fa-f26b-408a-84be-808718d2d616.jpg');
INSERT INTO `t_img` VALUES (225, NULL, 180, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/069de64c-9e28-481a-b40f-97472a50514f.jpg');
INSERT INTO `t_img` VALUES (226, 224, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/99535e99-04d8-4be4-92e4-64a62a9f4b0d.jpg');
INSERT INTO `t_img` VALUES (227, 225, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/09943211-c690-4179-8346-faa03624e650.jpg');
INSERT INTO `t_img` VALUES (228, 227, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/46a922c9-34cf-4eaf-91f2-20e55db39f12.jpg');
INSERT INTO `t_img` VALUES (229, 229, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6cd01ca9-91af-489a-b6c2-3196441b53e8.jpg');
INSERT INTO `t_img` VALUES (230, NULL, 181, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/b4bb2139-e2fa-4a27-9513-8ea2619ac4da.jpg');
INSERT INTO `t_img` VALUES (231, NULL, 181, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/f5e6b1b0-d64b-4903-a607-51839235ba19.jpg');
INSERT INTO `t_img` VALUES (232, NULL, 181, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/fda3a968-332f-4767-aa89-e93dd0d7fdb0.jpg');
INSERT INTO `t_img` VALUES (233, 230, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/8d2e7f2d-a81d-428d-9533-bdfc8981c761.jpg');
INSERT INTO `t_img` VALUES (234, 230, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/e38b6a8e-a734-4289-80f4-80b7904f05f3.jpg');
INSERT INTO `t_img` VALUES (235, 234, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/825bb6e8-fe0c-4a6b-9f15-b0ec3dcb8859.jpg');
INSERT INTO `t_img` VALUES (236, 234, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/39aa65b1-f716-4843-b2de-d4f4bc194af3.jpg');
INSERT INTO `t_img` VALUES (237, 234, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/bfa6b530-fb3f-4592-bc8b-83657a413daf.jpg');
INSERT INTO `t_img` VALUES (238, NULL, NULL, NULL, NULL, 35, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/8911e473-24f2-4996-9c35-e59aa3e9f932.jpg');
INSERT INTO `t_img` VALUES (239, NULL, 185, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6ce07394-8c92-4e2c-8b17-a3d21086f9ca.jpg');
INSERT INTO `t_img` VALUES (240, 235, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/90920730-85e6-4c3c-85c4-bf70137f6164.jpg');
INSERT INTO `t_img` VALUES (241, 238, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/5f2de82f-7c9e-4d0e-af6f-65d0c99a0dff.jpg');
INSERT INTO `t_img` VALUES (242, NULL, 186, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9a4066ff-390e-45a2-bfda-3cbbf091702d.jpg');
INSERT INTO `t_img` VALUES (243, 241, NULL, NULL, NULL, NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/08c949ef-9977-433d-b6c4-19fac28d990b.jpg');
INSERT INTO `t_img` VALUES (245, 243, NULL, NULL, NULL, NULL, 'http://save-pan.oss-cn-shanghai.aliyuncs.com/img/d690ca41-bd2c-449f-a931-fb41ea5c5e49.jpg');
INSERT INTO `t_img` VALUES (246, 244, NULL, NULL, NULL, NULL, 'https://img2.panbingwen.cn/img/8f9122dc-eaa2-443b-a4da-379096c6e7e0.jpg');
INSERT INTO `t_img` VALUES (247, NULL, 188, NULL, NULL, NULL, 'https://img2.panbingwen.cn/img/dda99795-da26-46e3-b8de-647f5ab913be.jpg');
INSERT INTO `t_img` VALUES (248, NULL, 189, NULL, NULL, NULL, 'https://img2.panbingwen.cn/img/e88d2613-bf86-450c-ac2b-0c874332ec5f.jpg');
INSERT INTO `t_img` VALUES (249, NULL, 190, NULL, NULL, NULL, 'https://img2.panbingwen.cn/img/279e4107-af5d-472d-894e-4b8473f8ee2c.jpg');
INSERT INTO `t_img` VALUES (250, 245, NULL, NULL, NULL, NULL, 'https://img2.panbingwen.cn/img/ed7612aa-1b59-4bbb-a10e-0d2ff454221e.jpg');

-- ----------------------------
-- Table structure for t_industry_system
-- ----------------------------
DROP TABLE IF EXISTS `t_industry_system`;
CREATE TABLE `t_industry_system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `system_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '体系名称',
  `state` int(11) NULL DEFAULT 0 COMMENT '是否可用，0可用，1不可用',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '图标地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_industry_system
-- ----------------------------
INSERT INTO `t_industry_system` VALUES (1, '水稻产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_03.jpg', 0);
INSERT INTO `t_industry_system` VALUES (2, '小麦产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_05.jpg', 0);
INSERT INTO `t_industry_system` VALUES (3, '特粮特经产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_08.jpg', 0);
INSERT INTO `t_industry_system` VALUES (4, '蔬菜产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_10.jpg', 0);
INSERT INTO `t_industry_system` VALUES (5, '西甜瓜产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_12.jpg', 0);
INSERT INTO `t_industry_system` VALUES (6, '葡萄产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_14.jpg', 0);
INSERT INTO `t_industry_system` VALUES (7, '草莓产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_16.jpg', 0);
INSERT INTO `t_industry_system` VALUES (8, '花卉产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_18.jpg', 0);
INSERT INTO `t_industry_system` VALUES (9, '茶叶产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_20.jpg', 0);
INSERT INTO `t_industry_system` VALUES (10, '生猪产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_22.jpg', 0);
INSERT INTO `t_industry_system` VALUES (11, '肉羊产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_25.png', 0);
INSERT INTO `t_industry_system` VALUES (12, '肉鸡产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/A3B83C41208E2DB4041FCBEAD6B9AB01_26.jpg', 0);
INSERT INTO `t_industry_system` VALUES (13, ' 蛋鸡产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_09.png', 0);
INSERT INTO `t_industry_system` VALUES (14, ' 水禽产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_10.png', 0);
INSERT INTO `t_industry_system` VALUES (15, ' 梨产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_13.png', 0);
INSERT INTO `t_industry_system` VALUES (16, '桃产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_14.png', 0);
INSERT INTO `t_industry_system` VALUES (17, ' 奶牛产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_18.png', 0);
INSERT INTO `t_industry_system` VALUES (18, ' 河蟹产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_17.png', 0);
INSERT INTO `t_industry_system` VALUES (19, ' 克氏原鳖虾产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_21.png', 0);
INSERT INTO `t_industry_system` VALUES (20, ' 青虾产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_22.png', 0);
INSERT INTO `t_industry_system` VALUES (21, ' 紫菜产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_25.png', 0);
INSERT INTO `t_industry_system` VALUES (22, ' 斑点叉尾鮰产业技术体系', 0, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/expert/F31EACF6E553EF873D7DF1EDC5243EB5_26.png', 0);

-- ----------------------------
-- Table structure for t_like
-- ----------------------------
DROP TABLE IF EXISTS `t_like`;
CREATE TABLE `t_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户的id',
  `exchange_id` int(11) NULL DEFAULT NULL COMMENT '交流的id',
  `reply_id` int(11) NULL DEFAULT NULL COMMENT '回复的id',
  `status` int(11) NULL DEFAULT 0 COMMENT '是否点赞，0点赞，1未点赞',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_like
-- ----------------------------
INSERT INTO `t_like` VALUES (1, 1, 1, NULL, 1);
INSERT INTO `t_like` VALUES (2, 1, NULL, 3, 0);
INSERT INTO `t_like` VALUES (3, 2, 1, NULL, 0);
INSERT INTO `t_like` VALUES (4, 2, NULL, 3, 0);
INSERT INTO `t_like` VALUES (5, 1, 11, NULL, 1);
INSERT INTO `t_like` VALUES (6, 1, NULL, 1, 1);
INSERT INTO `t_like` VALUES (7, 1, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (8, 1, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (9, 1, 12, NULL, 1);
INSERT INTO `t_like` VALUES (10, 1, NULL, 12, 0);
INSERT INTO `t_like` VALUES (11, 14, 63, NULL, 1);
INSERT INTO `t_like` VALUES (12, 48, 1, NULL, 0);
INSERT INTO `t_like` VALUES (13, 3, 1, NULL, 0);
INSERT INTO `t_like` VALUES (14, 14, 71, NULL, 0);
INSERT INTO `t_like` VALUES (15, 3, 69, NULL, 0);
INSERT INTO `t_like` VALUES (16, 3, 71, NULL, 1);
INSERT INTO `t_like` VALUES (17, 48, 69, NULL, 0);
INSERT INTO `t_like` VALUES (18, 3, 68, NULL, 1);
INSERT INTO `t_like` VALUES (19, 48, 71, NULL, 0);
INSERT INTO `t_like` VALUES (20, 3, 67, NULL, 1);
INSERT INTO `t_like` VALUES (21, 3, 55, NULL, 0);
INSERT INTO `t_like` VALUES (22, 48, 77, NULL, 0);
INSERT INTO `t_like` VALUES (23, 3, 77, NULL, 1);
INSERT INTO `t_like` VALUES (24, 14, 77, NULL, 0);
INSERT INTO `t_like` VALUES (25, 48, 63, NULL, 0);
INSERT INTO `t_like` VALUES (26, 48, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (27, 48, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (28, 48, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (29, 48, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (30, 48, NULL, 154, 0);
INSERT INTO `t_like` VALUES (31, 48, NULL, 146, 1);
INSERT INTO `t_like` VALUES (32, 48, NULL, 128, 0);
INSERT INTO `t_like` VALUES (33, 48, NULL, 125, 0);
INSERT INTO `t_like` VALUES (34, 3, NULL, 1, 0);
INSERT INTO `t_like` VALUES (35, 3, NULL, 152, 1);
INSERT INTO `t_like` VALUES (36, 3, NULL, 151, 0);
INSERT INTO `t_like` VALUES (37, 48, 67, NULL, 0);
INSERT INTO `t_like` VALUES (38, 48, 55, NULL, 0);
INSERT INTO `t_like` VALUES (39, 3, NULL, 154, 0);
INSERT INTO `t_like` VALUES (40, 48, NULL, 22, 1);
INSERT INTO `t_like` VALUES (41, 48, NULL, 17, 0);
INSERT INTO `t_like` VALUES (42, 3, NULL, 158, 1);
INSERT INTO `t_like` VALUES (43, 3, 78, NULL, 1);
INSERT INTO `t_like` VALUES (44, 48, 80, NULL, 0);
INSERT INTO `t_like` VALUES (45, 3, NULL, 160, 1);
INSERT INTO `t_like` VALUES (46, 3, NULL, 162, 1);
INSERT INTO `t_like` VALUES (47, 14, 78, NULL, 1);
INSERT INTO `t_like` VALUES (48, 14, 69, NULL, 1);
INSERT INTO `t_like` VALUES (49, 48, 45, NULL, 0);
INSERT INTO `t_like` VALUES (50, 14, 80, NULL, 0);
INSERT INTO `t_like` VALUES (51, 3, 98, NULL, 1);
INSERT INTO `t_like` VALUES (52, 3, 97, NULL, 0);
INSERT INTO `t_like` VALUES (53, 3, 100, NULL, 1);
INSERT INTO `t_like` VALUES (54, 48, 103, NULL, 0);
INSERT INTO `t_like` VALUES (55, 48, NULL, 96, 1);
INSERT INTO `t_like` VALUES (56, 48, 68, NULL, 0);
INSERT INTO `t_like` VALUES (57, 48, 100, NULL, 0);
INSERT INTO `t_like` VALUES (58, 48, 106, NULL, 0);
INSERT INTO `t_like` VALUES (59, 48, 105, NULL, 0);
INSERT INTO `t_like` VALUES (60, 48, 108, NULL, 0);
INSERT INTO `t_like` VALUES (61, 17, 1, NULL, 1);
INSERT INTO `t_like` VALUES (62, 48, 109, NULL, 0);
INSERT INTO `t_like` VALUES (63, 17, 109, NULL, 0);
INSERT INTO `t_like` VALUES (64, 17, 108, NULL, 0);
INSERT INTO `t_like` VALUES (65, 3, 109, NULL, 1);
INSERT INTO `t_like` VALUES (66, 48, 104, NULL, 0);
INSERT INTO `t_like` VALUES (67, 48, 110, NULL, 0);
INSERT INTO `t_like` VALUES (68, 48, 113, NULL, 0);
INSERT INTO `t_like` VALUES (69, 48, 112, NULL, 0);
INSERT INTO `t_like` VALUES (70, 48, 111, NULL, 0);
INSERT INTO `t_like` VALUES (71, 48, NULL, 76, 0);
INSERT INTO `t_like` VALUES (72, 48, 115, NULL, 0);
INSERT INTO `t_like` VALUES (73, 48, 114, NULL, 0);
INSERT INTO `t_like` VALUES (74, 2, NULL, 108, 1);
INSERT INTO `t_like` VALUES (75, 2, NULL, 5, 1);
INSERT INTO `t_like` VALUES (76, 2, NULL, 173, 1);
INSERT INTO `t_like` VALUES (77, 3, 115, NULL, 0);
INSERT INTO `t_like` VALUES (78, 2, 42, NULL, 1);
INSERT INTO `t_like` VALUES (79, 137, 3, NULL, 0);
INSERT INTO `t_like` VALUES (80, 17, 137, NULL, 0);
INSERT INTO `t_like` VALUES (81, 48, NULL, 101, 0);
INSERT INTO `t_like` VALUES (82, 48, 107, NULL, 0);
INSERT INTO `t_like` VALUES (83, 17, 110, NULL, 0);
INSERT INTO `t_like` VALUES (84, 115, 48, NULL, 1);
INSERT INTO `t_like` VALUES (85, 17, 115, NULL, 0);
INSERT INTO `t_like` VALUES (86, 3, NULL, 179, 0);
INSERT INTO `t_like` VALUES (87, 3, 139, NULL, 0);
INSERT INTO `t_like` VALUES (88, 3, NULL, 101, 0);
INSERT INTO `t_like` VALUES (89, 48, 141, NULL, 0);
INSERT INTO `t_like` VALUES (90, 14, 113, NULL, 0);
INSERT INTO `t_like` VALUES (91, 14, 141, NULL, 0);
INSERT INTO `t_like` VALUES (92, 17, 141, NULL, 0);
INSERT INTO `t_like` VALUES (93, 14, 145, NULL, 0);
INSERT INTO `t_like` VALUES (94, 146, 14, NULL, 0);
INSERT INTO `t_like` VALUES (95, 17, 146, NULL, 0);
INSERT INTO `t_like` VALUES (96, 141, 1, NULL, 0);
INSERT INTO `t_like` VALUES (97, 140, 1, NULL, 0);
INSERT INTO `t_like` VALUES (98, 48, NULL, 180, 0);
INSERT INTO `t_like` VALUES (99, 48, 139, NULL, 0);
INSERT INTO `t_like` VALUES (100, 14, 114, NULL, 0);
INSERT INTO `t_like` VALUES (101, 112, 48, NULL, 0);
INSERT INTO `t_like` VALUES (102, 17, 112, NULL, 0);
INSERT INTO `t_like` VALUES (103, 17, 148, NULL, 0);
INSERT INTO `t_like` VALUES (104, 14, 146, NULL, 0);
INSERT INTO `t_like` VALUES (105, 48, 148, NULL, 0);
INSERT INTO `t_like` VALUES (106, 48, 146, NULL, 0);
INSERT INTO `t_like` VALUES (107, 48, 140, NULL, 0);
INSERT INTO `t_like` VALUES (108, 3, NULL, 78, 0);
INSERT INTO `t_like` VALUES (109, 3, 152, NULL, 0);
INSERT INTO `t_like` VALUES (110, 48, NULL, 59, 0);
INSERT INTO `t_like` VALUES (111, 48, 152, NULL, 0);
INSERT INTO `t_like` VALUES (112, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (113, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (114, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (115, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (116, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (117, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (118, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (119, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (120, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (121, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (122, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (123, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (124, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (125, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (126, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (127, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (128, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (129, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (130, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (131, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (132, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (133, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (134, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (135, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (136, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (137, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (138, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (139, 4, NULL, 217, 0);
INSERT INTO `t_like` VALUES (140, 4, 113, NULL, 0);
INSERT INTO `t_like` VALUES (141, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (142, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (143, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (144, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (145, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (146, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (147, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (148, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (149, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (150, 17, 213, NULL, 1);
INSERT INTO `t_like` VALUES (151, 17, 152, NULL, 0);
INSERT INTO `t_like` VALUES (152, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (153, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (154, 17, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (155, 17, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (156, 17, NULL, 213, 1);
INSERT INTO `t_like` VALUES (157, 17, NULL, 212, 1);
INSERT INTO `t_like` VALUES (158, 17, NULL, 152, 1);
INSERT INTO `t_like` VALUES (159, 17, NULL, 218, 1);
INSERT INTO `t_like` VALUES (160, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (161, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (162, 17, NULL, 219, 1);
INSERT INTO `t_like` VALUES (163, 17, NULL, 148, 0);
INSERT INTO `t_like` VALUES (164, 17, NULL, 221, 0);
INSERT INTO `t_like` VALUES (165, 4, 153, NULL, 0);
INSERT INTO `t_like` VALUES (166, 17, 153, NULL, 0);
INSERT INTO `t_like` VALUES (167, 1, 140, NULL, 1);
INSERT INTO `t_like` VALUES (168, 17, 114, NULL, 1);
INSERT INTO `t_like` VALUES (169, 17, 139, NULL, 1);
INSERT INTO `t_like` VALUES (170, 17, NULL, 215, 1);
INSERT INTO `t_like` VALUES (171, 17, 162, NULL, 0);
INSERT INTO `t_like` VALUES (172, 48, NULL, 211, 0);
INSERT INTO `t_like` VALUES (173, 48, 153, NULL, 1);
INSERT INTO `t_like` VALUES (174, 48, NULL, 210, 0);
INSERT INTO `t_like` VALUES (175, 3, 155, NULL, 1);
INSERT INTO `t_like` VALUES (176, 3, NULL, 228, 1);
INSERT INTO `t_like` VALUES (177, 3, NULL, 229, 0);
INSERT INTO `t_like` VALUES (178, 3, NULL, 230, 0);
INSERT INTO `t_like` VALUES (179, 14, 159, NULL, 0);
INSERT INTO `t_like` VALUES (180, 14, 158, NULL, 0);
INSERT INTO `t_like` VALUES (181, 3, 158, NULL, 1);
INSERT INTO `t_like` VALUES (182, 14, 109, NULL, 0);
INSERT INTO `t_like` VALUES (183, 14, 157, NULL, 0);
INSERT INTO `t_like` VALUES (184, 17, 157, NULL, 1);
INSERT INTO `t_like` VALUES (185, 48, 157, NULL, 0);
INSERT INTO `t_like` VALUES (186, 48, 156, NULL, 0);
INSERT INTO `t_like` VALUES (187, 48, 154, NULL, 0);
INSERT INTO `t_like` VALUES (188, 17, NULL, 226, 0);
INSERT INTO `t_like` VALUES (189, 48, 161, NULL, 0);
INSERT INTO `t_like` VALUES (190, 4, 157, NULL, 0);
INSERT INTO `t_like` VALUES (191, 4, NULL, 96, 0);
INSERT INTO `t_like` VALUES (192, 4, NULL, 95, 0);
INSERT INTO `t_like` VALUES (193, 4, 97, NULL, 1);
INSERT INTO `t_like` VALUES (194, 4, 95, NULL, 1);
INSERT INTO `t_like` VALUES (195, 4, NULL, 101, 0);
INSERT INTO `t_like` VALUES (196, 4, NULL, 243, 1);
INSERT INTO `t_like` VALUES (197, 3, NULL, 237, 1);
INSERT INTO `t_like` VALUES (198, 3, 156, NULL, 0);
INSERT INTO `t_like` VALUES (199, 3, NULL, 218, 0);
INSERT INTO `t_like` VALUES (200, 3, 161, NULL, 0);
INSERT INTO `t_like` VALUES (201, 17, 156, NULL, 0);
INSERT INTO `t_like` VALUES (202, 17, NULL, 240, 0);
INSERT INTO `t_like` VALUES (203, 17, 202, NULL, 0);
INSERT INTO `t_like` VALUES (204, 17, 113, NULL, 0);
INSERT INTO `t_like` VALUES (205, 17, 163, NULL, 1);
INSERT INTO `t_like` VALUES (206, 4, 163, NULL, 0);
INSERT INTO `t_like` VALUES (207, 17, 154, NULL, 0);
INSERT INTO `t_like` VALUES (208, 17, 253, NULL, 0);
INSERT INTO `t_like` VALUES (209, 4, NULL, 219, 0);
INSERT INTO `t_like` VALUES (210, 4, 148, NULL, 1);
INSERT INTO `t_like` VALUES (211, 4, 114, NULL, 0);
INSERT INTO `t_like` VALUES (212, 4, 38, NULL, 0);
INSERT INTO `t_like` VALUES (213, 4, 36, NULL, 0);
INSERT INTO `t_like` VALUES (214, 3, 163, NULL, 0);
INSERT INTO `t_like` VALUES (215, 48, 163, NULL, 0);
INSERT INTO `t_like` VALUES (216, 3, 157, NULL, 1);
INSERT INTO `t_like` VALUES (217, 17, 164, NULL, 1);
INSERT INTO `t_like` VALUES (218, 17, NULL, 249, 0);
INSERT INTO `t_like` VALUES (219, 4, 164, NULL, 0);
INSERT INTO `t_like` VALUES (220, 4, 20, NULL, 0);
INSERT INTO `t_like` VALUES (221, 48, NULL, 218, 0);
INSERT INTO `t_like` VALUES (222, 17, 258, NULL, 0);
INSERT INTO `t_like` VALUES (223, 17, 257, NULL, 0);
INSERT INTO `t_like` VALUES (224, 17, 121, NULL, 1);
INSERT INTO `t_like` VALUES (225, 48, 164, NULL, 0);
INSERT INTO `t_like` VALUES (226, 14, 164, NULL, 0);
INSERT INTO `t_like` VALUES (227, NULL, NULL, NULL, 0);
INSERT INTO `t_like` VALUES (228, 3, NULL, 252, 0);
INSERT INTO `t_like` VALUES (229, 3, NULL, 245, 0);
INSERT INTO `t_like` VALUES (230, 48, NULL, 249, 0);
INSERT INTO `t_like` VALUES (231, 4, NULL, 250, 0);
INSERT INTO `t_like` VALUES (232, 17, 167, NULL, 0);
INSERT INTO `t_like` VALUES (233, 17, NULL, 256, 0);
INSERT INTO `t_like` VALUES (234, 17, 168, NULL, 0);
INSERT INTO `t_like` VALUES (235, 17, 166, NULL, 0);
INSERT INTO `t_like` VALUES (236, 17, NULL, 257, 1);
INSERT INTO `t_like` VALUES (237, 14, 169, NULL, 0);
INSERT INTO `t_like` VALUES (238, 17, NULL, 258, 1);
INSERT INTO `t_like` VALUES (239, 4, 170, NULL, 0);
INSERT INTO `t_like` VALUES (240, 17, NULL, 259, 0);
INSERT INTO `t_like` VALUES (241, 17, NULL, 254, 1);
INSERT INTO `t_like` VALUES (242, 1, 178, NULL, 0);
INSERT INTO `t_like` VALUES (243, 1, NULL, 263, 0);
INSERT INTO `t_like` VALUES (244, 17, 178, NULL, 1);
INSERT INTO `t_like` VALUES (245, 3, NULL, 266, 1);
INSERT INTO `t_like` VALUES (246, 14, 178, NULL, 0);
INSERT INTO `t_like` VALUES (247, 17, NULL, 252, 0);
INSERT INTO `t_like` VALUES (248, 17, NULL, 271, 1);
INSERT INTO `t_like` VALUES (249, 3, NULL, 271, 0);
INSERT INTO `t_like` VALUES (250, 48, NULL, 276, 0);
INSERT INTO `t_like` VALUES (251, 48, NULL, 263, 0);
INSERT INTO `t_like` VALUES (252, 17, NULL, 278, 0);
INSERT INTO `t_like` VALUES (253, 3, 178, NULL, 1);
INSERT INTO `t_like` VALUES (254, 4, 178, NULL, 0);
INSERT INTO `t_like` VALUES (255, 3, NULL, 286, 1);
INSERT INTO `t_like` VALUES (256, 4, 181, NULL, 0);
INSERT INTO `t_like` VALUES (257, 4, NULL, 288, 0);
INSERT INTO `t_like` VALUES (258, 2, NULL, 286, 0);
INSERT INTO `t_like` VALUES (259, 2, 181, NULL, 0);
INSERT INTO `t_like` VALUES (260, 17, NULL, 170, 0);
INSERT INTO `t_like` VALUES (261, 17, 181, NULL, 0);
INSERT INTO `t_like` VALUES (262, 17, NULL, 291, 0);
INSERT INTO `t_like` VALUES (263, 17, NULL, 292, 0);
INSERT INTO `t_like` VALUES (264, 17, 184, NULL, 1);
INSERT INTO `t_like` VALUES (265, 17, NULL, 293, 0);
INSERT INTO `t_like` VALUES (266, 2, NULL, 292, 0);
INSERT INTO `t_like` VALUES (267, 2, NULL, 291, 0);
INSERT INTO `t_like` VALUES (268, 98, NULL, 296, 0);
INSERT INTO `t_like` VALUES (269, 98, 185, NULL, 1);
INSERT INTO `t_like` VALUES (270, 48, 178, NULL, 0);
INSERT INTO `t_like` VALUES (271, 48, NULL, 280, 0);
INSERT INTO `t_like` VALUES (272, 48, 171, NULL, 1);
INSERT INTO `t_like` VALUES (273, 48, 185, NULL, 0);
INSERT INTO `t_like` VALUES (274, 48, 187, NULL, 0);
INSERT INTO `t_like` VALUES (275, 48, NULL, 1, 1);
INSERT INTO `t_like` VALUES (276, 48, NULL, 2, 1);
INSERT INTO `t_like` VALUES (277, 107, 85, NULL, 1);
INSERT INTO `t_like` VALUES (278, 107, 187, NULL, 1);

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '上报用户',
  `types_id` int(11) NULL DEFAULT NULL COMMENT '上报类型',
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `people` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访农民',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注，内容',
  `report_address` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上报地址',
  `img_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '上报图片地址',
  `report_time` date NULL DEFAULT NULL COMMENT '上报时间',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0是不删除，1是删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1, 1, 1, '今年的收成不太好', NULL, '南京下的雨比较少，导致收成少了很多', '南京农业大学', NULL, '2019-06-01', 0);

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模块名称',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '模块图标地址',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态是否正常，0是正常，1是不正常',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '0是不删除，1是删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES (1, '农业政策', 'https://i.loli.net/2019/05/23/5ce643edcca5181757.png', 0, 0);
INSERT INTO `t_module` VALUES (2, '市场行情', 'https://i.loli.net/2019/05/23/5ce644a3ed76f76144.png', 0, 0);
INSERT INTO `t_module` VALUES (3, '应时农事', 'https://i.loli.net/2019/05/23/5ce64205db44f47458.png', 0, 0);
INSERT INTO `t_module` VALUES (4, '农业专家', 'https://i.loli.net/2019/05/23/5ce64231c0b4466696.png', 0, 0);
INSERT INTO `t_module` VALUES (5, '科技专项', 'https://i.loli.net/2019/05/23/5ce644089631172289.png', 0, 0);
INSERT INTO `t_module` VALUES (6, '供求信息', 'https://i.loli.net/2019/05/23/5ce6448e7d9f369821.png', 0, 0);
INSERT INTO `t_module` VALUES (7, '农业科技', 'https://i.loli.net/2019/05/23/5ce64231c0b4466696.png', 0, 0);
INSERT INTO `t_module` VALUES (8, '农业气象', 'https://i.loli.net/2019/05/23/5ce645ed0a24550779.png', 0, 0);
INSERT INTO `t_module` VALUES (9, '更多', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/avatar/icon_more.jpg', 0, 0);
INSERT INTO `t_module` VALUES (10, '创业致富', 'https://i.loli.net/2019/05/23/5ce641b23d26057399.png', 0, 0);
INSERT INTO `t_module` VALUES (11, '云上智农', 'https://i.loli.net/2019/05/23/5ce645bb5a0dd67658.png', 0, 0);
INSERT INTO `t_module` VALUES (12, '品牌农资', 'https://i.loli.net/2019/05/23/5ce645274e29831459.png', 0, 0);
INSERT INTO `t_module` VALUES (13, '生活服务', 'https://i.loli.net/2019/05/23/5ce645456c74a82612.png', 0, 0);
INSERT INTO `t_module` VALUES (14, '专业合作', 'https://i.loli.net/2019/05/23/5ce646141707e85677.jpg', 0, 0);
INSERT INTO `t_module` VALUES (15, '示范典型', 'https://i.loli.net/2019/05/23/5ce64565a3ed266607.png', 0, 0);
INSERT INTO `t_module` VALUES (16, '乡村旅游', 'https://i.loli.net/2019/05/23/5ce6458b83b1631812.png', 0, 0);
INSERT INTO `t_module` VALUES (17, '句容要闻', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/01%20%281%29.jpg?Expires=1559532032&OSSAccessKeyId=TMP.AgEHOMdI1NyrtchhxAUSTazBC_RIrp6nZ5A-fVd11kwPV2HFUbZ8fZPSrgESAAAwLAIUNKlCTae3924qo3sBMICj8kdebcoCFCL2zZDI7KYUx5_YBFONDznPwZrk&Signature=6yJaHGh0QhJgmrRHeEOhTEsJv5c%3D', 0, 0);
INSERT INTO `t_module` VALUES (18, '乡村振兴', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/01%20%282%29.jpg?Expires=1559532188&OSSAccessKeyId=TMP.AgEHOMdI1NyrtchhxAUSTazBC_RIrp6nZ5A-fVd11kwPV2HFUbZ8fZPSrgESAAAwLAIUNKlCTae3924qo3sBMICj8kdebcoCFCL2zZDI7KYUx5_YBFONDznPwZrk&Signature=7XqWXm7GSvM%2Bk6EAC%2FS6gg6u9dw%3D', 0, 0);
INSERT INTO `t_module` VALUES (19, '现代农业', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/01%20%283%29.jpg?Expires=1559532207&OSSAccessKeyId=TMP.AgEHOMdI1NyrtchhxAUSTazBC_RIrp6nZ5A-fVd11kwPV2HFUbZ8fZPSrgESAAAwLAIUNKlCTae3924qo3sBMICj8kdebcoCFCL2zZDI7KYUx5_YBFONDznPwZrk&Signature=381YLEMm1qnVHuj9Yedy5TNV5Fk%3D', 0, 0);
INSERT INTO `t_module` VALUES (20, '农民风采', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/01%20%284%29.jpg?Expires=1559532222&OSSAccessKeyId=TMP.AgEHOMdI1NyrtchhxAUSTazBC_RIrp6nZ5A-fVd11kwPV2HFUbZ8fZPSrgESAAAwLAIUNKlCTae3924qo3sBMICj8kdebcoCFCL2zZDI7KYUx5_YBFONDznPwZrk&Signature=fO1Iq%2FkUROCLaPDlB4Vvw8zoR1E%3D', 0, 0);
INSERT INTO `t_module` VALUES (21, '质量安全', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/01%20%285%29.jpg?Expires=1559532238&OSSAccessKeyId=TMP.AgEHOMdI1NyrtchhxAUSTazBC_RIrp6nZ5A-fVd11kwPV2HFUbZ8fZPSrgESAAAwLAIUNKlCTae3924qo3sBMICj8kdebcoCFCL2zZDI7KYUx5_YBFONDznPwZrk&Signature=oLnsW6xv7cTrCw5HgDpxP%2BqiFjA%3D', 0, 0);
INSERT INTO `t_module` VALUES (22, '农业担保', 'https://i.loli.net/2019/05/23/5ce6458b83b1631812.png', 0, 0);
INSERT INTO `t_module` VALUES (23, '盱眙龙虾', NULL, 0, 0);
INSERT INTO `t_module` VALUES (33, '盱眙龙虾', NULL, 0, 0);
INSERT INTO `t_module` VALUES (35, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (36, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (37, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (38, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (39, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (40, '溧阳要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (41, '溧阳名品', NULL, 0, 0);
INSERT INTO `t_module` VALUES (42, '港城要问', NULL, 0, 0);
INSERT INTO `t_module` VALUES (43, '基层风采', NULL, 0, 0);
INSERT INTO `t_module` VALUES (44, '港城气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (45, '当前农事', NULL, 0, 0);
INSERT INTO `t_module` VALUES (46, '基地在线', NULL, 0, 0);
INSERT INTO `t_module` VALUES (47, '泰兴要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (48, '东台西瓜', NULL, 0, 0);
INSERT INTO `t_module` VALUES (49, '东台乡愁', NULL, 0, 0);
INSERT INTO `t_module` VALUES (50, '农事要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (51, '沭阳要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (52, '沭阳花木', NULL, 0, 0);
INSERT INTO `t_module` VALUES (53, '畜禽养殖', NULL, 0, 0);
INSERT INTO `t_module` VALUES (54, '粮经种植', NULL, 0, 0);
INSERT INTO `t_module` VALUES (55, '农广课堂', NULL, 0, 0);
INSERT INTO `t_module` VALUES (56, '古树名木', NULL, 0, 0);
INSERT INTO `t_module` VALUES (57, '高邮农事', NULL, 0, 0);
INSERT INTO `t_module` VALUES (58, '人文高邮', NULL, 0, 0);
INSERT INTO `t_module` VALUES (59, '高邮气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (60, '农业动态', NULL, 0, 0);
INSERT INTO `t_module` VALUES (61, '市场行情', NULL, 0, 0);
INSERT INTO `t_module` VALUES (62, '工作要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (63, '溧水要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (64, '经济林果', NULL, 0, 0);
INSERT INTO `t_module` VALUES (65, '政策速递', NULL, 0, 0);
INSERT INTO `t_module` VALUES (66, '每日行情', NULL, 0, 0);
INSERT INTO `t_module` VALUES (67, '远程培训', NULL, 0, 0);
INSERT INTO `t_module` VALUES (68, '休闲农业', NULL, 0, 0);
INSERT INTO `t_module` VALUES (69, '宿迁气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (70, '响水要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (71, '农事指南', NULL, 0, 0);
INSERT INTO `t_module` VALUES (72, '产业富民', NULL, 0, 0);
INSERT INTO `t_module` VALUES (73, '响水气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (74, '丰县动态', NULL, 0, 0);
INSERT INTO `t_module` VALUES (75, '丰县林果', NULL, 0, 0);
INSERT INTO `t_module` VALUES (76, '丰县气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (77, '应时农事', NULL, 0, 0);
INSERT INTO `t_module` VALUES (78, '金湖要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (79, '农业特产', NULL, 0, 0);
INSERT INTO `t_module` VALUES (80, '农业旅游', NULL, 0, 0);
INSERT INTO `t_module` VALUES (81, '品牌农业', NULL, 0, 0);
INSERT INTO `t_module` VALUES (82, '宿迁要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (83, '宿迁粮经', NULL, 0, 0);
INSERT INTO `t_module` VALUES (84, '蔬菜园艺', NULL, 0, 0);
INSERT INTO `t_module` VALUES (85, '畜牧养殖', NULL, 0, 0);
INSERT INTO `t_module` VALUES (86, '高效渔业', NULL, 0, 0);
INSERT INTO `t_module` VALUES (87, '睢宁动态', NULL, 0, 0);
INSERT INTO `t_module` VALUES (88, '睢宁县志', NULL, 0, 0);
INSERT INTO `t_module` VALUES (89, '植保消息', NULL, 0, 0);
INSERT INTO `t_module` VALUES (90, '乡村振兴', NULL, 0, 0);
INSERT INTO `t_module` VALUES (91, '睢宁气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (92, '南通要闻', NULL, 0, 0);
INSERT INTO `t_module` VALUES (93, '森林城市', NULL, 0, 0);
INSERT INTO `t_module` VALUES (94, '南通气象', NULL, 0, 0);
INSERT INTO `t_module` VALUES (95, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (96, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (97, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (98, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (99, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (100, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (101, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (102, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (103, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (104, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (105, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (106, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (107, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (108, '鬼谷纵横', '4.png', 0, 0);
INSERT INTO `t_module` VALUES (109, '鬼谷纵横', '4.png', 0, 0);

-- ----------------------------
-- Table structure for t_module_address
-- ----------------------------
DROP TABLE IF EXISTS `t_module_address`;
CREATE TABLE `t_module_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `module_id` int(11) NULL DEFAULT NULL COMMENT '九宫格id',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '地区表的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module_address
-- ----------------------------
INSERT INTO `t_module_address` VALUES (1, 1, 18);
INSERT INTO `t_module_address` VALUES (2, 2, 18);
INSERT INTO `t_module_address` VALUES (3, 3, 18);
INSERT INTO `t_module_address` VALUES (4, 4, 18);
INSERT INTO `t_module_address` VALUES (5, 5, 18);
INSERT INTO `t_module_address` VALUES (6, 6, 18);
INSERT INTO `t_module_address` VALUES (7, 7, 18);
INSERT INTO `t_module_address` VALUES (8, 8, 18);
INSERT INTO `t_module_address` VALUES (9, 9, 18);
INSERT INTO `t_module_address` VALUES (10, 10, 18);
INSERT INTO `t_module_address` VALUES (11, 11, 18);
INSERT INTO `t_module_address` VALUES (12, 12, 18);
INSERT INTO `t_module_address` VALUES (13, 13, 18);
INSERT INTO `t_module_address` VALUES (14, 14, 18);
INSERT INTO `t_module_address` VALUES (15, 15, 18);
INSERT INTO `t_module_address` VALUES (16, 16, 18);
INSERT INTO `t_module_address` VALUES (17, 17, 1);
INSERT INTO `t_module_address` VALUES (18, 18, 1);
INSERT INTO `t_module_address` VALUES (19, 19, 1);
INSERT INTO `t_module_address` VALUES (20, 20, 1);
INSERT INTO `t_module_address` VALUES (21, 21, 1);
INSERT INTO `t_module_address` VALUES (22, 28, 18);
INSERT INTO `t_module_address` VALUES (23, 25, 18);

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '哪个地方的资讯，关联id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '摘要图片地址',
  `read_number` int(11) NULL DEFAULT 0 COMMENT '阅读量',
  `source` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源',
  `author` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  `technology_id` int(11) NULL DEFAULT NULL COMMENT '农业科技的资讯id',
  `news_sort_id` int(11) NULL DEFAULT NULL COMMENT '关联模块，如农业政策，农业科技等',
  `animal_sort_id` int(11) NULL DEFAULT NULL COMMENT '关联畜禽品种库的分类',
  `topic_id` int(11) NULL DEFAULT NULL COMMENT '关联专题',
  `state` int(11) NULL DEFAULT 0 COMMENT '状态是否正常，0正常，1不正常',
  `review_status` int(11) NULL DEFAULT 0 COMMENT '审核是否通过，0通过，1不通过',
  `is_top` int(11) NULL DEFAULT 0 COMMENT '是否置顶，0不置顶，1置顶',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0删除，1不删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES (1, '\r\n\r\n一、夏季叶菜优质安全快速高效生产技术', '<div>\r\n\r\n<p>\r\n       技术名称：夏季叶菜优质安全快速高效生产技术\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180531/de17fb69a4ff49a1996a7332522b7946.JPG\" width=\"100%\" />\r\n\r\n<p>\r\n       技术概述：采用环保型蔬菜有机营养基质和叶菜生产专用栽培基质配方，采取穴盘栽培容器和科学的灌溉方式，通过特定的营养液配方、缓释有机肥和配套的栽培技术栽培特色叶菜，配合防虫网、遮阳网等措施，改善叶菜生育环境，不使用农药，快速栽培避免病虫害发生，实现夏季叶菜安全、快速、优质、高效生产，提高产品的质量品质和安全水平。\r\n</p>\r\n<p>\r\n       增产增效情况：夏季叶菜生产采收3茬左右，单产水平较常规提高20%以上，生产效益提高25%以上。\r\n</p>\r\n<p>\r\n       技术要点：\r\n</p>\r\n<p>\r\n1．核心技术\r\n</p>\r\n<p>\r\n       ①穴盘基质栽培技术。在塑料大棚等保护设施内，以泡沫板或塑料穴盘作为栽培容器，以有机营养基质作为栽培介质，进行穴盘叶菜快速栽培。基质中添加缓释性有机肥，浇灌清水，可实现有机叶菜高档生产栽培。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/e41c3753241c45c5a3a801b3790aad13.png\" width=\"100%\" />\r\n\r\n       ②简易营养液栽培技术。采用简易、低成本管道式营养液栽培系统，采用专用营养液配方，快速栽培叶菜产品。\r\n</p>\r\n<p>\r\n       ③立体高效栽培技术。在塑料大棚等设施内，在采用单层栽培的同时，可采用架式立体多层栽培或管道式立体栽培模式及其配套栽培管理技术，显著提高土地利用率。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/a67cedafd2374ad4a478fed884b42edf.png\" width=\"100%\" />\r\n\r\n       ④喷灌技术。根据不同叶菜作物、不同生育期对水分的要求，按需进行合理灌溉，可以节约大量水资源，还能起到降温降湿，调节叶菜生长环境的作用。\r\n</p>\r\n<p>\r\n       ⑤使用频振式杀虫灯。频振式杀虫灯杀虫种类广，可诱杀多种叶菜蔬菜害虫，如斜纹夜蛾、甜菜夜蛾、银纹夜蛾、烟青虫、黄条跳甲、蝼蛄等。\r\n</p>\r\n<p>\r\n2．配套技术\r\n</p>\r\n<p>\r\n       ①遮阳网覆盖栽培技术。根据不同种类叶菜蔬菜、不同生育期对光照、水份等的要求，采用相应规格的遮阳网，用相应方式进行覆盖。根据不同作物对光照的不同要求、天气情况变化和作物的不同生长阶段来确定盖网和揭网的时间。\r\n</p>\r\n<p>\r\n       ②防虫网覆盖栽培技术。采用上部覆盖薄膜避雨、周围覆盖防虫网通风防虫。主要采用：大棚覆盖，多用于小白菜、甘蓝等叶菜类蔬菜的生长及蔬菜育苗；大型平棚覆盖（顶部不覆盖薄膜），用于大规模叶菜生产技术。\r\n</p>\r\n<p>\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/c92664f463d240b08f311ee21920fe6f.png\" width=\"100%\" />\r\n       ③大棚遮阳网农膜结合覆盖技术。膜下网上，膜避雨，网遮阳，晴天30℃以上时，上午9时盖，下午4时揭；气温高于35℃时，白天盖，夜晚揭。\r\n</p>\r\n<p>\r\n       适宜区域：南方蔬菜产区。\r\n</p>\r\n<p>\r\n       2017年推广情况：示范应用5000亩左右。\r\n</p>\r\n<p>\r\n       2018年预期目标：在全省示范应用20000亩。\r\n</p>\r\n<p>\r\n       重点推广县（市、区）：苏南、苏中设施蔬菜栽培地区。\r\n</p>\r\n<p>\r\n       注意事项：叶菜生产基地防虫网覆盖务必一盖到底，牢固严实，以增强防虫防风能力。采用喷灌技术需要有相应的硬件设施，如灌溉设施、储水设施、水质净化设施等。\r\n</p>\r\n<p>\r\n       技术咨询单位：南京农业大学园艺学院（侯喜林，025-84395917；郭世荣，025-84395267）；江苏省农业技术推广总站（曾晓萍，025-86263331）等。\r\n</p>\r\n<p>\r\n</div>', NULL, '2018-05-31 00:41:52', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 6407, '江苏省农委', NULL, NULL, 1, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (2, '二、水生蔬菜生态高效栽培模式', '<div>\r\n<p>\r\n       技术名称：水生蔬菜生态高效栽培模式\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180531/de17fb69a4ff49a1996a7332522b7946.JPG\" width=\"100%\" />\r\n<p>\r\n       技术概述：水生蔬菜多在低洼湿地或湖荡河湾种植，是我省蔬菜产业化发展的一个重要内容。设施蔬菜水（湿）旱轮作既能有效防控连作障碍问题，减少农药施用量；又能针对不同地区水资源特点，选用适于淹水栽培或湿润栽培的蔬菜品种，在不同季节茬口种植，扩大我省特色水（湿）生蔬菜的种植区域；还可增加水生蔬菜种植茬次、增加产量，延长水生蔬菜市场供应期，从而显著提高种植效益，促进农民增收。此外，在土表覆盖稻麦或旱生蔬菜秸秆及废弃菇渣，创新秸秆还田和改善设施菜田土壤性质的新途径，起到明显的“减农药、减化肥”效果，从而实现生态效益、社会效益和经济效益的同步提高。露地水生蔬菜如莲藕、茭白等还可与小龙虾、泥鳅等特种水产动物开展生态种养结合，进一步稳定和提高经济效益。\r\n</p>\r\n<p>\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/2766ef566b584368a423d2574d081538.png\" width=\"100%\" />\r\n       增产增效情况：水生蔬菜采收供应期可延长2-4个月，种植茬次由原来的每年1茬增加到2-3茬，亩纯收入增加到3000元以上。莲藕、茭白田套养小龙虾等特种水产动物，每亩可增收3000元左右。\r\n</p>\r\n<p>\r\n       技术要点：\r\n</p>\r\n<p>\r\n1．核心技术\r\n</p>\r\n<p>\r\n       ①适宜的水（湿）生蔬菜种类及品种选择。针对各地设施蔬菜基地土壤性质及市场消费习惯，选择适宜的水（湿）生蔬菜种类及品种，不易贮水的偏沙性土壤宜选择芋头、水蕹菜、湿栽水芹（芹芽菜）、芦蒿、叶用甘薯等湿润栽培类水生蔬菜及早熟品种，贮水能力较强的偏粘性土壤可选择早熟莲藕、慈姑、菱角和低温孕茭型茭白等。\r\n\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/3e04c0ec98ac4ad499559744f1921250.png\" width=\"100%\" />\r\n       ②水生蔬菜设施栽培技术。水生蔬菜设施栽培条件下生育期明显缩短，应及时育苗、栽植并加大密度，用于缓解设施土壤盐渍化的应特别注意科学施肥。湿润栽培类型水生蔬菜生长过程中应注意保证田间、尤其是畦沟中的水分，切忌干干湿湿导致盐分上升。设施早春茬口水生蔬菜前期闭棚增温至棚内温度达40℃时在下风口开小口通风并逐步加大通风量，秋延后茬口气温下降时及时覆盖薄膜保温促长。\r\n</p>\r\n<p>\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/fd0204b6e575461295132b2424e80cb8.png\" width=\"100%\" />\r\n       ③设施蔬菜水旱轮作生态高效新模式。针对各地具体特点的设施蔬菜水旱轮作实用适用模式，水（湿）生蔬菜设施栽培的茬口能与瓜果类等主要设施蔬菜茬口紧密衔接，即春提前水生蔬菜茬口应在8月底-9月初旱生蔬菜秋延后茬口栽植前让茬，秋延后或越冬茬水生蔬菜应在2月中下旬让茬，从而不影响设施旱生蔬菜茬口的种植。\r\n</p>\r\n<p>\r\n       ④秸秆及废弃菇渣水田土表覆盖技术。莲藕、慈姑在采收或入冬后将稻麦秸秆撒铺田间；芋头覆盖小麦秸秆厚度达30cm可替代壅土；设施栽培水生蔬菜田块应根据季节茬口及作物在田时间确定适宜的覆盖量及其规格。废弃菇渣和粉碎（切段）的旱生蔬菜秸秆等均铺撒在水生蔬菜田土表。\r\n</p>\r\n<p>\r\n       ⑤水生蔬菜套养水产动物技术。露地莲藕、茭白等套养小龙虾、泥鳅等特种水产动物，应特别注意植物生长与动物的投放时机及数量、植物采收与动物捕捞的时机及配合。动物在田期间慎用肥料、农药。\r\n</p>\r\n<p>\r\n2．配套技术\r\n</p>\r\n<p>\r\n       ①适宜水生蔬菜种植的设施构型优化。能灌能排的日光温室、塑料大棚设计与建造技术。耐水湿、耐腐蚀的设施材料选择及处理，单个棚室或整个区域四周内衬薄膜防止水分侧漏。\r\n</p>\r\n<p>\r\n       ②科学的肥料运筹。针对设施土壤盐渍化中N肥过多类型，水生蔬菜生长过程中应特别注意控制N肥施用，一般仅在产品器官形成时适当施用K肥为主的复合肥；稻麦秸秆覆盖并灌浅水后，土壤中NO3-迅速溶解到水层中，不必另施N肥调节C/N比。\r\n</p>\r\n<p>\r\n       适宜区域：全省蔬菜产区。\r\n</p>\r\n<p>\r\n       2017年推广情况：在里下河、环太湖和沿江等地开展示范推广，推广应用规模10万余亩。\r\n</p>\r\n<p>\r\n       2018年预期目标：在现有设施蔬菜基地内，宜水则水、宜湿则湿，重点推广设施蔬菜水旱轮作生态高效模式，直立生长型水生蔬菜示范推广土表覆盖秸秆；稻麦产区周边的露地水生蔬菜如莲藕、慈姑、水芹、芋头等基地，重点推广稻麦秸秆土表覆盖有氧发酵技术，总体示范推广面积10-15万亩。\r\n</p>\r\n<p>\r\n       重点推广区域：环太湖、里下河、沿海和沿江等周边地区。\r\n</p>\r\n<p>\r\n       注意事项：①旱生设施蔬菜基地开展水旱轮作，应加强设施内的灌溉及贮水条件建设。②水生蔬菜基地开展设施栽培应做到水位可控和设施牢固。③设施蔬菜基地在水生蔬菜茬口实施秸秆还田的，应根据季节、生育期和作物种类等具体情况，确定适宜的秸秆覆盖量及其规格，以免秸秆腐解不彻底而影响下茬的机械耕翻。④莲藕、茭白田套养小龙虾等特种水产动物的，应特别注意施肥、用药的时机及用量，以免影响水产动物的生长。\r\n</p>\r\n<p>\r\n       技术咨询单位：扬州大学水生蔬菜研究室（江解增，13952751219）等。\r\n\r\n</p>\r\n</div>', NULL, '2018-05-31 00:41:30', 'https://object.jsnjy.net.cn/OSS/20180530/a0320d6474f84497b2f21bca6f48ac82.png', 5043, '江苏省农委', NULL, NULL, 2, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (3, '\r\n\r\n响水：农机助推夏收夏种实现“加速度”', '<div>\r\n<p>\r\n 当前，响水县各镇区纷纷抢抓高温晴好的有利天气，全面开展“三夏”农业生产。田间地头，随处可见一台台大马力、高效率的农业机械往来穿梭，发挥其在农业生产中的主力军作用。\r\n</p>\r\n<p>\r\n 俗话说，黄金铺地，老少弯腰。眼下，麦浪金黄，田野铺金，大型联合收割机的轰鸣声在田野里回荡，秸秆捡拾机、打捆机紧随其后忙碌。6月15日，我们在老舍中心社区大口村田间看到，树圩村村民张介荣种植的600亩小麦正在进行机械化收割。农机手王再军说：“露水小的时候，我7点钟就下地收割，一天工作13个小时，一台收割机能收150多亩地。而且机器收割是一体化的，麦子在田间收割进联合收割机，从粮仓出来的是干净的麦粒，可直接登场或卖掉，高效省事。秸秆又按照留茬15公分、切碎10公分的要求，全部抛撒到田间，不影响下茬种植。”\r\n</p>\r\n<p>\r\n“今年雨水较少，小麦的收成很好，与去年比，我们这儿平均每亩增产将近100斤，亩收入增加一百来块钱呢，小麦的容重、赤霉病率及不完善率全部达标，属于一类麦。”该县六套双盈农机合作社理事长林永建眯着一双小眼睛怀着喜悦的心情对我们说，今年又是一个丰收年，大家都很高兴。合作社增效，社员增收。当前，我们合作社全员上阵，昼夜奋战，夏收即将结束，接着开始夏种，预计6月中旬末夏种基本收犁。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/6e3687f0f34a4e4597fe0844b90030b8.jpg\" width=\"100%\" />\r\n\r\n 与合作社和种植大户不同，麦稻的散户种植占大头，在6月上旬抢收结束后，他们就开始播种育秧。该县七套中心社区高场村村民侍永刚说，利用高效旋耕机，轻松实现耕地深翻，秸秆还田，播种水稻。以前“三夏”要忙将近1个月，人还累够呛；现在，只要几天就结束了，种田人只做‘甩手掌柜’”。\r\n</p>\r\n<p>\r\n 今年“三夏”期间，为确保县域65.8万亩小麦及时收获进仓，农业农村局职能部门组织2500多台联合收割机、近3000台大中型拖拉机和近5000台中小型农机投入“三夏”作业。响水县农机安全稽查大队的全体执法人员放弃休息，“全天候”地服务在“三夏”田头、一线，对投入田间作业的农业机械实施安全监管，严防农机事故发生；县农机推广站，组织农机生产厂家服务网点的服务人员和“老农机”实行“跟踪服务”，对作业机械出现故障的，进行及时排除，确保农业机械以良好的状态投入作业，保证了作业时间和质量。\r\n</p>\r\n<p>\r\n 感受到的不仅仅是收获的喜悦，还有农业生产方式变革所带来的愉悦。“小尖镇‘三夏’机械化率达百分之百，全镇有小麦近7万亩，截至目前基本收割完成。”该镇分管农业工作的副镇长杨红波说，镇干部按照责任化网格，全部安排包村包组到田块、到村组，督促农户尽早收割，尽早深翻、种植。\r\n</p>\r\n<p>\r\n 科技改变农业生产方式，联合收割机、插秧机、田间植保无人机等现代化农机的普及应用，基质化育秧等新技术的推广，农业生产高质量发展理念融入种植管理，使响水县农业生产实现提质增效。\r\n</p>\r\n</div>', NULL, '2019-06-20 00:08:30', 'https://object.jsnjy.net.cn/OSS/20190619/147beb4432604ea08b933d535b74a8aa.jpg', 153, '响水县农业农村局', NULL, NULL, 3, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (4, '\r\n\r\n镇江市首届农副产品营销大赛开全省先河', '<div>\r\n\r\n<p>\r\n        “我们的大米采用稻鸭共作技术，并获得绿色和有机认证。销售上采用预售模式，秧还没插，大米已经预订了80%。还有创意产品配套，市场反应很好。”“我们的河豚系列产品种类丰富，除红烧、白汁等传统做法外，还有河豚包子、饺子、圆子等等，产品已销售到重庆等地。”16日，一场省内首创的农副产品营销大赛在我市举行，25家闯入决赛的本市农企，奉上了一场精彩纷呈的农产品“营销盛宴”。\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190620/6079dc3995c84e019b0f1df7c52f2c27.JPG\" width=\"100%\" />\r\n</p>\r\n<p>\r\n        作为全省首次，本次农副产品营销大赛受到各方关注。由于其“创新营销模式助推乡村产业”的主题设定十分接地气，正中农业企业的痛点，企业参与热情十分高涨。初期报名参加的企业数量超过100多家，后各市区筛选出65家进行初赛，决出25家进入决赛圈，角逐最终的“营销达人”。\r\n</p>\r\n<p>\r\n        镇江苏峰茶叶科技有限公司负责人陈凯京，在路演过程中介绍了企业蒸汽茶的生产理念、技术优势以及合作共赢的营销策略，更直面问题，剖析了企业发展的劣势。“虽然之前我参加过一些农业推荐活动，但此次活动很不一样。因为其主题直指企业最关心的销售问题，让我们把平时避而不谈，或谈之较少的细节拿出来与农业专家进行沟通，回答专家问题环节听取同行发言收获很多。”\r\n</p>\r\n<p>\r\n        来自江苏润果农业发展有限公司的魏云峰，作为一名博士，放弃北京优渥的生活，选择来到妻子的家乡携手共筑农业梦。成立于2009年的润果农业已发展成为苏南地区单体最大的水稻生产企业，实现大田种植全程机械化。“我们营销策略围绕科技主导，先后与省农科院杨林章教授团队合作开发的‘4R’农业面源污染治理技术成为农业部主推技术；2018年成功申报农业部大田数字农业试点，同年成为全国首家京东农场。”\r\n</p>\r\n<p>\r\n        决赛期间采用的是10位专家评审+30位大众评审以及网络投票的方式进行打分。在观看了多位选手路演后，专家评审深受触动——“镇江原来有这么多先进农业产业。”\r\n</p>\r\n<p>\r\n        来自江苏大学管理学院的两位评委李文元和陈浩感慨道：“很多企业都具备了超前的营销理念和手段，共享经济、智慧农业、大数据应用等等热词纷纷出现在了镇江农业产业的生产、经营中。同时，销售的手段也越来越丰富，电子营销和体验式营销的占比越来越大，特别是从业者的素质提高明显，在这些农业经营主体中，出现了多为高学历人才，不乏博士、硕士等等，这说明近年来我市招才引智举措的实施在农业上结出了硕果。”\r\n</p>\r\n<p>\r\n        惊喜于我市农业产业发展飞速提升的同时，直面发展问题也不可忽视。\r\n</p>\r\n<p>\r\n        本次大赛的专家评审组组长、省农科院副院长黄俊在肯定了我市农业特色发展之余，给出了中肯建议：“镇江是全省为数不多的丘陵地貌，农业特色鲜明，要进一步让本地农业产品打入更广阔市场，需要找准切入点，做精做优特色产业，进一步加强品牌培育和农业从业者的培训，鼓励第三方建立农业企业、家庭农场交流群，促进行业内部学习交流，共谋发展。”\r\n</p>\r\n<p>\r\n        本次大赛由市农业农村局、镇江邮政分公司、市农业交流营销协会共同举办。市农业农村局副局长朱毅表示，举办全市首届优质农产品营销模式大赛，能够鼓励农业经营主体采用现代营销方法和技巧，发掘可复制、可推广的适合本地的农产品营销模式，推动本地农产品外销进程，提升本地农产品附加值。同时，能有效促进产销对接，不断拓宽农民增收渠道，提升我市农产品的市场竞争力和影响力。\r\n</p>\r\n<p>\r\n        大赛历时一个月，最终中储粮镇江粮油有限公司获得综合奖一等奖，句容市后白镇杜氏家庭农场和江苏句容生态发展有限公司获得综合奖二等奖，江苏伊斯贝拉生态农业科技有限公司和江苏圌山农业科技有限公司获得综合奖三等奖。此外，句容市后白镇杜氏家庭农场获得包装创意奖和网络人气奖，邮乐镇江农品管获得渠道创意奖和电商应用创意奖，中储粮镇江粮油有限公司获得品牌创意奖。副市长曹丽虹为获奖选手颁奖。\r\n</p>\r\n\r\n</div>', NULL, '2019-06-20 00:08:19', 'https://object.jsnjy.net.cn/OSS/20190620/6079dc3995c84e019b0f1df7c52f2c27.JPG', 129, '镇江市农业农村局', NULL, NULL, 4, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (5, '\r\n【灾害预警】6月20-21日与25日前后淮河以南将有两次明显降水过程 农业生产需加强防范', '\r\n<div>\r\n<p>\r\n       【内容提要】20日沿江和苏南地区将有大到暴雨、局部大暴雨，25日沿江和苏南地区将有中雨、局部大雨，建议加强田间管理，及时排水降渍，防止渍涝灾害发生。\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/8bcbc0b7586249c392e718140e22f2c4.jpg\" width=\"100%\" />\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/1d049e6754394d48bd389ad94f093b85.jpg\" width=\"100%\" />\r\n\r\n\r\n<p>\r\n一、天气预报\r\n</p>\r\n<p>\r\n       根据省气象台预报：6月20-21日、25日前后，淮河以南地区将有两次明显降水过程，具体预报如下：\r\n</p>\r\n<p>\r\n       20日 淮河以南地区阴有阵雨或雷雨，其中沿江和苏南地区大到暴雨，局部大暴雨，并伴有雷电、短时强降水等强对流天气，江淮之间中北部中雨、局部大到暴雨；淮北地区多云到阴有阵雨或雷雨。过程雨量：沿江和苏南地区40～80毫米、局部100～120毫米，其它地区5～15毫米、局部20～50毫米。\r\n</p>\r\n<p>\r\n       21日 淮河以南地区阴有阵雨，其中本省东南部地区中雨、局部大雨；淮北地区多云到阴，有分散性雷阵雨。\r\n</p>\r\n<p>\r\n       22-23日 全省多云。\r\n</p>\r\n<p>\r\n       24日 全省多云转阴。\r\n</p>\r\n<p>\r\n       25日 淮河以南地区阴有阵雨或雷雨，其中沿江和苏南地区中雨、局部大雨。\r\n\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/12569906685247d18e6c6fe9ae107b38.png\" width=\"100%\" />\r\n图1、6月20日08时-21日08时降雨量预报图（单位：毫米）\r\n</p>\r\n<p>\r\n二、前期降水实况与未来天气影响预估分析\r\n</p>\r\n<p>\r\n       自18号入梅以来，我省南部地区出现了强降水，苏南南部雨量普遍在50.2～81.4毫米，其中高淳和东山的降雨量最大，均在100毫米以上，江淮之间南部和沿江地区14.4～46.3毫米，此次强降水造成沿江苏南地区农田土壤偏湿。由于20日和25日前后的强降水区域仍然位于沿江和苏南地区，尤其是20日的雨量将达大到暴雨、局部大暴雨，需要注意较强降水的叠加影响，谨防农田积涝。目前全省水稻已进入栽插高峰期，播栽进度约60%，播栽后若遇暴雨易引起浮秧或倒苗现象，所以需认真做好田间管理工作，争取水稻壮苗壮秧。\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/ea65e1dfbe8b4b7a96b9b397c00b124d.png\" width=\"100%\" />\r\n\r\n图2、6月17日17时-19日05时降雨量实况图（单位：毫米）\r\n</p>\r\n<p>\r\n三、农事建议\r\n</p>\r\n<p>\r\n       1、密切关注天气预报，做好农田积涝的防范工作。\r\n</p>\r\n<p>\r\n       2、抓住降雨间歇，及时做好稻田耕整，确保适期高质量栽插。\r\n</p>\r\n<p>\r\n       3、做好夏种扫尾工作，确保颗粒归仓。\r\n</p>\r\n<p>\r\n本栏目内容由江苏省气象服务中心授权发布！\r\n</p>\r\n\r\n</div>\r\n', NULL, '2019-06-19 17:36:35', 'https://object.jsnjy.net.cn/OSS/20190620/dd71623a0f4c40a79207fb1526f72ddd.JPG', 1536, '江苏省气象服务中心', NULL, NULL, 5, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (6, '\r\n【植保信息】稻田杂草绿色防控技术方案', '<div>\r\n关于印发《稻田杂草绿色防控技术方案》的通知,苏农保〔2019〕28号,\r\n各市、县（市、区）植保植检站（农技推广中心）：\r\n 由于杂草抗药性水平不断上升等原因，导致稻田杂草发生与危害加重，对水稻丰产丰收造成较大威胁。开展稻田杂草防除是控制稻田草害的有效措施，也是开展农药使用量零增长行动的重要环节。为切实做好稻田杂草防除工作，实现稻田杂草无害化目标，我站制定了《稻田杂草绿色防控技术方案》，现印发给你们，请结合本地实际，认真贯彻落实。\r\n<p>\r\n附件：稻田杂草绿色防控技术方案\r\n</p>\r\n<p>\r\n2019年6月15日\r\n</p>\r\n<p>\r\n稻田杂草绿色防控技术方案\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190621/168f77e5614d4b13bb63e61c019853f0.jpg\" width=\"100%\" />\r\n\r\n       随着轻简栽培技术的推广、杂草抗药性水平的上升等原因，水稻田杂草危害呈加重趋势，对水稻生产构成严重威胁。为切实做好水稻田除草工作，服务水稻绿色生产，特制定本技术方案。\r\n</p>\r\n<p>\r\n一、稻田除草原则\r\n</p>\r\n<p>\r\n       稻田杂草防除技术要以农业绿色发展为引领，以水稻田草害防除问题为导向，以水稻增产增收和农药减量控害为目标，提高水稻田草害绿色防控技术水平，确保农业生产安全、农产品质量安全和农业环境安全。\r\n</p>\r\n<p>\r\n       1、坚持农药减量与控制草害相结合原则。大力推广除草剂减量使用技术，选择高效安全除草剂、适期施药，杜绝超剂量使用、不合理施药现象。\r\n</p>\r\n<p>\r\n       2、坚持封闭处理与茎叶处理相结合原则。充分发挥封闭控草优势，利用播栽前后气候适宜的时机开展封闭处理，减少后期茎叶处理的除草压力，延缓杂草抗性发展水平。\r\n</p>\r\n<p>\r\n       3、坚持安全用药与保证防效相结合原则。切实加强除草剂安全使用技术宣传和培训，减少因使用除草剂和施药器械不当引起的药害事故和漂移现象，确保水稻安全和除草效果。\r\n</p>\r\n<p>\r\n       4、坚持生态控草与化学除草相结合原则。结合水稻播栽期调整、翻耕整地、沟渠整治、田间管理、轮作休耕等农业措施，清除田埂、沟渠杂草，发挥生态控草作用，降低稻田杂草发生基数，减轻化学除草压力。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190621/04d67a6f7f9b4125882d0f1ab2123385.JPG\" width=\"100%\" />\r\n\r\n二、绿色防控技术\r\n</p>\r\n<p>\r\n       水稻田杂草防控要坚持综合治理和绿色防控的策略，充分发挥农业措施的控草作用、合理安全使用化学除草剂，根据杂草种类与分布特点，推广重点防除技术，开展分类技术指导，提高除草效果。\r\n</p>\r\n<p>\r\n（一） 优化种植管理\r\n</p>\r\n<p>\r\n       提高种植管理水平，培育水稻壮苗健苗，发挥生态控草作用，降低稻田杂草发生基数，减轻化学除草压力。\r\n</p>\r\n<p>\r\n       1、重草田实施轮作换茬。对上年草害严重的水稻田实施轮作换茬以及休耕，在旱直播水稻种植面积较大的地区，杂草稻等杂草发生严重，要结合种植业结构调整，指导农民实施轮作换茬，减轻稻田杂草发生基数，压缩重草田面积。\r\n</p>\r\n<p>\r\n       2、水稻种子去杂。精选水稻种子，汰除混杂在水稻种内的杂草种子；推广使用商品种子，减少农户自留种的比例；指导农户做好自留种的筛选工作，减少杂草种源。\r\n</p>\r\n<p>\r\n       3、培育壮苗健苗。提高整地质量、合理运筹施肥等，促进水稻壮苗早发，增强抗逆性；腾茬早的田，在播栽前诱发杂草发生的基础上采用机械灭草或药剂除草；适时开展清除田埂、路边杂草；大力推广秸秆还田、中耕除草等技术，培育壮苗健苗，营造“苗欺草”的良好农田生态。\r\n</p>\r\n<p>\r\n（二）精准化学除草\r\n</p>\r\n<p>\r\n       近年来，我省通过积极探索，在对水稻田杂草防除新农药、新技术进行试验示范的基础上，集成并推广“封杀结合”的化除技术模式。\r\n</p>\r\n<p>\r\n       1、旱直播稻田。在播种并窨水落干后，使用异丙隆•丙草胺•氯吡嘧磺隆、丁•恶或二甲戊灵+苄嘧磺隆等，兑水均匀喷雾，进行土壤封闭；播种20天后，根据田间草情，防除禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯或二氯喹啉酸等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾处理。\r\n</p>\r\n<p>\r\n       2、水直播稻田。在催芽稻种播后4-5天，用丙草胺（含安全剂）+苄嘧磺隆，兑水均匀喷雾进行土壤封闭；水稻播种后20天，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯、苄嘧磺隆等茎叶喷雾处理。\r\n</p>\r\n<p>\r\n       3、机插秧稻田。在上水整地平田时，用丙草胺+苄嘧磺隆或吡嘧磺隆，兑水均匀喷施，自然落干后栽插，或在栽插后3-5天，用丙草胺、异隆•丙草胺•氯吡嘧磺隆等药剂，拌细湿土均匀撒施封闭；水稻移栽后20天左右，根据田间草情选择茎叶处理药剂，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾。\r\n</p>\r\n<p>\r\n       4、人工移栽大田。在水稻栽后5-7天，用乙·苄、异丙·苄、丁·苄、苯噻·苄等，拌潮细土或拌肥料保水撒施，药后保水3-5天。水稻移栽后25天左右，根据田间草情选择茎叶处理药剂，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾处理。\r\n</p>\r\n<p>\r\n三、确保措施到位\r\n</p>\r\n<p>\r\n       为普及水稻田杂草综合防除技术，提高除草技术到位率，保障水稻绿色高效优质生产，各地要精心部署、扎实推进，确保各项措施落实到位。\r\n</p>\r\n<p>\r\n       1、强化宣传发动。要充分利用电视、广播、报纸、短信、微信等媒体多渠道宣传稻田除草的重要性和稻田除草关键技术，组织基层农技人员、村组干部发放明白纸等技术资料，贯彻稻田杂草综合防除理念，动员广大农民和种田大户科学除草，特别是抓好土壤封闭处理。\r\n</p>\r\n<p>\r\n       2、强化服务指导。水稻田除草时间紧、技术要求高，各地要组织植保技术人员深入基层农药经营门店、深入田间地头，培训指导基层农技人员、农药经营人员和广大农户，提高技术到位率。针对稻田不同草相和除草剂特点，指导农民掌握新型除草剂使用技术和注意事项，适期施药，严防药害。\r\n</p>\r\n<p>\r\n       3、强化示范引领。结合水稻田绿色防控示范区，各县（市、区）要建立稻田草害综合防除示范区，展示农业措施的生态控草效果，示范化学除草新产品、新技术，组织开展病虫害专业化防治服务组织、农业合作社、种田大户和农民现场观摩，提高稻田杂草综合防除技术覆盖率和新技术推广积极性。\r\n</p>\r\n<p>\r\n       4、强化检查评价。各地要加强对新除草剂试验、示范区建立和水稻田大面积除草工作的服务指导，结合绿色防控示范区建设要求，组织开展交叉检查和工作督查，及时总结经验，扩大水稻田杂草防除新技术、新产品的辐射效果。\r\n</p>\r\n</div>', NULL, '2019-06-21 01:33:40', 'https://object.jsnjy.net.cn/OSS/20190621/55b17dbc344744b29850f307d7d772f6.jpg', 2343, '江苏省植物保护植物检疫站', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (7, '\r\n【专家发布】单头切花菊‘白扇’的夏季出花栽培管理', '<div>\r\n<p>\r\n      ‘白扇’作为继‘神马’和‘优香’之后的主打白色单头切花菊，是上半年出口日本、韩国的主要品种，近年来越来越受到广大种植公司和农户的青睐，市场对‘白扇’的反应也比较良好。‘白扇’的定植时间跨度较长，在日光温室或者具备加温条件的智能温室，最早定植时间可以从2月份开始，一直可以定植到5月份结束，相应的出花时间从5月份一直到9月份，整个生长期在100-120天左右。‘白扇’营养生长阶段需要补充光照，达到需要的植株高度时停止光照进入生殖生长状态，夏季也不需要短日照处理就能完成花芽分化。下面简述一下‘白扇’的栽培管理重点。\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190620/16bad49e6b214805ac534711d9ba97a2.JPG\" width=\"100%\" />\r\n\r\n<p>\r\n一、育苗定植\r\n</p>\r\n<p>\r\n       冬春茬切花菊的育苗时间较长，大约需要25-30 天，可以采用穴盘基质扦插育苗，对于苏北的新沂、连云港、宿迁地区的沙壤土也可以选择“直插”法直接种植。穴盘扦插所育的菊花苗质量好，定植后缓苗快，但是育苗环节花费人工多、对育苗设施需要严格，育苗周期长。“直插”比较省时省工，但是对土壤条件有要求，条件不理想时有一定的损耗。\r\n</p>\r\n<p>\r\n二、环境调控\r\n</p>\r\n<p>\r\n       从早春定植到夏季出花的切花菊的100多天的生长时期中，温度和湿度的控制尤为重要。一般在晴天的中午，当棚内温度上升到25-28℃的时候开始打开通风口通风换气，降低湿度，通常只打开顶风口进行通风换气。下午应当提早关闭通风口，使大棚内积蓄更多的热量。有条件的温室可以增加加温和除湿的设备。\r\n</p>\r\n<p>\r\n三、肥水管理\r\n</p>\r\n<p>\r\n       ‘白扇’的长势中等偏弱，肥水不足时茎秆较细，所以平时需要加强肥水的管理，按照’薄肥勤施’的原则，每隔7-8天灌一次肥水，每隔10-15天喷施一次微量元素叶面肥。早春时水肥用量要适当减少，夏季的时候水肥用量要适当增加。\r\n</p>\r\n<p>\r\n四、采收加工\r\n</p>\r\n<p>\r\n       ‘白扇’的花径比’神马’略小一点，但是颜色比’神马’要白得通透，采收期间适当的遮阴能让花朵更白。由于夏季在江苏地区多数停光后不遮光花的开花时间整齐度略弱，从初采到采收结束大约需要15天左右。采收分拣后及时运到冷库预冷、吸水、套袋（包报纸），避免长时间脱水造成叶片萎蔫，影响切花的保鲜期和瓶插期。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190620/5c254e3e328d4aa3bb041f29e388296d.JPG\" width=\"100%\" />\r\n\r\n 在’白扇’生长期的管理需要注意以下几个事项：\r\n</p>\r\n<p>\r\n一、前期低温影响上市时间。‘早春茬’切花的生长周期略微长一些，需要计划好出花时间，以便顺利联系收购商。比如1月份和2月份直插或者定植的小苗，如果停光以后的夜温达不到15℃以上，那么现蕾时间相应延迟，采收时间也往后推迟，有可能这2批花会同时出花上市。\r\n</p>\r\n<p>\r\n 二、注意病害防治。早春季节，由于大棚内温度低、湿度大，很容易引发病害，尤其是锈病、霜霉病，每隔7-10天坚持杀菌剂处理。常规药剂使用甲托、百菌清、多菌灵800-1000倍交替使用；发病初期立刻使用’阿米西达’（嘧菌酯）、’杜邦阿陀’（啶氧菌脂）1000-1500倍正反面喷雾治疗锈病；使用’烯酰吗啉’、’霜脲锰锌’800-1000倍治疗霜霉病。\r\n</p>\r\n<p>\r\n 三、适当补铁元素。‘白扇’容易因缺铁而导致叶片黄化，整个生长期注意定期补充’铁’元素，每半个月喷施1次含有各种微量元素的叶面肥，每次灌肥时加入1000倍的螯合铁一起灌溉。\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190620/6924befb44b24f18962cccbfa8ab31d9.JPG\" width=\"100%\" />\r\n\r\n 四、夏季降温。夏季高温季节需要适当遮阴降温，尤其是6、7月停光的批次，白天高温时段一定要采取降温措施，夜间温度尽量控制在25℃以下，否则会导致花蕾畸形。在此期间出花的批次也需要适当遮阴，避免强光对花瓣造成灼伤，适当遮阴也可以使花朵颜色更自然。\r\n</p>\r\n<p>\r\n 五、花期防治虫害。花蕾期和出花期严防虫害，尤其是红蜘蛛和蓟马。干燥和高温容易诱发红蜘蛛的发生，一旦蔓延非常难治。一方面注意田间水分的管理，保持一定的土壤和空气潮湿度，另一方面定期喷施哒螨灵、阿维菌素等1000-1500倍防治。蓟马是花蕾期和花期常见的危害花瓣和叶片的顽固害虫，平时需要注意防治，一般使用菊酯类、阿维菌素类药物1000倍进行防治，特效药有陶氏益农生产的’艾绿士’（乙基多杀菌素）1500-2000倍有较好的治疗效果。\r\n</p>\r\n<p>\r\n本文由江苏省花卉产业体系、南京农业大学菊花研发团队供稿！\r\n\r\n</p>\r\n</div>', NULL, '2019-06-21 01:23:01', 'https://object.jsnjy.net.cn/OSS/20190621/be31db74da4b4d20862bd07d498aadb6.jpg', 1083, '\r\n【专家发布】单头切花菊‘白扇’的夏季出花栽培管理', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (11, '\r\n\r\n【江苏农技】水稻栽插进入高峰期 抓好一栽就管刻不容缓', '<div>\r\n<p>\r\n 今年夏熟作物收获腾茬进度总体较快，为水稻适龄适期栽插争得了主动。当前全省水稻进入栽插高峰期，各地要抓住天气总体晴好的有利时机，统筹协调，及时做好稻田耕整，确保水稻适期高质量栽插。同时加强移栽技术指导，坚持一栽就管，促进秧苗早发快长，为构建高质量群体打下良好基础。\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190617/bd86286bed09446f801920a9f9cf119f.png\" width=\"100%\" />\r\n</p>\r\n<p>\r\n1、精细高效整田，确保栽插质量\r\n 夏熟作物收获腾茬后，要抓住晴好天气间隙，及时耕翻整田，力争收获一块耕整一块。秸秆还田田块要采用大功率耕整机械，确保秸秆翻埋深度较为一致、草泥混合较为均匀。大田整地做到田平、泥软、肥匀，全田高低差不超过3厘米，田面“整洁”无杂草杂物，无浮渣等，表土上细下粗，上烂下实。大田整平后、秧苗栽插前，要使田土适度沉实，沙质土沉实1天左右，壤土沉实1～2天，粘土沉实2～3天，待泥浆沉淀、表土软硬适中后及时栽插。\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190617/b9da46d35db148f6991e2ecf12b06999.png\" width=\"100%\" />\r\n</p>\r\n<p>\r\n2、适期适龄移栽，夯实壮苗基础\r\n 要按照“宁可田等秧、不可秧等田”的原则衔接好茬口，根据适宜移栽秧龄大小，科学安排移栽期，确保做到适龄适期移栽。毯苗机插秧一般在3～4叶期移栽，秧龄15～20天；常规手栽中苗一般在5～6叶期移栽，秧龄30-35天；抛秧一般在4～5叶期抛栽，秧龄20～25天。对于茬口衔接紧，易出现超秧龄的秧苗要通过旱育旱管、适量喷施多效唑等措施延缓其生育进程，最大限度减少超秧龄移栽。\r\n</p>\r\n<p>\r\n3、因时因苗制宜，插足基本苗数\r\n 根据秧苗素质、栽插时期、品种分蘖特性等，合理调整栽插基本苗。机插常规粳稻一般亩插1.7～2.0万穴，每穴4苗左右，基本苗7～8万；杂交粳稻一般亩插1.5～1.7万穴，每穴2苗左右，基本苗4万左右；手栽常规粳稻行距7.5～8寸，株距4.5-5寸，亩基本茎蘖苗9～10万，丰产方、高产田行距8～8.5寸，株距4寸，亩基本茎蘖苗8～9万；手栽杂交稻行距8.5～9寸，亩基本茎蘖苗7～9万，丰产方、高产田行距9寸左右，亩基本茎蘖苗7～8万；抛栽稻一般亩抛1.8～2万穴，基本苗7万左右，做到浅水高抛、匀抛。适期栽插且分蘖性较强的品种基本苗可适当减少，栽插期延迟且分蘖性弱的品种基本苗要相应增加。\r\n</p>\r\n<p>\r\n4、加强一栽就管，促进早发快长\r\n 要根据稻作方式，因苗、因时、因地分类管理，切实抓好一栽就管工作。\r\n 水浆管理上：\r\n 机插稻、抛秧稻活棵立苗期间歇湿润灌溉，立苗后薄水间隙灌溉，及时露田通气促进扎根；手栽稻从移栽到新生1张叶片的返青期灌薄水护苗，分蘖期浅水勤灌，促进多发根、快分蘖。秸秆还田田块，要适时脱水露田通气，增加土壤含氧量，促进秸秆腐熟和根系发育，防止土壤有毒物质过多造成僵苗。\r\n 肥料施用上：\r\n 要施足基肥，活棵后早施分蘖肥，建议一次施用。一般在移栽后5-7天，机插稻每亩施尿素15公斤左右，抛栽稻、手栽稻每亩施尿素10公斤左右。对秸秆还田量大的田块，适当增施尿素3～5公斤；对于基肥不足的田块在施分蘖肥后1周酌苗情补施平衡肥，一般亩施尿素3～5公斤。\r\n 病虫草害防治上：\r\n 要根据植保部门的预测预报，及时做好病虫害防治，同时认真抓好大田期化除工作，不同稻作方式田块的用药时间、用药品种要严格按照植保部门的配方和技术要求操作。对于因推迟移栽，秧苗素质下降，出现僵苗的田块，应根据具体情况对症下药，采取相应的肥、药、水管理调控措施，尽快恢复生长。\r\n 此外，各地要加强直播稻生产技术指导。对采用直播的农户要指导其选择熟期相对较早、抗倒能力较强、分蘖力中等、穗型中等偏大品种。一般每亩用种量5公斤左右，根据品种特性和播种时期，相应调整用种量，实现早苗、全苗、匀苗、壮苗。要选择对路药剂，做好杂草封杀。田间管理上，１叶１心期要施好断奶肥（一般每亩施尿素５公斤），４～5叶期要施好促蘖肥（一般每亩施尿素10公斤）；出苗至3叶期前要保持田块湿润，3叶期至够苗期，浅水勤灌，促蘖促长。\r\n</p>\r\n</div>\r\n\r\n\r\n\r\n', NULL, '2019-06-18 07:00:13', 'https://object.jsnjy.net.cn/OSS/20190617/f227c51660894cb9a9eb3c8c4adacba7.png', 2485, '江苏省农技推广总站', '【江苏农技】水稻栽插进入高峰期 抓好一栽就管刻不容缓\r\n江苏省农技推广总站', NULL, 6, 10, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (12, '这还是关于鹅的资讯文章，惊喜意外不', '<div>\r\n\r\n小时候家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\r\n春节来临就如耀眼流星划过暗夜长空，所有的愿望将在这一瞬间全部实现。从除夕开始，到元宵，那十几天的日子好像是坐上了一辆红色过山车，山光树影铺上一层彩虹颜色，如梦似幻地在眼前旋转，新奇又好玩，只管振臂高呼地快活。\r\n<img src=\"https://niit-jay.oss-cn-shanghai.aliyuncs.com/photo/QQ%E5%9B%BE%E7%89%8720190528132639.jpg?Expires=1560935034&OSSAccessKeyId=TMP.AgFV5JmYPdXS-wQWzukIoFx3pLFNyjwesfhkRw9Bjnk5yZbfhtSpv9nJqXrPMC4CFQCYvQjpzgy4lrFfJCMAypMBAoJnUgIVANShkx7kJsY4Sde7KfLCmp2zSdfP&Signature=Gb1sG0TKIfc58w1fRrxWyFEzkyI%3D\" width=\"100%\" /><br />\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-318dce669169b25f.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/209/format/webp \" width=\"100%\" /><br />\r\n除夕夜的压岁钱，饭菜飘香的年夜饭，箱柜里摆满的花生糖果，厨房里的鸡鸭鱼肉，除夕夜里放在枕边的新衣新裤，大堂间换上的崭新年画，跟着爸爸上庙里烧香拜佛，去很远的竹林乡下走亲戚，奶奶家一大锅的杂烩年羹，漂亮纸盒里的神秘饼干，透明杯子里喝不完的汽水饮料，缀着流苏的奶白色靴子，永远记不清脸和称谓的亲戚们，一直在高音播放着歌舞相声小品的电视机，门廊上贴着红色垂纸，在村里走家串门地读对联，门檐下的红色灯笼，墙壁门楣上随处可见的倒“福”字。\r\n还有鞭炮声，在深夜里，在睡梦里，在深蓝色的黎明里，在喧哗繁忙的白昼里，鞭炮声永不缺席。噼里啪啦，远远近近，长长短短，就像一座座连绵不绝的山头，笼罩着一层蓝色烟雾，在长天寸云之下或清晰如光或朦胧如豆，此消彼长不绝于耳，汇成一条布满红色碎屑、灰色硝粉和青色浓雾的音符河流。<img src=\" https://upload-images.jianshu.io/upload_images/2558050-2e5adcfe5cc51a3a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/540/format/webp\" width=\"100%\" /><br />\r\n以前读鲁迅的《阿长与山海经》，阿长会在除夕递给哥儿一个福橘：\r\n“哥儿，你牢牢记住！”她极其郑重地说。“明天是正月初一，清早一睁开眼睛，第一句话就得对我说：‘阿妈，恭喜恭喜！’记得么？你要记着，这是一年的运气的事情。不许说别的话！说过之后，还得吃一点福橘。”她又拿起那橘子来在我的眼前摇了两摇，“那么，一年到头，顺顺流流……。”\r\n我们家里，尽管没有福橘，但对待“一年的运气的事情”，也是慎重的。\r\n<img src=\" https://upload-images.jianshu.io/upload_images/2558050-ad96ce54fdca6c3b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/531/format/webp\" width=\"100%\" /><br />\r\n\r\n正月初一，爸爸清早起床，在电饭锅里煮上满满的一锅米饭，在将明未明的晨色里放了新年的第一条爆竹，然后剁肉烧菜，爸爸说，新年第一餐一定要吃新饭新菜。\r\n待我们都穿着新衣欢欢喜喜聚拢，爸爸再把电饭锅搬到桌上，打开盖，热气腾腾的白雾里充盈着滚烫的饭香。\r\n爸爸把一扎红筷子均匀插在鼓鼓的米饭上，再让我们一起拔下筷子交给他，之后他将筷子往正堂地上一撒，朗声说：“筷子落地，顺顺利利；筷子落地，挣钱买房买地。”伴着清脆的刷拉一声，红色筷子洒落在地。\r\n<div>\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-4993f70cba74db9a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/657/format/webp \" width=\"100%\" />grace.hcoder.net<br />\r\n小时候家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\r\n春节来临就如耀眼流星划过暗夜长空，所有的愿望将在这一瞬间全部实现。从除夕开始，到元宵，那十几天的日子好像是坐上了一辆红色过山车，山光树影铺上一层彩虹颜色，如梦似幻地在眼前旋转，新奇又好玩，只管振臂高呼地快活。\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-318dce669169b25f.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/209/format/webp \" width=\"100%\" /><br />\r\n除夕夜的压岁钱，饭菜飘香的年夜饭，箱柜里摆满的花生糖果，厨房里的鸡鸭鱼肉，除夕夜里放在枕边的新衣新裤，大堂间换上的崭新年画，跟着爸爸上庙里烧香拜佛，去很远的竹林乡下走亲戚，奶奶家一大锅的杂烩年羹，漂亮纸盒里的神秘饼干，透明杯子里喝不完的汽水饮料，缀着流苏的奶白色靴子，永远记不清脸和称谓的亲戚们，一直在高音播放着歌舞相声小品的电视机，门廊上贴着红色垂纸，在村里走家串门地读对联，门檐下的红色灯笼，墙壁门楣上随处可见的倒“福”字。\r\n还有鞭炮声，在深夜里，在睡梦里，在深蓝色的黎明里，在喧哗繁忙的白昼里，鞭炮声永不缺席。噼里啪啦，远远近近，长长短短，就像一座座连绵不绝的山头，笼罩着一层蓝色烟雾，在长天寸云之下或清晰如光或朦胧如豆，此消彼长不绝于耳，汇成一条布满红色碎屑、灰色硝粉和青色浓雾的音符河流。<img src=\" https://upload-images.jianshu.io/upload_images/2558050-2e5adcfe5cc51a3a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/540/format/webp\" width=\"100%\" /><br />\r\n以前读鲁迅的《阿长与山海经》，阿长会在除夕递给哥儿一个福橘：\r\n“哥儿，你牢牢记住！”她极其郑重地说。“明天是正月初一，清早一睁开眼睛，第一句话就得对我说：‘阿妈，恭喜恭喜！’记得么？你要记着，这是一年的运气的事情。不许说别的话！说过之后，还得吃一点福橘。”她又拿起那橘子来在我的眼前摇了两摇，“那么，一年到头，顺顺流流……。”\r\n我们家里，尽管没有福橘，但对待“一年的运气的事情”，也是慎重的。\r\n<img src=\" https://upload-images.jianshu.io/upload_images/2558050-ad96ce54fdca6c3b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/531/format/webp\" width=\"100%\" /><br />\r\n正月初一，爸爸清早起床，在电饭锅里煮上满满的一锅米饭，在将明未明的晨色里放了新年的第一条爆竹，然后剁肉烧菜，爸爸说，新年第一餐一定要吃新饭新菜。\r\n\r\n<div>\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-4993f70cba74db9a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/657/format/webp \" width=\"100%\" />grace.hcoder.net<br />\r\n小时候家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\r\n春节来临就如耀眼流星划过暗夜长空，所有的愿望将在这一瞬间全部实现。从除夕开始，到元宵，那十几天的日子好像是坐上了一辆红色过山车，山光树影铺上一层彩虹颜色，如梦似幻地在眼前旋转，新奇又好玩，只管振臂高呼地快活。\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-318dce669169b25f.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/209/format/webp \" width=\"100%\" /><br />\r\n除夕夜的压岁钱，饭菜飘香的年夜饭，箱柜里摆满的花生糖果，厨房里的鸡鸭鱼肉，除夕夜里放在枕边的新衣新裤，大堂间换上的崭新年画，跟着爸爸上庙里烧香拜佛，去很远的竹林乡下走亲戚，奶奶家一大锅的杂烩年羹，漂亮纸盒里的神秘饼干，透明杯子里喝不完的汽水饮料，缀着流苏的奶白色靴子，永远记不清脸和称谓的亲戚们，一直在高音播放着歌舞相声小品的电视机，门廊上贴着红色垂纸，在村里走家串门地读对联，门檐下的红色灯笼，墙壁门楣上随处可见的倒“福”字。\r\n还有鞭炮声，在深夜里，在睡梦里，在深蓝色的黎明里，在喧哗繁忙的白昼里，鞭炮声永不缺席。噼里啪啦，远远近近，长长短短，就像一座座连绵不绝的山头，笼罩着一层蓝色烟雾，在长天寸云之下或清晰如光或朦胧如豆，此消彼长不绝于耳，汇成一条布满红色碎屑、灰色硝粉和青色浓雾的音符河流。<img src=\" https://upload-images.jianshu.io/upload_images/2558050-2e5adcfe5cc51a3a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/540/format/webp\" width=\"100%\" /><br />\r\n以前读鲁迅的《阿长与山海经》，阿长会在除夕递给哥儿一个福橘：\r\n“哥儿，你牢牢记住！”她极其郑重地说。“明天是正月初一，清早一睁开眼睛，第一句话就得对我说：‘阿妈，恭喜恭喜！’记得么？你要记着，这是一年的运气的事情。不许说别的话！说过之后，还得吃一点福橘。”她又拿起那橘子来在我的眼前摇了两摇，“那么，一年到头，顺顺流流……。”\r\n我们家里，尽管没有福橘，但对待“一年的运气的事情”，也是慎重的。\r\n<img src=\" https://upload-images.jianshu.io/upload_images/2558050-ad96ce54fdca6c3b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/531/format/webp\" width=\"100%\" /><br />\r\n正月初一\r\n<div>\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-4993f70cba74db9a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/657/format/webp \" width=\"100%\" />grace.hcoder.net<br />\r\n小时候家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\r\n<div>\r\n<img src=\"https://upload-images.jianshu.io/upload_images/2558050-4993f70cba74db9a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/657/format/webp \" width=\"100%\" />grace.hcoder.net<br />\r\n小时候家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\r\n</div>', NULL, '2019-05-21 20:51:33', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 79, '106宿舍', '何杰', NULL, 7, 6, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (13, '农业科技当中蔬菜的资讯', '农业科技当中蔬菜的资讯农业科技当中蔬菜的资讯农业科技当中蔬菜的资讯农业科技当中蔬菜的资讯农业科技当中蔬菜的资讯', NULL, '2019-05-24 10:12:20', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 116, '第五组', '何杰', 3, 8, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (14, '农业科技当中稻麦/水稻的资讯', '农业科技当中水稻的资讯农业科技当中水稻的资讯农业科技当中水稻的资讯农业科技当中水稻的资讯农业科技当中水稻的资讯农业科技当中水稻的资讯', NULL, '2019-05-24 10:12:22', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 86, '第五组', '王杰', 1, 9, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (15, '这还是稻麦/水稻的资讯', '水稻内容', NULL, '2019-05-24 10:12:24', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 983, '第五组', '王杰', 1, 10, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (16, '\r\n违规经营农药处罚标准再次细化，这些你都知道吗？', '<div>\r\n<p>\r\n自《农药管理条例》及《农药经营许可管理办法》等相关条例法规正式施行以来，有关农药生产销售使用等行为都归属农业主管部门管理。今年以来，各省区也在开展大规模的农药经营审查工作。这其中对违规（法）行为进行处罚，但是在处罚过程中难免存在处罚过重或过轻，或处罚标准缺失等情况。\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/18ed82ad344f4bb0b0368c65dfcd0b14.png \" width=\"100%\" />\r\n<p>\r\n       而以后，这些都会有所改善。为规范农业行政执法行为，保障农业农村主管部门合法、合理、适当地行使行政处罚自由裁量权，保护公民、法人和其他组织的合法权益。同时要求各级农业农村主管部门及农业执法人员要充分认识规范行政处罚自由裁量权的重要意义，切实提高农业行政执法水平。5月31日，农业农村部制定并公布了《规范农业行政处罚自由裁量权办法》（以下简称《办法》），并于2019年6月1日正式施行。\r\n\r\n行政处罚标准将再次细化，同一违规行为处罚要统一\r\n</p>\r\n<p>\r\n       由于各项政策刚刚施行不久，很多违法违规处罚行为缺乏先例可循，加之多地执法部门执法人员对各项条例了解的不甚透彻，在实际执行的很容易出现标准缺失或标准不一的行为。\r\n\r\n       但是《农药管理条例》只制定了一个处罚依据，处罚力度还是由执法者来恒定。若出现处罚过轻的情况则不足以保证法规的威严，不能够保证农药使用者的合法权益，若处罚过重或者处罚标准不一，则过犹不及，影响农药经营者的积极性。\r\n\r\n       对此，《办法》规定，各农业农村主管部门行使行政处罚自由裁量权时，应当符合法律、法规、规章的规定，遵循法定程序，保障行政相对人的合法权益。\r\n\r\n       行使行政处罚自由裁量权，应当以事实为依据，行政处罚的种类和幅度应当与违法行为的事实、性质、情节、社会危害程度相当，与违法行为发生地的经济社会发展水平相适应。违法事实、性质、情节及社会危害后果等相同或相近的违法行为，同一行政区域行政处罚的种类和幅度应当基本一致。\r\n\r\n       另外，农业农村部可以根据统一和规范全国农业行政执法裁量尺度的需要，针对特定的农业行政处罚事项制定自由裁量基准。法律、法规、规章对行政处罚事项规定有自由裁量空间的，省级农业农村主管部门应当根据本办法结合本地区实际制定自由裁量基准，明确处罚裁量标准和适用条件，供本地区农业农村主管部门实施行政处罚时参照执行。\r\n\r\n       市、县级农业农村主管部门可以在省级农业农村主管部门制定的行政处罚自由裁量基准范围内，结合本地实际对处罚裁量标准和适用条件进行细化和量化。\r\n</p>\r\n<p>\r\n制定行政处罚自由裁量基准，应当遵守以下规定：\r\n</p>\r\n<p>\r\n（1）法律、法规、规章规定可以选择是否给予行政处罚的，应当明确是否给予行政处罚的具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（2）法律、法规、规章规定可以选择行政处罚种类的，应当明确适用不同种类行政处罚的具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（3）法律、法规、规章规定可以选择行政处罚幅度的，应当根据违法事实、性质、情节、社会危害程度等因素确定具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（4）法律、法规、规章规定可以单处也可以并处行政处罚的，应当明确单处或者并处行政处罚的具体裁量标准和适用条件。\r\n</p>\r\n<p>\r\n处罚有限度，从轻处罚不得高于罚款最高额的一半\r\n\r\n       《办法》指出。法律、法规、规章设定的罚款数额有一定幅度的，在相应的幅度范围内分为从重处罚、一般处罚、从轻处罚。\r\n</p>\r\n<p>\r\n除法律、法规、规章另有规定外，罚款处罚的数额按照以下标准确定：\r\n\r\n       罚款为一定幅度的数额，并同时规定了最低罚款数额和最高罚款数额的，从轻处罚应低于最高罚款数额与最低罚款数额的中间值，从重处罚应高于中间值；\r\n\r\n       只规定了最高罚款数额未规定最低罚款数额的，从轻处罚一般按最高罚款数额的百分之三十以下确定，一般处罚按最高罚款数额的百分之三十以上百分之六十以下确定，从重处罚应高于最高罚款数额的百分之六十；\r\n\r\n       罚款为一定金额的倍数，并同时规定了最低罚款倍数和最高罚款倍数的，从轻处罚应低于最低罚款倍数和最高罚款倍数的中间倍数，从重处罚应高于中间倍数；\r\n\r\n       只规定最高罚款倍数未规定最低罚款倍数的，从轻处罚一般按最高罚款倍数的百分之三十以下确定，一般处罚按最高罚款倍数的百分之三十以上百分之六十以下确定，从重处罚应高于最高罚款倍数的百分之六十。\r\n       针对这条，我们同样以《农药管理条例》的第五十五条为例，如果一农药经营者违法经营的农药货值金额不足1万元的，且适合从轻处罚情节的。那么，其受到处罚的金额将不高于2.75万元。\r\n\r\n       当然，同时具有两个以上从重情节、且不具有从轻情节的，应当在违法行为对应的处罚幅度内按最高档次实施处罚；同时具有两个以上从轻情节、且不具有从重情节的，应当在违法行为对应的处罚幅度内按最低档次实施处罚；同时具有从重和从轻情节的，应当根据违法行为的性质和主要情节确定对应的处罚幅度，综合考虑后实施处罚。\r\n\r\n       另外，针对违法情节恶劣，造成严重危害后果；责令改正拒不改正，或者一年内实施两次以上同种违法行为；妨碍、阻挠或者抗拒执法人员依法调查、处理其违法行为；故意转移、隐匿、毁坏或伪造证据，或者对举报投诉人、证人打击报复；在共同违法行为中起主要作用的；胁迫、诱骗或教唆未成年人实施违法行为等情况，农业农村主管部门依法从重处罚。\r\n\r\n记录在案，加大执法宣传力度\r\n\r\n       《办法》要求，农业农村主管部门应当加强农业执法典型案例的收集、整理、研究和发布工作，建立农业行政执法案例库，充分发挥典型案例在指导和规范行政处罚自由裁量权工作中的引导、规范功能。\r\n\r\n       行使行政处罚自由裁量权，应当坚持处罚与教育相结合、执法与普法相结合，将普法宣传融入行政执法全过程，教育和引导公民、法人或者其他组织知法学法、自觉守法。\r\n</p>\r\n<p>\r\n农业农村主管部门行使行政处罚自由裁量权，不得有下列情形：\r\n</p>\r\n<p>\r\n（1）违法行为的事实、性质、情节以及社会危害程度与受到的行政处罚相比，畸轻或者畸重的；\r\n</p>\r\n<p>\r\n（2）在同一时期同类案件中，不同当事人的违法行为相同或者相近，所受行政处罚差别较大的；\r\n</p>\r\n<p>\r\n（3）依法应当不予行政处罚或者应当从轻、减轻行政处罚的，给予处罚或未从轻、减轻行政处罚的；\r\n</p>\r\n<p>\r\n（4）其他滥用行政处罚自由裁量权情形的。\r\n</p>\r\n<p>\r\n       《办法》同时指出，各级农业农村主管部门应当建立健全规范农业行政处罚自由裁量权的监督制度。农业行政执法人员滥用行政处罚自由裁量权的，依法追究其行政责任。涉嫌违纪、犯罪的，移交纪检监察机关、司法机关依法依规处理。\r\n</p>\r\n</div>', NULL, '2019-06-20 00:12:28', 'https://object.jsnjy.net.cn/OSS/20190619/18ed82ad344f4bb0b0368c65dfcd0b14.png', 330, '老田微农技', NULL, NULL, 1, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (17, '农业政策的资讯', '<div>\r\n<p>\r\n       由于各项政策刚刚施行不久，很多违法违规处罚行为缺乏先例可循，加之多地执法部门执法人员对各项条例了解的不甚透彻，在实际执行的很容易出现标准缺失或标准不一的行为。\r\n\r\n       我们就以《农药管理条例》第五十五条规定为例。若农药经营者违反本条例规定，未取得农药经营许可证经营农药；经营假农药或在农药中添加物质。将由县级以上地方人民政府农业主管部门责令停止经营，没收违法所得、违法经营的农药和用于违法经营的工具、设备等，违法经营的农药货值金额不足1万元的，并处5,000元以上5万元以下罚款，货值金额1万元以上的，并处货值金额5倍以上10倍以下罚款。情节严重的，还应当由发证机关吊销农药经营许可证。构成犯罪的，依法追究刑事责任。\r\n\r\n       但是《农药管理条例》只制定了一个处罚依据，处罚力度还是由执法者来恒定。若出现处罚过轻的情况则不足以保证法规的威严，不能够保证农药使用者的合法权益，若处罚过重或者处罚标准不一，则过犹不及，影响农药经营者的积极性。\r\n\r\n       对此，《办法》规定，各农业农村主管部门行使行政处罚自由裁量权时，应当符合法律、法规、规章的规定，遵循法定程序，保障行政相对人的合法权益。\r\n\r\n       行使行政处罚自由裁量权，应当以事实为依据，行政处罚的种类和幅度应当与违法行为的事实、性质、情节、社会危害程度相当，与违法行为发生地的经济社会发展水平相适应。违法事实、性质、情节及社会危害后果等相同或相近的违法行为，同一行政区域行政处罚的种类和幅度应当基本一致。\r\n\r\n       另外，农业农村部可以根据统一和规范全国农业行政执法裁量尺度的需要，针对特定的农业行政处罚事项制定自由裁量基准。法律、法规、规章对行政处罚事项规定有自由裁量空间的，省级农业农村主管部门应当根据本办法结合本地区实际制定自由裁量基准，明确处罚裁量标准和适用条件，供本地区农业农村主管部门实施行政处罚时参照执行。\r\n\r\n       市、县级农业农村主管部门可以在省级农业农村主管部门制定的行政处罚自由裁量基准范围内，结合本地实际对处罚裁量标准和适用条件进行细化和量化。\r\n</p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190619/18ed82ad344f4bb0b0368c65dfcd0b14.png \" width=\"100%\" />\r\n<p>\r\n制定行政处罚自由裁量基准，应当遵守以下规定：\r\n</p>\r\n<p>\r\n（1）法律、法规、规章规定可以选择是否给予行政处罚的，应当明确是否给予行政处罚的具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（2）法律、法规、规章规定可以选择行政处罚种类的，应当明确适用不同种类行政处罚的具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（3）法律、法规、规章规定可以选择行政处罚幅度的，应当根据违法事实、性质、情节、社会危害程度等因素确定具体裁量标准和适用条件；\r\n</p>\r\n<p>\r\n（4）法律、法规、规章规定可以单处也可以并处行政处罚的，应当明确单处或者并处行政处罚的具体裁量标准和适用条件。\r\n</p>\r\n<p>\r\n处罚有限度，从轻处罚不得高于罚款最高额的一半\r\n\r\n       《办法》指出。法律、法规、规章设定的罚款数额有一定幅度的，在相应的幅度范围内分为从重处罚、一般处罚、从轻处罚。\r\n</p>\r\n<p>\r\n除法律、法规、规章另有规定外，罚款处罚的数额按照以下标准确定：\r\n\r\n       罚款为一定幅度的数额，并同时规定了最低罚款数额和最高罚款数额的，从轻处罚应低于最高罚款数额与最低罚款数额的中间值，从重处罚应高于中间值；\r\n\r\n       只规定了最高罚款数额未规定最低罚款数额的，从轻处罚一般按最高罚款数额的百分之三十以下确定，一般处罚按最高罚款数额的百分之三十以上百分之六十以下确定，从重处罚应高于最高罚款数额的百分之六十；\r\n\r\n       罚款为一定金额的倍数，并同时规定了最低罚款倍数和最高罚款倍数的，从轻处罚应低于最低罚款倍数和最高罚款倍数的中间倍数，从重处罚应高于中间倍数；\r\n\r\n       只规定最高罚款倍数未规定最低罚款倍数的，从轻处罚一般按最高罚款倍数的百分之三十以下确定，一般处罚按最高罚款倍数的百分之三十以上百分之六十以下确定，从重处罚应高于最高罚款倍数的百分之六十。\r\n       针对这条，我们同样以《农药管理条例》的第五十五条为例，如果一农药经营者违法经营的农药货值金额不足1万元的，且适合从轻处罚情节的。那么，其受到处罚的金额将不高于2.75万元。\r\n\r\n       当然，同时具有两个以上从重情节、且不具有从轻情节的，应当在违法行为对应的处罚幅度内按最高档次实施处罚；同时具有两个以上从轻情节、且不具有从重情节的，应当在违法行为对应的处罚幅度内按最低档次实施处罚；同时具有从重和从轻情节的，应当根据违法行为的性质和主要情节确定对应的处罚幅度，综合考虑后实施处罚。\r\n\r\n       另外，针对违法情节恶劣，造成严重危害后果；责令改正拒不改正，或者一年内实施两次以上同种违法行为；妨碍、阻挠或者抗拒执法人员依法调查、处理其违法行为；故意转移、隐匿、毁坏或伪造证据，或者对举报投诉人、证人打击报复；在共同违法行为中起主要作用的；胁迫、诱骗或教唆未成年人实施违法行为等情况，农业农村主管部门依法从重处罚。\r\n\r\n记录在案，加大执法宣传力度\r\n\r\n       《办法》要求，农业农村主管部门应当加强农业执法典型案例的收集、整理、研究和发布工作，建立农业行政执法案例库，充分发挥典型案例在指导和规范行政处罚自由裁量权工作中的引导、规范功能。\r\n\r\n       行使行政处罚自由裁量权，应当坚持处罚与教育相结合、执法与普法相结合，将普法宣传融入行政执法全过程，教育和引导公民、法人或者其他组织知法学法、自觉守法。\r\n</p>\r\n<p>\r\n农业农村主管部门行使行政处罚自由裁量权，不得有下列情形：\r\n</p>\r\n<p>\r\n（1）违法行为的事实、性质、情节以及社会危害程度与受到的行政处罚相比，畸轻或者畸重的；\r\n</p>\r\n<p>\r\n（2）在同一时期同类案件中，不同当事人的违法行为相同或者相近，所受行政处罚差别较大的；\r\n</p>\r\n<p>\r\n（3）依法应当不予行政处罚或者应当从轻、减轻行政处罚的，给予处罚或未从轻、减轻行政处罚的；\r\n</p>\r\n<p>\r\n（4）其他滥用行政处罚自由裁量权情形的。\r\n</p>\r\n<p>\r\n       《办法》同时指出，各级农业农村主管部门应当建立健全规范农业行政处罚自由裁量权的监督制度。农业行政执法人员滥用行政处罚自由裁量权的，依法追究其行政责任。涉嫌违纪、犯罪的，移交纪检监察机关、司法机关依法依规处理。\r\n</p>\r\n</div>', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190624/e530700866d14b0a97a77712bd5c42bf.JPG', 8, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (18, '新淮猪', '<div>\r\n<p>\r\n品种名称\r\n</p>\r\n<p>\r\n      新淮猪\r\n</p>\r\n<p>\r\n品种来源\r\n</p>\r\n<p>\r\n由江苏省农业科学院、南京农业大学、江苏省农业厅、淮阴种猪场等单位利用淮猪与外来猪种杂交选育而成。\r\n</p>\r\n<p>\r\n审定情况\r\n\r\n\r\n审定编号\r\n\r\n</p>\r\n<p>\r\n特性\r\n\r\n新淮猪被毛黑色，头稍长，嘴筒平直或微凹，耳中等大小，向前下方倾斜，背腰平直，腹稍大但不下垂，臀略斜，有效乳头不少于7对。\r\n\r\n产量表现\r\n\r\n新淮猪属肉脂兼用型猪种，产仔多，初产和经产母猪窝产仔分别为11.73和13.39头，生长快，杂交育肥性能好，瘦肉率50％左右。\r\n</p>\r\n<p>\r\n养殖技术要点\r\n</p>\r\n<p>\r\n1. 新淮猪的饲养标准介于老淮猪与外种猪\r\n</p>\r\n<p>\r\n2. 母猪和育肥猪的日粮中可适当搭配青绿饲料\r\n</p>\r\n<p>\r\n3. 育肥期8个月左右\r\n</p>\r\n<p>\r\n适宜区域\r\n</p>\r\n<p>\r\n适宜全省各地饲养。\r\n</p>\r\n<p>\r\n注意事项\r\n</p>\r\n<p>\r\n\r\n2016推广应用情况\r\n</p>\r\n<p>\r\n目前有母猪2500头左右。\r\n</p>\r\n<p>\r\n2017预期目标\r\n</p>\r\n<p>\r\n年出栏新淮猪50000头左右。\r\n</p>\r\n<p>\r\n咨询单位及联系人、电话：\r\n</p>\r\n<p>\r\n咨询单位：淮阴种猪场\r\n</p>\r\n<p>\r\n品种照片：\r\n</p>\r\n<p>\r\n新淮猪公猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124150037.jpg\" width=\"100%\" />\r\n</p>\r\n<p>\r\n新淮猪母猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124202892.jpg\" width=\"100%\" />\r\n</p>\r\n</div>', NULL, '2017-06-21 12:43:18', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E6%96%B0%E6%B7%AE%E7%8C%AA.jpg', 4572, '江苏省农业科学院', NULL, NULL, 11, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (19, '农业担保的动态资讯', '昨天今天明天，天天都是加班。\r\n去年今年明年，年年都是单身。\r\n横批：这就是命\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20180530/fd0204b6e575461295132b2424e80cb8.png\" width=\"100%\" />', 2, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/fd0204b6e575461295132b2424e80cb8.png', 1, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (20, '创业致富的资讯', '昨天今天明天，天天都是加班。\r\n去年今年明年，年年都是单身。\r\n横批：这就是命', 18, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 6, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (21, '农业气象的资讯', '昨天今天明天，天天都是加班。\r\n去年今年明年，年年都是单身。\r\n横批：这就是命', 18, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 89, NULL, NULL, NULL, 6, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (22, '生活服务资讯', '昨天今天明天，天天都是加班。\r\n去年今年明年，年年都是单身。\r\n横批：这就是命', 1, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 4, NULL, NULL, NULL, 7, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (23, '价格行情2', '昨天今天明天，天天都是加班。\r\n去年今年明年，年年都是单身。\r\n横批：这就是命', 18, '2019-05-24 18:20:33', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 75, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (24, '新淮猪', '<div>\r\n<p>品种名称</p><p>新淮猪</p><p>品种来源</p><p>由江苏省农业科学院、南京农业大学、江苏省农业厅、淮阴种猪场等单位利用淮猪与外来猪种杂交选育而成。</p>\r\n<p>\r\n审定情况\r\n\r\n\r\n审定编号\r\n\r\n</p>\r\n<p>\r\n特性\r\n\r\n新淮猪被毛黑色，头稍长，嘴筒平直或微凹，耳中等大小，向前下方倾斜，背腰平直，腹稍大但不下垂，臀略斜，有效乳头不少于7对。\r\n\r\n产量表现\r\n\r\n新淮猪属肉脂兼用型猪种，产仔多，初产和经产母猪窝产仔分别为11.73和13.39头，生长快，杂交育肥性能好，瘦肉率50％左右。\r\n</p>\r\n<p>\r\n养殖技术要点\r\n</p>\r\n<p>\r\n1. 新淮猪的饲养标准介于老淮猪与外种猪\r\n</p>\r\n<p>\r\n2. 母猪和育肥猪的日粮中可适当搭配青绿饲料\r\n</p>\r\n<p>\r\n3. 育肥期8个月左右\r\n</p>\r\n<p>\r\n适宜区域\r\n</p>\r\n<p>\r\n适宜全省各地饲养。\r\n</p>\r\n<p>\r\n注意事项\r\n</p>\r\n<p>\r\n\r\n2016推广应用情况\r\n</p>\r\n<p>\r\n目前有母猪2500头左右。\r\n</p>\r\n<p>\r\n2017预期目标\r\n</p>\r\n<p>\r\n年出栏新淮猪50000头左右。\r\n</p>\r\n<p>\r\n咨询单位及联系人、电话：\r\n</p>\r\n<p>\r\n咨询单位：淮阴种猪场\r\n</p>\r\n<p>\r\n品种照片：\r\n</p>\r\n<p>\r\n新淮猪公猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124150037.jpg\" width=\"100%\" />\r\n</p>\r\n<p>\r\n新淮猪母猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124202892.jpg\" width=\"100%\" />\r\n</p>\r\n</div>', NULL, '2017-06-21 12:43:18', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E6%96%B0%E6%B7%AE%E7%8C%AA.jpg', 4574, '江苏省农业科学院', NULL, NULL, 13, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (25, '青花菜病虫害防控方法', '本标准规定了青花菜病虫害绿色防控的术语和定义，生产环境条件', 1, '2019-05-07 14:30:57', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 100, NULL, NULL, NULL, 14, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (26, '农业农村部将对兽药经营活动全面实施追溯管理', '5月28日，农业农村部公布了中华人民共和国农业农村部公告第174号', 1, '2019-03-22 20:50:12', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 75, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (27, '苏钟猪', '123', NULL, NULL, 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E8%8B%8F%E9%92%9F%E7%8C%AA.jpg', 0, NULL, NULL, NULL, 16, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (28, '新淮猪', '<div>\r\n<p>\r\n品种名称\r\n</p>\r\n<p>\r\n      新淮猪\r\n</p>\r\n<p>\r\n品种来源\r\n</p>\r\n<p>\r\n由江苏省农业科学院、南京农业大学、江苏省农业厅、淮阴种猪场等单位利用淮猪与外来猪种杂交选育而成。\r\n</p>\r\n<p>\r\n审定情况\r\n\r\n\r\n审定编号\r\n\r\n</p>\r\n<p>\r\n特性\r\n\r\n新淮猪被毛黑色，头稍长，嘴筒平直或微凹，耳中等大小，向前下方倾斜，背腰平直，腹稍大但不下垂，臀略斜，有效乳头不少于7对。\r\n\r\n产量表现\r\n\r\n新淮猪属肉脂兼用型猪种，产仔多，初产和经产母猪窝产仔分别为11.73和13.39头，生长快，杂交育肥性能好，瘦肉率50％左右。\r\n</p>\r\n<p>\r\n养殖技术要点\r\n</p>\r\n<p>\r\n1. 新淮猪的饲养标准介于老淮猪与外种猪\r\n</p>\r\n<p>\r\n2. 母猪和育肥猪的日粮中可适当搭配青绿饲料\r\n</p>\r\n<p>\r\n3. 育肥期8个月左右\r\n</p>\r\n<p>\r\n适宜区域\r\n</p>\r\n<p>\r\n适宜全省各地饲养。\r\n</p>\r\n<p>\r\n注意事项\r\n</p>\r\n<p>\r\n\r\n2016推广应用情况\r\n</p>\r\n<p>\r\n目前有母猪2500头左右。\r\n</p>\r\n<p>\r\n2017预期目标\r\n</p>\r\n<p>\r\n年出栏新淮猪50000头左右。\r\n</p>\r\n<p>\r\n咨询单位及联系人、电话：\r\n</p>\r\n<p>\r\n咨询单位：淮阴种猪场\r\n</p>\r\n<p>\r\n品种照片：\r\n</p>\r\n<p>\r\n新淮猪公猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124150037.jpg\" width=\"100%\" />\r\n</p>\r\n<p>\r\n新淮猪母猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124202892.jpg\" width=\"100%\" />\r\n</p>\r\n</div>', NULL, '2017-06-21 12:43:18', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E6%96%B0%E6%B7%AE%E7%8C%AA.jpg', 4572, '江苏省农业科学院', NULL, NULL, NULL, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (30, '新淮猪', '<div>\r\n<p>\r\n品种名称\r\n</p>\r\n<p>\r\n      新淮猪\r\n</p>\r\n<p>\r\n品种来源\r\n</p>\r\n<p>\r\n由江苏省农业科学院、南京农业大学、江苏省农业厅、淮阴种猪场等单位利用淮猪与外来猪种杂交选育而成。\r\n</p>\r\n<p>\r\n审定情况\r\n\r\n\r\n审定编号\r\n\r\n</p>\r\n<p>\r\n特性\r\n\r\n新淮猪被毛黑色，头稍长，嘴筒平直或微凹，耳中等大小，向前下方倾斜，背腰平直，腹稍大但不下垂，臀略斜，有效乳头不少于7对。\r\n\r\n产量表现\r\n\r\n新淮猪属肉脂兼用型猪种，产仔多，初产和经产母猪窝产仔分别为11.73和13.39头，生长快，杂交育肥性能好，瘦肉率50％左右。\r\n</p>\r\n<p>\r\n养殖技术要点\r\n</p>\r\n<p>\r\n1. 新淮猪的饲养标准介于老淮猪与外种猪\r\n</p>\r\n<p>\r\n2. 母猪和育肥猪的日粮中可适当搭配青绿饲料\r\n</p>\r\n<p>\r\n3. 育肥期8个月左右\r\n</p>\r\n<p>\r\n适宜区域\r\n</p>\r\n<p>\r\n适宜全省各地饲养。\r\n</p>\r\n<p>\r\n注意事项\r\n</p>\r\n<p>\r\n\r\n2016推广应用情况\r\n</p>\r\n<p>\r\n目前有母猪2500头左右。\r\n</p>\r\n<p>\r\n2017预期目标\r\n</p>\r\n<p>\r\n年出栏新淮猪50000头左右。\r\n</p>\r\n<p>\r\n咨询单位及联系人、电话：\r\n</p>\r\n<p>\r\n咨询单位：淮阴种猪场\r\n</p>\r\n<p>\r\n品种照片：\r\n</p>\r\n<p>\r\n新淮猪公猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124150037.jpg\" width=\"100%\" />\r\n</p>\r\n<p>\r\n新淮猪母猪\r\n</p>\r\n<p>\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20170621/20170621124202892.jpg\" width=\"100%\" />\r\n</p>\r\n</div>', NULL, '2017-06-21 12:43:18', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E6%96%B0%E6%B7%AE%E7%8C%AA.jpg', 4572, '江苏省农业科学院', NULL, NULL, NULL, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (31, '老淮猪', '123', NULL, '2019-06-04 15:17:49', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E8%80%81%E6%B7%AE%E7%8C%AA.jpg', 52, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (32, '长江三角洲白山羊', '123', NULL, '2019-02-05 15:18:49', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E9%95%BF%E6%B1%9F%E4%B8%89%E8%A7%92%E6%B4%B2%E7%99%BD%E5%B1%B1%E7%BE%8A.jpg', 0, NULL, NULL, NULL, NULL, 2, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (33, '湖羊', '123', NULL, '2018-02-06 15:19:13', 'https://niit-soft21.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E6%B9%96%E7%BE%8A.jpg', 0, NULL, NULL, NULL, NULL, 2, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (34, '苏禽绿壳蛋鸡', '123', NULL, '2018-10-10 15:19:44', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (35, '罗曼褐蛋鸡', '123', NULL, '2018-09-20 15:20:13', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (36, '京红1号蛋鸡', '123', NULL, '2019-02-13 15:20:41', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (37, '京红1号蛋鸡', '123', NULL, '2019-02-13 15:20:41', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (38, '农大3号小型蛋鸡', '123', NULL, '2017-03-23 15:21:08', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (39, '农大5号小型蛋鸡', '123', NULL, '2018-08-30 15:21:46', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (40, '新羊黑蛋鸡', '123', NULL, '2018-08-14 15:22:07', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (41, '海兰褐蛋鸡', '123', NULL, '2018-12-19 15:22:54', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (42, '溧阳鸡', '123', NULL, '2018-10-10 15:23:57', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (43, '苏系长毛兔', '123', NULL, '2018-07-27 15:24:50', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 9, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (44, '新西兰白兔', '123', NULL, '2018-10-24 15:24:47', 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 9, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (45, '这是关于猪的资讯', '123', 18, '2019-05-17 22:45:07', 'https://g.hiphotos.baidu.com/image/h%3D300/sign=b5e4c905865494ee982209191df4e0e1/c2cec3fdfc03924590b2a9b58d94a4c27d1e2500.jpg', 8949, '南工院计算机学院', '何杰', NULL, NULL, 1, 1, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (46, '这是关于羊的资讯', '123', NULL, NULL, 'https://b.hiphotos.baidu.com/image/h%3D300/sign=92afee66fd36afc3110c39658318eb85/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg', 1, NULL, NULL, NULL, NULL, 2, 2, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (47, '这是关于蛋鸡的资讯', '123', NULL, NULL, 'https://f.hiphotos.baidu.com/image/h%3D300/sign=0c78105b888ba61ec0eece2f713597cc/0e2442a7d933c8956c0e8eeadb1373f08202002a.jpg', 0, NULL, NULL, NULL, NULL, 3, 3, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (48, '这是关于肉鸡的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 4, 4, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (49, '这是关于鸭的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (50, '这是关于鹅的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (51, '这是关于牛的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 7, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (52, '这是关于鸽的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 0, NULL, NULL, NULL, NULL, 8, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (53, '这是关于兔的资讯', '123', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 10, NULL, NULL, NULL, NULL, 9, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (54, '三、夏季叶菜优质安全快速高效', '<p><p><strong>关于印发《稻田杂草绿色防控技术方案》的通知</strong>苏农保〔2019〕28<span style=\"font-size: 18px;\">各市、县（市、区）植保植检站（农技推广中心）：</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于杂草抗药性水平不断上升等原因，导致稻田杂草发生与危害加重，对水稻丰产丰收造成较大威胁。开展稻田杂草防除是控制稻田草害的有效措施，也是开展农药使用量零增长行动的重要环节。为切实做好稻田杂草防除工作，实现稻田杂草无害化目标，我站制定了《稻田杂草绿色防控技术方案》，现印发给你们，请结合本地实际，认真贯彻落实。</span></p><p style=\"line-height: 1.75em; text-align: left;\"><span style=\"font-size: 18px;\">附件：稻田杂草绿色防控技术方案</span></p><p style=\"line-height: 1.75em; text-align: right;\"><span style=\"font-size: 18px;\">2019年6月15日</span></p><hr><p style=\"line-height: 1.75em; text-align: center;\"><strong><span style=\"font-size: 18px; background-color: rgb(118, 146, 60); color: rgb(255, 255, 255);\">稻田杂草绿色防控技术方案</span></strong></p><p style=\"text-align:center\"><img src=\"https://object.jsnjy.net.cn/OSS/20190621/168f77e5614d4b13bb63e61c019853f0.jpg\" title=\"\" alt=\"\" style=\"max-width:100%\"></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着轻简栽培技术的推广、杂草抗药性水平的上升等原因，水稻田杂草危害呈加重趋势，对水稻生产构成严重威胁。为切实做好水稻田除草工作，服务水稻绿色生产，特制定本技术方案。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; background-color: rgb(118, 146, 60); color: rgb(255, 255, 255);\">一、稻田除草原则</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 稻田杂草防除技术要以农业绿色发展为引领，以水稻田草害防除问题为导向，以水稻增产增收和农药减量控害为目标，提高水稻田草害绿色防控技术水平，确保农业生产安全、农产品质量安全和农业环境安全。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: 18px; color: rgb(118, 146, 60);\">1、坚持农药减量与控制草害相结合原则。</span>大力推广除草剂减量使用技术，选择高效安全除草剂、适期施药，杜绝超剂量使用、不合理施药现象。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: 18px; color: rgb(118, 146, 60);\">2、坚持封闭处理与茎叶处理相结合原则。</span>充分发挥封闭控草优势，利用播栽前后气候适宜的时机开展封闭处理，减少后期茎叶处理的除草压力，延缓杂草抗性发展水平。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: 18px; color: rgb(118, 146, 60);\">3、坚持安全用药与保证防效相结合原则。</span>切实加强除草剂安全使用技术宣传和培训，减少因使用除草剂和施药器械不当引起的药害事故和漂移现象，确保水稻安全和除草效果。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: 18px; color: rgb(118, 146, 60);\">4、坚持生态控草与化学除草相结合原则。</span>结合水稻播栽期调整、翻耕整地、沟渠整治、田间管理、轮作休耕等农业措施，清除田埂、沟渠杂草，发挥生态控草作用，降低稻田杂草发生基数，减轻化学除草压力。</span></p><p style=\"text-align:center\"><span style=\"font-size: 18px;\"><img src=\"https://object.jsnjy.net.cn/OSS/20190621/04d67a6f7f9b4125882d0f1ab2123385.JPG\" title=\"\" alt=\"\" style=\"max-width:100%\"></span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; background-color: rgb(118, 146, 60); color: rgb(255, 255, 255);\">二、绿色防控技术</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 水稻田杂草防控要坚持综合治理和绿色防控的策略，充分发挥农业措施的控草作用、合理安全使用化学除草剂，根据杂草种类与分布特点，推广重点防除技术，开展分类技术指导，提高除草效果。</span></p><p style=\"line-height: 1.75em;\"><strong><span style=\"font-size: 18px;\">（一）&nbsp;优化种植管理</span></strong></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 提高种植管理水平，培育水稻壮苗健苗，发挥生态控草作用，降低稻田杂草发生基数，减轻化学除草压力。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、重草田实施轮作换茬。</span><span style=\"font-size: 18px;\">对上年草害严重的水稻田实施轮作换茬以及休耕，在旱直播水稻种植面积较大的地区，杂草稻等杂草发生严重，要结合种植业结构调整，指导农民实施轮作换茬，减轻稻田杂草发生基数，压缩重草田面积。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、水稻种子去杂。</span><span style=\"font-size: 18px;\">精选水稻种子，汰除混杂在水稻种内的杂草种子；推广使用商品种子，减少农户自留种的比例；指导农户做好自留种的筛选工作，减少杂草种源。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、培育壮苗健苗。</span><span style=\"font-size: 18px;\">提高整地质量、合理运筹施肥等，促进水稻壮苗早发，增强抗逆性；腾茬早的田，在播栽前诱发杂草发生的基础上采用机械灭草或药剂除草；适时开展清除田埂、路边杂草；大力推广秸秆还田、中耕除草等技术，培育壮苗健苗，营造“苗欺草”的良好农田生态。</span></p><p style=\"line-height: 1.75em;\"><strong><span style=\"font-size: 18px;\">（二）精准化学除草</span></strong></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 近年来，我省通过积极探索，在对水稻田杂草防除新农药、新技术进行试验示范的基础上，集成并推广“封杀结合”的化除技术模式。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、旱直播稻田。</span><span style=\"font-size: 18px;\">在播种并窨水落干后，使用异丙隆•丙草胺•氯吡嘧磺隆、丁•恶或二甲戊灵+苄嘧磺隆等，兑水均匀喷雾，进行土壤封闭；播种20天后，根据田间草情，防除禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯或二氯喹啉酸等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾处理。</span></p><p style=\"line-height: 1.75em;\"><span style=\"color: rgb(118, 146, 60);\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、水直播稻田。</span></span><span style=\"font-size: 18px;\">在催芽稻种播后4-5天，用丙草胺（含安全剂）+苄嘧磺隆，兑水均匀喷雾进行土壤封闭；水稻播种后20天，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯、苄嘧磺隆等茎叶喷雾处理。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、机插秧稻田。</span><span style=\"font-size: 18px;\">在上水整地平田时，用丙草胺+苄嘧磺隆或吡嘧磺隆，兑水均匀喷施，自然落干后栽插，或在栽插后3-5天，用丙草胺、异隆•丙草胺•氯吡嘧磺隆等药剂，拌细湿土均匀撒施封闭；水稻移栽后20天左右，根据田间草情选择茎叶处理药剂，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾。</span></p><p style=\"line-height: 1.75em;\"><span style=\"color: rgb(118, 146, 60);\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、人工移栽大田。</span></span><span style=\"font-size: 18px;\">在水稻栽后5-7天，用乙·苄、异丙·苄、丁·苄、苯噻·苄等，拌潮细土或拌肥料保水撒施，药后保水3-5天。水稻移栽后25天左右，根据田间草情选择茎叶处理药剂，防禾本科杂草可选用五氟磺草胺、恶唑酰草胺、氰氟草酯等，防阔叶类杂草可选用灭草松、2甲4氯等茎叶喷雾处理。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; background-color: rgb(118, 146, 60); color: rgb(255, 255, 255);\">三、确保措施到位</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为普及水稻田杂草综合防除技术，提高除草技术到位率，保障水稻绿色高效优质生产，各地要精心部署、扎实推进，确保各项措施落实到位。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、强化宣传发动。</span><span style=\"font-size: 18px;\">要充分利用电视、广播、报纸、短信、微信等媒体多渠道宣传稻田除草的重要性和稻田除草关键技术，组织基层农技人员、村组干部发放明白纸等技术资料，贯彻稻田杂草综合防除理念，动员广大农民和种田大户科学除草，特别是抓好土壤封闭处理。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、强化服务指导。</span><span style=\"font-size: 18px;\">水稻田除草时间紧、技术要求高，各地要组织植保技术人员深入基层农药经营门店、深入田间地头，培训指导基层农技人员、农药经营人员和广大农户，提高技术到位率。针对稻田不同草相和除草剂特点，指导农民掌握新型除草剂使用技术和注意事项，适期施药，严防药害。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、强化示范引领。</span><span style=\"font-size: 18px;\">结合水稻田绿色防控示范区，各县（市、区）要建立稻田草害综合防除示范区，展示农业措施的生态控草效果，示范化学除草新产品、新技术，组织开展病虫害专业化防治服务组织、农业合作社、种田大户和农民现场观摩，提高稻田杂草综合防除技术覆盖率和新技术推广积极性。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px; color: rgb(118, 146, 60);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、强化检查评价。</span><span style=\"font-size: 18px;\">各地要加强对新除草剂试验、示范区建立和水稻田大面积除草工作的服务指导，结合绿色防控示范区建设要求，组织开展交叉检查和工作督查，及时总结经验，扩大水稻田杂草防除新技术、新产品的辐射效果。</span></p></p>', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20190621/04d67a6f7f9b4125882d0f1ab2123385.JPG', 4, NULL, NULL, NULL, 1, NULL, NULL, 0, 0, 0, 0);
INSERT INTO `t_news` VALUES (55, '【江苏农技】水稻栽插进入高峰期 抓好一栽就管刻不容缓', '【江苏农技】水稻栽插进入高峰期 抓好一栽就管刻不容缓\r\n江苏省农技推广总站\r\n2019-06-18 07:00:13  收藏:38  阅读数:4308\r\n\r\n 今年夏熟作物收获腾茬进度总体较快，为水稻适龄适期栽插争得了主动。当前全省水稻进入栽插高峰期，各地要抓住天气总体晴好的有利时机，统筹协调，及时做好稻田耕整，确保水稻适期高质量栽插。同时加强移栽技术指导，坚持一栽就管，促进秧苗早发快长，为构建高质量群体打下良好基础。\r\n\r\n\r\n\r\n1、精细高效整田，确保栽插质量\r\n\r\n 夏熟作物收获腾茬后，要抓住晴好天气间隙，及时耕翻整田，力争收获一块耕整一块。秸秆还田田块要采用大功率耕整机械，确保秸秆翻埋深度较为一致、草泥混合较为均匀。大田整地做到田平、泥软、肥匀，全田高低差不超过3厘米，田面“整洁”无杂草杂物，无浮渣等，表土上细下粗，上烂下实。大田整平后、秧苗栽插前，要使田土适度沉实，沙质土沉实1天左右，壤土沉实1～2天，粘土沉实2～3天，待泥浆沉淀、表土软硬适中后及时栽插。\r\n\r\n<img src=\"https://object.jsnjy.net.cn/OSS/20190617/96e1c7443d19478eb5f53e3c1fb5e65a.png\" width=\"100%\" />\r\n\r\n\r\n\r\n2、适期适龄移栽，夯实壮苗基础\r\n\r\n 要按照“宁可田等秧、不可秧等田”的原则衔接好茬口，根据适宜移栽秧龄大小，科学安排移栽期，确保做到适龄适期移栽。毯苗机插秧一般在3～4叶期移栽，秧龄15～20天；常规手栽中苗一般在5～6叶期移栽，秧龄30-35天；抛秧一般在4～5叶期抛栽，秧龄20～25天。对于茬口衔接紧，易出现超秧龄的秧苗要通过旱育旱管、适量喷施多效唑等措施延缓其生育进程，最大限度减少超秧龄移栽。\r\n\r\n\r\n\r\n3、因时因苗制宜，插足基本苗数\r\n\r\n 根据秧苗素质、栽插时期、品种分蘖特性等，合理调整栽插基本苗。机插常规粳稻一般亩插1.7～2.0万穴，每穴4苗左右，基本苗7～8万；杂交粳稻一般亩插1.5～1.7万穴，每穴2苗左右，基本苗4万左右；手栽常规粳稻行距7.5～8寸，株距4.5-5寸，亩基本茎蘖苗9～10万，丰产方、高产田行距8～8.5寸，株距4寸，亩基本茎蘖苗8～9万；手栽杂交稻行距8.5～9寸，亩基本茎蘖苗7～9万，丰产方、高产田行距9寸左右，亩基本茎蘖苗7～8万；抛栽稻一般亩抛1.8～2万穴，基本苗7万左右，做到浅水高抛、匀抛。适期栽插且分蘖性较强的品种基本苗可适当减少，栽插期延迟且分蘖性弱的品种基本苗要相应增加。\r\n\r\n\r\n\r\n4、加强一栽就管，促进早发快长\r\n\r\n 要根据稻作方式，因苗、因时、因地分类管理，切实抓好一栽就管工作。\r\n\r\n 水浆管理上：\r\n\r\n\r\n\r\n 机插稻、抛秧稻活棵立苗期间歇湿润灌溉，立苗后薄水间隙灌溉，及时露田通气促进扎根；手栽稻从移栽到新生1张叶片的返青期灌薄水护苗，分蘖期浅水勤灌，促进多发根、快分蘖。秸秆还田田块，要适时脱水露田通气，增加土壤含氧量，促进秸秆腐熟和根系发育，防止土壤有毒物质过多造成僵苗。\r\n\r\n 肥料施用上：\r\n\r\n\r\n\r\n 要施足基肥，活棵后早施分蘖肥，建议一次施用。一般在移栽后5-7天，机插稻每亩施尿素15公斤左右，抛栽稻、手栽稻每亩施尿素10公斤左右。对秸秆还田量大的田块，适当增施尿素3～5公斤；对于基肥不足的田块在施分蘖肥后1周酌苗情补施平衡肥，一般亩施尿素3～5公斤。\r\n\r\n 病虫草害防治上：\r\n\r\n 要根据植保部门的预测预报，及时做好病虫害防治，同时认真抓好大田期化除工作，不同稻作方式田块的用药时间、用药品种要严格按照植保部门的配方和技术要求操作。对于因推迟移栽，秧苗素质下降，出现僵苗的田块，应根据具体情况对症下药，采取相应的肥、药、水管理调控措施，尽快恢复生长。\r\n\r\n 此外，各地要加强直播稻生产技术指导。对采用直播的农户要指导其选择熟期相对较早、抗倒能力较强、分蘖力中等、穗型中等偏大品种。一般每亩用种量5公斤左右，根据品种特性和播种时期，相应调整用种量，实现早苗、全苗、匀苗、壮苗。要选择对路药剂，做好杂草封杀。田间管理上，１叶１心期要施好断奶肥（一般每亩施尿素５公斤），４～5叶期要施好促蘖肥（一般每亩施尿素10公斤）；出苗至3叶期前要保持田块湿润，3叶期至够苗期，浅水勤灌，促蘖促长。', NULL, NULL, 'https://object.jsnjy.net.cn/OSS/20180530/0a4fccc1d55a4e199d20002f50ae7ccf.png', 13, NULL, NULL, NULL, 1, NULL, NULL, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for t_pest
-- ----------------------------
DROP TABLE IF EXISTS `t_pest`;
CREATE TABLE `t_pest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pest_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `breed` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品种',
  `area` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发生区域',
  `Introduction` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `month` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关注月份',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pest
-- ----------------------------
INSERT INTO `t_pest` VALUES (1, '小麦赤霉病', '小麦', '南京、无锡、徐州', '小麦麦', '四月、五月、六月', '小麦小麦小麦麦', 0);
INSERT INTO `t_pest` VALUES (2, '小杰', '小狗', '北京', NULL, '七月', '何杰\r\n', 0);
INSERT INTO `t_pest` VALUES (3, NULL, NULL, '天津', NULL, '七月', NULL, 0);

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `user_id` int(32) NOT NULL COMMENT '用户id,即提问者的id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '提问时间',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '哪个地区的提问',
  `img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `sort` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题分类',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提问地点',
  `is_delete` int(4) NULL DEFAULT 0 COMMENT '0表示不删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES (1, 1, '我的城市下雨了,你呢？', '2020-05-12 10:31:54', 1, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/2932400a-eaea-4312-a016-a0b4dcb55db7.jpg?Expires=1874884649&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=j7lph6KVP6OjhkVQOE0JMEl%2FgQs%3D', '园艺', '这是地址', 1);
INSERT INTO `t_question` VALUES (2, 1, '稻种要泡多长时间可以种植', '2019-05-15 00:00:00', 1, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (3, 1, '种植怎么种', '2019-05-15 10:22:06', 1, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (4, 1, '请大佬教我养猪', '2019-05-15 11:13:41', 2, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (5, 1, '我不想当农民可以吗', '2019-05-16 13:11:57', 2, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (12, 1, '何杰想回家放狗', '2019-05-16 13:12:00', 18, NULL, '粮经', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (13, 1, '今天会下雨嘛？', '2019-05-17 08:35:51', 3, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (30, 4, '这个能吃嘛？', '2019-05-22 09:53:33', 18, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (37, 3, '今天会下雨嘛？', '2019-05-23 15:22:09', 4, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (46, 3, '稻种在哪里买', '2019-05-24 14:57:37', 6, NULL, '粮经', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (47, 3, '小螃蟹的供求地', '2019-05-25 11:44:54', 5, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (48, 4, '然后快速养猪', '2019-05-27 08:09:23', 4, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (50, 4, '这种树怎么养', '2019-05-27 08:12:56', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (51, 3, '小狗小狗小狗', '2019-05-27 08:14:04', NULL, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (52, 4, '小龙虾上榜入侵物种你怎么看', '2019-05-27 08:15:38', NULL, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (53, 4, '养牡丹', '2019-05-27 10:31:42', NULL, NULL, '园艺', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (54, 3, 'dgdgfdgf', '2019-05-27 13:20:06', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (55, 1, '先生何许人也', '2019-05-27 14:11:58', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (57, 4, '百合要这样呵护', '2019-05-27 14:32:21', NULL, NULL, '园艺', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (71, 1, '先生何许人也', '2019-05-30 15:25:56', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (72, 1, '这是一个问题', '2019-05-30 16:45:52', NULL, NULL, '粮食', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (73, 1, '明天是否会一雨', '2019-05-30 16:46:36', NULL, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/f6790beb-089c-4a18-b347-01caca35705a.jpg?Expires=1874565997&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=8OzYFQU4YIGzNSF%2FS5GIP0EcOTU%3D', '粮食', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (74, 1, '先生何许人也', '2019-05-30 16:49:38', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (75, 17, '我冯杰帅不帅？', '2019-05-31 12:46:25', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (76, 14, '你好', '2019-06-03 08:00:58', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (77, 1, '先生何许人也', '2019-06-03 08:57:20', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (78, 1, '先生何许人也', '2019-06-03 09:01:38', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (79, 3, '玉米', '2019-06-03 09:31:00', NULL, NULL, '粮经', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (80, 17, '啊大', '2019-06-03 09:38:30', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (81, 2, '伪爱国发我个v热爱和被爱情', '2019-06-03 10:55:21', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (82, 2, '爱无关热爱beat我拜托你任务', '2019-06-03 11:11:25', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (83, 2, '我国West和吉他额就我一人睡觉呢独特感受热狗苏维埃', '2019-06-03 11:12:32', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (84, 2, '34他发热我国var恶霸会突然十八岁', '2019-06-03 11:28:28', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (85, 2, 'VgafeZNtgszbdfvsbhsrgjnrty', '2019-06-03 11:29:21', NULL, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (87, 48, 'sadgsfgfsdhsdfbhsghbrt5yjujkutuiki', '2019-06-03 14:37:13', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (88, 48, '的收入是天津人图节目页面可以提，ui特瑞特火热没有那样如没有，库，tetntmr', '2019-06-03 14:37:29', NULL, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (89, 48, 'wefarehyerj6ryemt说得好口语让客人发表观点你', '2019-06-03 14:37:43', NULL, NULL, '农机', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (90, 1, '先生何许人也', '2019-06-03 15:08:44', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (91, 1, '先生何许人也', '2019-06-03 15:10:22', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (92, 17, '为什么水果不降价？', '2019-06-03 15:11:03', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (93, 48, '为其废弃物让各位绘图软件你也让', '2019-06-03 15:23:39', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (94, 48, 'wqefwergtrehryemeytn wrgt', '2019-06-04 09:53:19', NULL, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (95, 48, '我不顾他人你不同意当年他们依然对被告人分别房贷首付法国本土你有吗', '2019-06-04 09:53:36', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (96, 48, '却无法犬瘟热不会突然你还有他的般若不同人二百不敢让你他会你们还没发地方干部广东华南虎方面今天或多个官方', '2019-06-04 10:18:23', NULL, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (97, 48, '全微分如果v你不要tenets我', '2019-06-04 10:54:55', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (98, 1, '先生何许人也', '2019-06-04 17:16:10', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (99, 1, '先生何许人也', '2019-06-04 17:18:12', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (100, 1, '先生何许人也', '2019-06-04 22:23:14', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (101, 14, '李宗盛', '2019-06-05 08:11:35', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (102, 14, '赵雷', '2019-06-05 08:26:40', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (103, 1, '先生何许人也', '2019-06-05 09:34:14', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (104, 1, '先生何许人也', '2019-06-05 09:45:50', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (105, 1, '先生何许人也', '2019-06-05 09:48:23', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (106, 1, '先生何许人也', '2019-06-06 10:10:13', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (107, 1, '先生何许人也', '2019-06-06 11:19:17', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (108, 14, '123456', '2019-06-08 17:52:29', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (109, 14, '123456', '2019-06-08 17:52:29', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (110, 14, '123456', '2019-06-08 17:52:30', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (111, 14, '123456', '2019-06-08 17:52:30', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (112, 14, '123456', '2019-06-08 17:52:30', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (113, 14, '1', '2019-06-08 18:07:36', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (114, 2, '32', '2019-06-10 10:19:13', NULL, NULL, '粮经', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (115, 1, '先生何许人也', '2019-06-10 11:52:00', NULL, NULL, '动物', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (116, 1, '先生何许人也', '2019-06-10 14:19:04', NULL, NULL, '海鲜', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (117, 17, '带女朋友去吃饭遇到流氓向女朋友吹口哨该怎么办。你若是年轻就应该提刀去砍他，若是过了那个年纪，就应该努力挣钱，带她去高档点的餐厅吃饭，哪里没有流氓。', '2019-06-10 14:47:27', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (118, 1, '先生何许人也', '2019-06-11 10:47:07', NULL, NULL, '水果', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (119, 4, '养花\n百合\n怎么养护', '2019-06-12 09:05:25', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (123, 3, '啦啦啦啦', '2019-06-12 09:20:20', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (124, 3, 'dfdsfdsfd', '2019-06-13 07:55:57', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (125, 3, 'dfdsfdsfds', '2019-06-13 07:57:06', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (126, 1, '先生何许人也', '2019-06-13 09:31:50', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (127, 48, 'undefined', '2019-06-13 11:10:47', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (128, 48, '奥迪车撒旦v', '2019-06-13 11:12:50', NULL, NULL, '农机', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (129, 48, 'erfgrwegrwehet4w', '2019-06-13 13:20:09', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (135, 2, 'Jay', '2019-06-13 15:58:03', NULL, NULL, '其他', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (136, 1, '先生何许人也', '2019-06-13 16:47:03', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (137, 1, '先生何许人也', '2019-06-13 17:23:31', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (138, 1, '测试内容', '2019-06-13 22:31:01', NULL, NULL, '其他', '苏州', 1);
INSERT INTO `t_question` VALUES (139, 48, 'efdqegqrerwvtewbvwt4gb4tbh', '2019-06-14 09:18:23', NULL, NULL, '粮经', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (140, 48, '不知道该问啥', '2019-06-14 09:19:08', NULL, NULL, '其他', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (141, 48, '就随便问问', '2019-06-14 09:19:55', NULL, NULL, '农机', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (142, 48, '1日3规范跳舞呢摆脱了我是v车千万缕问题呢', '2019-06-14 09:20:39', NULL, NULL, '畜牧', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (143, 48, '现在修剪桃树无用侧枝怎样操作？', '2019-06-14 09:22:51', NULL, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (144, 48, '水稻第一次打药水可以加除草药吗？', '2019-06-14 09:24:29', NULL, NULL, '农机', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (145, 1, '先生何许人也', '2019-06-14 09:25:28', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (146, 48, '香瓜发病，如图所示，具体什么原因，需要如何用？谢谢', '2019-06-14 09:26:22', NULL, NULL, '园艺', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (147, 1, '先生何许人也', '2019-06-14 09:57:13', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (148, 48, '这鱼什么病，该如何治？？', '2019-06-14 10:06:36', NULL, NULL, '农机', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (149, 1, '先生何许人也', '2019-06-14 10:08:35', NULL, NULL, NULL, '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (150, 3, 'lalall', '2019-06-16 15:41:16', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (151, 3, '大幅度发', '2019-06-16 15:45:54', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (152, 3, '4erwerewr', '2019-06-16 15:51:02', NULL, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (153, 2, 'test', '2019-06-16 16:22:27', NULL, NULL, '', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (154, 2, 'test', '2019-06-16 16:22:33', NULL, NULL, '', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (155, 2, 'test', '2019-06-16 16:23:14', NULL, NULL, '', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (156, 2, 'test', '2019-06-16 16:23:18', NULL, NULL, '', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (157, 2, 'test', '2019-06-16 16:23:21', NULL, NULL, '', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (158, 2, 'test', '2019-06-16 16:23:25', NULL, NULL, '', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (159, 3, 'dfadsfdsf', '2019-06-17 08:18:28', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (160, 3, '好几个号结构化', '2019-06-17 08:31:51', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (161, 48, 'erhtrsnjyrhbwetsnbtrsene', '2019-06-17 08:40:01', NULL, NULL, '粮经', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (162, 3, '地方大师傅', '2019-06-17 08:40:16', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (163, 3, '', '2019-06-17 08:40:32', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (164, 1, '地', '2019-06-17 08:41:27', NULL, NULL, '分类', '圭', 1);
INSERT INTO `t_question` VALUES (165, 4, '养奶牛可以吗', '2019-06-17 09:11:46', NULL, NULL, '畜牧', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (166, 2, 'qwe', '2019-06-17 09:15:18', NULL, NULL, '粮经', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (167, 3, '种大豆', '2019-06-17 09:21:10', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (168, 4, '花匠', '2019-06-17 09:51:51', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (169, 3, 'dfad', '2019-06-17 10:00:45', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (170, 48, 'Jay', '2019-06-17 10:56:35', NULL, NULL, '水产', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (171, 48, '玉米下部发黄枯萎是怎么回事，现在已经把发病的玉米苗清除了，毛病有发展的趋势。', '2019-06-17 11:50:34', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (172, 17, '提问', '2019-06-17 13:06:34', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (173, 17, '提问1', '2019-06-17 13:11:18', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (174, 48, '猪要怎么养？？？？？？', '2019-06-17 13:50:23', NULL, NULL, '畜禽', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (175, 17, '这个就不删除了吧', '2019-06-17 15:21:19', NULL, NULL, '水产', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (180, 3, '的说法的范德萨范德萨发大水发的发生法第三方第三方的股份维特阿特特温热无法噶多发点所热无热无', '2019-06-18 12:25:42', NULL, NULL, 'undefined', '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_question` VALUES (182, 48, '为日后个人问题你和人', '2019-06-18 13:32:35', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (183, 4, '这个地方适合养什么动物', '2019-06-19 08:19:55', NULL, NULL, '畜牧', '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_question` VALUES (196, 14, '312456789', '2019-06-21 17:16:13', NULL, NULL, '34567', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (197, 3, 'xcx', '2019-06-23 13:33:52', NULL, NULL, 'undefined', '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_question` VALUES (198, 3, 'cvxcvcxz', '2019-06-23 13:52:13', NULL, NULL, '畜牧', '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_question` VALUES (199, 3, 'dfsfd', '2019-06-23 13:52:41', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (203, 3, 'dsfdsfd', '2019-06-23 13:59:58', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (205, 4, '养猪业是我国农业中的重要产业。对保障肉食品安全供应有重要作用，我国养猪业正由传统养猪业向现代养猪业转变，无论是养殖模式、区域布局还是生产方式、生产能力都在发生显著变化。存在自主创新能力弱、食品安全问题突出、劳动力成本增高、原种依赖进口、疫病严重、环保压力大、饲料资源匮乏等诸多挑战', '2019-06-24 08:50:23', NULL, NULL, '畜牧', '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_question` VALUES (207, 2, '要放暑假了，该怎么玩?', '2019-06-24 09:42:44', NULL, NULL, '粮经', '江苏省南京市', 1);
INSERT INTO `t_question` VALUES (208, 3, 'sdafdsfds', '2019-06-24 14:20:37', NULL, NULL, '园艺', '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_question` VALUES (209, 14, '我的花', '2019-06-24 14:30:58', NULL, NULL, '园艺', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (210, 14, '图片', '2019-06-24 17:41:01', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (211, 14, '图片,发布图片了，哇哦,发布图片了，哇哦', '2019-06-24 17:41:08', NULL, NULL, '粮经', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (212, 14, '发布图片了，哇哦,发布图片了，哇哦,发布图片了，哇哦,发布图片了，哇哦', '2019-06-24 17:43:05', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (213, 14, '这是个测试', '2019-06-24 19:26:48', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (214, 17, '提问一下，马上删除', '2019-06-25 08:39:50', NULL, NULL, '其他', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (215, 1, '何罪之有', '2019-06-25 10:13:29', NULL, NULL, '农机', '江苏省南京市栖霞区', 1);
INSERT INTO `t_question` VALUES (216, 3, '这是什么鸡蛋？', '2019-06-25 10:28:02', NULL, NULL, '其他', '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_question` VALUES (217, 3, '这是什么鸡蛋啊', '2019-06-25 10:28:51', NULL, NULL, '其他', '江苏省南京市玄武区北京东路41号', 1);
INSERT INTO `t_question` VALUES (218, 15, 'ლ(′◉❥◉｀ლ)', '2019-06-25 11:47:00', NULL, NULL, '水产', '江苏省南京市栖霞区', 0);
INSERT INTO `t_question` VALUES (219, 15, '天天都有好心情', '2019-06-25 14:08:21', NULL, NULL, '', NULL, 0);
INSERT INTO `t_question` VALUES (220, 15, '多发几条', '2019-06-25 14:11:24', NULL, NULL, '', NULL, 0);
INSERT INTO `t_question` VALUES (221, 17, '提问', '2019-06-25 14:25:06', NULL, NULL, '水产', NULL, 1);
INSERT INTO `t_question` VALUES (222, 14, '图片', '2019-06-25 14:37:11', NULL, NULL, '其他', NULL, 1);
INSERT INTO `t_question` VALUES (223, 15, '', '2019-06-25 14:39:12', NULL, NULL, 'undefined', NULL, 0);
INSERT INTO `t_question` VALUES (224, 14, '123456', '2019-06-25 14:58:17', NULL, NULL, '其他', NULL, 1);
INSERT INTO `t_question` VALUES (225, 15, '文字', '2019-06-25 14:59:56', NULL, NULL, '', NULL, 0);
INSERT INTO `t_question` VALUES (226, 3, '各位老师：询问大豆化学除草时能否再添加防虫的农药，如果可以的话添加什么农药效果好，时效期管的长。各位老师：询问大豆化学除草时能否再添加防虫的农药，如果可以的话添加什么农药效果好，时效期管的长。', '2019-06-25 15:01:27', NULL, NULL, 'undefined', 'undefined', 1);
INSERT INTO `t_question` VALUES (227, 3, '各位老师：询问大豆化学除草时能否再添加防虫的农药，如果可以的话添加什么农药效果好，时效期管的长。各位老师：询问大豆化学除草时能否再添加防虫的农药，如果可以的话添加什么农药效果好，时效期管的长。', '2019-06-25 15:01:53', NULL, NULL, 'undefined', 'undefined', 0);
INSERT INTO `t_question` VALUES (228, 3, '分隔符', '2019-06-25 15:07:41', NULL, NULL, 'undefined', 'undefined', 1);
INSERT INTO `t_question` VALUES (229, 3, '这是鸡蛋', '2019-06-25 15:13:37', NULL, NULL, '园艺', '江苏省南京市玄武区北京东路41号', 0);
INSERT INTO `t_question` VALUES (230, 2, '杰伦杰伦杰伦杰伦杰伦杰伦就垃圾了杰伦 杰伦就了建立了', '2019-06-25 15:33:34', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (231, 17, '西瓜很贵吗', '2019-06-25 16:56:21', NULL, NULL, '其他', NULL, 1);
INSERT INTO `t_question` VALUES (232, 17, '鱼', '2019-06-25 17:10:45', NULL, NULL, '水产', NULL, 1);
INSERT INTO `t_question` VALUES (233, 17, '发布提问', '2019-06-25 17:17:32', NULL, NULL, '其他', NULL, 1);
INSERT INTO `t_question` VALUES (234, 2, 'Jay', '2019-06-26 00:33:26', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (235, 15, '你好', '2019-06-26 08:27:26', NULL, NULL, '', NULL, 0);
INSERT INTO `t_question` VALUES (236, 98, '大幅度发', '2019-06-26 16:31:49', NULL, NULL, 'undefined', 'undefined', 1);
INSERT INTO `t_question` VALUES (237, 98, '程序才', '2019-06-26 16:32:31', NULL, NULL, 'undefined', 'undefined', 1);
INSERT INTO `t_question` VALUES (238, 98, '养猪怎么样收益咋样', '2020-05-13 16:33:37', NULL, NULL, '畜牧', '江苏省南京市栖霞区文枢东路1号', 1);
INSERT INTO `t_question` VALUES (239, 1, '先生何许人也', '2020-05-12 10:31:51', NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_question` VALUES (240, 3, 'ver good', '2020-05-12 11:00:26', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (241, 107, '强烈推荐', '2020-05-07 13:52:45', NULL, NULL, '粮经', '江苏省南京市', 0);
INSERT INTO `t_question` VALUES (242, 107, '不错', '2020-05-13 17:02:07', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (243, 107, '很好呀', '2020-05-13 17:02:45', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (244, 107, '哈哈', '2020-05-13 17:07:49', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (245, 107, '小朋友你是不是有很多问号', '2020-05-13 17:29:05', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (246, 107, '987654', '2020-05-13 22:14:32', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (247, 107, '地地地地地', '2020-05-13 22:15:51', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (248, 107, '日日日日日日日日jj', '2020-05-13 22:19:43', NULL, NULL, '其他', '正在定位...', 0);
INSERT INTO `t_question` VALUES (249, 107, '土土土土土土土地', '2020-05-13 23:31:46', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (250, 107, '测试数据', '2020-05-13 23:33:52', NULL, NULL, '粮经', '南京', 0);
INSERT INTO `t_question` VALUES (251, 98, '测试数据', '2020-05-13 23:36:12', NULL, NULL, '粮经', '南京', 0);
INSERT INTO `t_question` VALUES (252, 98, '测试数据', '2020-05-13 23:36:15', NULL, NULL, '粮经', '南京', 0);
INSERT INTO `t_question` VALUES (253, 107, '不错呀哈哈', '2020-05-14 09:48:18', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (254, 107, '不错呀哈哈', '2020-05-14 09:48:26', NULL, NULL, '粮经', '正在定位...', 0);
INSERT INTO `t_question` VALUES (255, 107, '不错呀哈哈', '2020-05-14 09:48:31', NULL, NULL, '粮经', '正在定位...', 0);

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `user_id` int(32) NOT NULL COMMENT '回复者的id',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '回复提问的id',
  `exchange_id` int(11) NULL DEFAULT NULL COMMENT '回复交流的id',
  `is_exchange_reply` int(11) NULL DEFAULT NULL COMMENT '0表示是快速提问的回复，1表示交流的回复',
  `reply_time` datetime(0) NULL DEFAULT NULL COMMENT '回复时间',
  `like` int(11) NULL DEFAULT 0 COMMENT '回复的点赞数量',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除回复，0表示不删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 313 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES (1, '要很久很久才可以种植', 2, 2, NULL, 0, '2019-05-15 08:56:39', 10, 1);
INSERT INTO `t_reply` VALUES (2, '没错', 3, 2, NULL, 0, '2019-05-15 08:56:44', 1, 0);
INSERT INTO `t_reply` VALUES (3, '把树枝砍', 1, NULL, 1, 0, '2019-05-15 10:23:28', 23, 0);
INSERT INTO `t_reply` VALUES (4, '烧了', 2, 1, NULL, 0, '2019-05-15 14:20:19', 0, 0);
INSERT INTO `t_reply` VALUES (5, '落花生', 1, 1, NULL, 0, '2019-05-15 15:11:24', 12, 0);
INSERT INTO `t_reply` VALUES (17, '真好', 1, 2, NULL, 0, '2019-05-16 09:35:23', 0, 0);
INSERT INTO `t_reply` VALUES (21, '看天气情况', 1, 5, NULL, 0, '2019-05-20 14:23:27', 0, 0);
INSERT INTO `t_reply` VALUES (22, '嗯嗯，天气很好', 1, 2, NULL, 0, '2019-05-24 11:00:38', 0, 0);
INSERT INTO `t_reply` VALUES (23, '不知道呢，你问别人吧', 2, NULL, 1, NULL, '2019-05-28 21:01:30', 0, 0);
INSERT INTO `t_reply` VALUES (26, '哈哈，我也想知道', 1, NULL, 1, NULL, '2019-05-28 21:01:34', 0, 0);
INSERT INTO `t_reply` VALUES (27, '同问啊', 1, NULL, 1, NULL, '2019-05-28 21:01:36', 0, 0);
INSERT INTO `t_reply` VALUES (28, NULL, 2, NULL, 6, NULL, '2019-05-28 21:01:39', 0, 0);
INSERT INTO `t_reply` VALUES (29, NULL, 0, NULL, 6, NULL, '2019-05-28 21:01:42', 0, 0);
INSERT INTO `t_reply` VALUES (30, '想象丰富', 3, 52, NULL, NULL, '2019-05-27 08:44:05', 0, 0);
INSERT INTO `t_reply` VALUES (31, '试试药物治疗', 3, 1, NULL, NULL, '2019-05-27 10:04:45', 0, 1);
INSERT INTO `t_reply` VALUES (32, '小猫小猫', 3, 51, NULL, NULL, '2019-05-27 11:44:11', 0, 0);
INSERT INTO `t_reply` VALUES (33, '开心就好', 3, 5, NULL, NULL, '2019-05-27 12:22:38', 0, 0);
INSERT INTO `t_reply` VALUES (34, '多浇水', 3, 1, NULL, NULL, '2019-05-27 15:57:10', 0, 0);
INSERT INTO `t_reply` VALUES (36, '会', 3, 13, NULL, NULL, '2019-05-28 08:12:15', 0, 0);
INSERT INTO `t_reply` VALUES (40, '嗯嗯', 3, NULL, 5, 1, '2019-05-28 11:50:12', 0, 0);
INSERT INTO `t_reply` VALUES (41, '说得对，鼓掌', 3, NULL, 19, 1, '2019-05-28 11:56:59', 0, 0);
INSERT INTO `t_reply` VALUES (42, '万里晴空', 3, NULL, 5, 1, '2019-05-28 11:57:45', 0, 0);
INSERT INTO `t_reply` VALUES (43, '不知道', 4, 3, NULL, NULL, '2019-05-28 12:55:36', 0, 0);
INSERT INTO `t_reply` VALUES (45, '不好吃！', 1, 32, NULL, NULL, '2019-05-28 14:51:34', 0, 0);
INSERT INTO `t_reply` VALUES (46, '思归', 3, NULL, 21, 1, '2019-05-29 08:16:54', 0, 0);
INSERT INTO `t_reply` VALUES (47, '嗯嗯', 3, NULL, 7, 1, '2019-05-29 08:31:33', 0, 0);
INSERT INTO `t_reply` VALUES (48, '傻瓜', 4, 62, NULL, NULL, '2019-05-29 08:33:07', 0, 0);
INSERT INTO `t_reply` VALUES (49, '不能', 1, 35, NULL, NULL, '2019-05-29 08:49:23', 0, 0);
INSERT INTO `t_reply` VALUES (50, '都是人才', 3, NULL, 1, 1, '2019-05-29 09:06:01', 0, 0);
INSERT INTO `t_reply` VALUES (56, '31', 1, 31, NULL, NULL, '2019-05-29 10:44:52', 0, 0);
INSERT INTO `t_reply` VALUES (57, '321313213', 1, 31, NULL, NULL, '2019-05-29 10:45:03', 0, 0);
INSERT INTO `t_reply` VALUES (58, '21331231', 1, 31, NULL, NULL, '2019-05-29 10:45:06', 0, 0);
INSERT INTO `t_reply` VALUES (59, '???', 1, 12, NULL, NULL, '2019-05-29 10:47:39', 0, 0);
INSERT INTO `t_reply` VALUES (60, '罚款了防腐剂卡拉风景区考虑放弃肌肤看起来', 1, 1, NULL, NULL, '2019-05-29 10:56:18', 0, 1);
INSERT INTO `t_reply` VALUES (61, '杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰杰', 1, 1, NULL, NULL, '2019-05-29 10:56:40', 0, 1);
INSERT INTO `t_reply` VALUES (62, '我不知道', 1, NULL, 1, 1, '2019-05-29 11:07:06', 0, 0);
INSERT INTO `t_reply` VALUES (63, '我也不知道', 1, NULL, 1, 1, '2019-05-29 11:08:04', 0, 0);
INSERT INTO `t_reply` VALUES (64, '不知道啊', 1, 1, NULL, NULL, '2019-05-29 11:08:42', 0, 1);
INSERT INTO `t_reply` VALUES (65, '今天下雨啦', 3, NULL, 5, 1, '2019-05-30 10:38:29', 0, 0);
INSERT INTO `t_reply` VALUES (66, '111', 3, 1, NULL, NULL, '2019-05-30 12:13:37', 0, 1);
INSERT INTO `t_reply` VALUES (67, '1111', 3, 1, NULL, NULL, '2019-05-30 12:13:53', 0, 1);
INSERT INTO `t_reply` VALUES (68, '????????', 1, 53, NULL, NULL, '2019-05-30 12:23:36', 0, 0);
INSERT INTO `t_reply` VALUES (69, '不知道啊', 1, NULL, 1, 1, '2019-05-30 12:24:46', 0, 0);
INSERT INTO `t_reply` VALUES (70, '00000', 3, NULL, 47, 1, '2019-05-30 15:17:34', 0, 0);
INSERT INTO `t_reply` VALUES (71, '', 1, 1, NULL, NULL, '2019-05-31 09:22:29', 0, 0);
INSERT INTO `t_reply` VALUES (72, 'qwefeqwf', 1, 1, NULL, NULL, '2019-05-31 09:22:49', 0, 0);
INSERT INTO `t_reply` VALUES (73, '将羊群结构进行优化能使羊群结构更加科学', 1, NULL, 5, 1, '2019-05-31 09:32:35', 0, 0);
INSERT INTO `t_reply` VALUES (74, '的发热隔热隔热赫伯特你和认同你有特定他的发表v个人brew', 1, NULL, 5, 1, '2019-05-31 09:32:54', 0, 0);
INSERT INTO `t_reply` VALUES (75, '伴随我国经济的快速发展，人们的环保微软法国网球俄国人去微软矮三分', 1, NULL, 5, 1, '2019-05-31 09:35:20', 0, 0);
INSERT INTO `t_reply` VALUES (76, '伴随我国经济的快速发展，人们的环保微软法国网球俄国人去微软矮三分', 1, NULL, 1, 1, '2019-05-31 09:36:23', 0, 0);
INSERT INTO `t_reply` VALUES (77, 'OK', 3, 4, NULL, NULL, '2019-06-01 09:43:59', 0, 0);
INSERT INTO `t_reply` VALUES (78, 'what', 2, 1, NULL, NULL, '2019-06-02 12:24:56', 0, 0);
INSERT INTO `t_reply` VALUES (79, '对对对，你这个小麦品种是真滴好', 2, NULL, 7, 1, '2019-06-02 16:13:00', 0, 0);
INSERT INTO `t_reply` VALUES (80, '2313', 2, 1, NULL, NULL, '2019-06-03 09:26:11', 0, 0);
INSERT INTO `t_reply` VALUES (81, '3123', 2, NULL, 5, 1, '2019-06-03 09:26:21', 0, 0);
INSERT INTO `t_reply` VALUES (82, '阿尔法为爱国', 2, 81, NULL, NULL, '2019-06-03 10:56:01', 0, 0);
INSERT INTO `t_reply` VALUES (83, 'HAHA', 2, 1, NULL, NULL, '2019-06-03 11:38:13', 0, 1);
INSERT INTO `t_reply` VALUES (84, 'dsavfrabsrtnsbgbvfv', 33, NULL, 1, 1, '2019-06-03 14:12:40', 0, 0);
INSERT INTO `t_reply` VALUES (85, '哈哈哈', 33, 88, NULL, NULL, '2019-06-03 14:37:58', 0, 0);
INSERT INTO `t_reply` VALUES (86, '哈哈哈', 33, 89, NULL, NULL, '2019-06-03 14:38:11', 0, 0);
INSERT INTO `t_reply` VALUES (87, '哈哈哈哈哈哈哈', 33, 89, NULL, NULL, '2019-06-03 14:38:17', 0, 0);
INSERT INTO `t_reply` VALUES (88, '嗯嗯', 3, 37, NULL, NULL, '2019-06-03 14:47:54', 0, 0);
INSERT INTO `t_reply` VALUES (89, '哈哈哈哈哈哈', 33, 93, NULL, NULL, '2019-06-03 15:23:51', 0, 0);
INSERT INTO `t_reply` VALUES (90, '哈哈哈哈', 33, 93, NULL, NULL, '2019-06-03 16:00:25', 0, 0);
INSERT INTO `t_reply` VALUES (91, '哈哈哈', 33, NULL, 57, 1, '2019-06-03 16:01:26', 0, 0);
INSERT INTO `t_reply` VALUES (92, '是小姐', 3, 91, NULL, NULL, '2019-06-03 16:19:20', 0, 0);
INSERT INTO `t_reply` VALUES (93, 'hhhh', 3, NULL, 57, 1, '2019-06-03 16:21:02', 0, 0);
INSERT INTO `t_reply` VALUES (94, '嗯嗯', 3, 53, NULL, NULL, '2019-06-03 16:26:24', 0, 0);
INSERT INTO `t_reply` VALUES (95, '1111111', 14, NULL, 93, 1, '2019-06-03 16:43:03', 0, 0);
INSERT INTO `t_reply` VALUES (96, '3124r3wr32rwf', 14, NULL, 93, 1, '2019-06-03 16:43:12', 0, 0);
INSERT INTO `t_reply` VALUES (97, '为前锋的全覆盖', 33, NULL, 61, 1, '2019-06-04 10:59:28', 0, 0);
INSERT INTO `t_reply` VALUES (98, '我全额负担亲热官方', 33, NULL, 62, 1, '2019-06-04 13:33:55', 0, 0);
INSERT INTO `t_reply` VALUES (99, 'dry热带鱼的', 33, 89, NULL, NULL, '2019-06-04 14:54:27', 0, 0);
INSERT INTO `t_reply` VALUES (100, '12334444', 33, 88, NULL, NULL, '2019-06-04 14:55:00', 0, 0);
INSERT INTO `t_reply` VALUES (101, '111', 1, NULL, 111, 1, '2019-06-05 08:58:34', 0, 0);
INSERT INTO `t_reply` VALUES (102, 'ewafaerwhtesherw', 33, 1, NULL, NULL, '2019-06-05 09:39:41', 0, 0);
INSERT INTO `t_reply` VALUES (103, 'wqeferwgw', 33, 1, NULL, NULL, '2019-06-05 09:42:07', 0, 0);
INSERT INTO `t_reply` VALUES (104, 'wqerfqwefrewg', 33, 1, NULL, NULL, '2019-06-05 09:45:20', 0, 0);
INSERT INTO `t_reply` VALUES (105, 'weqfqegrewhgwq', 33, NULL, 62, 1, '2019-06-05 09:52:54', 0, 0);
INSERT INTO `t_reply` VALUES (106, '热就好好待在家', 17, NULL, 63, 1, '2019-06-05 10:56:10', 0, 0);
INSERT INTO `t_reply` VALUES (107, 'ergrsehr', 33, NULL, 55, 1, '2019-06-05 11:21:21', 0, 0);
INSERT INTO `t_reply` VALUES (108, '还行1', 17, 1, NULL, NULL, '2019-06-05 11:36:53', 0, 0);
INSERT INTO `t_reply` VALUES (109, '', 14, NULL, 63, 1, '2019-06-05 11:50:29', 0, 0);
INSERT INTO `t_reply` VALUES (110, '', 14, NULL, 63, 1, '2019-06-05 11:51:04', 0, 0);
INSERT INTO `t_reply` VALUES (111, '', 14, NULL, 63, 1, '2019-06-05 13:47:01', 0, 0);
INSERT INTO `t_reply` VALUES (112, '123456', 14, NULL, 63, 1, '2019-06-05 13:54:03', 0, 0);
INSERT INTO `t_reply` VALUES (113, '', 14, NULL, 63, 1, '2019-06-05 13:57:09', 0, 0);
INSERT INTO `t_reply` VALUES (114, '', 14, NULL, 63, 1, '2019-06-05 13:58:29', 0, 0);
INSERT INTO `t_reply` VALUES (115, '', 14, NULL, 63, 1, '2019-06-05 13:58:56', 0, 0);
INSERT INTO `t_reply` VALUES (116, 'Dfghjk.', 14, NULL, 63, 1, '2019-06-05 14:01:57', 0, 0);
INSERT INTO `t_reply` VALUES (117, '吹空调', 14, NULL, 63, 1, '2019-06-05 14:06:17', 0, 0);
INSERT INTO `t_reply` VALUES (118, 'ertyuik', 14, NULL, 63, 1, '2019-06-05 14:19:00', 0, 0);
INSERT INTO `t_reply` VALUES (119, 'd f g h j', 14, NULL, 63, 1, '2019-06-05 14:19:51', 0, 0);
INSERT INTO `t_reply` VALUES (120, 'g v f g', 14, NULL, 63, 1, '2019-06-05 14:19:56', 0, 0);
INSERT INTO `t_reply` VALUES (121, 'grdg', 14, NULL, 63, 1, '2019-06-05 14:20:01', 0, 0);
INSERT INTO `t_reply` VALUES (122, 'rwr4wr', 14, NULL, 63, 1, '2019-06-05 14:21:44', 0, 0);
INSERT INTO `t_reply` VALUES (123, '3wrw3r', 14, NULL, 63, 1, '2019-06-05 14:21:50', 0, 0);
INSERT INTO `t_reply` VALUES (124, '13', 14, NULL, 63, 1, '2019-06-05 14:24:01', 0, 0);
INSERT INTO `t_reply` VALUES (125, '1', 14, NULL, 63, 1, '2019-06-05 14:24:34', 0, 0);
INSERT INTO `t_reply` VALUES (126, '2', 14, NULL, 63, 1, '2019-06-05 14:25:04', 0, 0);
INSERT INTO `t_reply` VALUES (127, '456', 14, NULL, 63, 1, '2019-06-05 14:25:30', 0, 0);
INSERT INTO `t_reply` VALUES (128, '1234567890', 14, NULL, 63, 1, '2019-06-08 17:21:24', 0, 0);
INSERT INTO `t_reply` VALUES (129, '1', 1, 1, NULL, NULL, '2019-06-08 17:53:07', 0, 1);
INSERT INTO `t_reply` VALUES (130, '111', 14, 113, NULL, NULL, '2019-06-08 18:07:46', 0, 0);
INSERT INTO `t_reply` VALUES (131, '', 14, 113, NULL, NULL, '2019-06-08 18:24:28', 0, 0);
INSERT INTO `t_reply` VALUES (132, '啦啦啦啦啦啦', 14, 113, NULL, NULL, '2019-06-10 07:56:50', 0, 0);
INSERT INTO `t_reply` VALUES (133, 'efqeafvqregq', 33, 107, NULL, NULL, '2019-06-10 08:47:17', 0, 1);
INSERT INTO `t_reply` VALUES (134, 'efqewqgqre', 33, 107, NULL, NULL, '2019-06-10 08:48:14', 0, 1);
INSERT INTO `t_reply` VALUES (135, 'wregqehww4h3', 33, 107, NULL, NULL, '2019-06-10 08:48:27', 0, 1);
INSERT INTO `t_reply` VALUES (136, 'wqefewrgetwh', 33, 113, NULL, NULL, '2019-06-10 09:03:09', 0, 1);
INSERT INTO `t_reply` VALUES (137, 'fgergtresbgtr', 2, 96, NULL, NULL, '2019-06-10 09:35:28', 0, 1);
INSERT INTO `t_reply` VALUES (138, 'rthsrthte', 2, NULL, 63, 1, '2019-06-10 09:38:46', 0, 1);
INSERT INTO `t_reply` VALUES (139, 'waregfwregwte', 2, NULL, 63, 1, '2019-06-10 09:41:19', 0, 1);
INSERT INTO `t_reply` VALUES (140, '3123', 2, 113, NULL, NULL, '2019-06-10 10:17:15', 0, 0);
INSERT INTO `t_reply` VALUES (141, '12233', 3, NULL, 64, 1, '2019-06-10 10:27:59', 0, 0);
INSERT INTO `t_reply` VALUES (142, '额外人发侮辱防御', 2, 110, NULL, NULL, '2019-06-10 10:38:30', 0, 1);
INSERT INTO `t_reply` VALUES (143, '为其服务器二分', 2, 110, NULL, NULL, '2019-06-10 10:42:23', 0, 1);
INSERT INTO `t_reply` VALUES (144, '惹我给他惹我和', 2, 110, NULL, NULL, '2019-06-10 10:44:24', 0, 0);
INSERT INTO `t_reply` VALUES (145, '感染后投入金额', 2, NULL, 63, 1, '2019-06-10 11:11:59', 0, 1);
INSERT INTO `t_reply` VALUES (146, '爱人和儒家二', 2, NULL, 63, 1, '2019-06-10 11:20:34', 0, 0);
INSERT INTO `t_reply` VALUES (147, '你猜呢', 17, 115, NULL, NULL, '2019-06-10 13:31:55', 0, 0);
INSERT INTO `t_reply` VALUES (148, '啦毛线索', 17, 113, NULL, NULL, '2019-06-10 13:35:26', 0, 0);
INSERT INTO `t_reply` VALUES (149, '你在想屁吃', 17, 110, NULL, NULL, '2019-06-10 13:45:12', 0, 0);
INSERT INTO `t_reply` VALUES (150, '这么多，sfskjfslkdf', 3, NULL, 64, 1, '2019-06-11 07:57:14', 0, 0);
INSERT INTO `t_reply` VALUES (151, 'w3frwg3w', 48, NULL, 71, 1, '2019-06-11 09:56:39', 0, 1);
INSERT INTO `t_reply` VALUES (152, 'wrgfrw4fg', 48, NULL, 71, 1, '2019-06-11 09:56:42', 0, 0);
INSERT INTO `t_reply` VALUES (153, '二娃官方认为霍比特人你不会波特文武百官v发', 48, 118, NULL, NULL, '2019-06-11 12:00:14', 0, 1);
INSERT INTO `t_reply` VALUES (154, 'HAHAHA', 48, NULL, 69, 1, '2019-06-12 08:56:11', 0, 0);
INSERT INTO `t_reply` VALUES (155, '31231', 2, 119, NULL, NULL, '2019-06-12 09:13:25', 0, 1);
INSERT INTO `t_reply` VALUES (156, 'wegftwerhgwt4', 48, NULL, 63, 1, '2019-06-12 09:37:29', 0, 0);
INSERT INTO `t_reply` VALUES (157, 'wqegterwhgw4t', 48, 2, NULL, NULL, '2019-06-12 11:13:22', 0, 0);
INSERT INTO `t_reply` VALUES (158, 'tytytyt', 3, NULL, 78, 1, '2019-06-12 11:23:07', 0, 1);
INSERT INTO `t_reply` VALUES (159, '1234123', 48, 117, NULL, NULL, '2019-06-12 11:32:37', 0, 0);
INSERT INTO `t_reply` VALUES (160, '12222', 3, NULL, 69, 1, '2019-06-12 11:46:25', 0, 1);
INSERT INTO `t_reply` VALUES (161, 'fajdsfjdsk', 3, 123, NULL, NULL, '2019-06-12 11:53:53', 0, 1);
INSERT INTO `t_reply` VALUES (162, 'fgfdsgfd', 3, NULL, 78, 1, '2019-06-12 11:57:33', 0, 1);
INSERT INTO `t_reply` VALUES (163, 'fdgfdgf', 3, NULL, 78, 1, '2019-06-12 12:05:12', 0, 1);
INSERT INTO `t_reply` VALUES (164, 'fdsafsfdfad', 3, 123, NULL, NULL, '2019-06-12 12:08:09', 0, 1);
INSERT INTO `t_reply` VALUES (165, '客家话', 3, NULL, 98, 1, '2019-06-12 19:15:42', 0, 1);
INSERT INTO `t_reply` VALUES (166, '哈哈哈', 48, 128, NULL, NULL, '2019-06-13 11:13:05', 0, 0);
INSERT INTO `t_reply` VALUES (167, '你猜', 3, 46, NULL, NULL, '2019-06-13 14:19:25', 0, 0);
INSERT INTO `t_reply` VALUES (168, 'rqgtwentbhtrh', 48, NULL, 109, 1, '2019-06-13 17:00:17', 0, 1);
INSERT INTO `t_reply` VALUES (169, '图不是香瓜啊！！', 48, 146, NULL, NULL, '2019-06-14 09:42:52', 0, 0);
INSERT INTO `t_reply` VALUES (170, '应该不可以吧', 48, 144, NULL, NULL, '2019-06-14 09:44:14', 0, 0);
INSERT INTO `t_reply` VALUES (171, '不知道，还是百度吧', 48, 143, NULL, NULL, '2019-06-14 09:44:37', 0, 0);
INSERT INTO `t_reply` VALUES (172, '那就别问了', 48, 140, NULL, NULL, '2019-06-14 09:45:00', 0, 0);
INSERT INTO `t_reply` VALUES (173, '没有', 48, 1, NULL, NULL, '2019-06-14 09:45:18', 0, 0);
INSERT INTO `t_reply` VALUES (174, '这是啥问题？？？', 48, 142, NULL, NULL, '2019-06-14 09:46:46', 0, 0);
INSERT INTO `t_reply` VALUES (175, '想问啥就问', 48, 141, NULL, NULL, '2019-06-14 09:47:08', 0, 0);
INSERT INTO `t_reply` VALUES (176, '好像没病吧', 48, 148, NULL, NULL, '2019-06-14 10:06:57', 0, 0);
INSERT INTO `t_reply` VALUES (177, 'enen', 3, 150, NULL, NULL, '2019-06-16 15:41:30', 0, 1);
INSERT INTO `t_reply` VALUES (178, '1321', 2, 135, NULL, NULL, '2019-06-16 16:20:15', 0, 0);
INSERT INTO `t_reply` VALUES (179, '好', 3, NULL, 115, 1, '2019-06-17 08:39:10', 0, 1);
INSERT INTO `t_reply` VALUES (180, '从是初学者v', 3, NULL, 115, 1, '2019-06-17 09:50:50', 0, 0);
INSERT INTO `t_reply` VALUES (181, '好吃吧  脆脆的  还有点甜', 4, NULL, 114, 1, '2019-06-17 09:51:23', 0, 0);
INSERT INTO `t_reply` VALUES (182, '1234567123456', 14, NULL, 113, 1, '2019-06-17 10:05:30', 0, 0);
INSERT INTO `t_reply` VALUES (183, '而缺乏v额去日本v改为糖尿病而台湾v二五不能他还能他和人', 48, 118, NULL, NULL, '2019-06-18 11:50:56', 0, 0);
INSERT INTO `t_reply` VALUES (184, '热管人堂华北院纪念业界毛囊炎教育家人们枯木恩额以农业他呢精英们客厅还有人', 48, 2, NULL, NULL, '2019-06-18 11:55:43', 0, 1);
INSERT INTO `t_reply` VALUES (185, '挖的阿文是v狗输入法', 48, NULL, 1, 1, '2019-06-18 11:58:13', 0, 0);
INSERT INTO `t_reply` VALUES (186, '速度测试的v', 48, 2, NULL, NULL, '2019-06-18 12:00:29', 0, 0);
INSERT INTO `t_reply` VALUES (187, '为凤尾然后把它扔进五年穆特没有那边也让法第十八条的规模和特点和你人也net么就很难有糖尿病法国士兵人的他们能火箭替补谈话内容你会对他与媒体内容也特', 48, 1, NULL, NULL, '2019-06-18 12:01:18', 0, 0);
INSERT INTO `t_reply` VALUES (188, '话内容你会对他与媒体内容也特', 48, 1, NULL, NULL, '2019-06-18 12:01:34', 0, 0);
INSERT INTO `t_reply` VALUES (189, '她她她', 48, 2, NULL, NULL, '2019-06-18 12:10:16', 0, 1);
INSERT INTO `t_reply` VALUES (190, '123344545', 48, NULL, 1, 1, '2019-06-18 12:13:26', 0, 1);
INSERT INTO `t_reply` VALUES (191, '测试', 3, 179, NULL, NULL, '2019-06-18 12:14:08', 0, 1);
INSERT INTO `t_reply` VALUES (192, 'afdfesaeg', 48, NULL, 1, 1, '2019-06-18 12:14:58', 0, 1);
INSERT INTO `t_reply` VALUES (193, 'afdfesaeg', 48, NULL, 1, 1, '2019-06-18 12:15:32', 0, 1);
INSERT INTO `t_reply` VALUES (194, '二哥VS让他把', 48, NULL, 1, 1, '2019-06-18 12:15:56', 0, 1);
INSERT INTO `t_reply` VALUES (195, 'srthysrtuh', 48, NULL, 1, 1, '2019-06-18 12:17:02', 0, 1);
INSERT INTO `t_reply` VALUES (196, '二房grew高污染', 48, NULL, 1, 1, '2019-06-18 12:17:19', 0, 1);
INSERT INTO `t_reply` VALUES (197, '为凤尾', 48, NULL, 1, 1, '2019-06-18 12:17:25', 0, 1);
INSERT INTO `t_reply` VALUES (198, '而我却发热安哈特爱就能换染色和白人黑人二个人生态环境而言他们就呢一天的反倒是报关单和认同感话题热度', 48, NULL, 1, 1, '2019-06-18 12:18:10', 0, 0);
INSERT INTO `t_reply` VALUES (199, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, NULL, 1, 1, '2019-06-18 12:19:35', 0, 1);
INSERT INTO `t_reply` VALUES (200, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, 2, NULL, NULL, '2019-06-18 12:20:04', 0, 1);
INSERT INTO `t_reply` VALUES (201, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, 2, NULL, NULL, '2019-06-18 12:20:16', 0, 1);
INSERT INTO `t_reply` VALUES (202, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, 2, NULL, NULL, '2019-06-18 12:20:55', 0, 1);
INSERT INTO `t_reply` VALUES (203, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, 2, NULL, NULL, '2019-06-18 12:22:42', 0, 1);
INSERT INTO `t_reply` VALUES (204, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, NULL, 1, 1, '2019-06-18 12:23:49', 0, 0);
INSERT INTO `t_reply` VALUES (205, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, NULL, 1, 1, '2019-06-18 12:25:16', 0, 1);
INSERT INTO `t_reply` VALUES (206, '而非我国', 48, NULL, 1, 1, '2019-06-18 12:25:30', 0, 1);
INSERT INTO `t_reply` VALUES (207, '法国v染色体和土壤和土壤和Berth被Tyne于同年而我国被他人半导体湖南凤凰有没有姐妹，一进门人员热特惠特尼就没人土木科与，吗让你突然那边挺热的给v让你不会突然每年有人就没人要人防办呢每日一句，人们图库，体育课，it任何英腾教育同年九月台南人眼目郁闷郁闷，一天，让色然后热一热的痛苦么人经验和突然间呢人三个v的童年一台电脑不太认识v认为发v人不同如果你把它也难以热播v为', 48, 2, NULL, NULL, '2019-06-18 12:25:59', 0, 1);
INSERT INTO `t_reply` VALUES (208, NULL, 1, NULL, 2, 1, '2019-06-18 12:45:10', 0, 0);
INSERT INTO `t_reply` VALUES (209, '哈哈', 1, NULL, 2, 1, '2019-06-18 12:45:18', 0, 0);
INSERT INTO `t_reply` VALUES (210, NULL, 1, 2, NULL, NULL, '2019-06-18 12:45:58', 0, 0);
INSERT INTO `t_reply` VALUES (211, '测试', 1, 2, NULL, NULL, '2019-06-18 12:46:10', 0, 0);
INSERT INTO `t_reply` VALUES (212, '违反的气氛', 48, NULL, 152, 1, '2019-06-18 12:48:14', 0, 0);
INSERT INTO `t_reply` VALUES (213, '12345678', 14, 181, NULL, NULL, '2019-06-18 12:53:40', 0, 0);
INSERT INTO `t_reply` VALUES (214, '司法部v方便沟通人容易女艺人并于同年他日本染色体呢依然没能热颜色不他人被热议那么听话吧热v被他人人们内特认识不同任务v认为你不然我不v问题吧热播认为你台湾人那天我v二位不太热还不能听人说v我必然被替换为你听不听吕不韦', 48, 2, NULL, NULL, '2019-06-18 13:07:35', 0, 0);
INSERT INTO `t_reply` VALUES (215, '按时到场v而非被其他比他强tea v人情味v长期而繁荣不能停骑兵旅陈乔恩服从权威饿啊分帮我人体我v去除企鹅吖v不去日本和同情我吧v悄然出现轻微v而且安然保温桶跟v却非常的去服务台环保问题', 48, NULL, 152, 1, '2019-06-18 13:13:54', 0, 0);
INSERT INTO `t_reply` VALUES (216, '但是cave访问率不完全', 48, 2, NULL, NULL, '2019-06-18 13:29:38', 0, 0);
INSERT INTO `t_reply` VALUES (217, '很棒  像绿萝就可以净化空气  为生活添加一抹绿色', 4, NULL, 113, 1, '2019-06-19 08:16:38', 0, 0);
INSERT INTO `t_reply` VALUES (218, '没毛病1', 17, 182, NULL, NULL, '2019-06-19 10:06:47', 0, 0);
INSERT INTO `t_reply` VALUES (219, '很强1', 17, NULL, 148, 1, '2019-06-19 10:45:26', 0, 0);
INSERT INTO `t_reply` VALUES (220, '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 2, NULL, 152, 1, '2019-06-19 10:48:07', 0, 1);
INSERT INTO `t_reply` VALUES (221, '你喜欢什么动物1', 17, 183, NULL, NULL, '2019-06-19 10:51:24', 0, 0);
INSERT INTO `t_reply` VALUES (222, '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 2, 2, NULL, NULL, '2019-06-19 10:54:50', 0, 1);
INSERT INTO `t_reply` VALUES (223, '吉安卡罗就爱看立法金卡金卡金克拉金克拉减肥咖啡就爱看立法JFK啦JFK拉法基啊吉安卡罗发酒疯坷拉激发开了房间阿克洛夫按附件奥克兰附加费坷拉激发开了房间安康吉安卡罗放假啊咖啡机安抚卡拉放假啊开发案件分厘卡机flak房间里发胶发蜡飞机奥利弗哈吉开发哈利开发接口放辣椒罚款了JFK拉风', 2, 2, NULL, NULL, '2019-06-19 10:55:25', 0, 1);
INSERT INTO `t_reply` VALUES (224, '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 2, 2, NULL, NULL, '2019-06-19 10:55:40', 0, 1);
INSERT INTO `t_reply` VALUES (225, 'afnajkhfrjkqahjqkfafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 2, 2, NULL, NULL, '2019-06-19 10:56:13', 0, 1);
INSERT INTO `t_reply` VALUES (226, '???????????????????????', 2, 175, NULL, NULL, '2019-06-19 14:37:14', 0, 0);
INSERT INTO `t_reply` VALUES (227, '热狗认识不同人生', 48, NULL, 153, 1, '2019-06-19 16:49:53', 0, 0);
INSERT INTO `t_reply` VALUES (228, 'fgdfgfdgf', 3, NULL, 155, 1, '2019-06-20 14:08:04', 0, 1);
INSERT INTO `t_reply` VALUES (229, 'fdgfgfdgfdg', 3, NULL, 155, 1, '2019-06-20 14:08:24', 0, 1);
INSERT INTO `t_reply` VALUES (230, 'rwtrtetr', 3, NULL, 155, 1, '2019-06-20 14:08:54', 0, 1);
INSERT INTO `t_reply` VALUES (231, '家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\n春节来临就如耀眼', 4, 3, NULL, NULL, '2019-06-20 15:03:14', 0, 1);
INSERT INTO `t_reply` VALUES (232, '家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\n春节来临就如耀眼', 4, 3, NULL, NULL, '2019-06-20 15:03:14', 0, 1);
INSERT INTO `t_reply` VALUES (233, '家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\n春节来临就如耀眼', 4, 3, NULL, NULL, '2019-06-20 15:03:14', 0, 1);
INSERT INTO `t_reply` VALUES (234, '家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\n春节来临就如耀眼流星划过暗夜长空，所有的愿望将在这一瞬间全部实现。从除夕开始，到元宵，那十几天的日子好像是坐上了一辆', 4, NULL, 141, 1, '2019-06-20 15:10:32', 0, 0);
INSERT INTO `t_reply` VALUES (235, '家里穷，日子单调无味，春节是一整年里最奢侈的快乐时光，无论是物质还是精神上，都得到一次彻底的满足。对于小孩来说，过春节不是任何仪式或者符号，它就是实实在在的内容。\n春节来临就如耀眼流星划过暗夜长空，所有的愿望将在这一瞬间全部实现。从除夕开始，到元宵，那十几天的日子好像是坐上了一辆', 4, 194, NULL, NULL, '2019-06-20 15:11:45', 0, 1);
INSERT INTO `t_reply` VALUES (236, '123', 4, 194, NULL, NULL, '2019-06-20 15:12:09', 0, 1);
INSERT INTO `t_reply` VALUES (237, '儿子元芳 \n\n\n\n					—- 房', 14, NULL, 156, 1, '2019-06-20 16:09:45', 0, 0);
INSERT INTO `t_reply` VALUES (238, '周', 14, NULL, 156, 1, '2019-06-20 16:10:33', 0, 0);
INSERT INTO `t_reply` VALUES (239, '做的好', 3, 171, NULL, NULL, '2019-06-22 11:09:45', 0, 0);
INSERT INTO `t_reply` VALUES (240, '好的', 3, 175, NULL, NULL, '2019-06-22 11:26:24', 0, 0);
INSERT INTO `t_reply` VALUES (241, '这图不是玉米啊', 48, 171, NULL, NULL, '2019-06-22 14:47:10', 0, 0);
INSERT INTO `t_reply` VALUES (242, '逛逛', 48, NULL, 115, 1, '2019-06-22 14:57:37', 0, 0);
INSERT INTO `t_reply` VALUES (243, '当肥料', 4, NULL, 111, 1, '2019-06-23 01:02:48', 0, 0);
INSERT INTO `t_reply` VALUES (244, 'haha', 48, 194, NULL, NULL, '2019-06-23 17:49:25', 0, 0);
INSERT INTO `t_reply` VALUES (245, '第二个', 48, 194, NULL, NULL, '2019-06-23 17:53:00', 0, 0);
INSERT INTO `t_reply` VALUES (246, '交流13', 1, NULL, 11, NULL, NULL, 0, 0);
INSERT INTO `t_reply` VALUES (247, '这好像是朵花', 4, 171, NULL, NULL, '2019-06-24 08:56:16', 0, 0);
INSERT INTO `t_reply` VALUES (248, '而感染天花', 48, NULL, 67, 1, '2019-06-24 10:41:39', 0, 0);
INSERT INTO `t_reply` VALUES (249, '可以', 17, NULL, 164, 1, '2019-06-24 13:57:38', 0, 0);
INSERT INTO `t_reply` VALUES (250, '哈哈哈', 48, 207, NULL, NULL, '2019-06-24 15:34:42', 0, 0);
INSERT INTO `t_reply` VALUES (251, 'haha', 48, 206, NULL, NULL, '2019-06-24 15:35:01', 0, 0);
INSERT INTO `t_reply` VALUES (252, '加油哦', 14, 212, NULL, NULL, '2019-06-24 17:47:02', 0, 0);
INSERT INTO `t_reply` VALUES (253, '看看', 48, NULL, 164, 1, '2019-06-25 08:22:53', 0, 1);
INSERT INTO `t_reply` VALUES (254, '看看', 48, NULL, 164, 1, '2019-06-25 08:29:00', 0, 0);
INSERT INTO `t_reply` VALUES (255, '回家  葛优躺', 4, 207, NULL, NULL, '2019-06-25 08:35:29', 0, 0);
INSERT INTO `t_reply` VALUES (256, '可以1', 17, NULL, 167, 1, '2019-06-25 08:41:11', 0, 0);
INSERT INTO `t_reply` VALUES (257, '不知道1', 17, NULL, 166, 1, '2019-06-25 09:18:31', 0, 0);
INSERT INTO `t_reply` VALUES (258, 'Nice', 14, NULL, 169, 1, '2019-06-25 09:31:07', 0, 0);
INSERT INTO `t_reply` VALUES (259, '我也来测试测试', 4, NULL, 170, 1, '2019-06-25 09:37:24', 0, 0);
INSERT INTO `t_reply` VALUES (260, '1111', 17, NULL, 164, 1, '2019-06-25 09:45:18', 0, 0);
INSERT INTO `t_reply` VALUES (261, '巴咋黑', 17, NULL, 177, 1, '2019-06-25 09:56:14', 0, 0);
INSERT INTO `t_reply` VALUES (262, '风声、雨声、读书声，声声入耳', 1, NULL, 178, 1, '2019-06-25 10:16:48', 0, 0);
INSERT INTO `t_reply` VALUES (263, '家事、国事、天下事，事事关心', 1, NULL, 178, 1, '2019-06-25 10:17:56', 0, 0);
INSERT INTO `t_reply` VALUES (264, '配图错了兄弟', 3, 171, NULL, NULL, '2019-06-25 11:08:08', 0, 1);
INSERT INTO `t_reply` VALUES (265, '配图错了', 3, 171, NULL, NULL, '2019-06-25 11:08:29', 0, 0);
INSERT INTO `t_reply` VALUES (266, '测试回答', 3, 213, NULL, NULL, '2019-06-25 11:08:56', 0, 1);
INSERT INTO `t_reply` VALUES (267, '样式出问题了', 3, 213, NULL, NULL, '2019-06-25 11:12:44', 0, 1);
INSERT INTO `t_reply` VALUES (268, 'dffd', 3, 213, NULL, NULL, '2019-06-25 11:15:38', 0, 1);
INSERT INTO `t_reply` VALUES (269, 'dsfdsf', 3, 213, NULL, NULL, '2019-06-25 11:16:12', 0, 1);
INSERT INTO `t_reply` VALUES (270, '51321', 3, 213, NULL, NULL, '2019-06-25 11:16:49', 0, 1);
INSERT INTO `t_reply` VALUES (271, 'jkhkj', 3, 212, NULL, NULL, '2019-06-25 11:17:43', 0, 1);
INSERT INTO `t_reply` VALUES (272, 'fgfdgfd', 3, 213, NULL, NULL, '2019-06-25 11:18:46', 0, 1);
INSERT INTO `t_reply` VALUES (273, 'dfsdaf', 3, 213, NULL, NULL, '2019-06-25 11:21:08', 0, 1);
INSERT INTO `t_reply` VALUES (274, '很好！', 93, 218, NULL, NULL, '2019-06-25 13:58:45', 0, 1);
INSERT INTO `t_reply` VALUES (275, '很好！', 93, 211, NULL, NULL, '2019-06-25 14:01:24', 0, 0);
INSERT INTO `t_reply` VALUES (276, '66789', 14, NULL, 178, 1, '2019-06-25 14:04:38', 0, 0);
INSERT INTO `t_reply` VALUES (277, '看看', 48, NULL, 178, 1, '2019-06-25 14:09:55', 0, 0);
INSERT INTO `t_reply` VALUES (278, '好的', 17, NULL, 178, 1, '2019-06-25 14:22:52', 0, 0);
INSERT INTO `t_reply` VALUES (279, '去', 14, NULL, 178, 1, '2019-06-25 14:38:33', 0, 0);
INSERT INTO `t_reply` VALUES (280, '123', 14, NULL, 178, 1, '2019-06-25 14:57:33', 0, 0);
INSERT INTO `t_reply` VALUES (281, '234', 14, 222, NULL, NULL, '2019-06-25 14:57:50', 0, 0);
INSERT INTO `t_reply` VALUES (282, '大的负担', 3, 227, NULL, NULL, '2019-06-25 15:06:03', 0, 0);
INSERT INTO `t_reply` VALUES (283, '嗯嗯', 3, 227, NULL, NULL, '2019-06-25 15:06:20', 0, 0);
INSERT INTO `t_reply` VALUES (284, '发光飞碟', 3, 228, NULL, NULL, '2019-06-25 15:07:49', 0, 1);
INSERT INTO `t_reply` VALUES (285, '嗯嗯d今飞凯达是否考虑的设计费考虑到数据库莲富大厦洛克菲勒打开时分类肯定是动力看双方将考虑的是否考虑多斯拉克第三季度时所经历的看了看', 3, 229, NULL, NULL, '2019-06-25 15:14:07', 0, 1);
INSERT INTO `t_reply` VALUES (286, '嗯嗯', 3, 229, NULL, NULL, '2019-06-25 15:14:27', 0, 0);
INSERT INTO `t_reply` VALUES (287, '广告公司打款时间', 4, NULL, 180, 1, '2019-06-25 15:23:47', 0, 0);
INSERT INTO `t_reply` VALUES (288, '享受国家股西安市', 4, NULL, 180, 1, '2019-06-25 15:23:55', 0, 0);
INSERT INTO `t_reply` VALUES (289, '杰伦', 2, 229, NULL, NULL, '2019-06-25 15:30:19', 0, 1);
INSERT INTO `t_reply` VALUES (290, 'henhao', 2, NULL, 181, 1, '2019-06-25 15:34:12', 0, 1);
INSERT INTO `t_reply` VALUES (291, '好的', 107, NULL, 181, 1, '2020-05-14 16:55:11', 0, 0);
INSERT INTO `t_reply` VALUES (292, 'OK', 107, NULL, 181, 1, '2020-05-14 17:08:59', 0, 0);
INSERT INTO `t_reply` VALUES (293, '好的', 107, NULL, 181, 1, '2020-05-14 17:18:32', 0, 0);
INSERT INTO `t_reply` VALUES (294, 'Jay', 2, 230, NULL, NULL, '2019-06-26 00:32:09', 0, 1);
INSERT INTO `t_reply` VALUES (295, '很好', 2, NULL, 181, 1, '2019-06-26 00:34:45', 0, 1);
INSERT INTO `t_reply` VALUES (296, '真帅', 98, 234, NULL, NULL, '2020-05-14 16:34:01', 0, 1);
INSERT INTO `t_reply` VALUES (297, '你好', 107, 1, 178, 1, '2020-05-14 07:35:39', 0, 1);
INSERT INTO `t_reply` VALUES (298, '好的', 107, 1, 188, 1, '2020-05-14 17:09:11', 0, 1);
INSERT INTO `t_reply` VALUES (299, '345678', 107, 1, NULL, NULL, '2020-05-14 08:56:57', 0, 0);
INSERT INTO `t_reply` VALUES (300, '9876', 107, NULL, 1, 1, '2020-05-14 08:58:30', 0, 0);
INSERT INTO `t_reply` VALUES (301, '9876', 107, NULL, 1, 1, '2020-05-14 08:58:32', 0, 0);
INSERT INTO `t_reply` VALUES (302, '9876', 107, NULL, 1, 1, '2020-05-14 08:58:34', 0, 0);
INSERT INTO `t_reply` VALUES (303, '嘻嘻', 107, NULL, 194, 1, '2020-05-14 09:09:12', 0, 0);
INSERT INTO `t_reply` VALUES (304, '12345', 107, NULL, 194, 1, '2020-05-14 09:17:38', 0, 0);
INSERT INTO `t_reply` VALUES (305, '你可以试试', 107, NULL, 194, 1, '2020-05-14 09:18:16', 0, 0);
INSERT INTO `t_reply` VALUES (306, '嘿嘿土土土土地', 107, NULL, 194, 1, '2020-05-14 09:18:30', 0, 0);
INSERT INTO `t_reply` VALUES (307, '不错吧哈哈', 107, 252, NULL, NULL, '2020-05-14 09:24:44', 0, 1);
INSERT INTO `t_reply` VALUES (308, '不错呀哈哈', 107, 251, NULL, NULL, '2020-05-14 09:39:34', 0, 0);
INSERT INTO `t_reply` VALUES (309, '不错呀哈哈', 107, 251, NULL, NULL, '2020-05-14 09:39:37', 0, 0);
INSERT INTO `t_reply` VALUES (310, '不错呀哈哈', 107, 251, NULL, NULL, '2020-05-14 09:39:39', 0, 0);
INSERT INTO `t_reply` VALUES (311, '不错呀哈哈', 107, 252, NULL, NULL, '2020-05-14 09:47:29', 0, 0);
INSERT INTO `t_reply` VALUES (312, '不错呀哈哈', 107, 252, NULL, NULL, '2020-05-14 09:47:31', 0, 0);

-- ----------------------------
-- Table structure for t_seed
-- ----------------------------
DROP TABLE IF EXISTS `t_seed`;
CREATE TABLE `t_seed`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `number` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审定编号',
  `crop_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '种子名字',
  `kind` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作物种类',
  `review_time` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审定年份',
  `is_transgenic` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否转基因',
  `is_exit` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否退出',
  `agency` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审定机构',
  `unit_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选育单位人',
  `source` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品种来源',
  `area` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '适宜种植区域',
  `feature` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特征特性',
  `output` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产量表现',
  `foster` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '栽培技术要点',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_seed
-- ----------------------------
INSERT INTO `t_seed` VALUES (1, '111', '扬椒2号', '辣椒', '2010.2', '否', '否', '江苏省农作物品种审定委员会', '江苏里下河地区农科所', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_seed` VALUES (2, '222', '苏玉42', '玉米', '2010.2', '否', '否', '江苏省农作物品种审定委员会', '江苏里下河地区农科所', NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_supply_buy
-- ----------------------------
DROP TABLE IF EXISTS `t_supply_buy`;
CREATE TABLE `t_supply_buy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `sort` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无分类' COMMENT '分类',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品/服务名称',
  `content` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `unit` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `amount` int(11) NULL DEFAULT NULL COMMENT '供应/求购数量',
  `price` int(11) NULL DEFAULT NULL COMMENT '价格',
  `enterprise` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `limit_time` datetime(0) NULL DEFAULT NULL COMMENT '有效期至',
  `seller_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖家姓名',
  `seller_phone` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖家联系电话',
  `status` int(4) NULL DEFAULT 0 COMMENT '0表示正常，1表示已售完/已购买，2表示已过期',
  `is_supply_buy` int(4) NOT NULL COMMENT '供应还是求购，0表示供应，1表示求购',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(4) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_supply_buy
-- ----------------------------
INSERT INTO `t_supply_buy` VALUES (1, 1, '无分类', '买卖', '黄金万两，不值季布一诺', 'kg', 998, 99, NULL, '2019-05-31 00:00:00', '潘炳稳', '17805136692', 0, 0, '2019-05-16 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (2, 1, '蔬菜', '大白菜', '出售新鲜大白菜', 'kg', 120, 12, NULL, '2019-06-03 11:20:42', '潘老汉', '111111', 0, 0, '2019-05-17 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (3, 2, '蔬菜', '大白菜', '新鲜的', 'kg', 23, 12, NULL, '2019-06-03 11:21:22', '何老板', '18851999259', 0, 1, '2019-05-17 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (21, 3, '农副产品', '供应红富士苹果', '新鲜的红富士苹果，走过路过不要错过', 'kg', 1000, 10, NULL, '2019-06-01 00:00:00', '叶小慈', '18852009196', 0, 0, '2019-06-26 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (22, 3, '农副产品', '滚圆滚圆的土豆', '新鲜的土豆，走过路过不要错过啊新鲜的土豆，走过路过不要错过啊新鲜的土豆，走过路过不要错过啊', 'kg', 500, 2, NULL, '2019-06-20 00:00:00', '叶小慈', '18852009196', 0, 0, '2019-06-20 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (23, 3, '农副产品', '求一条白蛇', '昨天看到了一条白蛇，求找到这条蛇', NULL, 10, 100, NULL, '2019-06-03 11:21:16', '叶小慈', '18852009196', 0, 1, '2019-06-01 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (26, 3, '农副产品', '求购海南香蕉', '海南的香蕉', 'kg', 1000, 10, NULL, '2019-06-03 11:21:18', '叶小慈', '18852009196', 0, 1, '2019-06-02 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (30, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-03 11:21:25', NULL, NULL, 0, 1, '2019-06-03 11:21:04', 0);
INSERT INTO `t_supply_buy` VALUES (31, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-03 11:21:27', NULL, NULL, 0, 1, '2019-06-03 11:21:08', 0);
INSERT INTO `t_supply_buy` VALUES (32, 4, '农副产品', '卖玉米种子', '粘玉米', NULL, 10000, 10, '潘总合作社', '2019-06-03 11:21:30', '潘总', '18362958881', 0, 0, '2019-06-03 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (33, 4, '土地', '黑土地', '种植麦子水稻顺便养鱼', NULL, 1000000, 10000, NULL, '2019-06-03 11:21:33', '潘总', '18362958881', 0, 1, '2019-06-03 00:00:00', 0);
INSERT INTO `t_supply_buy` VALUES (34, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 08:38:16', NULL, NULL, 0, 1, '2019-06-05 08:39:15', 0);
INSERT INTO `t_supply_buy` VALUES (35, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 08:38:20', NULL, NULL, 0, 1, '2019-06-05 08:39:19', 0);
INSERT INTO `t_supply_buy` VALUES (36, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 08:38:22', NULL, NULL, 0, 1, '2019-06-05 08:39:22', 0);
INSERT INTO `t_supply_buy` VALUES (37, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 08:38:26', NULL, NULL, 0, 1, '2019-06-05 08:39:24', 0);
INSERT INTO `t_supply_buy` VALUES (38, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 08:39:04', NULL, NULL, 0, 1, '2019-06-05 08:39:27', 0);
INSERT INTO `t_supply_buy` VALUES (39, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (40, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (41, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (42, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (43, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (44, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (45, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (46, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (47, 4, '农业服务', '栽水稻', '业务熟练', NULL, 1000, 190, NULL, NULL, '潘总', '11234567890', 0, 1, '2019-06-12 10:13:49', 0);
INSERT INTO `t_supply_buy` VALUES (48, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (49, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (50, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (51, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (52, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (53, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);
INSERT INTO `t_supply_buy` VALUES (54, 17, '农业服务', '嗯哼', 'nnnn', '辆', 111, 222, NULL, NULL, '3333', '444', 0, 1, '2019-06-19 17:24:06', 1);
INSERT INTO `t_supply_buy` VALUES (55, 17, '土地', '得到点点滴滴', '111111', '亩', 111, 111, NULL, NULL, '111', '111', 0, 1, '2019-06-19 17:26:51', 1);
INSERT INTO `t_supply_buy` VALUES (56, 17, '农业服务', '111111', '1111', '辆', 111, 111, NULL, NULL, '', '', 0, 1, '2019-06-19 17:30:29', 1);
INSERT INTO `t_supply_buy` VALUES (57, 17, '11', NULL, NULL, NULL, 111, 111, NULL, NULL, '11', '111', 0, 1, '2019-06-19 17:31:16', 1);
INSERT INTO `t_supply_buy` VALUES (58, 17, '11', NULL, NULL, NULL, 111, 111, NULL, NULL, '11', '111', 0, 1, '2019-06-19 17:31:23', 1);
INSERT INTO `t_supply_buy` VALUES (59, 17, '11', '11', '11', '111', 111, 111, NULL, NULL, '11', '111', 0, 1, '2019-06-19 17:32:45', 1);
INSERT INTO `t_supply_buy` VALUES (60, 12, '12', '12', '12', '12', 12, 12, NULL, NULL, '12', '12', 0, 1, '2019-06-19 17:33:37', 0);
INSERT INTO `t_supply_buy` VALUES (61, 12, '12', '12', '12', '12', 12, 12, NULL, NULL, '12', '12', 0, 1, '2019-06-19 17:33:41', 0);
INSERT INTO `t_supply_buy` VALUES (62, 17, '12', '12', '12', '12', 12, 12, NULL, NULL, '12', '12', 0, 1, '2019-06-19 17:34:26', 1);
INSERT INTO `t_supply_buy` VALUES (63, 17, '12', '12', '12', '12', 12, 12, NULL, NULL, '12', '12', 0, 1, '2019-06-19 17:34:32', 1);
INSERT INTO `t_supply_buy` VALUES (64, 17, '生产资料', '111', '测试1', '亩', 11, 100, NULL, NULL, '沈纪元', '4008823823', 0, 1, '2019-06-20 13:53:25', 1);
INSERT INTO `t_supply_buy` VALUES (65, 3, '生产资料', '444', '4444', NULL, 444, 444, NULL, NULL, '444', '44444', 0, 1, '2019-06-23 11:54:19', 0);
INSERT INTO `t_supply_buy` VALUES (66, 3, '生产资料', '112222222', '222222', NULL, 122222, 22222, '22222', NULL, '2222', '2222', 0, 0, '2019-06-23 11:55:27', 0);
INSERT INTO `t_supply_buy` VALUES (67, 17, '土地', '鸡蛋1', '想里图鸡蛋', '克', 100, 5, '无', NULL, '药水哥', '66666', 0, 0, '2019-06-23 16:32:21', 1);
INSERT INTO `t_supply_buy` VALUES (68, 17, '土地', '鸡蛋1', '想里图鸡蛋', '克', 100, 5, '无', NULL, '药水哥', '66666', 0, 0, '2019-06-23 16:33:31', 1);
INSERT INTO `t_supply_buy` VALUES (69, 17, '土地', '鸡蛋1', '想里图鸡蛋', '克', 100, 5, '无', NULL, '药水哥', '66666', 0, 0, '2019-06-23 16:33:55', 1);
INSERT INTO `t_supply_buy` VALUES (70, 17, '农业服务', '鸡蛋1', '无1', '公斤', 10, 1, '南工院', NULL, '药水哥', '4008823823', 0, 0, '2019-06-23 16:37:36', 1);
INSERT INTO `t_supply_buy` VALUES (71, 17, NULL, '鸭蛋', '纯真鸭蛋', '克', 100, 5, '农场', NULL, '孙笑川', '88239', 0, 0, '2019-06-23 16:43:02', 1);
INSERT INTO `t_supply_buy` VALUES (72, 65, '654', '654', '76543', '54', 65, 654, '6543', NULL, '654', '654', 0, 0, '2019-06-23 16:45:56', 0);
INSERT INTO `t_supply_buy` VALUES (73, 1, '432', '32', '3432', '432', 43, 32, '43', NULL, '343', '43', 0, 0, '2019-06-23 16:52:40', 0);
INSERT INTO `t_supply_buy` VALUES (74, 17, NULL, '鸭蛋', '纯真鸭蛋', '克', 100, 5, '农场', NULL, '孙笑川', '88239', 0, 0, '2019-06-23 17:00:17', 1);
INSERT INTO `t_supply_buy` VALUES (75, 1, '432', '32', '3432', '432', 43, 32, '43', NULL, '343', '43', 0, 0, '2019-06-23 17:01:36', 0);
INSERT INTO `t_supply_buy` VALUES (76, 654, '54', '54', '6的', '43', 654, 54, NULL, NULL, '54', '54', 0, 1, '2019-06-23 17:05:02', 0);
INSERT INTO `t_supply_buy` VALUES (77, 65, '54', '54', '6的', '43', 654, 54, NULL, NULL, '54', '54', 0, 1, '2019-06-23 17:08:23', 0);
INSERT INTO `t_supply_buy` VALUES (78, 17, NULL, '鸭蛋', '纯真鸭蛋', '克', 100, 5, '农场', NULL, '孙笑川', '88239', 0, 0, '2019-06-23 17:16:45', 1);
INSERT INTO `t_supply_buy` VALUES (79, 17, '农副产品', '鸭蛋', '乡里来的', '公斤', 100, 5, '农场', NULL, '孙笑川', '18851998896', 0, 0, '2019-06-23 17:18:31', 1);
INSERT INTO `t_supply_buy` VALUES (80, 17, '土地', '鸡蛋', '乡里土鸡蛋', '公斤', 100, 5, '农场', NULL, '元芳', '95281', 0, 0, '2019-06-25 10:12:51', 0);
INSERT INTO `t_supply_buy` VALUES (81, 17, '土地', '西瓜', '无籽西瓜', '公斤', 100, 5, NULL, NULL, '元芳', '95281', 0, 1, '2019-06-25 10:15:30', 0);
INSERT INTO `t_supply_buy` VALUES (82, 3, '生产资料', '苹果', '红苹果', NULL, 12, 12, '南京工业', NULL, '我', '123456', 0, 0, '2019-06-25 11:01:39', 0);
INSERT INTO `t_supply_buy` VALUES (83, 17, '农副产品', '鸡蛋', '土鸡蛋', '斤', 10, 5, '农场', NULL, '元芳', '18851998897', 0, 0, '2019-06-25 14:27:45', 0);
INSERT INTO `t_supply_buy` VALUES (84, 17, '农副产品', '苹果', '无', '斤', 100, 5, NULL, NULL, '元芳', '18851998897', 0, 1, '2019-06-25 14:28:34', 0);
INSERT INTO `t_supply_buy` VALUES (85, 3, 'undefined', '额', 'ss', NULL, 111, 111, '2222', NULL, '张娟', '111', 0, 0, '2019-06-25 15:20:04', 0);
INSERT INTO `t_supply_buy` VALUES (86, 3, 'undefined', '额', 'ss', NULL, 111, 111, '2222', NULL, '张娟', '111', 0, 0, '2019-06-25 15:20:09', 0);
INSERT INTO `t_supply_buy` VALUES (87, 17, '农副产品', '水果', '无', '斤', 100, 5, '农场', NULL, '元芳', '18851998897', 0, 0, '2019-06-25 16:58:29', 0);
INSERT INTO `t_supply_buy` VALUES (88, 17, '土地', '红土地', '无', '亩', 100, 66666, NULL, NULL, '元芳', '18851998897', 0, 1, '2019-06-25 16:59:15', 0);
INSERT INTO `t_supply_buy` VALUES (89, 17, '农副产品', '蛋', '无', '公斤', 100, 5, '农场', NULL, '元芳', '18851998897', 0, 0, '2019-06-25 17:03:49', 0);
INSERT INTO `t_supply_buy` VALUES (90, 17, '土地', '黑土地', '无', '亩', 100, 6666, NULL, NULL, '元芳1', '18851998897', 0, 1, '2019-06-25 17:04:25', 0);
INSERT INTO `t_supply_buy` VALUES (91, 98, '农业服务', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:16', 0);
INSERT INTO `t_supply_buy` VALUES (92, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:34', 0);
INSERT INTO `t_supply_buy` VALUES (93, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:36', 0);
INSERT INTO `t_supply_buy` VALUES (94, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:37', 0);
INSERT INTO `t_supply_buy` VALUES (95, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:37', 0);
INSERT INTO `t_supply_buy` VALUES (96, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:37', 0);
INSERT INTO `t_supply_buy` VALUES (97, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:44', 0);
INSERT INTO `t_supply_buy` VALUES (98, 98, '农副产品', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:46', 0);
INSERT INTO `t_supply_buy` VALUES (99, 98, '农业服务', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:38:59', 0);
INSERT INTO `t_supply_buy` VALUES (100, 98, '农业服务', '玉米', '黑玉米黏玉米', NULL, 1000, 1122, '潘总合作社', NULL, '潘总', '12345678902', 0, 0, '2019-06-26 16:39:18', 0);
INSERT INTO `t_supply_buy` VALUES (101, 2, '蔬菜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 0);

-- ----------------------------
-- Table structure for t_technology_sort
-- ----------------------------
DROP TABLE IF EXISTS `t_technology_sort`;
CREATE TABLE `t_technology_sort`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '分类图标',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_technology_sort
-- ----------------------------
INSERT INTO `t_technology_sort` VALUES (1, '水稻', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E6%B0%B4%E7%A8%BB.png', 0);
INSERT INTO `t_technology_sort` VALUES (2, '小麦', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%B0%8F%E9%BA%A6.png', 1);
INSERT INTO `t_technology_sort` VALUES (3, '特粮特经', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E7%89%B9%E7%B2%AE%E7%89%B9%E7%BB%8F.png', 1);
INSERT INTO `t_technology_sort` VALUES (4, '蔬菜', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E8%94%AC%E8%8F%9C.png', 1);
INSERT INTO `t_technology_sort` VALUES (5, '果树', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E6%9E%9C%E6%A0%91.png', 1);
INSERT INTO `t_technology_sort` VALUES (6, '植保', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E6%A4%8D%E4%BF%9D.png', 0);
INSERT INTO `t_technology_sort` VALUES (7, '生猪', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E7%94%9F%E7%8C%AA.png', 0);
INSERT INTO `t_technology_sort` VALUES (8, '家禽', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%AE%B6%E7%A6%BD.png', 0);
INSERT INTO `t_technology_sort` VALUES (9, '家畜', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%AE%B6%E7%95%9C.png', 0);
INSERT INTO `t_technology_sort` VALUES (10, '花木', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E8%8A%B1%E6%9C%A8.png', 0);
INSERT INTO `t_technology_sort` VALUES (11, '蚕桑', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%AE%B6%E7%A6%BD.png', 0);
INSERT INTO `t_technology_sort` VALUES (12, '茶叶', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E8%8C%B6%E5%8F%B6.png', 0);
INSERT INTO `t_technology_sort` VALUES (13, '水产', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E6%B0%B4%E4%BA%A7.png', 0);
INSERT INTO `t_technology_sort` VALUES (14, '土肥', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%9C%9F%E8%82%A5.png', 0);
INSERT INTO `t_technology_sort` VALUES (15, '环境能源', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E7%8E%AF%E5%A2%83%E8%83%BD%E6%BA%90.png', 0);
INSERT INTO `t_technology_sort` VALUES (16, '农机', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E6%9C%BA.png', 0);
INSERT INTO `t_technology_sort` VALUES (17, '农产品加工', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E4%BA%A7%E5%93%81%E5%8A%A0%E5%B7%A5.png', 0);
INSERT INTO `t_technology_sort` VALUES (18, '农业气象', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E4%BA%A7%E5%93%81%E5%8A%A0%E5%B7%A5.png', 0);
INSERT INTO `t_technology_sort` VALUES (19, '农经', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E7%BB%8F.png', 0);
INSERT INTO `t_technology_sort` VALUES (20, '农业信息化', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E4%B8%9A%E4%BF%A1%E6%81%AF%E5%8C%96.png', 0);
INSERT INTO `t_technology_sort` VALUES (21, '农产品质量', 'https://niit-soft-aa.oss-cn-hangzhou.aliyuncs.com/nongjiyun/%E5%86%9C%E4%B8%9A%E4%B8%93%E5%AE%B6/%E5%86%9C%E4%BA%A7%E5%93%81%E8%B4%A8%E9%87%8F.png', 0);
INSERT INTO `t_technology_sort` VALUES (42, '天下', '2.jpg', 0);

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `topic_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专题名称',
  `topic_img` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专题图片',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES (1, '江苏省现代农业产业体系', NULL, NULL);
INSERT INTO `t_topic` VALUES (2, '江苏桂县强农富民工程', NULL, NULL);
INSERT INTO `t_topic` VALUES (3, '江苏农业重大技术推广计划', NULL, NULL);
INSERT INTO `t_topic` VALUES (4, '基层农技推广体系改革', NULL, NULL);
INSERT INTO `t_topic` VALUES (5, '江苏现代', NULL, NULL);
INSERT INTO `t_topic` VALUES (6, '省重点', NULL, NULL);
INSERT INTO `t_topic` VALUES (7, '农业转基因权威关注', NULL, NULL);
INSERT INTO `t_topic` VALUES (8, '江苏农业‘三新工程’', NULL, NULL);

-- ----------------------------
-- Table structure for t_types
-- ----------------------------
DROP TABLE IF EXISTS `t_types`;
CREATE TABLE `t_types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名称',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0是不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_types
-- ----------------------------
INSERT INTO `t_types` VALUES (1, '农情上报', 0);
INSERT INTO `t_types` VALUES (2, '入户指导', 0);
INSERT INTO `t_types` VALUES (3, '其他', 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `phone_number` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号/账号',
  `password` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密密码',
  `user_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `unit_address` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `user_address` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所属城市',
  `plant_category` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种植种类',
  `plant_size` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种植规模',
  `unit_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位名称',
  `regitster_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '账户禁用或启用，0为启用，1为禁用',
  `sex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `check_all` int(11) NULL DEFAULT 0 COMMENT '总签到次数',
  `check_continuous` int(11) NULL DEFAULT 88 COMMENT '连续签到次数',
  `score` int(11) NULL DEFAULT 996 COMMENT '总积分',
  `head_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像图片地址',
  `educational` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `email` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `vocation` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业类别',
  `identity` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '普通人员',
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '0表示不删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '17805136690', 'java22', '潘炳稳', '南京工业职业技术学院', '南工院', '其他', NULL, '删库跑路', '2019-05-29 19:24:20', 0, '男', 0, 88, 1188, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/a6bb0e50-c44f-4be6-81a1-ca6bbacbe2ee.jpg', 'null', '17805133652@qq.com', '1111', '第五组组长', 0);
INSERT INTO `t_user` VALUES (2, '18851999258', 'hj123321', '1', '南京工业职业技术学院', '四川省泸州市龙马潭区', '其他', NULL, 'ngy', '2019-06-02 14:10:01', 0, '男', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/92c39b78-8da6-4e70-8c9a-30c97827b446.jpg', '教授', '623878638@qq.com', '粮经', '科教管理人员', 1);
INSERT INTO `t_user` VALUES (3, '18852009196', '123456', '叶慈', '', '安徽省,全部,全部', '其他', NULL, '南京工业职业技术学院', '2019-05-29 20:29:50', 0, '男', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/87705fb5-8ef6-47c4-8e2e-b485db03c946.jpg', '研究生', '2871238016@qq.com', '其他', '农口工作人员', 0);
INSERT INTO `t_user` VALUES (4, '18362958881', '123qwe', '汤先送', NULL, '江苏南京', '其他', NULL, 'null', '2019-06-02 14:10:32', 0, '女', 0, 88, 996, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/4550bd57-225c-40c3-b68b-4f382f3f791f.jpg?Expires=1874884235&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=jNcNxNh4xNjM08iYP2koRPhxn3g%3D', 'null', '23424654564@qq.com', NULL, '科教管理人员', 0);
INSERT INTO `t_user` VALUES (5, '17805136699', NULL, '纵横', NULL, '南京工业职业技术学院', NULL, NULL, NULL, '2019-05-29 23:15:24', 0, '男', 0, 88, 996, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/77be1e3a-cc33-4d70-9089-9cf27a01ed07.jpg?Expires=1874537023&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=O253vD64lNBYS%2B9Dtba1DDUl%2FE8%3D', NULL, '2635225112@qq.ocm', NULL, '农技人员', 0);
INSERT INTO `t_user` VALUES (14, '18852008662', '123456', '范佳林23', NULL, '南京市', NULL, NULL, '南京工业职业技术学院', '2019-05-30 15:54:12', 1, '男', 0, 88, 1006, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/2c857824-89b2-4a11-9485-136d34573a30.jpg', '大专', '18852008662@163.com', '其他', '其他', 0);
INSERT INTO `t_user` VALUES (15, '18851999123', '123456', '赵润', NULL, '南京市', NULL, NULL, '南工院', '2019-05-30 16:46:59', 0, '男', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/dcd16d24-5bf4-4c5f-bcfc-3ad30b55be71.jpg', NULL, '572052037@qq.com', NULL, '普通农户', 0);
INSERT INTO `t_user` VALUES (17, '18851998897', '123456', '李元芳', NULL, '南通市', NULL, NULL, '南京1', '2019-05-31 12:29:52', 0, '女', 0, 88, 996, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/4626b8db-c242-4c9a-b10e-1819c8c9de9f.jpg?Expires=1875661093&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=8XV9W%2FhwtQwtvuoNOPbgnOfagAw%3D', '高中', '2296787770', '粮经', '家庭农场', 0);
INSERT INTO `t_user` VALUES (24, '110', 'JAVA22', 'haha', NULL, NULL, NULL, NULL, NULL, '2019-06-03 09:49:56', 0, NULL, 0, 88, 996, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_user` VALUES (25, '119', 'java22', '测试', NULL, NULL, NULL, NULL, NULL, '2019-06-03 09:53:01', 0, NULL, 0, 88, 996, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_user` VALUES (26, '12345677', 'java22', '测试g', NULL, NULL, NULL, NULL, NULL, '2019-06-03 10:23:21', 0, NULL, 0, 88, 996, 'https://niit-jay.oss-cn-shanghai.aliyuncs.com/avatar/b1097210-6669-469a-a2c1-3ad1d2b2dead.jpg?Expires=1874888602&OSSAccessKeyId=LTAIZsuAeD3qGFzf&Signature=o0yd9pyPwlnl%2Fp1h2W4gAv%2BD%2BJk%3D', NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_user` VALUES (47, '17313468323', '990102', '游双豪', NULL, NULL, NULL, NULL, NULL, '2019-06-10 20:34:10', 0, NULL, 0, 88, 996, NULL, NULL, NULL, NULL, '其他', 0);
INSERT INTO `t_user` VALUES (48, '18852009633', '123456', 'W_jie', NULL, '南京市栖霞区', NULL, NULL, '南工院', '2019-06-10 20:40:11', 0, '男', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/8fa9516f-a1de-44bb-851f-a0980f02a4e6.jpg', '', '623878638@qq.com', '水产', '科研院校人员', 0);
INSERT INTO `t_user` VALUES (58, '110', NULL, '9527', NULL, '', NULL, NULL, NULL, '2019-06-10 21:11:07', 0, '女', 0, 88, 996, NULL, NULL, '9877', NULL, '哈哈', 0);
INSERT INTO `t_user` VALUES (59, '1120', NULL, '后台测试1', NULL, '南京', NULL, NULL, NULL, '2019-06-10 21:23:27', 0, '女', 0, 88, 996, NULL, NULL, '513@qq.com', NULL, '学生', 0);
INSERT INTO `t_user` VALUES (60, '1120', NULL, '后台测试1', NULL, '南京', NULL, NULL, NULL, '2019-06-10 21:23:47', 0, '女', 0, 88, 996, NULL, NULL, '513@qq.com', NULL, '学生', 0);
INSERT INTO `t_user` VALUES (61, '199', NULL, '公子白', NULL, '107', NULL, NULL, NULL, '2019-06-10 21:24:42', 0, '女', 0, 88, 996, NULL, NULL, '53143', NULL, '老师', 0);
INSERT INTO `t_user` VALUES (62, '431', NULL, '测试3', NULL, '1673', NULL, NULL, NULL, '2019-06-10 21:25:55', 0, '女', 0, 88, 996, NULL, NULL, '53', NULL, '同学', 0);
INSERT INTO `t_user` VALUES (65, '10086', NULL, '图片上传测试', NULL, '苏州', NULL, NULL, NULL, '2019-06-12 11:48:30', 0, '女', 0, 88, 996, NULL, NULL, '35432@qq.ocm', NULL, '999', 0);
INSERT INTO `t_user` VALUES (67, '134', NULL, '556', NULL, '5', NULL, NULL, NULL, '2019-06-12 13:08:26', 0, '女', 0, 88, 996, NULL, NULL, '134', NULL, '学生', 0);
INSERT INTO `t_user` VALUES (68, '888', NULL, '1111111', NULL, '8', NULL, NULL, NULL, '2019-06-12 13:09:31', 0, '女', 0, 88, 996, NULL, NULL, '88', NULL, '88', 0);
INSERT INTO `t_user` VALUES (69, '2', NULL, '22', NULL, '2', NULL, NULL, NULL, '2019-06-12 13:14:21', 0, '女', 0, 88, 996, NULL, NULL, '2', NULL, '2', 0);
INSERT INTO `t_user` VALUES (70, '4', NULL, '4', NULL, '4', NULL, NULL, NULL, '2019-06-12 13:16:00', 0, '女', 0, 88, 996, NULL, NULL, '4', NULL, '4', 0);
INSERT INTO `t_user` VALUES (71, '444', '652451', '测试', NULL, NULL, NULL, NULL, NULL, '2019-06-12 13:17:24', 0, NULL, 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/3c131082-d542-4051-9762-aae71ff6e4d0.jpg?Expires=1875676150&OSSAccessKeyId=LTAIelFvJkV74tTC&Signature=e9%2FD36Xl1KA2yI8FfjEjOAlRqBE%3D', NULL, NULL, NULL, '学生', 0);
INSERT INTO `t_user` VALUES (72, '23', NULL, '123', NULL, '1', NULL, NULL, NULL, '2019-06-12 13:22:21', 0, '女', 0, 88, 996, NULL, NULL, '21', NULL, '21', 0);
INSERT INTO `t_user` VALUES (73, '7', NULL, '测试2', NULL, '7', NULL, NULL, NULL, '2019-06-12 13:29:47', 0, '女', 0, 88, 996, NULL, NULL, '7', NULL, '7', 0);
INSERT INTO `t_user` VALUES (74, '3', NULL, '测试23', NULL, '73', NULL, NULL, NULL, '2019-06-12 13:37:42', 0, '女', 0, 88, 996, NULL, NULL, '73', NULL, '73', 0);
INSERT INTO `t_user` VALUES (75, '3', NULL, '测试23', NULL, '73', NULL, NULL, NULL, '2019-06-12 13:41:35', 0, '女', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/83e94d15-90e0-4010-8edc-aa6c5bc50f36.jpg?Expires=1875677376&OSSAccessKeyId=LTAIelFvJkV74tTC&Signature=hCBJwWvRj3%2B4JKHTiUxbFjKGD0U%3D', NULL, '73', NULL, '73', 0);
INSERT INTO `t_user` VALUES (87, '18851094502', '123456', 'wjie', NULL, '南京市玄武区', NULL, NULL, NULL, '2019-06-14 11:28:50', 1, NULL, 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9b45813f-b17e-47ca-ac52-81dc2e3d24b8.jpg', NULL, NULL, NULL, '农口工作人员', 0);
INSERT INTO `t_user` VALUES (89, '18151690190', 'Maxcore191214', '覃韦娜', NULL, '南京市栖霞区', NULL, NULL, NULL, '2019-06-18 14:45:21', 0, '女', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6bfc9ee0-a90e-4052-a1a3-b9173986b3cd.jpg', NULL, NULL, NULL, '企业', 0);
INSERT INTO `t_user` VALUES (90, '178354313', NULL, '潘炳稳测试数据', NULL, '南京工业大学', NULL, NULL, NULL, '2019-06-24 15:05:10', 0, '女', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6bfc9ee0-a90e-4052-a1a3-b9173986b3cd.jpg', NULL, '5344@qq.com', NULL, '科教管理人员', 0);
INSERT INTO `t_user` VALUES (91, '18136659759', '123456', '许先生', NULL, '南京市', NULL, NULL, '', '2019-06-25 08:59:46', 0, '男', 0, 88, 996, NULL, '', '', '', '其他', 0);
INSERT INTO `t_user` VALUES (92, '18851998896', '123456', '小阳', NULL, '南京市', NULL, NULL, NULL, '2019-06-25 10:36:03', 0, NULL, 0, 88, 996, NULL, NULL, NULL, NULL, '科教管理人员', 0);
INSERT INTO `t_user` VALUES (94, '17773941576', '123456', '许', NULL, '南京市', NULL, NULL, '', '2019-06-25 14:19:19', 1, '', 0, 88, 996, NULL, '', '', '', '企业', 0);
INSERT INTO `t_user` VALUES (95, '09876543', NULL, '测试用户哈哈', NULL, '南京', NULL, NULL, NULL, '2019-06-26 08:23:25', 0, '男', 0, 88, 996, '', NULL, '45', NULL, '学生', 0);
INSERT INTO `t_user` VALUES (98, '17768450286', '123456', '柠檬', NULL, 'null', NULL, NULL, '南京工业职业', '2019-06-26 16:28:25', 0, '男', 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/c319383f-66e9-4576-b228-f0e8a185434c.jpg', 'null', 'null', NULL, 'null', 0);
INSERT INTO `t_user` VALUES (99, '18852008887', '19990425', 'wangc', NULL, NULL, NULL, NULL, NULL, '2019-06-29 16:04:02', 0, NULL, 0, 88, 996, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_user` VALUES (100, '18851999259', 'hj123321', '何杰', NULL, '南京市玄武区', NULL, NULL, NULL, '2019-07-26 12:52:34', 0, NULL, 0, 88, 996, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/9b45813f-b17e-47ca-ac52-81dc2e3d24b8.jpg', NULL, NULL, NULL, '科教管理人员', 0);
INSERT INTO `t_user` VALUES (105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 18:21:57', 0, NULL, 0, 88, 996, NULL, NULL, 'email', NULL, NULL, 0);
INSERT INTO `t_user` VALUES (107, '17805136692', 'javajava', '夜幕', NULL, '南京市', NULL, NULL, '南京大学', '2020-05-12 13:21:15', 0, NULL, 0, 88, 996, 'https://img2.panbingwen.cn/img/e9622f8f-e169-4975-aab4-d4429f0f1281.jpg', '本科', 'pan@qq.com', '粮经', '科教管理人员', 0);

-- ----------------------------
-- Table structure for t_version
-- ----------------------------
DROP TABLE IF EXISTS `t_version`;
CREATE TABLE `t_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自键自增',
  `type` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '版本类型',
  `current` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前版本',
  `max` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最大版本',
  `min` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最小版本',
  `address` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新地址',
  `description` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '版本描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_version
-- ----------------------------

-- ----------------------------
-- Table structure for t_video
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `video_title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频标题',
  `relation_module` int(11) NULL DEFAULT NULL COMMENT '关联模块',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '视频封面图',
  `video_url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频链接',
  `video_sort` int(11) NULL DEFAULT NULL COMMENT '视频所属分类',
  `read_number` int(11) NULL DEFAULT 0 COMMENT '播放量',
  `state` int(11) NULL DEFAULT 0 COMMENT '状态，0正常，1异常',
  `review_state` int(11) NULL DEFAULT 0 COMMENT '审核状态，0通过，1不通过',
  `author` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频发布人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES (1, '叶菜优质安全快速高效生产技术', NULL, 'https://object.jsnjy.net.cn/OSS/20190524/e555768bb695496d88d964e7a46dfc72.JPG', 'https://object.jsnjy.net.cn/OSS/20190517/179.mp4', 1, 133, 0, 0, '何杰', '2019-05-20 13:47:04', 0);
INSERT INTO `t_video` VALUES (2, '小麦病虫草害绿色防控技术', NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/6d748b82-334c-4396-97d5-f7135e38bed9.jpg', 'https://object.jsnjy.net.cn/OSS/20190517/179.mp4', 2, 111, 0, 0, NULL, '2019-05-22 09:08:22', 0);
INSERT INTO `t_video` VALUES (3, '全国农技人员培训', NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/4cd8cd7a-97c9-4d1f-a916-ebfcc66059f9.jpg', 'https://object.jsnjy.net.cn/OSS/20190517/179.mp4', NULL, 0, 0, 0, NULL, '2019-06-18 15:59:10', 0);
INSERT INTO `t_video` VALUES (4, '啦啦啦啦啦啦啦', NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/d6a94e73-234e-48d0-9ff3-c243687c559d.jpg', 'https://object.jsnjy.net.cn/OSS/20190517/179.mp4', 1, 0, 0, 0, NULL, '2019-02-26 15:59:41', 0);
INSERT INTO `t_video` VALUES (5, '是爱上对方答复的三大', NULL, 'https://save-pan.oss-cn-shanghai.aliyuncs.com/img/871fb90a-6e49-4892-8c5a-279afa87c278.jpg', 'https://object.jsnjy.net.cn/OSS/20190517/179.mp4', 1, 0, 0, 0, NULL, '2019-05-20 16:00:44', 0);
INSERT INTO `t_video` VALUES (6, '食用菌新优品种及栽培技术', NULL, 'https://object.jsnjy.net.cn/OSS/20190301/4fa8fbb5059249e0a24523d366cefe10.JPG', 'https://object.jsnjy.net.cn/OSS/20190301/171.mp4', 3, 123, 0, 0, '何杰', '2019-06-18 09:53:45', 0);
INSERT INTO `t_video` VALUES (7, '茶树育种创新与利用', NULL, 'https://object.jsnjy.net.cn/OSS/20181113/ae34caa1f2804781a1106d262004dc25.JPG', 'https://object.jsnjy.net.cn/OSS/20181113/162.mp4', 3, 12, 0, 0, NULL, '2019-06-07 09:55:21', 0);
INSERT INTO `t_video` VALUES (8, '射阳县鹏飞无害化处理中心', NULL, 'https://object.jsnjy.net.cn/OSS/20190524/3e2e90892c504f9a9c59eff3ebaa6255.PNG', 'https://object.jsnjy.net.cn/OSS/20190524/524.mp4', 4, 6, 0, 0, NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_video_exhibition
-- ----------------------------
DROP TABLE IF EXISTS `t_video_exhibition`;
CREATE TABLE `t_video_exhibition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自键自增',
  `exhibition_id` int(11) NULL DEFAULT NULL COMMENT '展播的id',
  `video_id` int(11) NULL DEFAULT NULL COMMENT '视频的id',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_video_exhibition
-- ----------------------------

-- ----------------------------
-- Table structure for t_video_sort
-- ----------------------------
DROP TABLE IF EXISTS `t_video_sort`;
CREATE TABLE `t_video_sort`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除，0是不删除，1是删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_video_sort
-- ----------------------------
INSERT INTO `t_video_sort` VALUES (1, '推荐', 0);
INSERT INTO `t_video_sort` VALUES (2, '种植', 0);
INSERT INTO `t_video_sort` VALUES (3, '园艺', 0);
INSERT INTO `t_video_sort` VALUES (4, '畜禽', 0);
INSERT INTO `t_video_sort` VALUES (5, '水产', 0);
INSERT INTO `t_video_sort` VALUES (6, '其他', 0);
INSERT INTO `t_video_sort` VALUES (7, '新闻', 0);
INSERT INTO `t_video_sort` VALUES (8, '乡村', 0);

-- ----------------------------
-- Table structure for t_word
-- ----------------------------
DROP TABLE IF EXISTS `t_word`;
CREATE TABLE `t_word`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `count` int(11) NULL DEFAULT NULL COMMENT '搜索量',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态，0正常，1异常',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '0不删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_word
-- ----------------------------
INSERT INTO `t_word` VALUES (1, '学习', 89, 0, 0);
INSERT INTO `t_word` VALUES (2, '农业', 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
