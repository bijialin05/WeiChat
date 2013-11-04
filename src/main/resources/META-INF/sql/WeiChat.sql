/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50611
 Source Host           : 127.0.0.1
 Source Database       : WeiChat

 Target Server Type    : MySQL
 Target Server Version : 50611
 File Encoding         : utf-8

 Date: 09/27/2013 23:04:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `T_RESOURCES`
-- ----------------------------

BEGIN;
delete from  `T_RESOURCES`;
delete from  `T_ROLES`;
delete from  `T_ROLE_RESOURCES`;
delete from  `T_USER_ROLE`;
delete from  `T_USER`;
INSERT INTO `T_RESOURCES` VALUES ('1', 'account', '1', '1', '/account'), ('2', 'game', '1', '1', '/game'), ('3', 'message', '1', '1', '/message'), ('4', 'user', '1', '1', '/user'), ('5', 'replymsg', '1', '1', '/replymsg');
INSERT INTO `T_ROLES` VALUES ('1', '1', 'Admin');
INSERT INTO `T_ROLES` VALUES ('2', '1', 'SimpleUser');
INSERT INTO `T_ROLE_RESOURCES` VALUES ('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), ('1', '5');
INSERT INTO `T_ROLE_RESOURCES` VALUES ('2', '1'),  ('2', '3'),  ('2', '5');
INSERT INTO `T_USER` VALUES ('1', 'admin', '1', '899899');
INSERT INTO `T_USER_ROLE` VALUES ('1', '1');
delete from `wx_game`;
INSERT INTO `wx_game`(id,name,url,note,gtype) VALUES (1,'聊天机器人','autoreply','一上一下','program');
INSERT INTO `wx_game`(id,name,url,note,gtype) VALUES (2,'刮刮乐','game_ggl','刮刮乐','html5游戏');

delete from `wx_product_sub_category`;
INSERT INTO `wx_product_sub_category` (`id`, `categoryid`, `subcategoryname`, `description`, `picurl`, `createdate`) VALUES (1,1,'限时优惠',' <p>男女装指定摇粒绒茄克</p>&nbsp;<em>截至10/17</em><br><br>&nbsp;<i>￥149</i><br>&nbsp;<i><</i>','/1/all_img.jpg','2013-01-01'),(2,1,'新品上市','<p class=\"t_tight\">男女装指定摇粒绒茄克</p>&nbsp;<em class=\"t_tight\">截至10/17</em><br>&nbsp;<i class=\"t_tight\">￥149</i><br><br>&nbsp;<i class=\"t_tight\">></i>','/1/all_img1.jpg','2013-01-01'),(3,1,'限时优惠',' <p class=\"big\">Woman</p>&nbsp;<i class=\"white\"><</i>','/1/all_img2.jpg','2013-01-01'),(4,2,'五折专场',NULL,'/1/20131028150354.jpg','2013-01-01'),(5,2,'秋季换装',NULL,'/1/20131028150452.jpg','2013-01-01'),(6,2,'特别推荐',NULL,'/1/20131028150539.jpg','2013-01-01'),(7,3,'摇粒绒夹克',NULL,'/1/sj_img1.jpg','2013-01-01'),(8,3,'法兰绒衬衫',NULL,'/1/sj_img2.jpg','2013-01-01'),(9,3,'精纺系列',NULL,'/1/sj_img3.jpg','2013-01-01'),(10,4,'潮流打底裤','美腿有诀窍','/1/cl_banner.jpg','2013-01-01'),(11,4,'巴黎之旅 ','休闲裤专场','/1/cl_banner1.jpg','2013-01-01');
delete from `wx_product`;
INSERT INTO `wx_product` (`id`, `productname`, `productprice`, `stock`, `descrpiton`, `effectivedate`, `expirydate`, `mallid`, `createdate`) VALUES (1,'条纹彩色波浪打底裤',39,100,'黑底白条','2013-01-01','2099-01-01',1,'2013-01-01'),(2,'日系原宿风星空打底裤',49,100,'日系原宿风星空打底裤星空（紫色）','2013-01-01','2099-01-01',1,'2013-01-01'),(3,'甜美蕾丝修身打底裤',40,100,'甜美蕾丝修身打底裤蓝色','2013-01-01','2099-01-01',1,'2013-01-01'),(4,'条纹彩色波浪打底裤',39,100,'条纹彩色波浪打底裤条纹彩色波浪打底裤','2013-01-01','2099-01-01',1,'2013-01-01'),(5,'韩版糖果色针织打底裤 ',39,100,'果绿色韩版糖果色针织打底裤 ','2013-01-01','2099-01-01',1,'2013-01-01'),(6,'韩版糖果色针织打底裤',39,100,'韩版糖果色针织打底裤天蓝色','2013-01-01','2099-01-01',1,'2013-01-01'),(7,'笛凡DF短袖t恤 潮流韩版 刺绣标 热卖男修身POLO衫 墨绿(绿) L(170cm-175cm)',79,100,'潮流韩版 刺绣标 热卖男修身POLO衫 墨绿(绿) L(170cm-175cm)','2013-01-01','2099-01-01',1,'2013-01-01'),(8,'TZ.mall 2013秋装韩版薄款男装',80,100,'运动休闲 长袖圆领T恤 男 B205红色 XXL','2013-01-01','2099-01-01',1,'2013-01-01'),(9,'笛凡DF男装',88,100,'2013秋装 羽毛印花 植绒字母 圆领长袖打底T恤衫 墨绿 XL/180','2013-01-01','2099-01-01',1,'2013-01-01'),(10,'TZ.mall 2013新款 夏装男款圆领t恤',789,100,'男士短袖印花 时尚休闲T恤男 B115白色 M','2013-01-01','2099-01-01',1,'2013-01-01'),(11,'笛凡DF男装 2013秋装',56,100,'羽毛印花 植绒字母 圆领长袖打底T恤衫 墨绿 XL/180','2013-01-01','2099-01-01',1,'2013-01-01'),(12,'无花优品2013男士秋装',67,100,'T恤男装针织长袖T恤 FK027027 宝蓝 175/L','2013-01-01','2099-01-01',1,'2013-01-01'),(13,'汉司 男装秋装长袖男t恤',89,100,'2013潮韩版打底衫男士长袖t恤 v领修身t恤 81076墨绿 XL','2013-01-01','2099-01-01',1,'2013-01-01'),(14,'与狼共舞男装 男士长袖T恤',112,100,'2013秋装新款 纯棉多彩 6011 黑色 175/92A(XL)','2013-01-01','2099-01-01',1,'2013-01-01'),(15,'七匹狼Septwolves男装',221,100,'2013秋装新品男士多彩t长袖T恤1350 001黑色 175/92A(XL)','2013-01-01','2099-01-01',1,'2013-01-01'),(17,'KOOL男装衣服小V领短袖T恤',333,100,'KOOL男装衣服小V领短袖T恤男纯色纯棉打底衫男士半袖短袖男t恤13202022A 白色 XL','2013-01-01','2099-01-01',1,'2013-01-01'),(18,'与狼共舞长袖T恤',54,100,'男士秋装新品 纯棉翻领条纹t 6534 墨绿 175/92A(XL)','2013-01-01','2099-01-01',1,'2013-01-01'),(19,'拜森2013秋装男装T恤',77,100,'拜森2013秋装男装T恤男士长袖t恤韩版修身BI130018 深蓝色 XL','2013-01-01','2099-01-01',1,'2013-01-01'),(20,'无花优品 2013秋装新品',90,100,'无花优品 2013秋装新品时尚假两件翻领长袖T恤 X136E01 黑色 L','2013-01-01','2099-01-01',1,'2013-01-01');
delete from `wx_prdt_category`;
INSERT INTO `wx_prdt_category` (`id`, `productid`, `subcategoryid`, `createdate`) VALUES (1,1,1,'2013-01-01'),(2,2,1,'2013-01-01'),(3,3,1,'2013-01-01'),(4,4,1,'2013-01-01'),(5,5,1,'2013-01-01'),(6,6,1,'2013-01-01'),(7,7,1,'2013-01-01'),(8,8,1,'2013-01-01'),(9,9,1,'2013-01-01'),(10,10,1,'2013-01-01'),(11,11,1,'2013-01-01'),(12,12,1,'2013-01-01'),(13,13,1,'2013-01-01'),(14,14,1,'2013-01-01'),(15,15,1,'2013-01-01'),(16,16,1,'2013-01-01'),(17,17,1,'2013-01-01'),(18,18,1,'2013-01-01'),(19,19,1,'2013-01-01'),(20,20,1,'2013-01-01'),(21,4,2,'2013-01-01'),(22,5,2,'2013-01-01'),(23,6,2,'2013-01-01'),(24,7,2,'2013-01-01'),(25,8,2,'2013-01-01'),(26,9,2,'2013-01-01'),(27,10,2,'2013-01-01'),(28,11,2,'2013-01-01'),(29,12,2,'2013-01-01'),(30,13,2,'2013-01-01'),(31,14,2,'2013-01-01'),(32,13,3,'2013-01-01'),(33,14,3,'2013-01-01'),(34,15,3,'2013-01-01'),(35,16,3,'2013-01-01'),(36,17,3,'2013-01-01'),(37,18,3,'2013-01-01'),(38,2,4,'2013-01-01'),(39,3,4,'2013-01-01'),(40,4,4,'2013-01-01'),(41,5,4,'2013-01-01'),(42,6,4,'2013-01-01'),(43,7,4,'2013-01-01'),(44,8,4,'2013-01-01'),(45,9,4,'2013-01-01'),(46,10,4,'2013-01-01'),(47,11,4,'2013-01-01'),(48,12,4,'2013-01-01'),(49,13,4,'2013-01-01'),(50,14,4,'2013-01-01'),(51,15,4,'2013-01-01'),(52,9,5,'2013-01-01'),(53,10,5,'2013-01-01'),(54,11,5,'2013-01-01'),(55,12,5,'2013-01-01'),(56,13,5,'2013-01-01'),(57,14,5,'2013-01-01'),(58,15,5,'2013-01-01'),(59,16,5,'2013-01-01'),(60,17,5,'2013-01-01'),(61,18,5,'2013-01-01'),(62,19,5,'2013-01-01'),(63,20,5,'2013-01-01'),(64,15,6,'2013-01-01'),(65,16,6,'2013-01-01'),(66,17,6,'2013-01-01'),(67,18,6,'2013-01-01'),(68,19,6,'2013-01-01'),(69,20,6,'2013-01-01'),(70,1,7,'2013-01-01'),(71,2,7,'2013-01-01'),(72,3,7,'2013-01-01'),(73,4,7,'2013-01-01'),(74,5,7,'2013-01-01'),(75,6,7,'2013-01-01'),(76,7,7,'2013-01-01'),(77,8,7,'2013-01-01'),(78,9,7,'2013-01-01'),(79,10,7,'2013-01-01'),(80,11,7,'2013-01-01'),(81,12,7,'2013-01-01'),(82,3,8,'2013-01-01'),(83,4,8,'2013-01-01'),(84,5,8,'2013-01-01'),(85,6,8,'2013-01-01'),(86,7,8,'2013-01-01'),(87,8,8,'2013-01-01'),(88,9,8,'2013-01-01'),(89,10,8,'2013-01-01'),(90,14,9,'2013-01-01'),(91,15,9,'2013-01-01'),(92,16,9,'2013-01-01'),(93,17,9,'2013-01-01'),(94,18,9,'2013-01-01'),(95,19,9,'2013-01-01'),(96,20,9,'2013-01-01'),(97,3,10,'2013-01-01'),(98,4,10,'2013-01-01'),(99,5,10,'2013-01-01'),(100,6,10,'2013-01-01'),(101,7,10,'2013-01-01'),(102,8,10,'2013-01-01'),(103,9,10,'2013-01-01'),(104,10,10,'2013-01-01'),(105,11,10,'2013-01-01'),(106,12,10,'2013-01-01'),(107,13,10,'2013-01-01'),(108,14,10,'2013-01-01'),(109,4,11,'2013-01-01'),(110,5,11,'2013-01-01'),(111,6,11,'2013-01-01'),(112,7,11,'2013-01-01'),(113,8,11,'2013-01-01'),(114,9,11,'2013-01-01'),(115,10,11,'2013-01-01'),(116,11,11,'2013-01-01'),(117,12,11,'2013-01-01'),(118,13,11,'2013-01-01'),(119,14,11,'2013-01-01'),(120,15,11,'2013-01-01'),(121,16,11,'2013-01-01'),(122,17,11,'2013-01-01'),(123,18,11,'2013-01-01'),(124,19,11,'2013-01-01');
delete from `wx_product_pic`;
INSERT INTO `wx_product_pic` (`id`, `picname`, `picurl`, `productid`, `flag`, `createdate`) VALUES (1,'图片1','/1/sp1.jpg',1,'0','2013-01-01'),(2,'图片2','/1/sp2.jpg',2,'0','2013-01-01'),(3,'图片3','/1/sp3.jpg',3,'0','2013-01-01'),(4,'图片4','/1/sp4.jpg',4,'0','2013-01-01'),(5,'图片5','/1/sp5.jpg',5,'0','2013-01-01'),(6,'图片6','/1/sp6.jpg',6,'0','2013-01-01'),(7,'图片7','/1/21.jpg',7,'0','2013-01-01'),(8,'图片8','/1/22.jpg',8,'0','2013-01-01'),(9,'图片9','/1/23.jpg',9,'0','2013-01-01'),(10,'图片10','/1/24.jpg',10,'0','2013-01-01'),(11,'图片11','/1/25.jpg',11,'0','2013-01-01'),(12,'图片12','/1/26.jpg',12,'0','2013-01-01'),(13,'图片13','/1/27.jpg',13,'0','2013-01-01'),(14,'图片14','/1/28.jpg',14,'0','2013-01-01'),(15,'图片15','/1/29.jpg',15,'0','2013-01-01'),(16,'图片16','/1/30.jpg',16,'0','2013-01-01'),(17,'图片17','/1/31.jpg',17,'0','2013-01-01'),(18,'图片18','/1/32.jpg',18,'0','2013-01-01'),(19,'图片19','/1/33.jpg',19,'0','2013-01-01'),(20,'图片20','/1/34.jpg',20,'0','2013-01-01');
delete from `wx_product_category`;
INSERT INTO `wx_product_category` (`id`, `mallid`, `categoryname`, `description`, `style`, `createdate`) VALUES (1,1,'全部商品','全部商品','1','2013-01-01'),(2,1,'活动专区','活动专区','2','2013-01-01'),(3,1,'最新上架','最新上架','2','2013-01-01'),(4,1,'潮流趋势','潮流趋势','3','2013-01-01');
delete from `wx_product_price`;
INSERT INTO `wx_product_price` (`id`, `productid`, `effectivedate`, `expirydate`, `saleprice`, `expenses`, `createdate`, `count`, `mallid`, `malluserid`, `orderid`, `price`) VALUES (1,1,'2013-01-01','2099-01-01',31,5,'2013-01-01',NULL,NULL,NULL,NULL,NULL),(2,2,'2013-01-01','2099-01-01',32,6,'2013-01-01',NULL,NULL,NULL,NULL,NULL),(3,3,'2013-01-01','2099-01-01',33,5,'2013-01-01',NULL,NULL,NULL,NULL,NULL),(4,4,'2013-01-01','2099-01-01',34,5,'2013-01-01',NULL,NULL,NULL,NULL,NULL),(5,5,'2013-01-01','2099-01-01',36,5,'2013-01-01',NULL,NULL,NULL,NULL,NULL),(6,6,'2013-01-01','2099-01-01',37,6,'2013-01-01',NULL,NULL,NULL,NULL,NULL);

COMMIT;

