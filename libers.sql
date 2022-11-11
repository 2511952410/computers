/*
 Navicat Premium Data Transfer

 Source Server         : sd
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : libers

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 24/09/2022 21:41:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('淮安');
INSERT INTO `address` VALUES ('盐城');
INSERT INTO `address` VALUES ('苏州');
INSERT INTO `address` VALUES ('南京');
INSERT INTO `address` VALUES ('镇江');
INSERT INTO `address` VALUES ('北京');
INSERT INTO `address` VALUES ('上海');
INSERT INTO `address` VALUES ('常熟');
INSERT INTO `address` VALUES ('太仓');
INSERT INTO `address` VALUES ('连云港');
INSERT INTO `address` VALUES ('徐州');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jieshao` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` double(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `classid` int NOT NULL,
  `number` int NULL DEFAULT NULL,
  PRIMARY KEY (`bookid`) USING BTREE,
  INDEX `sd`(`classid`) USING BTREE,
  CONSTRAINT `sd` FOREIGN KEY (`classid`) REFERENCES `booktype` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (2, '何谓教育（上）', ' 【日】斋藤茂男', '浙江人民出版社', '50665542', '二十世纪七八十年代，日本终于告别了在生存线上挣扎的饥荒状况，进入了物质丰饶的时代。', 60.00, '2016-03-05', 9, 4);
INSERT INTO `book` VALUES (3, '人从哪里来', '莱瑞和', '中信出版集团', '158532689545', '人从最初“像猿”的阶段，一步一步演化成“像人”的样子。', 45.00, '2011-06-09', 9, 5);
INSERT INTO `book` VALUES (4, '黑塞精选集', '【德国】赫尔曼.黑塞', '译林出版社', '655415858', '读黑塞，发现独属自己的人生智慧，找到通往真正自我之路。', 32.00, '2020-06-03', 11, 6);
INSERT INTO `book` VALUES (5, '五湖四海', '王安忆', '人民文学出版社', '555218545', '小说讲述一对五〇后年轻人，随着改革开放的大潮，相识相爱，成家立业，凭着勤劳和智慧，成为“富一代”的故事。', 56.00, '2021-09-26', 11, 7);
INSERT INTO `book` VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', 358.20, '2009-04-06', 11, 2);
INSERT INTO `book` VALUES (7, '爱丽丝漫游奇境与镜中奇遇', '【英】刘易斯.卡罗尔', '湖南文艺出版社', '456996223', '《爱丽丝漫游奇境》与《镜中奇遇》是英国著名作家、逻辑学家与数学家刘易斯·卡罗尔创作的儿童文学经典，亦被认为是维多利亚时代胡话文学的典范之作。', 96.00, '2008-06-28', 11, 8);
INSERT INTO `book` VALUES (10, '围城', '李四', '北京十月文艺出版社', 'jsdjjgd', NULL, 58.00, '2020-12-28', 9, 0);
INSERT INTO `book` VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', 12.00, '2003-01-01', 9, 0);
INSERT INTO `book` VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', 42.00, '2015-06-01', 9, 1);

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `class_id` int NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (6, '经济');
INSERT INTO `booktype` VALUES (7, '文化');
INSERT INTO `booktype` VALUES (9, '文学');
INSERT INTO `booktype` VALUES (11, '社会');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int NOT NULL DEFAULT 0,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intal` int NOT NULL DEFAULT 0,
  `type` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('85193216', '刘通', '15312331869', '南京', 0, '123456789', 0, 0);
INSERT INTO `user` VALUES ('85193216ss', '刘通', 'sddas', '南京', 1, 's', 0, 1);
INSERT INTO `user` VALUES ('85193216w', '刘通', 'SADAS', '南京', 0, 's', 0, 1);
INSERT INTO `user` VALUES ('ssdad', '刘通', '123', '常熟', 1, 'sss', 0, 1);
INSERT INTO `user` VALUES ('ssss', '刘通', '123', '北京', 1, 'ss', 0, 1);
INSERT INTO `user` VALUES ('SSSSSSSSSS', 'W', 'W', '淮安', 0, 'W', 0, 1);
INSERT INTO `user` VALUES ('w', '刘通', '123', '太仓', 1, '123456789', 0, 1);
INSERT INTO `user` VALUES ('ws', '刘通', '123', '北京', 1, 'sss', 0, 1);
INSERT INTO `user` VALUES ('wwwss', '刘通', '8787778888', '北京', 1, 'w', 0, 1);
INSERT INTO `user` VALUES ('wwwwww', '刘通', '12', '淮安', 0, 'w', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
