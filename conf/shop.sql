/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-10-09 17:14:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_admin
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin`;
CREATE TABLE `shop_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_admin
-- ----------------------------
INSERT INTO `shop_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL,
  `goods_price` decimal(10,2) NOT NULL,
  `goods_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('1', 'HTC U11', '3999.00', '/static/goodsPicture/U11.jpg');
INSERT INTO `shop_goods` VALUES ('2', 'HTC Utraa', '2998.00', '/static/goodsPicture/UItra.jpg');
INSERT INTO `shop_goods` VALUES ('3', '三星S7 EDGE', '3399.00', '/static/goodsPicture/56d51a42Nd86f1c8e.jpg');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_price` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `order_state` int(255) DEFAULT NULL,
  `order_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('1000036', '6998.00', '2', '广东省广州市滨江街道东沙街24号', '2017-09-02 17:32:45', '4', '18181881');
INSERT INTO `shop_order` VALUES ('1000037', '3999.00', '2', '广东省广州市滨江街道东沙街24号', '2017-09-06 18:56:48', '1', '18181881');

-- ----------------------------
-- Table structure for shop_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderitem`;
CREATE TABLE `shop_orderitem` (
  `order_id` int(255) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_count` int(255) NOT NULL,
  KEY `shop_orderitem_ibfk_2` (`goods_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `shop_orderitem_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `shop_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `shop_orderitem_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderitem
-- ----------------------------
INSERT INTO `shop_orderitem` VALUES ('1000036', '1', '1');
INSERT INTO `shop_orderitem` VALUES ('1000036', '2', '1');
INSERT INTO `shop_orderitem` VALUES ('1000037', '1', '1');

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('2', '1', '1', '18181881', '广东省广州市滨江街道东沙街24号');
