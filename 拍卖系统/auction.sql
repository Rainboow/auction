/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : auction

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-06-21 20:11:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `stopTime` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('2', '瓶子', '这是个好啊好瓶子', '2016-06-13 16:52:51', '2016-06-13 17:53:07', '2000', 'products/u=1213858814,1013084303&fm=116&gp=0.jpg');
INSERT INTO `product` VALUES ('2006', '好瓶子', '藏品正面图案为“双龙戏珠”,下环铸“大日本”和“明治八年”字样、上环铸“416.one.yen.900”字样。背面的图案为环绕的珠圈和设计独特的小太阳图案,两侧为两枝呈弧形排列的樱花枝叶,在中间的文字为汉字“壹万圆”“铂”“金”二字分列左右，下面是绸带扎成的同心结；此藏品保存完好，具有极高的收藏价值。', '2016-05-05 12:30:00', '2016-09-07 12:30:00', '18800', 'products/09564069.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2004', '乾隆孝粉玉碗玉碟', ' 乾隆年制年间曾出现一位超高玉匠，带有几个徒弟，统称为乾隆工，当时最高端玉器制作离不开他们，典型的玉器就是乾隆年制玉碗，制作这个玉碗需要大师和几个师徒精心合作才能成功，是一个空前绝后的玉雕艺术彩花，此碗玉质白皙，晶莹剔透，花纹精美，底部有篆书“乾隆年制”字样，包浆浓厚，此乃上等之物', '2010-05-06 12:30:00', '2010-05-07 12:30:00', '10000', 'products/10424406.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2005', '远古石陨石', '陨石是地球以外未燃尽的宇宙流星脱离原有运行轨道或呈碎块飞快散落到地球或其它行星表面的石质的、铁质的或是石铁混合物质，也称\"陨星\"。', '2016-05-05 12:30:00', '2016-09-07 12:30:00', '200000', 'products/11403254.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2007', '亚洲犀牛角鼻烟壶', '犀牛角，俗称的亚洲角，小的一二斤，大的十几斤重，犀角为珍贵的中药材和雕刻原料。犀角有纹丝，而且较直，较粗。犀角横切面为小砂眼，形似蜂窝状，斜切面为鱼籽状纹，犀角的纹丝都是直线形，互不粘连，有破茬处用手一撕轻松到头，犀角圆身的上面有一深沟，底部洼进部分底面凸出一条岗，俗称天沟地岗。是一种名贵的中药和雕刻材料。', '2010-05-06 12:30:00', '2010-05-07 12:30:00', '13800', 'products/11403254.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2008', '和田籽料', '籽料（传统上习惯于写作“籽料”或“仔料”。现在有学者考证，认为称作“籽料”比较洽意，我因赞同这一观点而采用之），又称为子玉。目前虽然有人认为子玉的成因不是来自风化剥离出来的山料，而是形成于产出地的岩浆岩类中。', '2016-05-05 02:30:00', '2016-05-07 12:30:00', '30000', 'products/11531241.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2009', '明·天顺青花波斯文字三足炉', '高11.5cm，口径15.3cm，足距14cm。\r\n炉呈筒形，唇口，平底，下承以三足。内光素无纹饰，外青花装饰。口沿处绘青花单线连续回纹一周，炉底边有两条青花弦线横越三足。腹部以青花料书写有三行波斯文，取自波斯诗人萨迪的诗集《果园》。', '2016-05-05 02:30:00', '2016-05-07 12:30:00', '3000', 'products/12145273.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2010', '清中期官帽椅', '以其造型酷似古代官员的官帽而得其名。官帽椅分南官帽椅和四出头式官帽椅两种。', '2010-05-06 12:30:00', '2010-05-07 12:30:00', '10000', 'products/09564069.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2011', '金丝楠木首饰盒', '金丝楠木中国约有34种，国家级权威机构是位于大红门的国家家具木材鉴定中心金丝楠木性稳定，不翘不裂，经久耐用；再加上它性温和、冬暖夏凉，香气清新宜人。历史上金丝楠木专用于皇家宫殿、少数寺庙的建筑和家具，帝王龙椅宝座也都要选用优质楠木制作，民间如有人擅自使用，会因逾越礼制而获罪。金丝楠木的首饰盒更加珍贵。', '2016-05-05 12:30:00', '2016-09-07 12:30:00', '13800', 'products/03113768.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2012', '铜胎掐丝珐琅天球瓶', '铜胎掐丝珐琅天球瓶一对，色泽品质一流，不可多得', '2016-05-05 02:30:00', '2016-05-07 12:30:00', '10000', 'products/11033795.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2013', '民国喜字罐', '据考证，这种青花缠枝勾莲纹双喜字罐，最早出现在清嘉庆年间，连续生产至民国初期，至今民间祖上为富豪大宅人家的家中仍可见到，这种青花喜字罐给民间婚嫁喜事增添了喜庆吉利的色彩。其断代的要点是：时代越晚喜字越大，喜字上头的土字头二横长短也相差越大，喜字也由双勾填色改为一笔刷成，勾莲纹也由细笔描绘填色而变为简笔乱　，杂乱无章', '2010-05-05 12:30:00', '2010-05-07 12:30:00', '13800', 'products/11403254.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2014', '错金银圆雕瑞兽玉摆件', '镇宅之宝', '2010-05-05 12:30:00', '2016-09-07 12:30:00', '10000', 'products/11403254.jpg.thumb.jpg');
INSERT INTO `product` VALUES ('2016', '111乾隆孝粉玉碗玉碟', ' 乾隆年制年间曾出现一位超高玉匠，带有几个徒弟，统称为乾隆工，当时最高端玉器制作离不开他们，典型的玉器就是乾隆年制玉碗，制作这个玉碗需要大师和几个师徒精心合作才能成功，是一个空前绝后的玉雕艺术彩花，此碗玉质白皙，晶莹剔', '2016-05-05 12:30:00', '2016-09-07 12:30:00', '3000', 'products/11403254.jpg.thumb.jpg');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rDate` date DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `idNum` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user', 'user', null, null);
INSERT INTO `user` VALUES ('3', 'user2', 'user2', null, null);
INSERT INTO `user` VALUES ('4', 'user3', 'user3', null, null);
