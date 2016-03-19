/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50540
Source Host           : 123.56.102.103:3306
Source Database       : wanfang

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-01-26 17:02:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wf_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `wf_admin_user`;
CREATE TABLE `wf_admin_user` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for wf_all_city
-- ----------------------------
DROP TABLE IF EXISTS `wf_all_city`;
CREATE TABLE `wf_all_city` (
  `cid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `pid` tinyint(20) DEFAULT NULL COMMENT '父类id',
  `datecreated` datetime DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_all_city
-- ----------------------------
INSERT INTO `wf_all_city` VALUES ('1', '哈尔滨', '0', null, null);
INSERT INTO `wf_all_city` VALUES ('2', '双鸭山', '0', null, null);
INSERT INTO `wf_all_city` VALUES ('3', '七台河', '0', null, null);
INSERT INTO `wf_all_city` VALUES ('35', '道里区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('36', '南岗区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('37', '道外区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('38', '香坊区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('39', '动力区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('40', '平房区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('41', '松北区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('42', '呼兰区', '1', null, null);
INSERT INTO `wf_all_city` VALUES ('43', '尖山区', '2', null, null);
INSERT INTO `wf_all_city` VALUES ('44', '岭东区', '2', null, null);
INSERT INTO `wf_all_city` VALUES ('45', '四方台区', '2', null, null);
INSERT INTO `wf_all_city` VALUES ('46', '宝山区', '2', null, null);
INSERT INTO `wf_all_city` VALUES ('47', '新兴区', '3', null, null);
INSERT INTO `wf_all_city` VALUES ('48', '桃山区', '3', null, null);
INSERT INTO `wf_all_city` VALUES ('49', '茄子河区', '3', null, null);

-- ----------------------------
-- Table structure for wf_all_district
-- ----------------------------
DROP TABLE IF EXISTS `wf_all_district`;
CREATE TABLE `wf_all_district` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_all_district
-- ----------------------------
INSERT INTO `wf_all_district` VALUES ('35', '道里区', '1');
INSERT INTO `wf_all_district` VALUES ('36', '南岗区', '1');
INSERT INTO `wf_all_district` VALUES ('37', '道外区', '1');
INSERT INTO `wf_all_district` VALUES ('38', '香坊区', '1');
INSERT INTO `wf_all_district` VALUES ('39', '动力区', '1');
INSERT INTO `wf_all_district` VALUES ('40', '平房区', '1');
INSERT INTO `wf_all_district` VALUES ('41', '松北区', '1');
INSERT INTO `wf_all_district` VALUES ('42', '呼兰区', '1');
INSERT INTO `wf_all_district` VALUES ('43', '尖山区', '2');
INSERT INTO `wf_all_district` VALUES ('44', '岭东区', '2');
INSERT INTO `wf_all_district` VALUES ('45', '四方台区', '2');
INSERT INTO `wf_all_district` VALUES ('46', '宝山区', '2');
INSERT INTO `wf_all_district` VALUES ('47', '新兴区', '3');
INSERT INTO `wf_all_district` VALUES ('48', '桃山区', '3');
INSERT INTO `wf_all_district` VALUES ('49', '茄子河区', '3');

-- ----------------------------
-- Table structure for wf_feedback
-- ----------------------------
DROP TABLE IF EXISTS `wf_feedback`;
CREATE TABLE `wf_feedback` (
  `vip_msgid` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `vip_msgcontent` varchar(255) NOT NULL COMMENT '会员给网站留言内容',
  `vip_parentid` mediumint(11) NOT NULL COMMENT '首条留言',
  `vip_titid` mediumint(11) NOT NULL COMMENT '留言标题',
  `vip_msgtitle` varchar(255) NOT NULL,
  `vip_msgname` varchar(255) NOT NULL COMMENT '留言会员',
  `vip_msgtype` int(11) NOT NULL,
  PRIMARY KEY (`vip_msgid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_feedback
-- ----------------------------
INSERT INTO `wf_feedback` VALUES ('3', '有奥利奥牌的月饼吗', '0', '3', '月饼', 'seller', '4');
INSERT INTO `wf_feedback` VALUES ('4', '这个名字太难听了', '0', '4', '仓买', 'seller', '1');
INSERT INTO `wf_feedback` VALUES ('6', '贵公司还招加盟商吗', '0', '6', '招商', 'seller', '2');
INSERT INTO `wf_feedback` VALUES ('7', '不好意思，没有这个牌子的', '3', '3', '月饼', '管理员', '1');
INSERT INTO `wf_feedback` VALUES ('8', '我是新用户', '0', '8', '哦哦哦', 'admin', '0');
INSERT INTO `wf_feedback` VALUES ('9', '这个版本好像有点不一样呀', '0', '9', '版本', 'admin', '0');
INSERT INTO `wf_feedback` VALUES ('10', '瓦尔特', '0', '10', '阿斯顿飞规划局', 'admin', '0');
INSERT INTO `wf_feedback` VALUES ('11', '', '0', '11', '', 'admin', '0');

-- ----------------------------
-- Table structure for wf_gys_goods
-- ----------------------------
DROP TABLE IF EXISTS `wf_gys_goods`;
CREATE TABLE `wf_gys_goods` (
  `gys_gid` int(255) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `gys_gname` varchar(255) NOT NULL COMMENT '商品名称',
  `gys_photo` varchar(255) NOT NULL COMMENT '商品图片',
  `gys_vipprice` float(255,2) NOT NULL COMMENT '会员价 ',
  `gys_price` float(255,2) DEFAULT NULL,
  `gys_info` varchar(255) DEFAULT NULL COMMENT '商品信息',
  `gys_kid` int(255) NOT NULL COMMENT '商品所属分类ID',
  `gys_num` int(255) NOT NULL COMMENT '库存',
  `gys_uptime` varchar(255) NOT NULL COMMENT '添加时间',
  `gys_status` int(255) NOT NULL COMMENT '商品状态 1上架 0下架',
  `gys_colnum` varchar(255) DEFAULT NULL COMMENT '收藏数量',
  `gys_elite` varchar(255) DEFAULT NULL COMMENT '推荐',
  `gys_txm` varchar(255) DEFAULT NULL COMMENT '条形码',
  `gys_storeid` int(255) NOT NULL,
  `gys_storename` varchar(255) NOT NULL COMMENT '店铺名称',
  `gys_salenum` varchar(255) DEFAULT NULL COMMENT '卖出量',
  `gys_id` int(255) NOT NULL,
  `gys_did` int(255) NOT NULL,
  `gys_spgg` varchar(255) DEFAULT NULL,
  `gys_spdw` varchar(255) DEFAULT NULL COMMENT '商品单位',
  `gys_spbh` int(255) NOT NULL COMMENT '商品编号',
  `gys_hot` int(255) DEFAULT NULL COMMENT '是否热销 1是',
  PRIMARY KEY (`gys_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=627 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_goods
-- ----------------------------
INSERT INTO `wf_gys_goods` VALUES ('113', '汰渍洗衣粉薰衣草', '/Public/Home/images/2016-01-15/5643e26f39709.png', '7.08', '0.00', '', '59', '0', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('114', '碧浪洗衣粉无磷', '/Public/Home/images/2016-01-15/5643e2f00cd3e.jpg', '4.31', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('112', '汰渍洗衣粉柠檬', '/Public/Home/images/2016-01-15/5643e1d9dd656.jpg', '2.35', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('115', '奇盟小麦白啤酒', '/Public/Home/images/2016-01-15/5643e3c89c571.jpg', '49.50', '0.00', '', '34', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('116', '菲尔德堡小麦啤酒', '/Public/Home/images/2016-01-15/5643e450d52c2.jpg', '5.50', '0.00', '', '34', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('117', '菲尔德堡小麦啤酒', '/Public/Home/images/2016-01-15/5643e4a3cd4c5.jpg', '49.50', '0.00', '', '34', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('118', '菲尔德堡浓色啤酒', '/Public/Home/images/2016-01-15/5643e4e27dce8.jpg', '5.50', '0.00', '', '34', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('119', '坦克伯爵白啤酒', '/Public/Home/images/2016-01-15/5643e51472706.png', '6.50', '0.00', '', '34', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('120', '加多宝', '/Public/Home/images/2016-01-15/5643e561e5105.jpg', '3.25', '0.00', '', '36', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('121', '加多宝', '/Public/Home/images/2016-01-15/5643e594091d5.jpg', '3.74', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('122', '五粮液浓香型39度', '/Public/Home/images/2016-01-15/5643e5eda86a7.jpg', '550.00', '0.00', null, '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('123', '五粮液52度', '/Public/Home/images/2016-01-15/5643e62193263.jpg', '720.00', '0.00', null, '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('124', '水井坊52度', '/Public/Home/images/2016-01-15/5643e65609d41.jpg', '560.00', '0.00', null, '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('125', '三环铁锁38mm', '/Public/Home/images/2016-01-15/5643e6ef209f9.jpg', '5.50', '0.00', '', '76', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('126', '三环铁锁50mm', '/Public/Home/images/2016-01-15/5643e71a9c745.jpg', '7.50', '0.00', '', '76', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('127', '三环铁锁63mm', '/Public/Home/images/2016-01-15/5643e749ba8a4.jpg', '10.50', '0.00', '', '76', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('128', '三环牌铁锁75mm', '/Public/Home/images/2016-01-15/5643e799923b6.jpg', '12.50', '0.00', '', '76', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('129', '乌江涪陵鲜爽榨菜丝', '/Public/Home/images/2016-01-15/5643e830e3919.jpg', '1.20', '0.00', '', '56', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('130', '乌江涪陵爽脆榨菜芯', '/Public/Home/images/2016-01-15/5643e85d237cf.jpg', '1.20', '0.00', '', '56', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('131', '乌江野山椒味凉拌海带丝', '/Public/Home/images/2016-01-15/5643e8895bc17.png', '1.60', '0.00', '', '56', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('132', '乌江美味萝卜', '/Public/Home/images/2016-01-15/5643e8b2b8ba3.jpg', '1.20', '0.00', '', '56', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('133', '乌江鲜香味凉拌海带丝', '/Public/Home/images/2016-01-15/5643e8eebc467.jpg', '1.60', '0.00', '', '56', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('134', '百奇巧克力味', '/Public/Home/images/2016-01-15/5643e945e02ec.jpg', '4.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('135', '百奇牛奶味', '/Public/Home/images/2016-01-15/5643e971e7420.jpg', '4.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('136', '百醇抹茶慕斯味', '/Public/Home/images/2016-01-15/5643e99968d75.jpg', '5.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('137', '百醇红酒巧克力味', '/Public/Home/images/2016-01-15/5643e9bfe5315.jpg', '5.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('138', '贵州茅台53度', '/Public/Home/images/2016-01-15/5643e9f2de6e4.jpg', '900.00', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('139', '佳洁士草本水晶牙膏', '/Public/Home/images/2016-01-15/5643ea29a0551.jpg', '3.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('140', '佳洁士盐白牙膏', '/Public/Home/images/2016-01-15/5643ea56b82bf.jpg', '3.20', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('141', '飘柔洗发露兰花400ML', '/Public/Home/images/2016-01-15/5643ea962fb0e.jpg', '17.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('142', '飘柔洗发露杏仁400ML', '/Public/Home/images/2016-01-15/5643eabd7c630.jpg', '17.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('143', '飘柔洗发露山茶400ML', '/Public/Home/images/2016-01-15/5643eae4e3bb6.jpg', '17.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('144', '海飞丝洗发露丝质柔滑400ML', '/Public/Home/images/2016-01-15/5643eb208a411.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('145', '海飞丝去屑洗发露丝质柔滑型200ML', '/Public/Home/images/2016-01-15/5643eb46c4c9b.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('146', '海飞丝去屑怡身冰凉型400ML', '/Public/Home/images/2016-01-15/5643eb6de7651.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('147', '海飞丝去屑洗发露怡神冰凉型200ML', '/Public/Home/images/2016-01-15/5643eb9893cec.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('148', '海飞丝去屑洗发露清爽去油400ML', '/Public/Home/images/2016-01-15/5643ebbf88013.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('149', '海飞丝去屑洗发露清爽型200ML', '/Public/Home/images/2016-01-15/5643ebe4187c0.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('150', '海飞丝去屑洗发露深层洁净400ML', '/Public/Home/images/2016-01-15/5643ec0ce95fd.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('151', '海飞丝去屑洗发露型深层洁净200ML', '/Public/Home/images/2016-01-15/5643ec3590b12.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('152', '海飞丝去屑洗发露黑亮强韧400ML', '/Public/Home/images/2016-01-15/5643ec5f4b152.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('153', '海飞丝去屑洗发露黑亮强韧200ML', '/Public/Home/images/2016-01-15/5643eca48c73e.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('154', '海飞丝去屑洗发露海洋活力型400ML', '/Public/Home/images/2016-01-15/5643ecd123b1a.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('155', '海飞丝去屑洗发露活力海洋型200ML', '/Public/Home/images/2016-01-15/5643ecf94096c.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('156', '海飞丝去屑洗发露柔润滋养型400ML', '/Public/Home/images/2016-01-15/5643ed50cdde5.jpg', '47.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('157', '舒肤佳芦荟沐浴露200ML', '/Public/Home/images/2016-01-15/5643ed910d9e5.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('158', '舒肤佳金银花沐浴露200ML', '/Public/Home/images/2016-01-15/5643edb6c48f5.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('159', '舒肤佳沐浴露柠檬200ML', '/Public/Home/images/2016-01-15/5643eddd69269.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('160', '舒肤佳薄荷沐浴露200ML', '/Public/Home/images/2016-01-15/5643ee075dcac.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('161', '舒肤佳维他命E沐浴露200ML', '/Public/Home/images/2016-01-15/5643ee29b29ae.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('162', '汰渍全效炫白洗衣皂', '/Public/Home/images/2016-01-15/5643ee66d58a7.jpg', '4.30', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('163', '飘柔丝滑轻盈护发素200ML', '/Public/Home/images/2016-01-15/5643f2c5cf870.jpg', '6.60', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('164', '飘柔水润滋养护发素200ML', '/Public/Home/images/2016-01-15/5643f2f0c6675.jpg', '6.60', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('165', '汰渍净白去渍', '/Public/Home/images/2016-01-15/5643f34856664.jpg', '11.83', '0.00', '', '59', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('166', '舒肤佳纯白沐浴露200ML', '/Public/Home/images/2016-01-15/5643f3a65e623.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('167', '护舒宝棉柔日用', '/Public/Home/images/2016-01-15/5643f3e99568b.jpg', '3.79', '0.00', '', '61', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('168', '护舒宝夜用棉柔10片280mm', '/Public/Home/images/2016-01-15/5643f40bcfb49.jpg', '4.20', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('169', '潘婷丝质顺滑精华素200ML', '/Public/Home/images/2016-01-15/5643f46b1e4f5.jpg', '18.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('170', '潘婷乳液修复洗发露400ML', '/Public/Home/images/2016-01-15/5643f4949183e.jpg', '33.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('171', '潘婷丝质润滑洗发露400ML', '/Public/Home/images/2016-01-15/5643f4bb84c4e.jpg', '33.00', '0.00', '', '60', '1000', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('172', '潘婷乳液修护发素200ML', '/Public/Home/images/2016-01-15/5643f4e9644e3.jpg', '18.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('173', '潘婷柔顺直发洗发露400ML', '/Public/Home/images/2016-01-15/5643f515483ae.jpg', '33.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('174', '潘婷丝质润滑去屑洗发露400ML', '/Public/Home/images/2016-01-15/5643f53cc26da.jpg', '33.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('175', '潘婷乌黑莹亮洗发露400ML', '/Public/Home/images/2016-01-15/5643f5809ebb2.jpg', '33.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('176', '汰渍全效360（小）', '/Public/Home/images/2016-01-15/5643f5d38df2c.jpg', '19.60', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('177', '汰渍全效360', '/Public/Home/images/2016-01-15/5643f5fa80a08.jpg', '38.30', '0.00', '', '59', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('178', '海飞丝去屑洗发露止痒200ML', '/Public/Home/images/2016-01-15/5643f64d3d131.jpg', '26.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('179', '飘柔洗发露芦荟400ML', '/Public/Home/images/2016-01-15/5643f685d072e.jpg', '17.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('180', '飘柔洗发露葵花籽400ML', '/Public/Home/images/2016-01-15/5643f6abb0626.jpg', '17.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('181', '汰渍薰衣草洗衣液（小）', '/Public/Home/images/2016-01-15/5643f7068d3c7.jpg', '20.00', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('182', '汰渍薰衣草洗衣液', '/Public/Home/images/2016-01-15/5643f72b3ea76.jpg', '38.30', '0.00', '', '59', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('183', '舒肤佳柠檬清新型香皂', '/Public/Home/images/2016-01-15/5643f758b3e8f.jpg', '5.00', '0.00', '', '61', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('184', '舒肤佳芦荟香皂', '/Public/Home/images/2016-01-15/5643f77903985.jpg', '5.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('185', '舒肤佳纯白清香型', '/Public/Home/images/2016-01-15/5643f79d121b2.jpg', '5.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('186', '汰渍全效360洗衣皂', '/Public/Home/images/2016-01-15/5643f808e9ebf.jpg', '3.90', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('187', '潘婷烫染修复洗发露400ML', '/Public/Home/images/2016-01-15/5643f86910e7a.jpg', '33.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('188', '潘婷乳液修复精华素200ML', '/Public/Home/images/2016-01-15/5643f8c92461d.jpg', '18.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('189', '碧浪专业去渍洗衣皂(茉莉香型)', '/Public/Home/images/2016-01-15/5643f9744dddc.jpg', '4.20', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('190', '佳洁士炫白双效牙膏', '/Public/Home/images/2016-01-15/5643f9c75c603.jpg', '7.70', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('191', '碧浪洁护如新洗衣液', '/Public/Home/images/2016-01-15/5643fa343df21.jpg', '22.90', '0.00', '', '59', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('192', '碧浪洁护如新洗衣液', '/Public/Home/images/2016-01-15/5643fa5986eda.jpg', '39.00', '0.00', '', '59', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('193', '潘婷丝质顺滑洗发露170ML', '/Public/Home/images/2016-01-15/5643faa7d4109.jpg', '16.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('194', '潘婷丝质顺滑去屑洗发露170ML', '/Public/Home/images/2016-01-15/5643fbbe3cf27.jpg', '16.00', '0.00', '', '60', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('195', '海飞丝男士屑洗发露净爽型200ML', '/Public/Home/images/2016-01-15/5643fc08eb3c5.jpg', '25.50', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('196', '潘婷乳液修复洗发露170ML', '/Public/Home/images/2016-01-15/5643fc2e6aa25.png', '16.00', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('197', '潘婷烫染修复洗发露170ML', '/Public/Home/images/2016-01-15/5643fc52639a9.jpg', '16.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('198', '舒肤佳蜂蜜沐浴露200ML', '/Public/Home/images/2016-01-15/5643fc8ad4d5f.png', '13.20', '0.00', '', '62', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('199', '舒肤佳薰衣草沐浴露200ML', '/Public/Home/images/2016-01-15/5643fcd4d662b.jpg', '13.20', '0.00', '', '62', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('200', '舒肤佳蜂蜜香皂', '/Public/Home/images/2016-01-15/5643fcfc01cda.jpg', '5.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('201', '舒肤佳薰衣草香皂', '/Public/Home/images/2016-01-15/5643fd1f04abc.jpg', '5.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('202', '潘婷水润滋养精华素200ML', '/Public/Home/images/2016-01-15/5643fd51e7b71.jpg', '18.00', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('203', '飘柔洗发露（兰花）', '/Public/Home/images/2016-01-15/5643fd8bf2347.jpg', '8.30', '0.00', '', '60', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('204', '飘柔洗发露（兰花洁顺）', '/Public/Home/images/2016-01-15/5643fdb08e666.jpg', '8.30', '0.00', '', '60', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('205', '飘柔洗发露绿茶190ML', '/Public/Home/images/2016-01-15/5643fdebe1d9e.jpg', '8.30', '0.00', '', '60', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('206', '飘柔洗发露（芦荟）', '/Public/Home/images/2016-01-15/5643fe28eb95c.jpg', '8.30', '0.00', '', '60', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('207', '飘柔洗发露葵花籽190ML', '/Public/Home/images/2016-01-15/5643fea1b88bd.jpg', '8.30', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('208', '飘柔洗发露（山茶）', '/Public/Home/images/2016-01-15/5643fec67625c.jpg', '8.30', '0.00', '', '60', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('209', '七度空间棉柔花垫18片', '/Public/Home/images/2016-01-15/5643ff0f9bbb7.jpg', '3.96', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('210', '七度空间冰感护垫28片', '/Public/Home/images/2016-01-15/5643ff334e5a8.jpg', '4.16', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('211', '心相印卷纸1800g', '/Public/Home/images/2016-01-15/5643ff7a7b52d.jpg', '23.50', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('212', '高露洁深洁牙刷', '/Public/Home/images/2016-01-15/5643ffc175192.jpg', '2.00', '0.00', '', '61', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('213', '柔柔瞬吸贴身棉柔日用10片240', '/Public/Home/images/2016-01-15/56440020d86c6.png', '3.40', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('214', '柔柔瞬吸贴身棉柔10片290', '/Public/Home/images/2016-01-15/5644004582bd2.jpg', '4.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('215', '中国劲酒', '/Public/Home/images/2016-01-15/5644007e1ddfe.jpg', '8.00', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('216', '中国劲酒258ML', '/Public/Home/images/2016-01-15/564400a107f01.jpg', '17.00', '0.00', '', '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('217', '上好佳鲜虾条（小）', '/Public/Home/images/2016-01-15/564400de61021.jpg', '3.00', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('218', '上好佳鲜虾片（小）', '/Public/Home/images/2016-01-15/564401028d58f.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('219', '上好佳栗米条草莓口味', '/Public/Home/images/2016-01-15/5644012fd7402.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('220', '上好佳栗米条朱古力口味', '/Public/Home/images/2016-01-15/56440156b5d65.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('221', '上好佳棉花糖绿苹果口味', '/Public/Home/images/2016-01-15/56440194b41c7.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('222', '上好佳棉花糖香草口味', '/Public/Home/images/2016-01-15/564401c36a381.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('223', '上好佳棉花糖草莓口味', '/Public/Home/images/2016-01-15/564401ec5e181.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('224', '上好佳田园薯片番茄口味', '/Public/Home/images/2016-01-15/564402336b71a.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('225', '上好佳田园薯片香辣口味', '/Public/Home/images/2016-01-15/5644025da37c4.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('226', '上好佳田园薯片烤肉口味', '/Public/Home/images/2016-01-15/564402825b25f.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('227', '六必居酱150G', '/Public/Home/images/2016-01-15/56440369e8c64.jpg', '1.00', '0.00', '', '52', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('228', '六必居腐乳', '/Public/Home/images/2016-01-15/564403c155329.jpg', '5.80', '0.00', '', '52', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('229', '六必居纯芝麻酱', '/Public/Home/images/2016-01-15/564403f07b5ad.jpg', '8.00', '0.00', '', '55', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('230', '六必居百分百纯芝麻香油', '/Public/Home/images/2016-01-15/56440435b6a3f.jpg', '9.70', '0.00', '', '48', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('231', '六必居料酒', '/Public/Home/images/2016-01-15/564404983fcab.jpeg', '5.00', '0.00', '', '45', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('232', '六必居精品老抽100%酿造酱油', '/Public/Home/images/2016-01-15/56440514ab9fd.jpg', '5.00', '0.00', '', '42', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('233', '六必居白醋500ml', '/Public/Home/images/2016-01-15/56440538810c8.jpg', '5.00', '0.00', '', '43', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('234', '三笑纤丝深洁牙刷', '/Public/Home/images/2016-01-15/56440579464eb.jpg', '2.50', '0.00', '', '61', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('235', '阿尔卑斯原味牛奶软糖', '/Public/Home/images/2016-01-15/56441f773e019.jpg', '1.50', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('236', '阿尔卑斯特质纯真高级牛奶硬糖', '/Public/Home/images/2016-01-15/56441fa33eb8e.jpg', '1.50', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('237', '阿尔卑斯硬糖草莓味', '/Public/Home/images/2016-01-15/56441fdb434f4.jpg', '1.50', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('238', '阿尔卑斯芒果牛奶味硬糖', '/Public/Home/images/2016-01-15/5644201adc381.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('239', '阿尔卑斯香草可乐味硬糖', '/Public/Home/images/2016-01-15/564420451a390.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('240', '阿尔卑斯高级牛奶味硬糖', '/Public/Home/images/2016-01-15/5644206e79ba5.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('241', '阿尔卑斯草莓牛奶味硬糖', '/Public/Home/images/2016-01-15/56442097351a8.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('242', '阿尔卑斯柠檬牛奶味硬糖', '/Public/Home/images/2016-01-15/564420cc3663b.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('243', '阿尔卑斯热带水果奶味硬糖', '/Public/Home/images/2016-01-15/564420f61b1d6.jpg', '0.40', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('244', '阿尔卑斯硬糖香橙味', '/Public/Home/images/2016-01-15/56442121cabe8.jpg', '1.50', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('245', '达利园派草莓味', '/Public/Home/images/2016-01-15/56442174dd18f.jpg', '4.88', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('246', '达利园熊字饼', '/Public/Home/images/2016-01-15/564421bd8c2e5.jpg', '1.80', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('247', '达利园手指饼', '/Public/Home/images/2016-01-15/564421e3ec29e.jpg', '1.80', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('248', '达利园字母饼', '/Public/Home/images/2016-01-15/56442228a5339.jpg', '1.80', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('249', '达利园派蛋黄味', '/Public/Home/images/2016-01-15/56442260db453.jpg', '4.88', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('250', '达利园派巧克力味', '/Public/Home/images/2016-01-15/5644229319890.jpg', '4.88', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('251', '达利园法式小面包', '/Public/Home/images/2016-01-15/564422d956f1b.jpg', '3.73', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('252', '达利园瑞士卷草莓味', '/Public/Home/images/2016-01-15/5644230682e40.jpg', '5.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('253', '达利园瑞士卷香橙味', '/Public/Home/images/2016-01-15/5644232f13d79.jpg', '5.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('254', '达利园瑞士卷巧克力味', '/Public/Home/images/2016-01-15/5644235729947.jpg', '5.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('255', '达利园瑞士卷香蕉味', '/Public/Home/images/2016-01-15/5644237c68adc.jpg', '5.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('256', '达利园法式软面包（香奶味）', '/Public/Home/images/2016-01-15/564423b22774b.jpg', '3.73', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('257', '达利园法式软面包（香橙味）', '/Public/Home/images/2016-01-15/564423e175410.jpg', '3.73', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('258', '达利园花生牛奶原味', '/Public/Home/images/2016-01-15/564424370f5d7.jpg', '3.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('259', '达利园花生牛奶核桃味', '/Public/Home/images/2016-01-15/56442460a06c9.jpg', '3.20', '0.00', '', '38', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('260', '达利园欧式蛋糕', '/Public/Home/images/2016-01-15/56442499e60bc.jpg', '4.50', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('261', '乐虎', '/Public/Home/images/2016-01-15/564424d0f0a13.jpg', '3.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('262', '和其正凉茶(大)', '/Public/Home/images/2016-01-15/5644256437727.jpg', '3.16', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('263', '富裕老窖250ML', '/Public/Home/images/2016-01-15/5644262477d00.jpg', '4.20', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('264', '富裕老窖500ML', '/Public/Home/images/2016-01-15/5644265d515ea.jpg', '8.00', '0.00', '', '33', '10', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('265', '富裕老窖花开富贵500ML', '/Public/Home/images/2016-01-15/564426afe615c.jpg', '18.00', '0.00', '', '33', '10', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('266', '百事可乐（听）', '/Public/Home/images/2016-01-15/564426fd85724.jpg', '1.71', '0.00', '', '36', '10', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('267', '七喜（听）', '/Public/Home/images/2016-01-15/5644273eb3dcd.jpg', '1.71', '0.00', '', '36', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('268', '美年达橙味（听）', '/Public/Home/images/2016-01-15/5644276db63a7.jpg', '1.71', '0.00', '', '36', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('269', '红牛', '/Public/Home/images/2016-01-15/56442808457b0.jpg', '5.40', '0.00', '', '36', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('270', '三和牌油浸型豆豉鱼罐头', '/Public/Home/images/2016-01-15/564428b67efd1.jpg', '5.80', '0.00', '', '50', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('271', '高露洁360', '/Public/Home/images/2016-01-15/564428fc428e3.jpg', '6.90', '0.00', '', '61', '10', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('272', '高露洁草本牙膏', '/Public/Home/images/2016-01-15/5644293883bde.jpg', '2.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('273', '高露洁防蛀美白', '/Public/Home/images/2016-01-15/564429664904e.jpg', '2.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('274', '高露冰爽3重薄荷', '/Public/Home/images/2016-01-15/564429c3b7586.jpg', '5.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('275', '高露洁健康牙龈360', '/Public/Home/images/2016-01-15/56442a0d34d9d.jpg', '6.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('276', '高露洁光感白', '/Public/Home/images/2016-01-15/56442a4a38bf1.jpg', '6.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('277', '高露洁自然之萃牙刷', '/Public/Home/images/2016-01-15/56442a86da62c.jpg', '7.05', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('278', '高露洁自然之萃白珍珠牙刷2支', '/Public/Home/images/2016-01-15/56442abd36956.jpg', '7.05', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('279', '高露洁修护牙釉质360', '/Public/Home/images/2016-01-15/56442af484773.jpg', '6.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('280', '高露洁备长炭深洁', '/Public/Home/images/2016-01-15/56442b21822a0.jpg', '6.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('281', '高露洁茶健', '/Public/Home/images/2016-01-15/56442b52ad38f.jpg', '3.30', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('282', '高露洁超密倍洁牙刷', '/Public/Home/images/2016-01-15/56442b7f2d655.jpg', '4.50', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('283', '高露洁冰爽劲白', '/Public/Home/images/2016-01-15/56442bb1e4370.jpg', '5.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('284', '美味尽享智能蒸蛋器', '/Public/Home/images/2016-01-15/56442c2ba29df.jpg', '19.00', '0.00', '', '67', '100', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('285', '牙签', '/Public/Home/images/2016-01-15/56442c701c887.jpg', '2.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '0', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('286', '康师傅红烧牛肉面(桶)', '/Public/Home/images/2016-01-15/56442f7dd05aa.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('287', '康师傅鲜虾鱼板面(桶)', '/Public/Home/images/2016-01-15/56442fbdb6657.jpg', '3.50', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('288', '康师傅香辣牛肉面(桶)', '/Public/Home/images/2016-01-15/56442fe9986f1.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('289', '康师傅酸辣牛肉面(桶)', '/Public/Home/images/2016-01-15/56443017f20f1.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('290', '康师傅小鸡炖蘑菇面(桶)', '/Public/Home/images/2016-01-15/5644304798c07.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('291', '康师傅西红柿鸡蛋打卤面(桶)', '/Public/Home/images/2016-01-15/56443078cf593.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('292', '康师傅酸辣牛肉面', '/Public/Home/images/2016-01-15/564430de02528.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('293', '康师傅小鸡炖蘑菇面', '/Public/Home/images/2016-01-15/56443107333c7.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('294', '康师傅红烧排骨面(桶)', '/Public/Home/images/2016-01-15/5644313380899.jpg', '3.50', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('295', '康师傅红烧排骨面', '/Public/Home/images/2016-01-15/5644315a9fd14.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('296', '康师傅西红柿鸡蛋打卤面', '/Public/Home/images/2016-01-15/56443188c8f04.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('298', '好丽友蛋黄派(2枚)', '/Public/Home/images/2016-01-15/564432213384a.jpg', '3.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('299', '好丽友蛋黄派(12枚)', '/Public/Home/images/2016-01-15/56443259abe24.jpg', '16.50', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('300', '好丽友巧克力派（2枚）', '/Public/Home/images/2016-01-15/5644329d6951f.jpg', '2.70', '0.00', '', '38', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('301', '好丽友派巧克力味（6枚）', '/Public/Home/images/2016-01-15/564432e162d24.jpg', '7.80', '0.00', '', '38', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('302', '好丽友派巧克力味(12枚)', '/Public/Home/images/2016-01-15/564433115b875.jpg', '15.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('303', '好丽友提拉米苏6枚', '/Public/Home/images/2016-01-15/5644334c900c7.jpg', '8.90', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('304', '好丽友提拉米苏(12枚)', '/Public/Home/images/2016-01-15/5644337640a1c.jpg', '17.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('305', '好丽友可可派（6枚）', '/Public/Home/images/2016-01-15/564433aa819b7.jpg', '8.50', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('306', '好丽友可可派巧克力味（12枚）', '/Public/Home/images/2016-01-15/564433dd650de.jpg', '16.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('307', '好丽友双莓派(6枚)', '/Public/Home/images/2016-01-15/5644341023826.jpg', '7.40', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('308', '好丽友双莓派(12枚)', '/Public/Home/images/2016-01-15/5644343a98e6f.jpg', '14.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('309', 'Q蒂摩卡巧克力味', '/Public/Home/images/2016-01-15/56443482231bc.jpg', '18.00', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('310', 'Q蒂摩卡巧克力味(2枚)', '/Public/Home/images/2016-01-15/564434aa6091e.jpg', '3.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('311', 'Q蒂榛子巧克力味（6枚）', '/Public/Home/images/2016-01-15/5644350537437.jpg', '9.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('312', 'Q蒂榛子巧克力味（12枚）', '/Public/Home/images/2016-01-15/5644353221a26.jpg', '17.80', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('313', 'Q蒂榛子巧克力味(2枚)', '/Public/Home/images/2016-01-15/5644356827d6a.jpg', '3.20', '0.00', '', '38', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('314', '木糖醇口香糖热带水果味（101g）', '/Public/Home/images/2016-01-15/564435d9cc98f.jpg', '12.70', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('315', '木糖醇口香糖青苹薄荷味', '/Public/Home/images/2016-01-15/56443603201ac.jpeg', '4.20', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('316', '木糖醇口香糖苹果柠檬蜜桃味（101）', '/Public/Home/images/2016-01-15/5644364b7d489.jpg', '12.70', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('317', '木糖醇口香糖花香（101g）', '/Public/Home/images/2016-01-15/564436d509299.jpg', '12.70', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('318', '木糖醇口香糖檬檬哒青柠味', '/Public/Home/images/2016-01-15/564436fc705b8.jpg', '4.20', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('319', '木糖醇香甜蜜桃味', '/Public/Home/images/2016-01-15/56443725ba818.jpg', '7.90', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('320', '木糖醇清香芒果味', '/Public/Home/images/2016-01-15/5644374fa23e8.jpg', '7.90', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('321', '木糖醇醇香葡萄味', '/Public/Home/images/2016-01-15/56443778b6954.jpg', '7.90', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('322', '木糖醇清甜香瓜味', '/Public/Home/images/2016-01-15/564437a2ccc78.jpg', '7.90', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('323', '好多鱼鲜香海苔味', '/Public/Home/images/2016-01-15/5644381cef7b9.jpg', '3.60', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('324', '蘑古力红豆巧克力味', '/Public/Home/images/2016-01-15/5644385ddf371.jpg', '3.50', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('325', '好多鱼浓香茄汁味', '/Public/Home/images/2016-01-15/5644388934e12.jpg', '3.60', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('326', '好多鱼脆香烧烤味', '/Public/Home/images/2016-01-15/564438bb1b000.jpg', '3.60', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('327', '好多鱼蜜香鸡翅味', '/Public/Home/images/2016-01-15/564438e4c65a4.jpg', '3.60', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('328', '蘑古力榛子巧克力味', '/Public/Home/images/2016-01-15/5644391779e6e.jpg', '3.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('329', '呀！土豆（番茄酱味小）', '/Public/Home/images/2016-01-15/5644395d381fb.jpeg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('330', '呀！土豆（番茄酱味）', '/Public/Home/images/2016-01-15/5644398613128.jpg', '4.70', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('331', '呀！土豆（里脊牛排味）', '/Public/Home/images/2016-01-15/564439b8dade3.jpg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('332', '呀!土豆（里脊牛排味）', '/Public/Home/images/2016-01-15/564439e9c5a0e.jpg', '4.70', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('333', '呀！土豆（滋香烤鸡味小）', '/Public/Home/images/2016-01-15/56443a23bdbd2.jpg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('334', '呀！土豆（滋香烤鸡味）', '/Public/Home/images/2016-01-15/56443a55094b1.jpg', '4.70', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('335', '好友趣纯香原味', '/Public/Home/images/2016-01-15/56443a97e9ef4.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('336', '好友趣纯香原味（大）', '/Public/Home/images/2016-01-15/56443acc0dc3d.jpg', '4.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('338', '好友趣多只牛排味（小）', '/Public/Home/images/2016-01-15/56443b34deec2.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('339', '好友趣多汁牛排味', '/Public/Home/images/2016-01-15/56443b72679b2.jpg', '4.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('340', '好友趣韩国泡菜味小', '/Public/Home/images/2016-01-15/56443ba97f003.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('341', '好友趣韩国泡菜味', '/Public/Home/images/2016-01-15/56443bde03fa8.jpg', '4.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('342', '好友趣醇香番茄味', '/Public/Home/images/2016-01-15/564531393d9a6.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('343', '好友趣加勒比烤翅味', '/Public/Home/images/2016-01-15/56453176db940.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('344', '甜天麦（黄）', '/Public/Home/images/2016-01-15/564531b038a64.jpg', '1.70', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('345', '甜天麦（巧克力）', '/Public/Home/images/2016-01-15/564531e36baaf.jpg', '1.70', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('347', '薯愿蜂蜜牛奶味', '/Public/Home/images/2016-01-15/5645326fe2cf8.jpg', '7.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('348', '薯愿香烤原味', '/Public/Home/images/2016-01-15/56453299aa2b7.jpg', '7.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('349', '薯愿红酒牛排味', '/Public/Home/images/2016-01-15/564532c3f1e71.jpg', '7.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('350', '薯愿清新番茄味', '/Public/Home/images/2016-01-15/564532f8213e4.jpg', '7.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('351', '呀！土豆（香焗原味）', '/Public/Home/images/2016-01-15/5645333a60f65.jpg', '4.70', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('352', '薯愿烤鸡沙拉味', '/Public/Home/images/2016-01-15/564533711e97f.jpg', '7.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('353', '呀！土豆（蜂蜜黄油味小）', '/Public/Home/images/2016-01-15/564533a7964ac.jpg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('354', '好友趣蜂蜜黄油味（小）', '/Public/Home/images/2016-01-15/564533e12a1b0.jpg', '2.75', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('355', '好友趣蜂蜜黄油味', '/Public/Home/images/2016-01-15/5645341766431.jpg', '4.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('356', '高笑美醇香原味', '/Public/Home/images/2016-01-15/56453480ba22a.jpg', '5.25', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('357', '采韵香香蒜豌豆', '/Public/Home/images/2016-01-15/564535219ce91.jpg', '1.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('358', '采韵香牛肉豌豆', '/Public/Home/images/2016-01-15/56453549935a7.jpg', '1.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('359', '采韵香牛肉豆（蚕豆）', '/Public/Home/images/2016-01-15/56453572a358e.jpg', '2.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('360', '水溶C100柠檬味', '/Public/Home/images/2016-01-15/564535b50d7a7.jpg', '3.60', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('361', '水溶C100西柚汁', '/Public/Home/images/2016-01-15/564535e1469c5.jpg', '3.60', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('362', '尖叫（多肽型）', '/Public/Home/images/2016-01-15/5645363a9ac87.jpg', '3.10', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('363', '尖叫（纤维型）', '/Public/Home/images/2016-01-15/56453664479a8.jpg', '3.10', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('364', '农夫山泉550', '/Public/Home/images/2016-01-15/5645369a1549d.jpg', '1.16', '0.00', '', '37', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('365', '农夫山泉380', '/Public/Home/images/2016-01-15/564536cfadc12.jpg', '1.02', '0.00', '', '37', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('366', '水溶C100青皮桔味', '/Public/Home/images/2016-01-15/564537162575d.jpg', '3.60', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('367', '满地可一品鱿鱼圈（小）', '/Public/Home/images/2016-01-15/564537f390644.jpg', '2.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('368', '满地可蔬菜鸡味圈', '/Public/Home/images/2016-01-15/564538756ea5c.jpg', '4.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('369', '满地可香浓乳酪球（小）', '/Public/Home/images/2016-01-15/564538a0dfc62.jpg', '2.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('370', '满地可一品鱿鱼圈', '/Public/Home/images/2016-01-15/564538eb2e95b.jpg', '4.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('371', '洗碗海绵宽', '/Public/Home/images/2016-01-15/5645393348f55.jpg', '1.50', '0.00', '', '58', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('372', '花园高粱王', '/Public/Home/images/2016-01-15/56453a0f11a2a.png', '8.16', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('373', '玉泉方瓶500ML', '/Public/Home/images/2016-01-15/56453a66bd6e0.jpg', '22.50', '0.00', '', '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('374', '玉泉二两半', '/Public/Home/images/2016-01-15/56453aa4c2acb.jpg', '6.50', '0.00', '', '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('375', '柔和玉泉', '/Public/Home/images/2016-01-15/56453ad8c0a5a.jpg', '45.00', '0.00', '', '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('376', '清风原木纯品', '/Public/Home/images/2016-01-15/56453b6cbd8e6.jpg', '21.50', '0.00', '', '57', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('377', '清风纸抽原木纯品', '/Public/Home/images/2016-01-15/56453ba2e4597.jpg', '10.31', '0.00', '', '57', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('378', '清风纸抽原木纯品6提', '/Public/Home/images/2016-01-15/56453bd0e7795.jpg', '15.60', '0.00', '', '57', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('379', '康师傅冰红茶', '/Public/Home/images/2016-01-15/56453c1635a25.jpg', '2.10', '0.00', '', '36', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('380', '康师傅矿泉水', '/Public/Home/images/2016-01-15/56453c50c17b5.jpg', '0.54', '0.00', '', '37', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('381', '康师傅绿茶', '/Public/Home/images/2016-01-15/56453c8b4092c.jpg', '2.10', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('382', '康师傅矿泉水', '/Public/Home/images/2016-01-15/56453ccd76240.jpg', '1.62', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('383', '康师傅水晶葡萄', '/Public/Home/images/2016-01-15/56453d0356931.jpg', '1.83', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('384', '康师傅冰糖柠檬', '/Public/Home/images/2016-01-15/56453d32db119.jpg', '2.10', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('385', '康师傅冰糖雪梨', '/Public/Home/images/2016-01-15/56453d6368182.jpg', '2.10', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('386', '康师傅红茶茶1L', '/Public/Home/images/2016-01-15/56453d9d92917.jpg', '3.12', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('387', '康师傅绿茶1L', '/Public/Home/images/2016-01-15/56453e8d5da51.jpg', '3.12', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('388', '康师傅冰红茶', '/Public/Home/images/2016-01-15/56453eeb9cb2b.jpg', '5.25', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('389', '康师傅绿茶', '/Public/Home/images/2016-01-15/56453f7c08d6e.jpg', '5.25', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('390', '康师傅水蜜桃', '/Public/Home/images/2016-01-15/56453fbd710c7.jpg', '6.08', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('391', '康师傅水晶葡萄（大）', '/Public/Home/images/2016-01-15/56453fed667bb.jpg', '6.08', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('392', '康师傅鲜果橙', '/Public/Home/images/2016-01-15/56454028c4e02.jpg', '6.08', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('393', '格格瞬吸360夜用20片335赠护垫', '/Public/Home/images/2016-01-15/564540610827f.jpg', '7.50', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('394', '格格超熟睡棉16片410', '/Public/Home/images/2016-01-15/5645409bd959d.png', '7.50', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('395', 'ABC棉柔护垫22片', '/Public/Home/images/2016-01-15/5645410d2812d.jpg', '6.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('396', '心相印卷纸', '/Public/Home/images/2016-01-15/564543fcecfdd.jpg', '17.50', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('397', '钢丝球', '/Public/Home/images/2016-01-15/56454462c8ed2.jpg', '1.50', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('398', '猫王纸抽', '/Public/Home/images/2016-01-15/564544a4601fd.jpg', '8.50', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('399', '猫王精品卫生纸', '/Public/Home/images/2016-01-15/564544d7359b5.jpg', '14.00', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('400', '猫王卷纸', '/Public/Home/images/2016-01-15/5645450b44c8a.jpg', '21.00', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('401', '猫王卷纸', '/Public/Home/images/2016-01-15/5645453fba7de.gif', '19.00', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('402', '猫王卷纸1600G', '/Public/Home/images/2016-01-15/56454577e2ba6.gif', '17.50', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('403', '38cm不锈钢盆', '/Public/Home/images/2016-01-15/564545cc1a19c.jpg', '7.50', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('404', '34cm不锈钢盆', '/Public/Home/images/2016-01-15/564545f646bd3.jpg', '8.50', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('405', '西门子开关（4健）', '/Public/Home/images/2016-01-15/564546405d9de.jpg', '10.00', '0.00', '', '75', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('406', '公牛二开', '/Public/Home/images/2016-01-15/564547026fb77.jpg', '5.50', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('407', '公牛三开', '/Public/Home/images/2016-01-15/56454742da4d1.jpg', '7.00', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('408', '朗能国际一开', '/Public/Home/images/2016-01-15/564547903880a.jpg', '6.00', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('409', '朗能国际四开', '/Public/Home/images/2016-01-15/564547b96b31d.jpg', '11.00', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('410', '朗能国际二开', '/Public/Home/images/2016-01-15/564547e676be4.jpg', '8.00', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('411', '朗能国际三开', '/Public/Home/images/2016-01-15/564548190f784.jpg', '9.00', '0.00', '', '75', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('412', '凹凸500MM锁', '/Public/Home/images/2016-01-15/564548b56f116.jpg', '11.00', '0.00', '', '76', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('413', '卷尺5米', '/Public/Home/images/2016-01-15/564548dee96ed.jpg', '7.50', '0.00', '', '72', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('414', '卷尺3米', '/Public/Home/images/2016-01-15/56454903e5998.jpg', '5.00', '0.00', '', '72', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('415', '螺丝刀(橡胶)', '/Public/Home/images/2016-01-15/5645493b56171.jpg', '2.90', '0.00', '', '71', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('416', '螺丝刀(硬塑)', '/Public/Home/images/2016-01-15/56454971c921f.jpg', '2.30', '0.00', '', '71', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('418', '稿纸', '/Public/Home/images/2016-01-15/56454a8d9aa34.jpg', '0.80', '0.00', '', '100', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('419', '支票夹', '/Public/Home/images/2016-01-15/56454abe9d1c2.jpg', '3.50', '0.00', '', '92', '5', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('420', '彩色长尾夹', '/Public/Home/images/2016-01-15/56454b0a91cf0.jpg', '0.60', '0.00', '', '92', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('421', '双面胶带', '/Public/Home/images/2016-01-15/56454b5c52b02.jpg', '13.75', '0.00', '', '95', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('422', '瓶起', '/Public/Home/images/2016-01-15/56454bb2671d7.jpg', '0.60', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('423', '透明胶带55卷', '/Public/Home/images/2016-01-15/56454c1353a2f.jpg', '3.20', '0.00', '', '96', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('424', '透明胶带44卷', '/Public/Home/images/2016-01-15/56454c38124e6.jpg', '5.90', '0.00', '', '96', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('425', '北方披刀', '/Public/Home/images/2016-01-15/56454cb66324e.jpg', '9.50', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('426', '高级不锈钢筷子', '/Public/Home/images/2016-01-15/56454f910393c.jpg', '1.00', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('427', '多功能数据线', '/Public/Home/images/2016-01-15/56454fe11a7d2.jpg', '4.00', '0.00', '', '69', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('428', '防风火机', '/Public/Home/images/2016-01-15/5645501fedbed.jpg', '0.75', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('430', '手心宝贝柔棉瞬吸XL', '/Public/Home/images/2016-01-15/5645509f22250.png', '45.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('431', '手心宝贝柔棉瞬吸L', '/Public/Home/images/2016-01-15/564550ced998b.png', '45.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('432', '半球加热水壶', '/Public/Home/images/2016-01-15/5645510762946.jpg', '19.50', '0.00', '', '66', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('433', '佳爽学步裤XL', '/Public/Home/images/2016-01-15/5645516d65a51.png', '36.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('434', '佳爽极薄训练裤XL', '/Public/Home/images/2016-01-15/564551a1e47eb.jpg', '36.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('435', '佳爽极薄训练裤L', '/Public/Home/images/2016-01-15/564551ca64cec.jpg', '36.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('436', '佳爽棉柔夜用4片410', '/Public/Home/images/2016-01-15/564552084a8c3.png', '4.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('437', '佳爽棉柔8片360', '/Public/Home/images/2016-01-15/5645523ac9801.jpg', '5.00', '0.00', '', '61', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('438', '溜溜梅乌梅', '/Public/Home/images/2016-01-15/564552bc943d7.jpg', '2.80', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('439', '溜溜梅雪梅', '/Public/Home/images/2016-01-15/564552e9d4a8d.jpg', '2.80', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('440', '溜溜梅九制梅', '/Public/Home/images/2016-01-15/5645531d0f6f7.jpg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('441', '溜溜梅清梅', '/Public/Home/images/2016-01-15/56455348e228c.jpg', '2.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('442', '真心海棠罐头880g', '/Public/Home/images/2016-01-15/5645538682850.jpg', '12.50', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('443', '真心梨罐头880g', '/Public/Home/images/2016-01-15/564553b87bf68.jpg', '12.50', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('444', '真心梨罐头680g', '/Public/Home/images/2016-01-15/564553ed6fc32.jpg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('445', '真心久保桃罐头680g', '/Public/Home/images/2016-01-15/5645541890746.jpg', '12.00', '0.00', '', '50', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('446', '真心葡萄罐头680g', '/Public/Home/images/2016-01-15/5645544748771.jpg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('447', '真心桔子罐头680g', '/Public/Home/images/2016-01-15/5645546e1a7b2.jpg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('448', '真心糖水草莓罐头680g', '/Public/Home/images/2016-01-15/5645549d0c6aa.jpg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('449', '真心菠萝罐头680g', '/Public/Home/images/2016-01-15/564554d2010f4.jpg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('450', '真心荔枝罐头680g', '/Public/Home/images/2016-01-15/5645550363e33.jpeg', '12.00', '0.00', '', '50', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('451', '刷洗大王', '/Public/Home/images/2016-01-15/564585e3a591c.jpg', '1.50', '0.00', '', '58', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('452', '果汁糖果草莓口味', '/Public/Home/images/2016-01-15/5645863d1178c.jpg', '8.00', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('453', '果汁糖果青提子口味', '/Public/Home/images/2016-01-15/56458666bce91.jpg', '8.00', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('454', '果汁糖果水蜜桃口味', '/Public/Home/images/2016-01-15/56458696cfeab.jpg', '8.00', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('455', '心宠灌心饼干草莓口味', '/Public/Home/images/2016-01-15/5645872f41a8d.jpg', '3.00', '0.00', '', '38', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('456', '果汁糖果芒果口味', '/Public/Home/images/2016-01-15/5645875575a61.jpg', '8.00', '0.00', '', '41', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('457', '心宠灌心饼干草莓味', '/Public/Home/images/2016-01-15/5645878153f3d.jpg', '3.00', '0.00', '', '38', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('458', '心宠灌心饼干奶油味', '/Public/Home/images/2016-01-15/564587ade36ff.jpg', '3.00', '0.00', '', '38', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('459', '心宠灌心饼干巧克力味', '/Public/Home/images/2016-01-15/564587da936f5.jpg', '3.00', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('460', '辣媳妇山椒凤爪（一个）', '/Public/Home/images/2016-01-15/5645883e369e3.jpeg', '1.03', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('461', '小浣熊干脆面意大利红烩味', '/Public/Home/images/2016-01-15/56458899c40ce.jpg', '0.84', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('462', '小浣熊干脆面香辣蟹味', '/Public/Home/images/2016-01-15/564588d5f2f58.jpg', '0.84', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('463', '小当家干脆面香辣蟹味', '/Public/Home/images/2016-01-15/56458906159d8.jpg', '0.42', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('464', '小当家干脆面红烧牛肉味', '/Public/Home/images/2016-01-15/5645893151383.jpg', '0.42', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('465', '小当家干脆面五香牛肉味', '/Public/Home/images/2016-01-15/5645895e8865f.jpg', '0.42', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('466', '小当家干脆面香葱口味', '/Public/Home/images/2016-01-15/5645898c269b5.jpg', '0.42', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('467', '小浣熊干脆面韩式泡菜味', '/Public/Home/images/2016-01-15/564589fb2d593.jpg', '0.84', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('468', '统一冰红茶', '/Public/Home/images/2016-01-15/56458a397adaf.jpg', '2.53', '0.00', '', '36', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('469', '小当家干脆面蜜汁猪排味', '/Public/Home/images/2016-01-15/56458a641e62e.jpg', '0.42', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('470', '小当家干脆面酱香小排骨味', '/Public/Home/images/2016-01-15/56458a954185d.jpg', '0.42', '0.00', '', '54', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('471', '小当家巴西烤肉味', '/Public/Home/images/2016-01-15/56458ac4a4492.jpg', '0.42', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('472', '海之言西柚', '/Public/Home/images/2016-01-15/56458b0528140.jpg', '3.20', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('473', '小茗同学（冷泡青柠红茶）', '/Public/Home/images/2016-01-15/56458b34e0aa8.jpg', '4.00', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('474', '统一老坛酸菜牛肉面(香辣)', '/Public/Home/images/2016-01-15/56458b83b0638.jpg', '3.16', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('475', '统一老坛酸菜牛肉面(桶,原味)', '/Public/Home/images/2016-01-15/56458bb574c73.jpg', '3.16', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('476', '统一卤香牛肉面(桶)', '/Public/Home/images/2016-01-15/56458bfd74c86.jpg', '3.16', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('477', '统一红烧牛肉面(桶)', '/Public/Home/images/2016-01-15/56458c2d3f430.jpg', '3.16', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('478', '小浣熊干脆面台湾烤肠味', '/Public/Home/images/2016-01-15/56458c6b1b000.jpg', '0.84', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('479', '小浣熊干脆面麻辣香锅味', '/Public/Home/images/2016-01-15/56458c9a1a85c.jpg', '0.84', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('480', '小浣熊干脆面奥尔良烤翅味', '/Public/Home/images/2016-01-15/56458cc32075a.jpg', '0.84', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('481', '小浣熊干脆面烤肉味', '/Public/Home/images/2016-01-15/56458ce8e791e.jpg', '0.84', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('482', '椒盐土豆条芥辣味', '/Public/Home/images/2016-01-15/56458d2271773.jpg', '1.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('483', '椒盐土豆条泡椒龙虾味', '/Public/Home/images/2016-01-15/56458d536fa3d.jpg', '1.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('484', '不粘油锅刷', '/Public/Home/images/2016-01-15/56458d7e4460a.jpg', '1.50', '0.00', '', '58', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('485', '康师傅红烧牛肉面', '/Public/Home/images/2016-01-15/56468528b67b4.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('486', '康师傅香辣牛肉面', '/Public/Home/images/2016-01-15/5646855734793.jpg', '2.00', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('487', '上好佳鲜虾条辣味', '/Public/Home/images/2016-01-15/564685a0590b0.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('488', '上好佳栗米条哈密瓜口味', '/Public/Home/images/2016-01-15/564685d4b0b19.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('489', '上好佳田园薯片芥末口味', '/Public/Home/images/2016-01-15/5646860b65e3f.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('490', '上好佳棉花糖橙子口味', '/Public/Home/images/2016-01-15/5646865ca62cc.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('491', '上好佳棉花糖柠檬口味', '/Public/Home/images/2016-01-15/5646868ddc00c.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('492', '上好佳鲜虾条', '/Public/Home/images/2016-01-15/564686d079c27.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('493', '上好佳芝士条', '/Public/Home/images/2016-01-15/564687009f1fd.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('494', '上好佳鲜虾片', '/Public/Home/images/2016-01-15/5646873a5db45.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('495', '上好佳薯条番茄味', '/Public/Home/images/2016-01-15/5646876328681.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('496', '上好佳玉米口味田园泡', '/Public/Home/images/2016-01-15/5646879fdbcb3.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('497', '上好佳薯条原味', '/Public/Home/images/2016-01-15/564687c852d5d.jpg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('498', '上好佳嗲得薯片', '/Public/Home/images/2016-01-15/564687f78579d.jpeg', '5.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('499', '上好佳洋葱圈', '/Public/Home/images/2016-01-15/5646881f93fbb.jpg', '4.90', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('500', '上好佳田园薯片羊肉口味', '/Public/Home/images/2016-01-15/5646884c3bdd5.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('501', '上好佳田园薯片红烩肉口味', '/Public/Home/images/2016-01-15/5646886ecc7ae.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('502', '上好佳田园薯片红烩牛肉味', '/Public/Home/images/2016-01-15/56468893945c5.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('503', '澳华黄豆脆锅巴', '/Public/Home/images/2016-01-15/564688e955886.jpg', '1.80', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('504', '金锣脆脆肠原味', '/Public/Home/images/2016-01-15/5646894b4f0e0.jpg', '2.80', '0.00', '', '51', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('505', '金锣火腿肠', '/Public/Home/images/2016-01-15/564689951e4f9.jpg', '0.56', '0.00', '', '51', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('506', '金锣脆脆肠香辣味', '/Public/Home/images/2016-01-15/564689c4a2a0f.jpg', '2.80', '0.00', '', '51', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('507', '金锣清真鸡肉肠（小）', '/Public/Home/images/2016-01-15/564689f364529.jpg', '0.70', '0.00', '', '51', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('508', '酒鬼花生椒盐味', '/Public/Home/images/2016-01-15/56468a310af83.jpg', '2.80', '0.00', '', '39', '50', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('509', '香酥蛹', '/Public/Home/images/2016-01-15/56468a7201c55.jpg', '2.95', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('510', '香辣蟹', '/Public/Home/images/2016-01-15/56468a9a5d8e7.jpg', '2.95', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('511', '香辣鱼仔', '/Public/Home/images/2016-01-15/56468adcaed54.jpg', '2.95', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('512', '易能通计算器', '/Public/Home/images/2016-01-15/56468b1dab272.jpg', '23.90', '0.00', '', '97', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('513', '计算器', '/Public/Home/images/2016-01-15/56468b403883a.jpg', '16.50', '0.00', '', '97', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('514', '老才臣腐乳', '/Public/Home/images/2016-01-15/56468b8cbe949.jpg', '4.50', '0.00', '', '52', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('515', '老才臣北京风味香辣腐乳', '/Public/Home/images/2016-01-15/56468bb5179e2.jpg', '6.00', '0.00', '', '52', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('516', '老才臣姜葱料酒', '/Public/Home/images/2016-01-15/56468be065955.jpg', '5.00', '0.00', '', '45', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('517', '龙彩好太太洗衣液', '/Public/Home/images/2016-01-15/56468c6a27464.jpg', '8.12', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('518', '龙彩好太太洗衣液', '/Public/Home/images/2016-01-15/56468c9b10038.jpg', '7.50', '0.00', '', '59', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('519', '固体胶', '/Public/Home/images/2016-01-15/56468d1987a40.jpg', '0.98', '0.00', '', '94', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('520', '青岛黑啤', '/Public/Home/images/2016-01-15/56468e37b34cf.jpg', '4.00', '0.00', '', '34', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('521', '青岛纯生', '/Public/Home/images/2016-01-15/56468e65f115e.jpg', '4.00', '0.00', '', '34', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('522', '九三非转基因一级大豆油', '/Public/Home/images/2016-01-15/56468efd4076f.jpg', '42.50', '0.00', '', '48', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('523', '九三非转基因三级大豆油', '/Public/Home/images/2016-01-15/56468f38cf352.jpg', '42.50', '0.00', '', '48', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('524', '天之蓝洋河蓝色经典42度', '/Public/Home/images/2016-01-15/56468fc86721e.jpg', '310.00', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('525', '海之蓝洋河蓝色经典42度', '/Public/Home/images/2016-01-15/56469020d1ae9.jpg', '128.00', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('526', '海之蓝52度', '/Public/Home/images/2016-01-15/5646904ce472d.jpg', '152.00', '0.00', '', '33', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('527', '梦之蓝52度', '/Public/Home/images/2016-01-15/564690824b614.jpg', '588.00', '0.00', '', '33', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('528', '22cm加厚型汤盆', '/Public/Home/images/2016-01-15/564690e8dd750.jpg', '4.40', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('529', '金锣清真鸡肉肠（大）', '/Public/Home/images/2016-01-15/5646911a42bec.jpg', '1.61', '0.00', '', '51', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('530', '纯果乐果缤纷（热带美味）', '/Public/Home/images/2016-01-15/5646919cb3045.jpg', '2.73', '0.00', '', '36', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('531', '纯果乐果缤纷（柠爽萄醉味）', '/Public/Home/images/2016-01-15/564691c0a884b.jpg', '2.73', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('532', '纯果乐果缤纷（金橙奇异果味）', '/Public/Home/images/2016-01-15/564691e4057b1.jpg', '2.73', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('533', '立顿英式柠檬茶', '/Public/Home/images/2016-01-15/564692201d0d9.jpg', '2.73', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('534', '立顿甜美蜜桃味', '/Public/Home/images/2016-01-15/564692509e77d.jpg', '2.73', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('535', '立顿英式果茶（率性野莓味）', '/Public/Home/images/2016-01-15/5646927807418.jpg', '2.73', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('536', '纯正红糖', '/Public/Home/images/2016-01-15/564692f0ef154.png', '4.30', '0.00', '', '46', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('537', '森华园水晶粉丝', '/Public/Home/images/2016-01-15/56469334b6b8a.jpg', '2.50', '0.00', '', '53', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('538', '妈咪宝贝瞬吸男宝纸尿裤M', '/Public/Home/images/2016-01-15/56469377ba9ec.jpg', '35.00', '0.00', '', '63', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('539', '妈咪宝贝男宝纸尿裤L', '/Public/Home/images/2016-01-15/5646bc56a9339.jpg', '35.00', '0.00', '', '63', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('540', '妈咪宝贝男宝纸尿裤XL', '/Public/Home/images/2016-01-15/5646bc78ed7b4.gif', '35.00', '0.00', '', '63', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('541', '妈咪宝贝女宝干爽纸尿裤M', '/Public/Home/images/2016-01-15/5646bca11409a.jpg', '35.00', '0.00', '', '63', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('542', '妈咪宝贝女宝舒爽层纸尿裤L', '/Public/Home/images/2016-01-15/5646bcc804be4.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('543', '妈咪宝贝女瞬吸层XL', '/Public/Home/images/2016-01-15/5646bce89d465.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('544', '妈咪宝贝小内裤男式纸尿裤', '/Public/Home/images/2016-01-15/5646bd14160db.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('545', '妈咪宝贝男宝纸尿裤M', '/Public/Home/images/2016-01-15/5646bd3769e89.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('546', '妈咪宝贝小内裤女式纸尿裤', '/Public/Home/images/2016-01-15/5646bd5bb3d01.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('547', '妈咪宝贝男宝纸尿裤', '/Public/Home/images/2016-01-15/5646bdb4acdd5.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('548', '妈咪宝贝小内裤女宝 L', '/Public/Home/images/2016-01-15/5646bdd78de54.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('549', '妈咪宝贝小内裤男宝纸尿裤XL', '/Public/Home/images/2016-01-15/5646be1f07950.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('550', '妈咪宝贝小内裤女式XL', '/Public/Home/images/2016-01-15/5646be43b39bd.jpg', '35.00', '0.00', '', '63', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('551', '22CM盆', '/Public/Home/images/2016-01-15/5646bf058df38.jpg', '4.40', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('552', '22cm欧式调料缸', '/Public/Home/images/2016-01-15/5646bf48d1017.jpg', '4.40', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('553', '24CM调料缸', '/Public/Home/images/2016-01-15/5646bf796c526.jpg', '4.20', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('554', '小护士网面12片260', '/Public/Home/images/2016-01-15/5646c02c57e4d.jpg', '4.30', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('555', '小护士棉柔12片260', '/Public/Home/images/2016-01-15/5646c05a6798d.jpg', '4.00', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('556', '小护士棉柔11片260', '/Public/Home/images/2016-01-15/5646c080e92a3.jpg', '4.30', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('557', '卫生棉签', '/Public/Home/images/2016-01-15/5646c12e1391f.jpg', '13.90', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('558', '奥德美中性笔芯0.38MM', '/Public/Home/images/2016-01-15/5646c1cc7b5a6.jpg', '0.28', '0.00', '', '99', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('559', '百事可乐', '/Public/Home/images/2016-01-15/5646c31c42dd9.jpg', '2.16', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('560', '美年达橙味550ML', '/Public/Home/images/2016-01-15/5646c3731010d.jpg', '2.45', '0.00', '', '36', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('561', '美年达青苹果味', '/Public/Home/images/2016-01-15/5646c4808f0f3.jpg', '2.45', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('562', '美年达葡萄味', '/Public/Home/images/2016-01-15/5646c4b42a899.jpg', '2.45', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('563', '百事可乐2L', '/Public/Home/images/2016-01-15/5646c4ef7111f.jpg', '5.33', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('564', '7喜', '/Public/Home/images/2016-01-15/5646c554b18cf.jpg', '5.33', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('565', '美年达橙味', '/Public/Home/images/2016-01-15/5646d85c4240e.jpg', '3.42', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('566', '7喜', '/Public/Home/images/2016-01-15/5646d8c0cd1da.jpg', '3.42', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('567', '美年达（冰镇西瓜味）', '/Public/Home/images/2016-01-15/5646d9000d3e0.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('568', '百事可乐1L', '/Public/Home/images/2016-01-15/5646d931bef95.jpg', '3.25', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('569', '美年达蜂蜜柚子味', '/Public/Home/images/2016-01-15/5646d97fd1347.jpg', '2.16', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('570', '中性笔', '/Public/Home/images/2016-01-15/5646d9e8f0988.jpg', '1.00', '0.00', '', '99', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('571', '36CM面盆', '/Public/Home/images/2016-01-15/5646da9b22119.jpg', '8.50', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('572', '达利园桂圆莲子八宝粥', '/Public/Home/images/2016-01-15/5646dbeb27c54.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('573', '达利园低糖桂圆八宝粥', '/Public/Home/images/2016-01-15/5646dd21256cd.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('574', '达利八宝粥园桂圆红枣', '/Public/Home/images/2016-01-15/5646dd601dd77.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('575', '达利园桂圆银耳八宝粥', '/Public/Home/images/2016-01-15/5646dd925a632.jpg', '3.00', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('576', '和其正凉茶', '/Public/Home/images/2016-01-15/5646ddf5124b1.jpg', '3.20', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('577', '情未了湿巾', '/Public/Home/images/2016-01-15/5646de4f447f5.jpg', '2.20', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('578', '丁香花', '/Public/Home/images/2016-01-15/5646de92aab1e.jpg', '1.70', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('579', '六必居黄豆酱油', '/Public/Home/images/2016-01-15/5646deddd1a72.jpg', '9.00', '0.00', '', '42', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('580', '枫之味特选青芥辣', '/Public/Home/images/2016-01-15/5646df3f16592.jpg', '1.00', '0.00', '', '49', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('581', '爱萌卷纸1800G', '/Public/Home/images/2016-01-15/5646df7d1c155.jpg', '16.00', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('582', '22CM浅盆', '/Public/Home/images/2016-01-15/5646e0479ce43.jpg', '4.40', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('583', '24cm加厚汤盆', '/Public/Home/images/2016-01-15/5646e079e6e33.jpg', '14.00', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('584', '20cm反边味斗', '/Public/Home/images/2016-01-15/5646e0a3281ca.jpg', '11.30', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('585', '40cm反边味斗', '/Public/Home/images/2016-01-15/5646e0d5a9190.jpg', '19.00', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('586', '18CM反边味斗', '/Public/Home/images/2016-01-15/5646e105ed21e.jpg', '3.60', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('587', '订书器', '/Public/Home/images/2016-01-15/5646e149c443f.jpg', '6.40', '0.00', '', '98', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('588', '单把奶锅', '/Public/Home/images/2016-01-15/5646e189ecd19.jpg', '20.20', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('589', '34cm多用面盆', '/Public/Home/images/2016-01-15/5646e1c731b1f.jpg', '8.50', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('590', '38cm面盆（A型0.8厚）', '/Public/Home/images/2016-01-15/5646e2c23b872.jpg', '7.50', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('591', '22CM反边调料缸', '/Public/Home/images/2016-01-15/5646e2f0dbb63.jpg', '4.50', '0.00', '', '65', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('592', '哈尔滨啤酒小麦王330ML', '/Public/Home/images/2016-01-15/5646e3348062f.jpg', '2.00', '0.00', '', '34', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('593', '哈尔滨啤酒小麦王500ML', '/Public/Home/images/2016-01-15/5646e3603f28a.jpg', '3.50', '0.00', '', '34', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('594', '乡巴佬鸡排', '/Public/Home/images/2016-01-15/5646e3a14b1e6.jpg', '0.80', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('595', '乡巴佬鸡爪', '/Public/Home/images/2016-01-15/5646e3ca1b921.jpg', '1.03', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('596', '乡巴佬香酥鸡腿', '/Public/Home/images/2016-01-15/5646e3f61261c.jpg', '0.95', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('597', '雨聪原木精品纸抽', '/Public/Home/images/2016-01-15/5646e44cdfd4d.jpg', '5.33', '0.00', '', '57', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('598', '秋林格瓦斯（大）', '/Public/Home/images/2016-01-15/5646e49c689e1.jpg', '6.20', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('599', '秋林格瓦斯350', '/Public/Home/images/2016-01-15/5646e4bf9c0ca.jpg', '2.50', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('600', '珍选超大实惠装豆瓣酱', '/Public/Home/images/2016-01-15/5646e50bd9fc5.jpeg', '3.00', '0.00', '', '55', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('601', '珍选捞汁', '/Public/Home/images/2016-01-15/5646e606108f6.jpg', '8.50', '0.00', '', '47', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('602', '珍选酿造黄豆酱油', '/Public/Home/images/2016-01-15/5646e6438815a.jpg', '6.00', '0.00', '', '42', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('603', '暖身贴', '/Public/Home/images/2016-01-15/5646e67d8af27.jpeg', '0.60', '0.00', '', '61', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('604', '小当家干脆面巴西烤肉味', '/Public/Home/images/2016-01-15/5646e6ee21a1c.jpg', '0.42', '0.00', '', '54', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('605', '可口可乐零度', '/Public/Home/images/2016-01-15/5646e75a5788b.jpg', '2.46', '0.00', '', '36', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('606', '可口可乐（听）', '/Public/Home/images/2016-01-15/5646e7879dd35.jpg', '1.83', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('607', '可口可乐', '/Public/Home/images/2016-01-15/5646e7af1aa64.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('608', '可口可乐（2L）', '/Public/Home/images/2016-01-15/5646e7e333973.jpg', '6.17', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('609', '雪碧（听）', '/Public/Home/images/2016-01-15/5646e8293251c.jpg', '1.83', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('610', '雪碧柠檬味汽水', '/Public/Home/images/2016-01-15/5649271eeec4b.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('611', '雪碧清爽柠檬味汽水', '/Public/Home/images/2016-01-15/5649275aab9c2.jpg', '6.17', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('612', '芬达橙味（听）', '/Public/Home/images/2016-01-15/56492788594cf.jpg', '1.83', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('613', '芬达橙味汽水', '/Public/Home/images/2016-01-15/564927b7bc1e7.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('614', '芬达葡萄味', '/Public/Home/images/2016-01-15/564927e004df0.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('615', '芬达苹果味', '/Public/Home/images/2016-01-15/564928071d328.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('616', '芬达菠萝味', '/Public/Home/images/2016-01-15/5649282c3173a.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('617', '芬达芒果味', '/Public/Home/images/2016-01-15/5649285814dbd.jpg', '2.46', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('618', '+C听装', '/Public/Home/images/2016-01-15/564928ec0ff90.jpg', '2.25', '0.00', '', '36', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('619', '幸福妈咪多功能蔬菜处理器', '/Public/Home/images/2016-01-15/564929af66581.png', '26.70', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('620', '幸福妈咪多功能食物绞碎器', '/Public/Home/images/2016-01-15/564929e07cb76.jpg', '40.00', '0.00', '', '65', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('621', '麦辣鸡块', '/Public/Home/images/2016-01-15/56492a5a0bd56.jpg', '2.50', '0.00', '', '39', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('622', '麦香鸡块', '/Public/Home/images/2016-01-15/56492a989342b.jpg', '1.58', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('623', '小米锅巴烧烤味', '/Public/Home/images/2016-01-15/56492ae67efcd.jpg', '3.50', '0.00', '', '39', '10', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('624', '一次性小号饭碗', '/Public/Home/images/2016-01-15/56492b2d2e533.png', '3.50', '0.00', '', '64', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');
INSERT INTO `wf_gys_goods` VALUES ('625', '一次性纸杯', '/Public/Home/images/2016-01-15/56492b565e96f.jpg', '4.00', '0.00', '', '64', '100', '2016-01-15 09:58:24', '1', '', '', '', '0', '', '1', '1', '0', '', '', '0', '0');

-- ----------------------------
-- Table structure for wf_gys_kinds
-- ----------------------------
DROP TABLE IF EXISTS `wf_gys_kinds`;
CREATE TABLE `wf_gys_kinds` (
  `gys_kid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类id',
  `gys_kname` varchar(255) NOT NULL COMMENT '类名称',
  `gys_parentid` int(11) NOT NULL COMMENT '父id',
  `gys_sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `gys_gids` varchar(255) DEFAULT NULL COMMENT '商品所归属范围',
  PRIMARY KEY (`gys_kid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_kinds
-- ----------------------------
INSERT INTO `wf_gys_kinds` VALUES ('1', '食品类', '0', '1', '');
INSERT INTO `wf_gys_kinds` VALUES ('2', '粮油副食', '0', '2', '');
INSERT INTO `wf_gys_kinds` VALUES ('3', '居家日用', '0', '3', '');
INSERT INTO `wf_gys_kinds` VALUES ('4', '电器类', '0', '4', '');
INSERT INTO `wf_gys_kinds` VALUES ('5', '五金类', '0', '5', '');
INSERT INTO `wf_gys_kinds` VALUES ('6', '家具', '0', '6', '');
INSERT INTO `wf_gys_kinds` VALUES ('7', '文教类', '0', '7', '');
INSERT INTO `wf_gys_kinds` VALUES ('8', '12349便民服务', '0', '8', '');
INSERT INTO `wf_gys_kinds` VALUES ('9', '测试、测试、测试', '0', '9', '');
INSERT INTO `wf_gys_kinds` VALUES ('10', '测试、测试、测试', '0', '10', '');
INSERT INTO `wf_gys_kinds` VALUES ('11', '酒水类', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('12', '休闲食品类', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('13', '厨房调料', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('14', '方便素食', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('15', '酱菜类', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('16', '清洁用品', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('17', '生活用品', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('18', '厨房用品', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('19', '生活家电', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('20', '个人家电', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('21', '休闲家电', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('22', '工具类', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('23', '家装类', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('24', '锁类', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('25', '沙发类', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('26', '床', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('27', '桌子', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('28', '柜子', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('29', '床垫', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('30', '椅子', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('31', '办公类', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('32', '学生文教', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('33', '白酒', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('34', '啤酒', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('35', '鸡尾酒', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('36', '饮料', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('37', '矿泉水', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('38', '饼干蛋糕', '12', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('39', '休闲食品', '12', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('40', '坚果炒货', '12', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('41', '糖果', '12', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('42', '酱油', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('43', '醋', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('44', '老抽', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('45', '料酒', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('46', '糖', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('47', '捞汁', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('48', '油类', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('49', '芥末', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('50', '罐头', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('51', '肠类', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('52', '豆腐乳', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('53', '素食类', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('54', '面类', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('55', '酱类', '15', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('56', '榨菜类', '15', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('57', '纸品湿巾', '16', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('58', '厨房清洁用品', '16', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('59', '洗护类', '16', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('60', '洗发、护发类', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('61', '个人用品', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('62', '沐浴露', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('63', '婴儿用品', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('64', '一次性用品', '18', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('65', '厨具类', '18', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('66', '水壶', '19', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('67', '煮蛋器', '19', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('68', '暖宝宝', '20', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('69', '数据线', '21', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('70', '充电宝', '21', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('71', ' 螺丝刀', '22', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('72', ' 卷尺', '22', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('73', '灯', '23', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('74', ' 插座', '23', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('75', ' 开关', '23', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('76', '挂锁', '24', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('77', 'U型锁', '24', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('78', ' 布艺沙发', '25', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('79', ' 皮质沙发', '25', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('80', '单人床', '26', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('81', ' 双人床', '26', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('82', '折叠床', '26', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('83', '沙发床', '26', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('84', ' 电脑桌', '27', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('85', ' 学习桌', '27', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('86', '餐桌', '27', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('87', ' 办公桌', '27', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('88', '茶几', '27', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('89', ' 床头柜', '28', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('90', ' 立柜', '28', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('91', '衣柜', '28', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('92', '支票夹', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('93', ' 夹子', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('94', ' 固体胶', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('95', ' 双面胶', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('96', ' 胶带', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('97', ' 计算机', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('98', '订书机', '31', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('99', '笔', '32', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('100', '稿纸', '32', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('101', '家政服务', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('102', '设备维修', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('103', '心理咨询', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('104', '法律援助', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('105', '代缴代办', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('106', '信息咨询', '8', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('107', '钟点工', '101', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('108', '家用电器维修', '102', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('109', '关心电话', '103', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('110', '法律咨询', '104', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('111', '手机充值', '105', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('112', '水电费', '105', null, null);
INSERT INTO `wf_gys_kinds` VALUES ('113', '旅游', '106', null, null);

-- ----------------------------
-- Table structure for wf_gys_user
-- ----------------------------
DROP TABLE IF EXISTS `wf_gys_user`;
CREATE TABLE `wf_gys_user` (
  `gys_id` int(11) NOT NULL AUTO_INCREMENT,
  `gys_name` varchar(255) NOT NULL COMMENT '账号',
  `gys_password` varchar(255) NOT NULL COMMENT '密码',
  `gym_phone` varchar(255) NOT NULL COMMENT '电话',
  `gys_email` varchar(255) NOT NULL COMMENT '邮箱',
  `gys_info` varchar(255) DEFAULT NULL COMMENT '店铺信息',
  `gys_nickname` varchar(255) DEFAULT NULL COMMENT '店铺名',
  `gys_leader` varchar(255) DEFAULT NULL COMMENT '负责人',
  `gys_address` varchar(255) DEFAULT NULL COMMENT '供应商地址',
  `gys_area` varchar(255) DEFAULT NULL COMMENT '配送范围',
  `gys_money` varchar(255) DEFAULT NULL COMMENT '账户余额',
  `gys_jifen` varchar(255) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`gys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_user
-- ----------------------------
INSERT INTO `wf_gys_user` VALUES ('1', 'csgys', '123456', '12312312312', '123@qq.com', '信息', '测试供应商', null, null, null, null, null);
INSERT INTO `wf_gys_user` VALUES ('2', 'real', '123456', '18698569856', '1223658941@qq.com', 'cin', '真真假假', '', null, null, null, null);

-- ----------------------------
-- Table structure for wf_jms_address
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_address`;
CREATE TABLE `wf_jms_address` (
  `jms_addressid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `jms_name` varchar(255) NOT NULL COMMENT '会员账号',
  `jms_consignee` varchar(255) NOT NULL,
  `jms_city` varchar(255) NOT NULL COMMENT '市',
  `jms_district` varchar(255) NOT NULL COMMENT '区',
  `jms_address` varchar(255) NOT NULL COMMENT '详细地址',
  `jms_postcode` varchar(255) NOT NULL COMMENT '邮编',
  `jms_mobile` varchar(255) NOT NULL COMMENT '手机号',
  `jms_defaul` int(2) NOT NULL COMMENT '是否设为默认 1是 0否',
  `jms_lat` varchar(255) NOT NULL COMMENT '纬度',
  `jms_lng` varchar(255) NOT NULL COMMENT '经度',
  PRIMARY KEY (`jms_addressid`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_address
-- ----------------------------
INSERT INTO `wf_jms_address` VALUES ('78', 'admin', 'fgh ', '哈尔滨', '道里区', '和兴路', '', '13200001111', '0', '', '');
INSERT INTO `wf_jms_address` VALUES ('69', 'seller', '欣欣', '哈尔滨', '道里区', '紫园路', '000000', '18645556558', '1', '', '');
INSERT INTO `wf_jms_address` VALUES ('66', 'seller', '芈月', '哈尔滨', '道里区', '中央大街', '000000', '18695876589', '0', '', '');
INSERT INTO `wf_jms_address` VALUES ('67', 'seller', '芈姝', '哈尔滨', '道里区', '防洪纪念塔', '111111', '13542354321', '0', '', '');
INSERT INTO `wf_jms_address` VALUES ('97', 'admin', '12345', '哈尔滨', '道里区', '12345', '12345', '23456', '1', '', '');
INSERT INTO `wf_jms_address` VALUES ('98', 'admin1', '', '哈尔滨市', '道里区', '中央大街', '', '13212345678', '0', '45.779657', '126.625372');
INSERT INTO `wf_jms_address` VALUES ('99', 'admin3', '', '哈尔滨市', '道里区', '儿童', '', '15044443333', '0', '0', '0');
INSERT INTO `wf_jms_address` VALUES ('100', 'admin4', '', '双鸭山市', '尖山区', '多久发货', '', '15044445555', '0', '0', '0');
INSERT INTO `wf_jms_address` VALUES ('107', 'admin1', 'admin1', '哈尔滨', '南岗区', '西大直街318号', '', '13311111111', '1', '45.74268', '126.625157');
INSERT INTO `wf_jms_address` VALUES ('106', 'csjms', 'csjms', '哈尔滨', '南岗区', '西大直街318号', '', '13311111111', '1', '45.74268', '126.625157');
INSERT INTO `wf_jms_address` VALUES ('108', 'shyj0451', 'shyj0451', '哈尔滨', '道里区', '爱建路附近', '', '13946152421', '1', '45.769388', '126.60946');
INSERT INTO `wf_jms_address` VALUES ('109', 'admin8', 'admin8', '双鸭山', '四方台区', 'tui', '', '15555555555', '1', '46.669775', '131.308707');
INSERT INTO `wf_jms_address` VALUES ('110', 'admin9', 'admin9', '双鸭山', '尖山区', 'uiou', '', '15555555555', '1', '46.658525', '131.178514');
INSERT INTO `wf_jms_address` VALUES ('111', 'admin3', 'admin3', '哈尔滨', '南岗区', '遇到覅', '', '15555555555', '1', '45.666123', '126.590255');
INSERT INTO `wf_jms_address` VALUES ('112', 'admin-0', 'admin-0', '哈尔滨', '南岗区', '43', '', '15555555555', '1', '45.666123', '126.590255');
INSERT INTO `wf_jms_address` VALUES ('113', 'admin9999', 'admin9999', '七台河', '新兴区', '111', '', '15555555555', '1', '45.813494', '130.893188');

-- ----------------------------
-- Table structure for wf_jms_cart
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_cart`;
CREATE TABLE `wf_jms_cart` (
  `jms_cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `jms_buyer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '买家id',
  `jms_store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺id',
  `jms_store_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `jms_goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `jms_goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `jms_goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `jms_goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `jms_goods_image` varchar(100) NOT NULL COMMENT '商品图片',
  `jms_pay_status` tinyint(8) DEFAULT '0' COMMENT '支付状态：0未支付，1已支付',
  PRIMARY KEY (`jms_cart_id`),
  KEY `member_id` (`jms_buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车数据表';

-- ----------------------------
-- Records of wf_jms_cart
-- ----------------------------

-- ----------------------------
-- Table structure for wf_jms_ckb
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_ckb`;
CREATE TABLE `wf_jms_ckb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `jms_id` int(11) DEFAULT NULL COMMENT '加盟商编号',
  `ck_djh` varchar(255) DEFAULT NULL COMMENT '出库订单号',
  `ck_spid` varchar(255) DEFAULT NULL COMMENT '出库商品编号',
  `ck_spmc` varchar(255) DEFAULT NULL COMMENT '出库商品名称',
  `ck_sl` decimal(65,1) DEFAULT NULL COMMENT '出库商品数量',
  `ck_spje` decimal(65,1) DEFAULT NULL COMMENT '出库商品金额',
  `ck_spdw` varchar(255) DEFAULT NULL COMMENT '出库商品单位',
  `ck_sj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_ckb
-- ----------------------------
INSERT INTO `wf_jms_ckb` VALUES ('22', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('23', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('24', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.0', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('25', '1', '20151223000002', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('26', '1', '20151224000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-24 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('27', '1', '20151224000002', 'B201512230000001', '白鲨', '1.0', '8.0', '盒', '2015-12-24 00:00:00');

-- ----------------------------
-- Table structure for wf_jms_dingdan
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_dingdan`;
CREATE TABLE `wf_jms_dingdan` (
  `jms_ddid` int(11) NOT NULL AUTO_INCREMENT,
  `jms_ddtime` datetime NOT NULL,
  `jms_ddnum` varchar(255) NOT NULL COMMENT '订单号',
  `jms_ddage` varchar(255) NOT NULL COMMENT '订单产品数量',
  `jms_gid` int(11) NOT NULL COMMENT '购买产品id',
  `jms_gname` varchar(255) NOT NULL COMMENT '购买产品名称',
  `jms_sid` int(11) NOT NULL COMMENT '订单所属供应商id',
  `jms_store` varchar(255) NOT NULL COMMENT '订单所属供应商',
  `jms_uid` int(11) NOT NULL COMMENT '购买者id',
  `jms_uname` varchar(255) DEFAULT NULL COMMENT '购买者',
  `jms_address` varchar(255) NOT NULL COMMENT '联系地址',
  `jms_phone` varchar(255) NOT NULL COMMENT '联系方式',
  `jms_state` int(11) NOT NULL DEFAULT '0',
  `jms_price` decimal(10,0) NOT NULL COMMENT '订单价钱',
  `jms_consignee` varchar(255) NOT NULL COMMENT '收货人',
  `jms_ddact` varchar(255) NOT NULL COMMENT '付款方式',
  `jms_pid` int(11) NOT NULL COMMENT '支付表pid',
  PRIMARY KEY (`jms_ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_dingdan
-- ----------------------------
INSERT INTO `wf_jms_dingdan` VALUES ('1', '2015-11-05 09:30:22', '02015110509302201', '100', '32', '索尼爱立信XPERIA X1', '1', '测试供应商', '1', '测试加盟商', '', '15149451569', '1', '3000', '水电费年开始', '线下付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('2', '2015-11-05 09:31:22', 'A2015110509302201', '100', '33', '索尼爱立信G700', '1', '测试供应商', '1', '测试加盟商', '', '15149451569', '2', '3000', '而非撒', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('3', '2015-11-05 09:31:22', 'A2015110509302301', '100', '32', '索尼爱立信XPERIA X1', '1', '测试供应商', '1', '测试加盟商', '', '15149451569', '3', '3100', '165', '线下付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('4', '2015-11-05 09:31:22', 'A2015110509302301', '200', '33', '索尼爱立信G700', '1', '测试供应商', '1', '测试加盟商', '', '15149451569', '4', '3200', '156', '线下付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('5', '2015-11-05 09:31:22', 'A2015110509302404', '200', '33', '索尼爱立信G700', '1', '测试供应商', '1', '测试加盟商', '', '15149451569', '5', '3200', '546', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('6', '2016-01-13 11:13:34', '87701452654814262625', '622', '30', '三星(W110120)', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '1', '2500', '12345', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('7', '2016-01-13 11:13:34', '87701452654814262625', '115', '62', 'Samsung/三星 GT-S5830I', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '1', '1699', '12345', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('8', '2016-01-13 11:23:18', '87701452655398438543', '1', '62', 'Samsung/三星 GT-S5830I', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '1', '1699', '12345', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('9', '2016-01-13 11:23:18', '87701452655398438543', '1', '109', '测试咳咳咳', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '1', '0', '12345', '在线支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('10', '2016-01-13 16:20:15', '87701452673215310607', '15', '62', 'Samsung/三星 GT-S5830I', '1', 'csgys', '1', 'admin', '哈尔滨道里区和兴路', '13200001111', '1', '1699', 'fgh ', '货到付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('11', '2016-01-13 16:20:15', '87701452673215310607', '19', '61', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', '1', 'csgys', '1', 'admin', '哈尔滨道里区和兴路', '13200001111', '1', '5399', 'fgh ', '货到付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('12', '2016-01-13 16:32:21', '87701452673941189593', '1', '62', 'Samsung/三星 GT-S5830I', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '1', '1699', '12345', '货到付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('13', '2016-01-17 14:33:09', '87701453012389165615', '1', '625', '一次性纸杯', '1', 'csgys', '1', 'admin', '哈尔滨道里区12345', '23456', '3', '4', '12345', '在线支付', '0');

-- ----------------------------
-- Table structure for wf_jms_goods
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_goods`;
CREATE TABLE `wf_jms_goods` (
  `jms_gid` int(255) NOT NULL AUTO_INCREMENT,
  `jms_gname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `jms_id` int(255) NOT NULL COMMENT '加盟商id',
  `jms_kid` int(255) NOT NULL COMMENT '商品所属类别ID',
  `jms_vipprice` float(255,2) DEFAULT NULL COMMENT '会员价',
  `jms_price` float(255,2) DEFAULT NULL COMMENT '市场价',
  `jms_num` int(255) DEFAULT NULL,
  `jms_photo` varchar(255) DEFAULT NULL,
  `jms_status` tinyint(255) NOT NULL COMMENT '商品状态 1上架 0下架',
  `jms_info` varchar(255) DEFAULT NULL COMMENT '产品信息',
  `jms_brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `jms_uptime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `jms_colnum` varchar(255) DEFAULT NULL COMMENT '收藏数量',
  `jms_paynum` varchar(255) DEFAULT NULL COMMENT '卖出数量',
  `jms_hot` int(255) DEFAULT NULL COMMENT '是否热销 1是',
  `jms_marque` varchar(255) DEFAULT NULL COMMENT '规格',
  `jms_weight` varchar(255) DEFAULT NULL COMMENT '重量',
  `jms_new` int(255) DEFAULT NULL COMMENT '是否新品 1是',
  `jms_did` int(255) DEFAULT NULL COMMENT '地区ID',
  `jms_tiaoma` int(255) NOT NULL COMMENT '商品条码',
  `jms_spdw` varchar(255) DEFAULT NULL COMMENT '商品单位',
  `jms_spbh` int(255) NOT NULL COMMENT '商品编号',
  PRIMARY KEY (`jms_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=809 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_goods
-- ----------------------------
INSERT INTO `wf_jms_goods` VALUES ('257', '汰渍洗衣粉柠檬', '1', '59', '3.00', '3.30', '1', '/Public/Home/images/2016-01-14/1_05005662207483765.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('258', '汰渍洗衣粉薰衣草', '1', '59', '9.00', '9.50', '100', '/Public/Home/images/2016-01-14/1_05005666073587144.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('259', '碧浪洗衣粉无磷', '1', '59', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05005667741867740.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('260', '奇盟小麦白啤酒', '1', '34', '59.00', '65.00', '10', '/Public/Home/images/2016-01-14/1_05005672879613078.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('261', '加多宝', '1', '36', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05005674422329901.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('262', '加多宝', '1', '36', '4.50', '5.00', '100', '/Public/Home/images/2016-01-14/1_05005675316053869.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('263', '五粮液浓香型39度', '1', '33', '650.00', '700.00', '10', '/Public/Home/images/2016-01-14/1_05005676636577685.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('264', '五粮液52度', '1', '33', '800.00', '850.00', '10', '/Public/Home/images/2016-01-14/1_05005677442626223.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('265', '水井坊52度', '1', '33', '600.00', '650.00', '10', '/Public/Home/images/2016-01-14/1_05005678515367729.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('266', '百奇巧克力味', '1', '38', '6.00', '6.50', '10', '/Public/Home/images/2016-01-14/1_05005681012848760.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('267', '百奇牛奶味', '1', '38', '6.00', '6.50', '10', '/Public/Home/images/2016-01-14/1_05005681621106164.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('268', '百醇抹茶慕斯味', '1', '38', '6.50', '7.00', '10', '/Public/Home/images/2016-01-14/1_05005682274143832.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('269', '百醇红酒巧克力味', '1', '38', '6.50', '7.00', '10', '/Public/Home/images/2016-01-14/1_05005682838429426.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('271', '贵州茅台53度', '1', '33', '1000.00', '1100.00', '10', '/Public/Home/images/2016-01-14/1_05005684985071350.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('272', '佳洁士草本水晶牙膏', '1', '61', '4.00', '4.30', '10', '/Public/Home/images/2016-01-14/1_05005686254774357.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('273', '佳洁士盐白牙膏', '1', '61', '4.00', '4.50', '10', '/Public/Home/images/2016-01-14/1_05005686972581448.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('274', '飘柔洗发露兰花400ML', '1', '60', '18.90', '19.90', '10', '/Public/Home/images/2016-01-14/1_05005687662672689.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('275', '飘柔洗发露杏仁400ML', '1', '60', '18.90', '19.90', '10', '/Public/Home/images/2016-01-14/1_05005688206624025.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('276', '飘柔洗发露山茶400ML', '1', '60', '18.90', '19.90', '10', '/Public/Home/images/2016-01-14/1_05005688843994815.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('277', '海飞丝洗发露丝质柔滑400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005689822335392.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('278', '海飞丝去屑洗发露丝质柔滑型200ML', '1', '60', '28.90', '30.90', '10', '/Public/Home/images/2016-01-14/1_05005690423011697.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('279', '海飞丝去屑怡身冰凉型400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005691036906259.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('280', '海飞丝去屑洗发露怡神冰凉型200ML', '1', '60', '28.90', '29.90', '10', '/Public/Home/images/2016-01-14/1_05005691663743895.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('281', '海飞丝去屑洗发露清爽去油400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005692812564653.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('282', '海飞丝去屑洗发露清爽型200ML', '1', '60', '28.90', '30.90', '10', '/Public/Home/images/2016-01-14/1_05005693428974840.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('283', '海飞丝去屑洗发露深层洁净400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005694230211701.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('284', '海飞丝去屑洗发露型深层洁净200ML', '1', '60', '28.90', '30.90', '10', '/Public/Home/images/2016-01-14/1_05005695357740351.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('285', '海飞丝去屑洗发露黑亮强韧400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005695856400203.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('286', '海飞丝去屑洗发露型黑亮强韧型200ML', '1', '60', '28.90', '30.90', '10', '/Public/Home/images/2016-01-14/1_05005696425351251.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('287', '海飞丝去屑洗发露海洋活力型400ML', '1', '60', '52.00', '55.00', '10', '/Public/Home/images/2016-01-14/1_05005696951670451.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('288', '海飞丝去屑洗发露活力海洋型200ML', '1', '60', '28.90', '30.90', '10', '/Public/Home/images/2016-01-14/1_05005697469911089.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('289', '舒肤佳芦荟沐浴露200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005699031053463.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('290', '舒肤佳金银花沐浴露200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005699735845385.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('291', '舒肤佳沐浴露柠檬200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005700224738097.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('292', '舒肤佳薄荷沐浴露200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005700723563470.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('293', '舒肤佳维他命E沐浴露200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005701174450603.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('294', '汰渍全效炫白洗衣皂', '1', '59', '5.00', '6.00', '10', '/Public/Home/images/2016-01-14/1_05005702403442753.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('295', '飘柔丝滑轻盈护发素200ML', '1', '60', '9.90', '11.00', '10', '/Public/Home/images/2016-01-14/1_05005703362367388.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('296', '飘柔水润滋养护发素200ML', '1', '60', '9.90', '11.00', '10', '/Public/Home/images/2016-01-14/1_05005704053533803.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('297', '汰渍净白去渍', '1', '59', '13.40', '15.50', '10', '/Public/Home/images/2016-01-14/1_05005705275444355.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('298', '舒肤佳纯白沐浴露200ML', '1', '62', '14.00', '16.00', '10', '/Public/Home/images/2016-01-14/1_05005705891047377.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('299', '护舒宝棉柔日用', '1', '61', '5.00', '6.00', '10', '/Public/Home/images/2016-01-14/1_05005707046050840.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('300', '护舒宝夜用棉柔10片', '1', '61', '6.00', '7.00', '10', '/Public/Home/images/2016-01-14/1_05005707599494024.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('301', '潘婷丝质顺滑精华素200ML', '1', '60', '21.00', '23.00', '10', '/Public/Home/images/2016-01-14/1_05005708419465191.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('302', '潘婷乳液修复洗发露400ML', '1', '60', '35.00', '38.00', '10', '/Public/Home/images/2016-01-14/1_05005709143052603.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('303', '潘婷丝质润滑洗发露400ML', '1', '60', '35.00', '38.00', '10', '/Public/Home/images/2016-01-14/1_05005711972331689.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('304', '潘婷乳液修护发素200ML', '1', '60', '21.00', '23.00', '10', '/Public/Home/images/2016-01-14/1_05005712589283892.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('305', '潘婷柔顺直发洗发露400ML', '1', '60', '35.00', '38.00', '10', '/Public/Home/images/2016-01-14/1_05005713490351121.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('306', '潘婷丝质润滑去屑洗发露400ML', '1', '60', '35.00', '38.00', '10', '/Public/Home/images/2016-01-14/1_05005713971462076.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('307', '汰渍全效360（小）', '1', '59', '23.00', '28.00', '10', '/Public/Home/images/2016-01-14/1_05005715578016862.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('308', '汰渍全效360', '1', '59', '45.00', '49.00', '10', '/Public/Home/images/2016-01-14/1_05005716061730879.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('309', '汰渍薰衣草洗衣液（小）', '1', '59', '23.00', '28.00', '10', '/Public/Home/images/2016-01-14/1_05005717077612889.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('310', '汰渍薰衣草洗衣液', '1', '59', '42.00', '47.00', '10', '/Public/Home/images/2016-01-14/1_05005717598810155.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('311', '舒肤佳柠檬清新型香皂', '1', '59', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05005718583643240.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('312', '舒肤佳芦荟香皂', '1', '59', '6.00', '6.50', '10', '/Public/Home/images/2016-01-14/1_05005719105793254.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('313', '舒肤佳纯白清香型', '1', '59', '6.00', '6.50', '10', '/Public/Home/images/2016-01-14/1_05005719637319195.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('314', '菲尔德堡小麦啤酒', '1', '34', '7.00', '8.90', '100', '/Public/Home/images/2016-01-14/1_05010813223707037.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('315', '菲尔德堡小麦啤酒', '1', '34', '59.00', '63.00', '10', '/Public/Home/images/2016-01-14/1_05010815007061151.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('316', '菲尔德堡浓色啤酒', '1', '34', '7.00', '8.90', '100', '/Public/Home/images/2016-01-14/1_05010816459604837.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('317', '坦克伯爵白啤酒', '1', '34', '8.00', '9.90', '100', '/Public/Home/images/2016-01-14/1_05010817162913815.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('318', '三环铁锁38mm', '1', '76', '7.00', '8.50', '10', '/Public/Home/images/2016-01-14/1_05010818925692667.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('319', '三环铁锁50mm', '1', '76', '9.00', '10.50', '10', '/Public/Home/images/2016-01-14/1_05010820170511565.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('320', '三环铁锁63mm', '1', '76', '13.00', '14.50', '10', '/Public/Home/images/2016-01-14/1_05010821149755523.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('321', '三环牌铁锁75mm', '1', '76', '15.00', '16.50', '10', '/Public/Home/images/2016-01-14/1_05010821873308899.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('322', '乌江涪陵鲜爽榨菜丝', '1', '56', '1.50', '2.00', '10', '/Public/Home/images/2016-01-14/1_05010829196976506.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('323', '乌江涪陵爽脆榨菜芯', '1', '56', '1.50', '2.00', '100', '/Public/Home/images/2016-01-14/1_05010829989729957.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('324', '乌江野山椒味凉拌海带丝', '1', '56', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05010831170582299.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('325', '乌江美味萝卜', '1', '56', '1.50', '2.00', '100', '/Public/Home/images/2016-01-14/1_05010831734768684.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('326', '乌江鲜香味凉拌海带丝', '1', '56', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05010834321762739.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('327', '潘婷乌黑莹亮洗发露400ML', '1', '60', '35.00', '38.00', '100', '/Public/Home/images/2016-01-14/1_05010841880662838.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('328', '海飞丝去屑洗发露止痒200ML', '1', '60', '28.90', '31.00', '50', '/Public/Home/images/2016-01-14/1_05010844972289070.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('329', '飘柔洗发露芦荟400ML', '1', '60', '18.90', '22.50', '50', '/Public/Home/images/2016-01-14/1_05010846392980742.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('330', '飘柔洗发露葵花籽400ML', '1', '60', '18.90', '22.50', '50', '/Public/Home/images/2016-01-14/1_05010847450190023.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('331', '汰渍全效360洗衣皂', '1', '59', '4.50', '5.00', '100', '/Public/Home/images/2016-01-14/1_05010849598055666.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('332', '潘婷烫染修复洗发露400ML', '1', '60', '35.00', '38.00', '50', '/Public/Home/images/2016-01-14/1_05010850404944639.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('333', '潘婷乳液修复精华素200ML', '1', '60', '21.00', '25.00', '50', '/Public/Home/images/2016-01-14/1_05010851000567860.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('334', '碧浪专业去渍洗衣皂(茉莉香型)', '1', '59', '5.00', '5.90', '100', '/Public/Home/images/2016-01-14/1_05010851780904088.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('335', '佳洁士炫白双效牙膏', '1', '61', '9.00', '12.00', '100', '/Public/Home/images/2016-01-14/1_05010852594900105.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('336', '碧浪洁护如新洗衣液', '1', '59', '26.00', '29.00', '10', '/Public/Home/images/2016-01-14/1_05010853402090448.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('337', '碧浪洁护如新洗衣液', '1', '59', '45.00', '49.00', '10', '/Public/Home/images/2016-01-14/1_05010853963604262.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('338', '潘婷丝质顺滑洗发露170ML', '1', '60', '19.00', '23.00', '50', '/Public/Home/images/2016-01-14/1_05010855246694135.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('339', '潘婷丝质顺滑去屑洗发露170ML', '1', '60', '19.00', '23.00', '50', '/Public/Home/images/2016-01-14/1_05010855893159461.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('340', '海飞丝男士屑洗发露净爽型200ML', '1', '60', '30.00', '37.00', '50', '/Public/Home/images/2016-01-14/1_05010856489330042.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('341', '潘婷乳液修复洗发露170ML', '1', '60', '19.00', '23.00', '50', '/Public/Home/images/2016-01-14/1_05010858745968487.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('342', '潘婷烫染修复洗发露170ML', '1', '60', '19.00', '23.00', '50', '/Public/Home/images/2016-01-14/1_05010860355823741.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('343', '舒肤佳蜂蜜沐浴露200ML', '1', '62', '14.00', '16.00', '50', '/Public/Home/images/2016-01-14/1_05010861568051482.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('344', '舒肤佳薰衣草沐浴露200ML', '1', '62', '14.00', '16.00', '50', '/Public/Home/images/2016-01-14/1_05010862323567225.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('345', '舒肤佳蜂蜜香皂', '1', '59', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05010863099042420.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('346', '舒肤佳薰衣草香皂', '1', '59', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05010863765832575.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('347', '潘婷水润滋养精华素200ML', '1', '60', '21.00', '26.00', '100', '/Public/Home/images/2016-01-14/1_05010864924124554.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('348', '飘柔洗发露（兰花）', '1', '60', '9.90', '12.90', '100', '/Public/Home/images/2016-01-14/1_05010868325019736.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('349', '飘柔洗发露（兰花洁顺）', '1', '60', '9.90', '11.00', '50', '/Public/Home/images/2016-01-14/1_05010872813958957.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('350', '飘柔洗发露绿茶190ML', '1', '60', '9.90', '12.00', '50', '/Public/Home/images/2016-01-14/1_05010878521279405.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('351', '飘柔洗发露（芦荟）', '1', '60', '9.90', '12.00', '50', '/Public/Home/images/2016-01-14/1_05010879755439288.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('352', '飘柔洗发露葵花籽190ML', '1', '60', '9.90', '12.00', '50', '/Public/Home/images/2016-01-14/1_05010880709090148.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('353', '飘柔洗发露（山茶）', '1', '60', '9.90', '12.00', '50', '/Public/Home/images/2016-01-14/1_05010881395592380.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('354', '七度空间棉柔花垫18片', '1', '61', '5.00', '6.00', '50', '/Public/Home/images/2016-01-14/1_05010882362661211.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('355', '七度空间冰感护垫28片', '1', '61', '5.00', '6.00', '50', '/Public/Home/images/2016-01-14/1_05010882992106690.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('356', '心相印卷纸1800g', '1', '57', '25.00', '28.00', '50', '/Public/Home/images/2016-01-14/1_05010884278310146.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('357', '高露洁深洁牙刷', '1', '61', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05010885452388668.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('358', '柔柔瞬吸贴身棉柔日用10片240', '1', '61', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011532045012480.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('359', '柔柔瞬吸贴身棉柔10片290', '1', '61', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011532665972100.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('360', '中国劲酒', '1', '33', '10.00', '13.00', '15', '/Public/Home/images/2016-01-14/1_05011533507677665.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('361', '中国劲酒258ML', '1', '33', '20.00', '23.00', '19', '/Public/Home/images/2016-01-14/1_05011534120743486.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('362', '上好佳鲜虾条（小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011534884857842.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('363', '上好佳鲜虾片（小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011535454167848.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('364', '上好佳栗米条草莓口味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011536934883621.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('365', '上好佳栗米条朱古力口味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011537528993207.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('366', '上好佳棉花糖绿苹果口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011538169284681.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('367', '上好佳棉花糖香草口味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011538764638136.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('368', '上好佳棉花糖草莓口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011539337981595.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('369', '上好佳田园薯片番茄口味', '1', '39', '3.50', '3.80', '100', '/Public/Home/images/2016-01-14/1_05011540039331922.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('370', '上好佳田园薯片香辣口味', '1', '39', '3.50', '3.80', '100', '/Public/Home/images/2016-01-14/1_05011540579391089.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('371', '上好佳田园薯片烤肉口味', '1', '39', '3.50', '3.80', '100', '/Public/Home/images/2016-01-14/1_05011541195137156.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('372', '六必居酱150G', '1', '55', '1.50', '2.00', '100', '/Public/Home/images/2016-01-14/1_05011542036469072.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('373', '六必居腐乳', '1', '52', '7.00', '7.50', '100', '/Public/Home/images/2016-01-14/1_05011542702875469.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('374', '六必居纯芝麻酱', '1', '55', '8.50', '9.90', '100', '/Public/Home/images/2016-01-14/1_05011543380208210.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('375', '六必居百分百纯芝麻香油', '1', '48', '10.50', '13.00', '100', '/Public/Home/images/2016-01-14/1_05011544105793567.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('376', '六必居料酒', '1', '45', '6.00', '7.50', '100', '/Public/Home/images/2016-01-14/1_05011544834519045.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('377', '六必居精品老抽100%酿造酱油', '1', '44', '6.00', '7.90', '100', '/Public/Home/images/2016-01-14/1_05011545623406612.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('378', '六必居白醋500ml', '1', '43', '6.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05011546184536410.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('379', '三笑纤丝深洁牙刷', '1', '61', '3.00', '3.90', '100', '/Public/Home/images/2016-01-14/1_05011546893739267.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('380', '阿尔卑斯原味牛奶软糖', '1', '41', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05011554593564510.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('381', '阿尔卑斯芒果牛奶味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011555429878111.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('382', '阿尔卑斯香草可乐味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011555945027233.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('383', '阿尔卑斯高级牛奶味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011556508844540.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('384', '阿尔卑斯草莓牛奶味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011557094073737.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('385', '阿尔卑斯柠檬牛奶味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011557635349274.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('386', '阿尔卑斯热带水果奶味硬糖', '1', '41', '0.50', '0.60', '100', '/Public/Home/images/2016-01-14/1_05011558145712843.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('387', '阿尔卑斯硬糖香橙味', '1', '41', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05011558722867265.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('388', '达利园派草莓味', '1', '38', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05011559463629160.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('389', '达利园熊字饼', '1', '38', '2.50', '2.80', '100', '/Public/Home/images/2016-01-14/1_05011560056393357.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('390', '达利园手指饼', '1', '38', '2.50', '2.80', '100', '/Public/Home/images/2016-01-14/1_05011560537762754.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('391', '达利园字母饼', '1', '38', '2.50', '2.80', '100', '/Public/Home/images/2016-01-14/1_05011561075666963.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('392', '达利园派蛋黄味', '1', '38', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05011561612149255.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('393', '达利园派巧克力味', '1', '38', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05011588346266255.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('394', '达利园法式小面包', '1', '38', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05011690958520702.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('395', '达利园瑞士卷草莓味', '1', '38', '6.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05011691777719154.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('396', '达利园瑞士卷香橙味', '1', '38', '6.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05011692392729241.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('397', '达利园瑞士卷巧克力味', '1', '38', '6.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05011692948782313.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('398', '达利园瑞士卷香蕉味', '1', '38', '6.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05011693576292674.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('399', '达利园法式软面包（香奶味）', '1', '38', '5.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011694120689236.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('400', '达利园法式软面包（香橙味）', '1', '38', '5.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011694636892597.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('401', '达利园花生牛奶原味', '1', '36', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05011695321366947.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('402', '达利园花生牛奶核桃味', '1', '36', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05011695835538264.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('403', '达利园欧式蛋糕', '1', '38', '5.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011696583862709.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('404', '乐虎380ml', '1', '36', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05011697400496801.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('405', '和其正凉茶(大)', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05011699640335103.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('406', '富裕老窖250ML', '1', '33', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011700824287880.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('407', '富裕老窖500ML', '1', '33', '12.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05011701598722080.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('408', '富裕老窖花开富贵500ML', '1', '33', '22.00', '25.00', '100', '/Public/Home/images/2016-01-14/1_05011702262308885.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('409', '百事可乐（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05011702942484393.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('410', '七喜（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05011703758407554.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('411', '美年达橙味（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05011704439185537.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('412', '红牛听', '1', '36', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05011705478638614.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('413', '三和牌油浸型豆豉鱼罐头', '1', '50', '4.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05011706428063828.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('414', '高露洁360', '1', '61', '8.90', '9.90', '100', '/Public/Home/images/2016-01-14/1_05011707584865156.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('415', '高露洁草本牙膏', '1', '61', '3.50', '5.00', '100', '/Public/Home/images/2016-01-14/1_05011711428256240.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('416', '高露洁防蛀美白', '1', '61', '4.50', '5.50', '100', '/Public/Home/images/2016-01-14/1_05011712160520585.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('417', '高露冰爽3重薄荷', '1', '61', '7.00', '9.00', '100', '/Public/Home/images/2016-01-14/1_05011712852569218.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('418', '高露洁健康牙龈360', '1', '61', '8.90', '11.90', '100', '/Public/Home/images/2016-01-14/1_05011713518847787.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('419', '高露洁光感白', '1', '61', '8.90', '11.90', '100', '/Public/Home/images/2016-01-14/1_05011714152013291.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('420', '高露洁自然之萃白珍珠牙刷', '1', '61', '8.50', '9.00', '100', '/Public/Home/images/2016-01-14/1_05011715076241933.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('421', '高露洁修护牙釉质360', '1', '61', '8.90', '10.90', '100', '/Public/Home/images/2016-01-14/1_05011715757721384.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('422', '高露洁备长炭深洁', '1', '61', '8.90', '10.90', '100', '/Public/Home/images/2016-01-14/1_05011716381871239.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('423', '高露洁茶健', '1', '61', '5.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05011717047131355.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('424', '高露洁超密倍洁牙刷', '1', '61', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05011717688253981.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('425', '高露洁冰爽劲白', '1', '61', '7.00', '9.00', '100', '/Public/Home/images/2016-01-14/1_05011718246773422.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('426', '美味尽享智能蒸蛋器', '1', '67', '25.00', '30.00', '10', '/Public/Home/images/2016-01-14/1_05011719793495207.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('427', '牙 签', '1', '61', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05011720574109616.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('428', '康师傅红烧牛肉面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011721331841786.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('429', '康师傅鲜虾鱼板面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011722063523044.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('430', '康师傅香辣牛肉面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011722673565655.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('431', '康师傅酸辣牛肉面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011723264601785.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('432', '康师傅小鸡炖蘑菇面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011723789598636.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('433', '康师傅西红柿鸡蛋打卤面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05011724343570356.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('434', '康师傅酸辣牛肉面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012373195555032.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('435', '康师傅小鸡炖蘑菇面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012373813088814.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('436', '康师傅红烧排骨面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05012374458275269.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('437', '康师傅红烧排骨面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012375009263040.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('438', '康师傅西红柿鸡蛋打卤面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012375540409561.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('439', '好丽友蛋黄派(2枚)', '1', '38', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05012376526988222.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('440', '好丽友蛋黄派(12枚)', '1', '38', '19.00', '22.00', '100', '/Public/Home/images/2016-01-14/1_05012377126397559.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('441', '好丽友巧克力派（2枚）', '1', '38', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05012378109646019.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('442', '好丽友派巧克力味（6枚）', '1', '38', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012378793483264.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('443', '好丽友派巧克力味(12枚)', '1', '38', '18.00', '20.00', '100', '/Public/Home/images/2016-01-14/1_05012389910058026.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('444', '好丽友提拉米苏6枚', '1', '38', '10.00', '12.00', '100', '/Public/Home/images/2016-01-14/1_05012390564103307.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('445', '好丽友提拉米苏(12枚)', '1', '38', '19.00', '21.00', '100', '/Public/Home/images/2016-01-14/1_05012391115792730.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('446', '好丽友可可派（6枚）', '1', '38', '9.00', '11.00', '100', '/Public/Home/images/2016-01-14/1_05012391730535752.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('447', '好丽友可可派巧克力味（12枚）', '1', '38', '19.00', '21.00', '100', '/Public/Home/images/2016-01-14/1_05012394679519784.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('448', '好丽友双莓派(6枚)', '1', '38', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012395601492924.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('449', '好丽友双莓派(12枚)', '1', '38', '16.00', '17.00', '100', '/Public/Home/images/2016-01-14/1_05012396295609297.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('450', 'Q蒂摩卡巧克力味', '1', '38', '20.00', '22.00', '100', '/Public/Home/images/2016-01-14/1_05012397624114373.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('451', 'Q蒂摩卡巧克力味(2枚)', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012399704425571.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('452', 'Q蒂榛子巧克力味（6枚）', '1', '38', '11.00', '13.00', '100', '/Public/Home/images/2016-01-14/1_05012400744844293.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('453', 'Q蒂榛子巧克力味（12枚）', '1', '38', '20.00', '22.00', '100', '/Public/Home/images/2016-01-14/1_05012401349022536.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('454', 'Q蒂榛子巧克力味(2枚)', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012401956286154.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('455', '木糖醇口香糖热带水果味（101g）', '1', '41', '15.00', '17.00', '100', '/Public/Home/images/2016-01-14/1_05012402768407044.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('456', '木糖醇口香糖青苹薄荷味', '1', '41', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05012403370733048.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('457', '木糖醇口香糖苹果柠檬蜜桃味（101）', '1', '41', '15.00', '17.00', '100', '/Public/Home/images/2016-01-14/1_05012403965053017.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('458', '木糖醇口香糖花香（101g）', '1', '41', '15.00', '17.00', '100', '/Public/Home/images/2016-01-14/1_05012404601697396.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('459', '木糖醇口香糖檬檬哒青柠味', '1', '41', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05012405146132742.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('460', '木糖醇香甜蜜桃味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012405832978848.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('461', '木糖醇清香芒果味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012406421711248.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('462', '木糖醇醇香葡萄味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012406977595644.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('463', '木糖醇清甜香瓜味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012408059019624.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('464', '好多鱼鲜香海苔味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012412806619669.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('465', '蘑古力红豆巧克力味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012416828307867.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('466', '好多鱼浓香茄汁味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012417355708944.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('467', '好多鱼脆香烧烤味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012417879262551.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('468', '好多鱼蜜香鸡翅味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012418401300903.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('469', '蘑古力榛子巧克力味', '1', '38', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05012419982476471.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('470', '呀！土豆（番茄酱味小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012420734948879.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('471', '呀！土豆（番茄酱味）', '1', '39', '5.50', '5.90', '100', '/Public/Home/images/2016-01-14/1_05012421317203867.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('472', '呀！土豆（里脊牛排味）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012421862349038.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('473', '呀!土豆（里脊牛排味）', '1', '39', '5.50', '5.90', '100', '/Public/Home/images/2016-01-14/1_05012422456656607.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('474', '呀！土豆（滋香烤鸡味小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012423019771430.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('475', '呀！土豆（滋香烤鸡味）', '1', '39', '5.50', '5.90', '100', '/Public/Home/images/2016-01-14/1_05012423609744062.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('476', '好友趣纯香原味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012424400913973.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('477', '好友趣纯香原味（大）', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012424915189524.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('478', '好友趣多只牛排味（小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012425436411576.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('479', '好友趣多汁牛排味', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012425960947614.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('480', '好友趣韩国泡菜味小', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012426511109907.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('481', '好友趣韩国泡菜味', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012427073736956.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('482', '好友趣醇香番茄味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012427570633787.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('483', '好友趣加勒比烤翅味', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012428087282199.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('484', '甜天麦（黄）', '1', '39', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05012428679265815.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('485', '甜天麦', '1', '39', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05012429286059858.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('486', '薯愿蜂蜜牛奶味', '1', '39', '8.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012430032480937.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('487', '薯愿香烤原味', '1', '39', '8.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012430500177005.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('488', '薯愿红酒牛排味', '1', '39', '8.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012431041773269.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('489', '薯愿清新番茄味', '1', '39', '8.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012431614682546.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('490', '呀！土豆（香焗原味）', '1', '39', '5.50', '5.90', '100', '/Public/Home/images/2016-01-14/1_05012432689133588.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('491', '薯愿烤鸡沙拉味', '1', '39', '8.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012433180211538.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('492', '呀！土豆（蜂蜜黄油味小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012433834713009.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('493', '好友趣蜂蜜黄油味（小）', '1', '39', '3.50', '3.90', '100', '/Public/Home/images/2016-01-14/1_05012434546113343.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('494', '好友趣蜂蜜黄油味', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012435119068941.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('495', '高笑美醇香原味', '1', '38', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05012435754519429.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('496', '采韵香香蒜豌豆', '1', '40', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012534128802880.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('497', '采韵香牛肉豌豆', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012534813110418.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('498', '采韵香牛肉豆（蚕豆）', '1', '39', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05012535309486967.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('499', '水溶C100柠檬味', '1', '36', '4.50', '4.80', '100', '/Public/Home/images/2016-01-14/1_05012536043964843.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('500', '水溶C100西柚汁', '1', '36', '4.50', '4.80', '100', '/Public/Home/images/2016-01-14/1_05012536536622055.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('501', '尖叫（多肽型）', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05012537029894190.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('502', '尖叫（纤维型）', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05012537556891402.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('503', '农夫山泉550', '1', '37', '2.00', '2.00', '100', '/Public/Home/images/2016-01-14/1_05012538113070261.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('504', '农夫山泉380', '1', '37', '1.50', '1.50', '100', '/Public/Home/images/2016-01-14/1_05012538609520069.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('505', '水溶C100青皮桔味', '1', '36', '4.50', '4.80', '100', '/Public/Home/images/2016-01-14/1_05012539194512884.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('506', '满地可一品鱿鱼圈（小）', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012539852262828.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('507', '满地可蔬菜鸡味圈', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012540392563284.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('508', '满地可香浓乳酪球（小）', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012540877398340.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('509', '满地可一品鱿鱼圈', '1', '39', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05012541364414561.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('510', '洗碗海绵宽', '1', '58', '2.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012542123180728.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('511', '花园高粱王', '1', '33', '25.00', '30.00', '100', '/Public/Home/images/2016-01-14/1_05012543068078090.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('512', '玉泉方瓶500ML', '1', '33', '24.00', '28.00', '100', '/Public/Home/images/2016-01-14/1_05012543747661873.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('513', '玉泉二两半', '1', '33', '7.50', '8.00', '100', '/Public/Home/images/2016-01-14/1_05012544334449081.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('514', '柔和玉泉', '1', '33', '58.00', '65.00', '100', '/Public/Home/images/2016-01-14/1_05012544924358670.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('515', '清风原木纯品', '1', '57', '23.00', '25.00', '100', '/Public/Home/images/2016-01-14/1_05012546406187060.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('516', '清风纸抽原木纯品', '1', '57', '11.50', '13.00', '100', '/Public/Home/images/2016-01-14/1_05012547268394741.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('517', '清风纸抽原木纯品6提', '1', '57', '17.50', '19.00', '100', '/Public/Home/images/2016-01-14/1_05012547914759170.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('518', '康师傅冰红茶', '1', '36', '3.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012549030869908.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('519', '康师傅矿泉水（小）', '1', '37', '1.00', '1.00', '100', '/Public/Home/images/2016-01-14/1_05012549913484369.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('520', '康师傅绿茶', '1', '36', '3.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012550781206500.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('521', '康师傅矿泉水（大）', '1', '37', '2.00', '2.00', '100', '/Public/Home/images/2016-01-14/1_05012551443244060.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('522', '康师傅水晶葡萄', '1', '36', '3.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012552363894035.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('523', '康师傅冰糖柠檬', '1', '36', '3.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012553273769706.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('524', '康师傅冰糖雪梨', '1', '36', '3.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05012553774342889.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('525', '康师傅红茶茶1L', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05012554313458692.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('526', '康师傅绿茶1L', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05012554872119435.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('527', '康师傅冰红茶（大）', '1', '36', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05012555955962744.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('528', '康师傅绿茶（大）', '1', '36', '6.00', '6.50', '100', '/Public/Home/images/2016-01-14/1_05012557337206658.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('529', '康师傅水蜜桃（大)', '1', '36', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05012558137852325.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('530', '康师傅水晶葡萄（大）', '1', '36', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05012558975236707.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('531', '康师傅鲜果橙（大）', '1', '36', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05012559634786518.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('532', '格格瞬吸360夜用20片', '1', '61', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05012560289636825.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('533', 'ABC棉柔护垫22片', '1', '61', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05013240625675560.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('534', '心相印卷纸1400G', '1', '57', '20.00', '23.00', '100', '/Public/Home/images/2016-01-14/1_05013241416346012.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('535', '钢丝球', '1', '58', '2.00', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013242035306564.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('536', '猫王纸抽', '1', '57', '9.50', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013243079570741.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('537', '猫王精品卫生纸1300g', '1', '57', '16.00', '17.00', '100', '/Public/Home/images/2016-01-14/1_05013244262223457.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('538', '猫王卷纸2000g', '1', '57', '24.00', '26.00', '100', '/Public/Home/images/2016-01-14/1_05013244932418957.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('539', '猫王卷纸1800g', '1', '57', '22.00', '24.00', '100', '/Public/Home/images/2016-01-14/1_05013245600748641.gif', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('540', '猫王卷纸1600G', '1', '57', '19.50', '21.00', '100', '/Public/Home/images/2016-01-14/1_05013246296344197.gif', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('541', '38cm不锈钢盆', '1', '65', '9.00', '13.00', '100', '/Public/Home/images/2016-01-14/1_05013247025845018.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('542', '34cm不锈钢盆', '1', '65', '8.00', '12.00', '100', '/Public/Home/images/2016-01-14/1_05013247823043078.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('543', '西门子开关（4健）', '1', '75', '11.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013249171645813.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('544', '公牛二开', '1', '75', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05013249869130405.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('545', '公牛三开', '1', '75', '7.50', '8.50', '100', '/Public/Home/images/2016-01-14/1_05013250419753520.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('546', '朗能国际一开', '1', '75', '7.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05013251402203340.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('547', '朗能国际四开', '1', '75', '12.00', '13.00', '100', '/Public/Home/images/2016-01-14/1_05013251909284919.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('548', '朗能国际二开', '1', '75', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013252416491874.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('549', '朗能国际三开', '1', '75', '10.00', '11.00', '100', '/Public/Home/images/2016-01-14/1_05013252918071357.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('550', '凹凸500MM锁', '1', '77', '13.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013255986387418.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('551', '卷尺5米', '1', '72', '9.00', '12.00', '100', '/Public/Home/images/2016-01-14/1_05013256650985917.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('552', '卷尺3米', '1', '72', '7.00', '9.00', '100', '/Public/Home/images/2016-01-14/1_05013257254709021.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('553', '螺丝刀(橡胶)', '1', '71', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013257949323435.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('554', '螺丝刀(硬塑)', '1', '71', '3.50', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013258534294076.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('555', '金京稿纸', '1', '100', '1.00', '1.50', '100', '/Public/Home/images/2016-01-14/1_05013259616600944.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('556', '支票夹', '1', '92', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013260296243734.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('557', '彩色长尾夹', '1', '93', '1.00', '1.50', '100', '/Public/Home/images/2016-01-14/1_05013261155238595.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('558', '双面胶带', '1', '95', '14.50', '15.00', '50', '/Public/Home/images/2016-01-14/1_05013262824365782.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('559', '透明胶带55卷', '1', '96', '4.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013264915374605.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('560', '透明胶带44卷', '1', '96', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05013265541436082.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('561', '北方披刀', '1', '65', '11.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013266399177764.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('562', '高级不锈钢筷子', '1', '65', '23.00', '25.00', '100', '/Public/Home/images/2016-01-14/1_05013267182876951.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('563', '多功能数据线', '1', '69', '5.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05013270332418060.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('564', 'YFD防风火机', '1', '61', '1.00', '1.50', '100', '/Public/Home/images/2016-01-14/1_05013271191313559.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('565', '旭达火机', '1', '61', '0.50', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013271782807769.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('566', '手心宝贝柔棉瞬吸XL37', '1', '63', '50.00', '60.00', '100', '/Public/Home/images/2016-01-14/1_05013273364035094.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('567', '手心宝贝柔棉瞬吸L42', '1', '63', '50.00', '60.00', '100', '/Public/Home/images/2016-01-14/1_05013273902148533.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('568', '半球加热水壶', '1', '66', '25.00', '30.00', '50', '/Public/Home/images/2016-01-14/1_05013274692258218.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('569', '佳爽学步裤XL', '1', '63', '45.00', '55.00', '100', '/Public/Home/images/2016-01-14/1_05013275424525557.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('570', '佳爽极薄训练裤XL', '1', '63', '45.00', '55.00', '100', '/Public/Home/images/2016-01-14/1_05013275995467761.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('571', '佳爽极薄训练裤L', '1', '63', '45.00', '55.00', '100', '/Public/Home/images/2016-01-14/1_05013276520787474.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('572', '佳爽棉柔夜用4片410', '1', '61', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013277549378171.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('573', '佳爽棉柔8片360', '1', '61', '6.00', '7.00', '100', '/Public/Home/images/2016-01-14/1_05013279110423947.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('574', '溜溜梅乌梅', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013280509137047.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('575', '溜溜梅雪梅', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013281042577842.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('576', '溜溜梅九制梅', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013281744169851.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('577', '溜溜梅清梅', '1', '39', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013286061990488.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('578', '真心海棠罐头880g', '1', '50', '15.00', '16.00', '100', '/Public/Home/images/2016-01-14/1_05013287035630296.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('579', '真心梨罐头880g', '1', '50', '15.00', '16.00', '100', '/Public/Home/images/2016-01-14/1_05013287596983936.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('580', '真心梨罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013288127535645.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('581', '真心久保桃罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013289136663009.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('582', '真心葡萄罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013289834107146.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('583', '真心桔子罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013290358103786.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('584', '真心糖水草莓罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013290897175052.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('585', '真心菠萝罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013291419019987.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('586', '真心荔枝罐头680g', '1', '50', '14.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013291957601004.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('587', '刷洗大王', '1', '58', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05013292487393534.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('588', '果汁糖果草莓口味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013293724220374.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('589', '果汁糖果青提子口味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013294290800591.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('590', '果汁糖果水蜜桃口味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013294952725113.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('591', '心宠灌心饼干草莓口味', '1', '38', '3.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013295850378585.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('592', '果汁糖果芒果口味', '1', '41', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05013296411411435.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('593', '心宠灌心饼干草莓味', '1', '38', '3.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013296936359735.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('594', '心宠灌心饼干奶油味', '1', '38', '3.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013297479508498.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('595', '心宠灌心饼干巧克力味', '1', '38', '3.00', '5.00', '100', '/Public/Home/images/2016-01-14/1_05013298044916875.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('596', '辣媳妇山椒凤爪', '1', '53', '1.50', '2.00', '100', '/Public/Home/images/2016-01-14/1_05013398194078260.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('597', '小浣熊干脆面意大利红烩味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013399011513900.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('598', '小浣熊干脆面香辣蟹味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013399509100173.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('599', '小当家干脆面香辣蟹味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013400178005516.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('600', '小当家干脆面红烧牛肉味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013400652155470.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('601', '小当家干脆面五香牛肉味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013401241207489.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('602', '小当家干脆面香葱口味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013404333176389.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('603', '统一红烧牛肉面(桶)', '1', '54', '4.00', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013405376379956.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('604', '小浣熊干脆面韩式泡菜味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013405911810706.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('605', '统一冰红茶', '1', '36', '2.80', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013406525488400.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('606', '小当家干脆面蜜汁猪排味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013407021988332.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('607', '小当家干脆面酱香小排骨味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013407839218280.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('608', '小当家巴西烤肉味', '1', '54', '0.48', '0.50', '100', '/Public/Home/images/2016-01-14/1_05013408326269594.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('609', '海之言西柚', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013408821876251.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('610', '小茗同学（冷泡青柠红茶）', '1', '36', '5.00', '5.50', '100', '/Public/Home/images/2016-01-14/1_05013409394760196.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('611', '统一老坛酸菜牛肉面(桶,香辣)', '1', '54', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013410244958567.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('612', '统一老坛酸菜牛肉面(桶,原味)', '1', '54', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013410796400515.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('613', '统一卤香牛肉面(桶)', '1', '54', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05013411337344186.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('614', '小浣熊干脆面台湾烤肠味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013411931209594.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('615', '小浣熊干脆面麻辣香锅味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013412413955098.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('616', '小浣熊干脆面奥尔良烤翅味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013412877427068.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('617', '小浣熊干脆面烤肉味', '1', '54', '0.90', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013413363683110.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('618', '椒盐土豆条芥辣味', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013414024428201.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('619', '椒盐土豆条泡椒龙虾味', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013414468035696.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('620', '不粘油锅刷', '1', '58', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05013415068089236.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('621', '康师傅红烧牛肉面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013415729630346.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('622', '康师傅香辣牛肉面', '1', '54', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013416159575730.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('623', '上好佳鲜虾条辣味（小）', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013416851165461.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('624', '上好佳栗米条哈密瓜口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013417370777096.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('625', '上好佳田园薯片芥末口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013417976923537.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('626', '上好佳棉花糖橙子口味', '1', '41', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013421427463358.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('627', '上好佳棉花糖柠檬口味', '1', '41', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013421860939391.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('628', '上好佳鲜虾条', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013422824633231.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('629', '上好佳芝士条', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013423726485222.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('630', '上好佳鲜虾片', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013424248933249.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('631', '上好佳薯条番茄味', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013424709384465.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('632', '上好佳玉米口味田园泡', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013425221774984.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('633', '上好佳薯条原味', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013425703837915.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('634', '上好佳嗲得薯片', '1', '39', '5.50', '6.00', '100', '/Public/Home/images/2016-01-14/1_05013426143877652.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('635', '上好佳洋葱圈', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013426604151775.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('636', '上好佳田园薯片羊肉口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013427108794337.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('637', '上好佳田园薯片红烩肉口味', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013427631043989.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('638', '上好佳田园薯片红烩牛肉味', '1', '39', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05013428357550631.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('639', '澳华黄豆脆锅巴', '1', '39', '3.50', '3.80', '100', '/Public/Home/images/2016-01-14/1_05013428944352032.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('640', '金锣脆脆肠原味', '1', '51', '0.80', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013429689033556.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('641', '金锣福火腿肠', '1', '51', '0.80', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013430412682118.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('642', '金锣福火腿肠', '1', '51', '3.50', '3.80', '100', '/Public/Home/images/2016-01-14/1_05013430412682118.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('643', '金锣脆脆肠香辣味', '1', '51', '0.80', '1.00', '100', '/Public/Home/images/2016-01-14/1_05013430956138066.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('644', '金锣清真鸡肉肠（小）', '1', '51', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013431420302447.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('645', '酒鬼花生椒盐味', '1', '40', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013432177678888.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('646', '香酥蛹', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013432855586639.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('647', '香辣蟹', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05013433336079731.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('648', '香辣鱼仔', '1', '53', '25.00', '28.00', '100', '/Public/Home/images/2016-01-14/1_05013433843050736.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('649', '易能通计算器(大)', '1', '97', '18.00', '20.00', '50', '/Public/Home/images/2016-01-14/1_05013435001252439.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('650', '计算器', '1', '97', '7.00', '8.00', '50', '/Public/Home/images/2016-01-14/1_05013435648112849.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('651', '老才臣腐乳', '1', '52', '7.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05013436305916138.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('652', '老才臣北京风味香辣腐乳', '1', '52', '6.00', '6.90', '100', '/Public/Home/images/2016-01-14/1_05013436809688727.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('653', '老才臣姜葱料酒', '1', '45', '11.00', '15.00', '100', '/Public/Home/images/2016-01-14/1_05013437316030490.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('654', '龙彩好太太洗衣液', '1', '59', '16.25', '20.00', '100', '/Public/Home/images/2016-01-14/1_05013438195232573.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('655', '龙彩好太太洗衣液', '1', '59', '1.00', '2.00', '100', '/Public/Home/images/2016-01-14/1_05013438685239073.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('656', '固体胶', '1', '94', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05014099691885226.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('657', '青岛黑啤', '1', '34', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05014101328062202.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('658', '青岛纯生', '1', '34', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05014101816114250.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('659', '九三非转基因一级大豆油', '1', '48', '46.25', '48.00', '100', '/Public/Home/images/2016-01-14/1_05014102867151212.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('660', '九三非转基因三级大豆油', '1', '48', '46.25', '48.00', '100', '/Public/Home/images/2016-01-14/1_05014103344898082.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('661', '天之蓝洋河蓝色经典42度', '1', '33', '350.00', '390.00', '10', '/Public/Home/images/2016-01-14/1_05014104102458695.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('662', '海之蓝洋河蓝色经典42度', '1', '33', '150.00', '180.00', '10', '/Public/Home/images/2016-01-14/1_05014104569640961.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('663', '海之蓝52度', '1', '33', '180.00', '220.00', '10', '/Public/Home/images/2016-01-14/1_05014105210898171.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('664', '梦之蓝52度', '1', '33', '620.00', '650.00', '10', '/Public/Home/images/2016-01-14/1_05014105678694359.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('665', '金锣清真鸡肉肠（大）', '1', '51', '2.00', '2.10', '100', '/Public/Home/images/2016-01-14/1_05014106908926168.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('666', '纯果乐果缤纷（热带美味）', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014107845297038.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('667', '纯果乐果缤纷（柠爽萄醉味）', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014108327556427.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('668', '纯果乐果缤纷（金橙奇异果味）', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014108787822036.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('669', '立顿英式柠檬茶', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014109421230809.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('670', '立顿甜美蜜桃味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014109930493892.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('671', '立顿英式果茶（率性野莓味）', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014110360325149.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('672', '森华园水晶粉丝', '1', '54', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014111177041537.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('673', '大森林纯正红糖', '1', '46', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05014111935478423.png', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('674', '妈咪宝贝瞬吸男宝纸尿裤M', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014112767240662.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('675', '妈咪宝贝男宝纸尿裤L', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014113244441939.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('676', '妈咪宝贝男宝纸尿裤XL', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014113690863927.gif', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('677', '妈咪宝贝女宝干爽纸尿裤M', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014114211833357.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('678', '妈咪宝贝女宝舒爽层纸尿裤L', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014114659509437.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('679', '妈咪宝贝女瞬吸层XL', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014115086778976.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('680', '妈咪宝贝小内裤男式纸尿裤', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014115534474367.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('681', '妈咪宝贝男宝纸尿裤M', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014115986931217.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('682', '妈咪宝贝小内裤女式纸尿裤', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014116404405565.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('683', '妈咪宝贝男宝纸尿裤', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014116822730394.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('684', '妈咪宝贝小内裤女宝 L', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014117296490285.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('685', '妈咪宝贝小内裤男宝纸尿裤XL', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014117733048834.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('686', '妈咪宝贝小内裤女式XL', '1', '63', '45.00', '50.00', '50', '/Public/Home/images/2016-01-14/1_05014118138860622.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('687', '22cm欧式调料缸', '1', '65', '6.00', '9.00', '50', '/Public/Home/images/2016-01-14/1_05014119122456956.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('688', '24CM调料缸', '1', '65', '6.00', '10.00', '50', '/Public/Home/images/2016-01-14/1_05014119747875664.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('689', '22CM盆', '1', '65', '14.00', '18.00', '50', '/Public/Home/images/2016-01-14/1_05014120364304789.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('690', '小护士网面12片260', '1', '61', '5.00', '6.00', '100', '/Public/Home/images/2016-01-14/1_05014120962240215.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('691', '小护士棉柔12片260', '1', '61', '5.00', '6.00', '50', '/Public/Home/images/2016-01-14/1_05014121404810733.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('692', '小护士棉柔11片260', '1', '61', '5.00', '6.00', '50', '/Public/Home/images/2016-01-14/1_05014121813366768.jpg', '0', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('693', '奥德美中性笔芯0.38MM', '1', '99', '0.40', '0.50', '100', '/Public/Home/images/2016-01-14/1_05014124611830507.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('694', '百事可乐', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014125754467809.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('695', '美年达橙味550ML', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014126313294756.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('696', '美年达青苹果味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014126752616888.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('697', '美年达葡萄味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014127220977395.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('698', '百事可乐2L', '1', '36', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05014127934689141.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('699', '7喜（大）', '1', '36', '6.50', '7.00', '100', '/Public/Home/images/2016-01-14/1_05014128403388314.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('700', '美年达橙味', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014128932985592.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('701', '7喜900ml', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014130937144856.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('702', '美年达（冰镇西瓜味）', '1', '36', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014131486259202.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('703', '百事可乐1L', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014132040247292.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('704', '美年达蜂蜜柚子味', '1', '36', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014132785119538.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('705', '中性笔0.5', '1', '99', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05014134017757007.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('706', '36CM面盆', '1', '65', '10.00', '15.00', '50', '/Public/Home/images/2016-01-14/1_05014257355571942.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('707', '达利园桂圆莲子八宝粥', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014258098470620.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('708', '达利园低糖桂圆八宝粥', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014258560047865.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('709', '达利八宝粥园桂圆红枣', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014259004289706.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('710', '达利园桂圆银耳八宝粥', '1', '53', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014259435826780.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('711', '和其正凉茶', '1', '36', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014259966681919.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('712', '情未了湿巾', '1', '57', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05014260599206771.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('713', '桑拓丁香花草本湿巾', '1', '57', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05014261052495538.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('714', '六必居黄豆酱油1.75', '1', '42', '10.50', '13.00', '50', '/Public/Home/images/2016-01-14/1_05014261862782657.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('715', '枫之味特选青芥辣', '1', '49', '1.50', '2.00', '100', '/Public/Home/images/2016-01-14/1_05014263609922087.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('716', '爱萌卷纸', '1', '57', '18.00', '22.00', '100', '/Public/Home/images/2016-01-14/1_05014264162426793.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('717', '22CM浅盆', '1', '65', '6.00', '9.00', '50', '/Public/Home/images/2016-01-14/1_05014265005199407.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('718', '24cm加厚汤盆', '1', '65', '16.00', '20.00', '50', '/Public/Home/images/2016-01-14/1_05014265498602483.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('719', '20cm反边味斗', '1', '65', '13.00', '15.00', '50', '/Public/Home/images/2016-01-14/1_05014266047441685.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('720', '40cm反边味斗', '1', '65', '21.00', '25.00', '50', '/Public/Home/images/2016-01-14/1_05014266525063674.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('721', '18CM反边味斗', '1', '65', '5.00', '7.00', '50', '/Public/Home/images/2016-01-14/1_05014267007662513.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('722', '订书器', '1', '98', '10.00', '13.00', '50', '/Public/Home/images/2016-01-14/1_05014267920449191.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('723', '单把奶锅', '1', '65', '28.00', '35.00', '10', '/Public/Home/images/2016-01-14/1_05014268689627192.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('724', '34cm多用面盆', '1', '65', '9.00', '14.00', '50', '/Public/Home/images/2016-01-14/1_05014269389071609.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('725', '38cm面盆（A型0.8厚）', '1', '65', '10.00', '15.00', '50', '/Public/Home/images/2016-01-14/1_05014269998710845.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('726', '22CM反边调料缸', '1', '65', '6.00', '8.00', '50', '/Public/Home/images/2016-01-14/1_05014270754631172.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('727', '哈尔滨啤酒小麦王330ML', '1', '34', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05014271334107343.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('728', '哈尔滨啤酒小麦王500ML', '1', '34', '4.50', '5.00', '50', '/Public/Home/images/2016-01-14/1_05014271794926766.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('729', '乡巴佬鸡排', '1', '53', '1.00', '1.20', '100', '/Public/Home/images/2016-01-14/1_05014272441077270.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('730', '乡巴佬鸡排', '1', '53', '1.00', '1.20', '100', '/Public/Home/images/2016-01-14/1_05014272441077270.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('731', '乡巴佬鸡爪', '1', '53', '1.50', '1.80', '100', '/Public/Home/images/2016-01-14/1_05014272899096811.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('732', '乡巴佬香酥鸡腿', '1', '53', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014273360540276.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('733', '雨聪原木精品纸抽1*3', '1', '57', '6.00', '8.90', '100', '/Public/Home/images/2016-01-14/1_05014274183719579.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('734', '秋林格瓦斯（大）', '1', '36', '7.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05014274797583869.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('735', '秋林格瓦斯350', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014275230395589.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('736', '珍选超大实惠装豆瓣酱', '1', '55', '3.50', '3.80', '50', '/Public/Home/images/2016-01-14/1_05014276048586627.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('737', '珍选捞汁', '1', '47', '9.00', '10.00', '100', '/Public/Home/images/2016-01-14/1_05014276705274912.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('738', '珍选酿造黄豆酱油', '1', '42', '7.00', '8.00', '50', '/Public/Home/images/2016-01-14/1_05014277296521014.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('739', '暖身贴', '1', '61', '1.00', '1.20', '100', '/Public/Home/images/2016-01-14/1_05014278009113101.jpeg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('740', '小当家干脆面巴西烤肉味', '1', '54', '0.50', '0.50', '100', '/Public/Home/images/2016-01-14/1_05014278739273247.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('741', '可口可乐零度', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014279935116897.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('742', '可口可乐（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05014280453802379.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('743', '可口可乐', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014280869568278.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('744', '可口可乐（2L）', '1', '36', '7.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05014281385229977.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('745', '雪碧（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05014281907346965.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('746', '雪碧柠檬味汽水', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014282679396854.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('747', '雪碧清爽柠檬味汽水', '1', '36', '7.00', '8.00', '100', '/Public/Home/images/2016-01-14/1_05014283176537991.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('748', '芬达橙味（听）', '1', '36', '2.50', '3.00', '100', '/Public/Home/images/2016-01-14/1_05014283611856789.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('749', '芬达橙味汽水', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014284068023679.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('750', '芬达葡萄味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014284492219851.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('751', '芬达苹果味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014284879813524.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('752', '芬达菠萝味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014285299520186.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('753', '芬达芒果味', '1', '36', '3.00', '3.50', '100', '/Public/Home/images/2016-01-14/1_05014285768015345.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('754', '+C（听）', '1', '36', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014288107438836.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('755', '幸福妈咪多功能蔬菜处理器', '1', '65', '30.00', '36.00', '10', '/Public/Home/images/2016-01-14/1_05014288933610056.png', '1', '', '', '2016-01-15 15:14:58', '', '', '1', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('756', '幸福妈咪多功能食物绞碎器', '1', '65', '45.00', '48.00', '10', '/Public/Home/images/2016-01-14/1_05014289347323542.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('757', '麦辣鸡块', '1', '39', '3.50', '4.00', '100', '/Public/Home/images/2016-01-14/1_05014290153963288.jpg', '1', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('758', '麦香鸡块', '1', '39', '2.00', '2.50', '100', '/Public/Home/images/2016-01-14/1_05014290687150530.jpg', '0', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('759', '小米锅巴烧烤味', '1', '39', '4.50', '5.00', '100', '/Public/Home/images/2016-01-14/1_05014291554253112.jpg', '0', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('760', '一次性小号饭碗', '1', '64', '4.00', '4.50', '100', '/Public/Home/images/2016-01-14/1_05014292146914832.png', '0', '', '', '2016-01-15 15:14:58', '', '', '0', '', '', '0', '0', '0', '', '0');
INSERT INTO `wf_jms_goods` VALUES ('796', '薯愿', '1', '39', '9.00', '6.00', '10', '/Public/Home/images/2016-01-16/5699be442cf99.jpg', '1', '', null, '2016-01-16 11:51:32', null, null, '0', null, null, '1', '0', '0', '盒', '0');
INSERT INTO `wf_jms_goods` VALUES ('797', '心心相印', '1', '57', '2.00', '3.00', '10', '/Public/Home/images/2016-01-16/5699be85271c7.jpg', '1', '', null, '2016-01-16 11:52:37', null, null, '0', null, null, '1', '0', '0', '包', '0');
INSERT INTO `wf_jms_goods` VALUES ('798', '溜溜梅', '1', '39', '2.00', '3.00', '10', '/Public/Home/images/2016-01-16/5699beb6265c8.jpg', '1', '', null, '2016-01-16 11:53:26', null, null, '0', null, null, '1', '0', '0', '袋', '0');
INSERT INTO `wf_jms_goods` VALUES ('799', '阿尔卑斯', '1', '41', '10.00', '0.00', '10', '/Public/Home/images/2016-01-16/5699bedfd4480.jpg', '1', '', null, '2016-01-16 11:54:07', null, null, '0', null, null, '1', '0', '0', '袋', '0');

-- ----------------------------
-- Table structure for wf_jms_kinds
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_kinds`;
CREATE TABLE `wf_jms_kinds` (
  `jms_kid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类id',
  `jms_kname` varchar(255) NOT NULL COMMENT '类名称',
  `jms_parentid` int(11) NOT NULL COMMENT '父id',
  `jms_sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `jms_gids` varchar(255) DEFAULT NULL COMMENT '商品所归属范围',
  PRIMARY KEY (`jms_kid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_kinds
-- ----------------------------
INSERT INTO `wf_jms_kinds` VALUES ('1', '食品类', '0', '1', '');
INSERT INTO `wf_jms_kinds` VALUES ('2', '粮油副食', '0', '2', '');
INSERT INTO `wf_jms_kinds` VALUES ('3', '居家日用', '0', '3', '');
INSERT INTO `wf_jms_kinds` VALUES ('4', '电器类', '0', '4', '');
INSERT INTO `wf_jms_kinds` VALUES ('5', '五金类', '0', '5', '');
INSERT INTO `wf_jms_kinds` VALUES ('6', '家具类', '0', '6', '');
INSERT INTO `wf_jms_kinds` VALUES ('7', '文教类', '0', '7', '');
INSERT INTO `wf_jms_kinds` VALUES ('8', '数码类', '0', '8', '');
INSERT INTO `wf_jms_kinds` VALUES ('9', '服装类', '0', '9', '');
INSERT INTO `wf_jms_kinds` VALUES ('10', '12349便民服务', '0', '10', '');
INSERT INTO `wf_jms_kinds` VALUES ('11', '酒水类', '1', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('12', '休闲食品类', '1', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('13', '厨房调料', '2', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('14', '方便素食', '2', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('15', '酱菜类', '2', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('16', '清洁用品', '3', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('17', '生活用品', '3', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('18', '厨房用品', '3', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('19', '生活家电', '4', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('20', '个人家电', '4', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('21', '休闲家电', '4', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('22', '工具类', '5', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('23', '家装类', '5', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('24', '锁类', '5', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('25', '沙发类', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('26', '床', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('27', '桌子', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('28', '柜子', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('29', '床垫', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('30', '椅子', '6', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('31', '办公类', '7', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('32', '学生文教', '7', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('33', '白酒', '11', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('34', '啤酒', '11', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('35', '鸡尾酒', '11', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('36', '饮料', '11', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('37', '矿泉水', '11', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('38', '饼干蛋糕', '12', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('39', '休闲食品', '12', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('40', '坚果炒货', '12', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('41', '糖果', '12', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('42', '酱油', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('43', '醋', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('44', '老抽', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('45', '料酒', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('46', '糖', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('47', '捞汁', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('48', '油类', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('49', '芥末', '13', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('50', '罐头', '14', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('51', '肠类', '14', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('52', '豆腐乳', '14', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('53', '素食类', '14', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('54', '面类', '14', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('55', '酱类', '15', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('56', '榨菜类', '15', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('57', '纸品湿巾', '16', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('58', '厨房清洁用品', '16', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('59', '洗护类', '16', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('60', '洗发、护发类', '17', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('61', '个人用品', '17', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('62', '沐浴露', '17', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('63', '婴儿用品', '17', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('64', '一次性用品', '18', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('65', '厨具类', '18', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('66', '水壶', '19', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('67', '煮蛋器', '19', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('68', '暖宝宝', '20', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('69', '数据线', '21', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('70', '充电宝', '21', '', '');
INSERT INTO `wf_jms_kinds` VALUES ('71', ' 螺丝刀', '22', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('72', ' 卷尺', '22', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('73', '灯', '23', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('74', ' 插座', '23', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('75', ' 开关', '23', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('76', '挂锁', '24', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('77', 'U型锁', '24', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('78', ' 布艺沙发', '25', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('79', ' 皮质沙发', '25', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('80', '单人床', '26', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('81', ' 双人床', '26', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('82', '折叠床', '26', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('83', '沙发床', '26', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('84', ' 电脑桌', '27', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('85', ' 学习桌', '27', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('86', '餐桌', '27', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('87', ' 办公桌', '27', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('88', '茶几', '27', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('89', ' 床头柜', '28', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('90', ' 立柜', '28', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('91', '衣柜', '28', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('92', '支票夹', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('93', ' 夹子', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('94', ' 固体胶', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('95', ' 双面胶', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('96', ' 胶带', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('97', ' 计算机', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('98', '订书机', '31', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('99', '笔', '32', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('100', '稿纸', '32', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('101', '家政服务', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('102', '设备维修', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('103', '心理咨询', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('104', '法律援助', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('105', '代缴代办', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('106', '信息咨询', '10', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('107', '钟点工', '101', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('108', '家用电器维修', '102', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('109', '关心电话', '103', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('110', '法律咨询', '104', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('111', '手机充值', '105', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('112', '水电费', '105', null, null);
INSERT INTO `wf_jms_kinds` VALUES ('113', '旅游', '106', null, null);

-- ----------------------------
-- Table structure for wf_jms_kucun
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_kucun`;
CREATE TABLE `wf_jms_kucun` (
  `jms_kcid` int(11) NOT NULL,
  `jms_kcnum` varchar(255) NOT NULL COMMENT '库存数量',
  `jms_stime` datetime NOT NULL COMMENT '生产日期',
  `jms_ltime` datetime NOT NULL COMMENT '保质期',
  `jms_hao` varchar(255) NOT NULL COMMENT '批次号',
  PRIMARY KEY (`jms_kcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_kucun
-- ----------------------------

-- ----------------------------
-- Table structure for wf_jms_user
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_user`;
CREATE TABLE `wf_jms_user` (
  `jms_id` int(11) NOT NULL AUTO_INCREMENT,
  `jms_name` varchar(255) NOT NULL COMMENT '账号',
  `jms_password` varchar(255) NOT NULL COMMENT '密码',
  `jms_phone` varchar(255) NOT NULL COMMENT '联系方式',
  `jms_email` varchar(255) NOT NULL COMMENT '邮箱',
  `jms_nickname` varchar(255) DEFAULT NULL COMMENT '店铺名',
  `jms_leader` varchar(255) DEFAULT NULL COMMENT '联系人',
  `jms_address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `jms_area` varchar(255) DEFAULT NULL COMMENT '配送范围',
  `jms_money` varchar(255) DEFAULT NULL COMMENT '账户余额',
  `jms_jifen` varchar(255) DEFAULT NULL COMMENT '积分',
  `jms_lng` varchar(255) DEFAULT NULL,
  `jms_lat` varchar(255) DEFAULT NULL,
  `jms_shopping` varchar(255) DEFAULT NULL COMMENT '购物车商品id',
  ` jms_photo` varchar(255) NOT NULL COMMENT '加盟商图片',
  PRIMARY KEY (`jms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_user
-- ----------------------------
INSERT INTO `wf_jms_user` VALUES ('1', 'admin', '123456', '12312312312', '123@qq.com', '测试加盟商', '曲长永', null, null, null, null, '126.671546', '45.744915', null, '');
INSERT INTO `wf_jms_user` VALUES ('2', 'csjms1', '123456', '123456', '123@qq.com', '测试加盟商', '曲长永', null, null, null, null, '126.555988', '45.739883', null, '');
INSERT INTO `wf_jms_user` VALUES ('3', 'csjms', '123456', '13311111111', 'haha@qq.com', null, '曲长永', '西大直街318号', null, null, null, '126.625157', '45.74268', null, '');
INSERT INTO `wf_jms_user` VALUES ('4', 'admin1', '123456', '13311111111', 'haha@qq.com', null, '曲长永', '西大直街318号', null, null, null, '126.625157', '45.74268', null, '');
INSERT INTO `wf_jms_user` VALUES ('5', 'shyj0451', '123123', '13946152421', 'qucy@vip.qq.com', null, '曲长永', '爱建路附近', null, null, null, '126.60946', '45.769388', null, '');
INSERT INTO `wf_jms_user` VALUES ('6', 'admin8', '123456', '15555555555', '789@qq.com', null, '曲长永', 'tui', null, null, null, '131.308707', '46.669775', null, '');
INSERT INTO `wf_jms_user` VALUES ('7', 'admin9', '123456', '15555555555', 'tu@qq.com', null, '曲长永', 'uiou', null, null, null, '131.178514', '46.658525', null, '');
INSERT INTO `wf_jms_user` VALUES ('8', 'admin3', '123456', '15555555555', '23uyuy@qq.com', null, '曲长永', '遇到覅', null, null, null, '126.590255', '45.666123', null, '');
INSERT INTO `wf_jms_user` VALUES ('9', 'admin-0', '123456', '15555555555', '111@qq.com', null, '曲长永', '43', null, null, null, '126.590255', '45.666123', null, '');
INSERT INTO `wf_jms_user` VALUES ('10', 'admin9999', '123456', '15555555555', '111@qq.com', null, '曲长永', '111', null, null, null, '130.893188', '45.813494', null, '');

-- ----------------------------
-- Table structure for wf_vip_address
-- ----------------------------
DROP TABLE IF EXISTS `wf_vip_address`;
CREATE TABLE `wf_vip_address` (
  `vip_addressid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `vip_name` varchar(255) NOT NULL COMMENT '下单人',
  `vip_consignee` varchar(255) NOT NULL COMMENT '收货人',
  `city` varchar(255) NOT NULL COMMENT '市',
  `district` varchar(255) NOT NULL COMMENT '区',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `postcode` varchar(255) NOT NULL COMMENT '邮编',
  `mobile` varchar(255) NOT NULL COMMENT '手机号',
  `defaul` int(2) NOT NULL COMMENT '是否设为默认 1是 0否',
  PRIMARY KEY (`vip_addressid`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_address
-- ----------------------------
INSERT INTO `wf_vip_address` VALUES ('113', '会员', '会员', '哈尔滨', '道里区', '爱建街道紫园路12-3', '', '18698561254', '1');
INSERT INTO `wf_vip_address` VALUES ('69', 'seller', '欣欣', '哈尔滨', '道里区', '紫园路', '000000', '18645556558', '1');
INSERT INTO `wf_vip_address` VALUES ('66', 'seller', '芈月', '哈尔滨', '道里区', '中央大街', '000000', '18695876589', '0');
INSERT INTO `wf_vip_address` VALUES ('67', 'seller', '芈姝', '哈尔滨', '道里区', '防洪纪念塔', '111111', '13542354321', '0');
INSERT INTO `wf_vip_address` VALUES ('97', 'admin', '12345', '哈尔滨', '道里区', '12345', '12345', '23456', '1');
INSERT INTO `wf_vip_address` VALUES ('98', 'admin5', '', '双鸭山', '尖山区', 'gch', '', '15151515155', '0');
INSERT INTO `wf_vip_address` VALUES ('99', 'shyj0451', '', '哈尔滨', '南岗区', '友谊路32号', '', '13333333333', '0');
INSERT INTO `wf_vip_address` VALUES ('110', 'juzi', 'juzi', '哈尔滨', '道里区', '爱建街道紫园路12-3', '', '18665232365', '1');
INSERT INTO `wf_vip_address` VALUES ('111', 'asdfgh', 'asdfgh', '哈尔滨', '道外区', '道口街', '', '15504632572', '1');
INSERT INTO `wf_vip_address` VALUES ('102', 'admin', '听雨', '双鸭山', '岭东区', '两栋新区', '130003', '15615615615', '0');
INSERT INTO `wf_vip_address` VALUES ('105', 'alisa', '', '哈尔滨', '道里区', '通江街道万达D座金江购物广场2号门五楼', '', '18654789625', '0');
INSERT INTO `wf_vip_address` VALUES ('107', 'ceshi', '', '双鸭山', '尖山区', 'sdafsafdsa', '', '18698569856', '0');
INSERT INTO `wf_vip_address` VALUES ('108', 'admin3', 'admin3', '双鸭山', '尖山区', '153254', '', '15046666666', '1');
INSERT INTO `wf_vip_address` VALUES ('109', 'cs', 'cs', '哈尔滨', '道里区', '爱建街道紫园路12-3', '', '18654785478', '1');
INSERT INTO `wf_vip_address` VALUES ('112', 'asdfgh', '', '', '', '', '', '', '0');
INSERT INTO `wf_vip_address` VALUES ('114', 'shyj0451', '', '', '', '', '', '', '0');
INSERT INTO `wf_vip_address` VALUES ('115', 'seller', '', '', '', '', '', '', '0');
INSERT INTO `wf_vip_address` VALUES ('116', 'seller', '', '', '', '', '', '', '0');
INSERT INTO `wf_vip_address` VALUES ('117', '156', '156', '七台河', '新兴区', 'hgiosd', '', '15655556666', '1');
INSERT INTO `wf_vip_address` VALUES ('118', 'apple', 'apple', '哈尔滨', '道里区', '通江街道万达D座金江购物广场', '', '18654121254', '1');
INSERT INTO `wf_vip_address` VALUES ('119', '77296733@qq.com', '77296733@qq.com', '哈尔滨', '道里区', '尚志大街45号6单元403', '', '13936347477', '1');

-- ----------------------------
-- Table structure for wf_vip_cart
-- ----------------------------
DROP TABLE IF EXISTS `wf_vip_cart`;
CREATE TABLE `wf_vip_cart` (
  `vip_cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `vip_buyer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '买家id',
  `vip_store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺id',
  `vip_store_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `vip_goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `vip_goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `vip_goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `vip_goods_image` varchar(100) NOT NULL COMMENT '商品图片',
  `vip_pay_status` tinyint(8) DEFAULT '0' COMMENT '支付状态：0未支付，1已支付',
  PRIMARY KEY (`vip_cart_id`),
  KEY `member_id` (`vip_buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车数据表';

-- ----------------------------
-- Records of wf_vip_cart
-- ----------------------------
INSERT INTO `wf_vip_cart` VALUES ('1', '3', '1', '', '258', '汰渍洗衣粉薰衣草', '6.00', '8', '/Public/Home/images/2016-01-14/1_05005666073587144.png', '0');

-- ----------------------------
-- Table structure for wf_vip_dingdan
-- ----------------------------
DROP TABLE IF EXISTS `wf_vip_dingdan`;
CREATE TABLE `wf_vip_dingdan` (
  `vip_ddid` int(11) NOT NULL AUTO_INCREMENT,
  `vip_ddtime` datetime NOT NULL COMMENT '下单时间',
  `vip_ddnum` varchar(255) NOT NULL COMMENT '订单号',
  `vip_ddage` varchar(255) NOT NULL COMMENT '订单产品数量',
  `vip_gid` int(11) NOT NULL COMMENT '购买产品id',
  `vip_gname` varchar(255) NOT NULL COMMENT '购买产品名称',
  `vip_sid` int(11) NOT NULL COMMENT '订单所属店铺id',
  `vip_store` varchar(255) NOT NULL COMMENT '订单所属店铺',
  `vip_uid` int(11) NOT NULL COMMENT '购买者id',
  `vip_uname` varchar(255) NOT NULL COMMENT '购买者',
  `vip_address` varchar(255) NOT NULL COMMENT '联系地址',
  `vip_phone` varchar(255) NOT NULL COMMENT '联系方式',
  `vip_price` decimal(10,0) NOT NULL COMMENT '订单价钱',
  `vip_consignee` varchar(255) NOT NULL COMMENT '收货人',
  `vip_ddact` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `vip_ddstate` varchar(255) DEFAULT NULL COMMENT '订单状态 1提交未付 2已取消 3已付款 4已收货 5已评价',
  `vip_sphone` varchar(255) NOT NULL COMMENT '卖家电话号码',
  `vip_pid` int(11) NOT NULL COMMENT '支付表pid',
  PRIMARY KEY (`vip_ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_dingdan
-- ----------------------------
INSERT INTO `wf_vip_dingdan` VALUES ('29', '2016-01-16 08:27:14', '87701452904034975225', '1', '265', '水井坊52度', '1', '测试加盟商', '40', 'cs', '哈尔滨道里区爱建街道紫园路12-3', '18654785478', '650', 'cs', '在线支付', '4', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('30', '2016-01-16 08:53:25', '87701452905605203161', '1', '324', '乌江野山椒味凉拌海带丝', '1', '测试加盟商', '3', 'admin', '双鸭山岭东区两栋新区', '15615615615', '3', '听雨', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('31', '2016-01-16 17:10:29', '87701452935429380947', '3', '796', '薯愿', '1', '测试加盟商', '41', 'juzi', '哈尔滨道里区爱建街道紫园路12-3', '18665232365', '6', 'juzi', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('32', '2016-01-16 17:10:29', '87701452935429380947', '1', '323', '乌江涪陵爽脆榨菜芯', '1', '测试加盟商', '41', 'juzi', '哈尔滨道里区爱建街道紫园路12-3', '18665232365', '2', 'juzi', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('33', '2016-01-16 17:12:30', '87701452935550814907', '1', '261', '加多宝', '1', '测试加盟商', '41', 'juzi', '哈尔滨道里区爱建街道紫园路12-3', '18665232365', '5', 'juzi', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('34', '2016-01-16 17:12:30', '87701452935550814907', '1', '263', '五粮液浓香型39度', '1', '测试加盟商', '41', 'juzi', '哈尔滨道里区爱建街道紫园路12-3', '18665232365', '700', 'juzi', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('35', '2016-01-16 17:19:02', '87701452935942777966', '1', '263', '五粮液浓香型39度', '1', '测试加盟商', '41', 'juzi', '哈尔滨道里区爱建街道紫园路12-3', '18665232365', '650', 'juzi', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('36', '2016-01-16 17:35:39', '87701452936939679501', '2', '323', '乌江涪陵爽脆榨菜芯', '1', '测试加盟商', '3', 'admin', '双鸭山岭东区两栋新区', '15615615615', '1', '听雨', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('37', '2016-01-17 10:46:08', '87701452998768835314', '1', '260', '奇盟小麦白啤酒', '1', '测试加盟商', '42', 'asdfgh', '哈尔滨道外区道口街', '15504632572', '59', 'asdfgh', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('38', '2016-01-17 11:32:18', '87701453001538325494', '1', '260', '奇盟小麦白啤酒', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '59', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('39', '2016-01-17 13:49:35', '87701453009775603228', '1', '799', '阿尔卑斯', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '10', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('40', '2016-01-17 14:20:15', '87701453011615492926', '1', '260', '奇盟小麦白啤酒', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '59', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('41', '2016-01-17 14:20:15', '87701453011615492926', '4', '274', '飘柔洗发露兰花400ML', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '19', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('42', '2016-01-17 14:20:15', '87701453011615492926', '3', '259', '碧浪洗衣粉无磷', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '5', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('43', '2016-01-17 14:20:15', '87701453011615492926', '1', '796', '薯愿', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '9', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('44', '2016-01-17 15:10:22', '87701453014622332168', '1', '796', '薯愿', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '9', '12345', '货到付款', '1', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('45', '2016-01-17 15:14:45', '87701453014885299072', '1', '322', '乌江涪陵鲜爽榨菜丝', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '2', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('46', '2016-01-17 15:14:45', '87701453014885299072', '1', '260', '奇盟小麦白啤酒', '1', '测试加盟商', '3', 'admin', '哈尔滨道里区12345', '23456', '59', '12345', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('47', '2016-01-18 08:33:05', '87701453077185826168', '1', '798', '溜溜梅', '1', '测试加盟商', '22', 'seller', '哈尔滨道里区紫园路', '18645556558', '2', '欣欣', '在线支付', '3', '12312312312', '0');
INSERT INTO `wf_vip_dingdan` VALUES ('48', '2016-01-18 11:02:19', '87701453086139837210', '1', '324', '乌江野山椒味凉拌海带丝', '1', '测试加盟商', '45', 'apple', '哈尔滨道里区通江街道万达D座金江购物广场', '18654121254', '2', 'apple', '在线支付', '3', '12312312312', '0');

-- ----------------------------
-- Table structure for wf_vip_user
-- ----------------------------
DROP TABLE IF EXISTS `wf_vip_user`;
CREATE TABLE `wf_vip_user` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_name` varchar(255) NOT NULL COMMENT '会员账号',
  `vip_password` varchar(255) NOT NULL COMMENT '会员密码',
  `vip_phone` varchar(255) NOT NULL COMMENT '会员电话',
  `vip_email` varchar(255) NOT NULL,
  `vip_favorites` varchar(255) DEFAULT NULL COMMENT '会员收藏',
  `vip_birth` varchar(255) DEFAULT NULL COMMENT '会员生日',
  `vip_sex` varchar(255) DEFAULT NULL COMMENT '会员性别',
  `vip_qq` varchar(255) DEFAULT NULL COMMENT '会员QQ',
  `vip_pic` varchar(255) DEFAULT NULL COMMENT '会员头像',
  `vip_shopping` varchar(255) DEFAULT NULL COMMENT '购物车商品id',
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_user
-- ----------------------------
INSERT INTO `wf_vip_user` VALUES ('3', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '18659842355', '1335115750@qq.com', '323', '', '0', '22225555', '/Public/Home/images/2016-01-17/569b0eb6d4ec5.jpg', null);
INSERT INTO `wf_vip_user` VALUES ('22', 'seller', '670b14728ad9902aecba32e22fa4f6bd', '18659842355', '1335115750@qq.com', '265', '1985-04-16', '1', '133511575011', '/Public/Home/images/2016-01-17/569b0f4d1129f.jpg', null);
INSERT INTO `wf_vip_user` VALUES ('37', 'alisa', 'e10adc3949ba59abbe56e057f20f883e', '18654789625', '1111111111@qq.com', '332,333,334,335,336,337,338', '1960-03-04', '0', '111111111', '/Public/Home/images/2016-01-16/5699e81109b0a.jpg', null);
INSERT INTO `wf_vip_user` VALUES ('38', 'ceshi', 'e10adc3949ba59abbe56e057f20f883e', '18698569856', '', '32,33,34,35,36,37,38332,333,334,335,336,337,338', null, null, null, null, null);
INSERT INTO `wf_vip_user` VALUES ('39', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '15046666666', '', '332,333,334,335,336,337,338', null, null, null, null, null);
INSERT INTO `wf_vip_user` VALUES ('40', 'cs', 'e10adc3949ba59abbe56e057f20f883e', '18654785478', '', '332,333,334,335,336,337,338', '1989-02-02', '0', '', null, null);
INSERT INTO `wf_vip_user` VALUES ('45', 'apple', 'e10adc3949ba59abbe56e057f20f883e', '18654121254', '', '323', '1971-01-01', '0', '', null, null);
INSERT INTO `wf_vip_user` VALUES ('46', '77296733@qq.com', 'df010be2b149842b485675c03c257c02', '13936347477', '', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for wf_wxpay
-- ----------------------------
DROP TABLE IF EXISTS `wf_wxpay`;
CREATE TABLE `wf_wxpay` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `creattime` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT '记录 vip_id 或者jms_id',
  `paytrade` varchar(64) NOT NULL,
  `paytime` int(10) unsigned NOT NULL,
  `status` tinyint(8) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT '支付来源判断：vip用户，jms加盟商；',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wf_wxpay
-- ----------------------------
