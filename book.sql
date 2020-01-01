/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-12-29 23:51:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '《西游记》', '吴承恩', '89', 'img/xiyouji.jpg', '我国四大名著之一', '1');
INSERT INTO `book` VALUES ('2', '《马列主义》', '马克思', '100', 'img/ma.jpg', '社会主义主要的精神支柱', '2');
INSERT INTO `book` VALUES ('3', '《穿透历史》', '田余庆', '79', 'img/history.jpg', '田余庆，北京大学历史系教授，主要研究方向为中国古代史、秦汉魏晋南北朝史。代表作为《东晋门阀政治》、《秦汉魏晋史探微》和《拓跋史探》。', '3');
INSERT INTO `book` VALUES ('4', '《自私的基因》', '理查德·道金斯', '120', 'img/self.jpg', '我们从哪里来，又将到哪里去。生命有何意义，我们该如何认知自己？这本书是实实在在的认知科学，复制、变异和淘汰简单的三种机制可以演变出所有大千世界生命现象里的林林总总。', '4');
INSERT INTO `book` VALUES ('5', '《西方战争艺术》', '阿彻琼斯', '56', 'img/bottle.jpg', '战争也是一种艺术，不单是血腥，想知道希特勒如何成为战争天才的吗？快来看这本书吧！', '5');
INSERT INTO `book` VALUES ('6', '《资本论》', '马克思', '130', 'img/ziben.jpg', '，以剩余价值为中心，对资本主义进行了彻底的批判。第一卷研究了资本的生产过程，分析了剩余价值的生产问题。第二卷在资本生产过程的基础上研究了资本的流通过程，分析了剩余价值的实现问题。第三卷讲述了资本主义生产的总过程，分别研究了资本和剩余价值的具体形式。这一卷讲述的内容达到了资本的生产过程、流通过程和分配过程的高度统一，分析了剩余价值的分配问题。', '6');
