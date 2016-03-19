/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50540
Source Host           : 123.56.102.103:3306
Source Database       : wanfang

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-01-08 13:02:33
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
INSERT INTO `wf_all_city` VALUES ('1', '哈尔滨市', '0', null, null);
INSERT INTO `wf_all_city` VALUES ('2', '双鸭山市', '0', null, null);
INSERT INTO `wf_all_city` VALUES ('3', '七台河市', '0', null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
INSERT INTO `wf_feedback` VALUES ('11', 'fkgjpoerk ytk', '0', '11', 'ldf,gdfg,', 'admin', '0');

-- ----------------------------
-- Table structure for wf_gys_cart
-- ----------------------------
DROP TABLE IF EXISTS `wf_gys_cart`;
CREATE TABLE `wf_gys_cart` (
  `gys_cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `gys_buyer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '买家id',
  `gys_store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺id',
  `gys_store_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `gys_goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `gys_goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `gys_goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `gys_goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `gys_goods_image` varchar(100) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`gys_cart_id`),
  KEY `member_id` (`gys_buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车数据表';

-- ----------------------------
-- Records of wf_gys_cart
-- ----------------------------

-- ----------------------------
-- Table structure for wf_gys_goods
-- ----------------------------
DROP TABLE IF EXISTS `wf_gys_goods`;
CREATE TABLE `wf_gys_goods` (
  `gys_gid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `gys_gname` varchar(40) NOT NULL COMMENT '产品名称',
  `gys_photo` varchar(255) NOT NULL COMMENT '图片',
  `gys_vipprice` int(10) NOT NULL COMMENT '会员价格',
  `gys_price` int(10) NOT NULL COMMENT '市场价格',
  `gys_info` varchar(80) DEFAULT NULL COMMENT '产品信息',
  `gys_kid` int(10) NOT NULL COMMENT '所属分类',
  `gys_num` int(10) NOT NULL DEFAULT '1' COMMENT '库存',
  `gys_uptime` varchar(50) NOT NULL COMMENT '上架时间',
  `gys_status` varchar(20) DEFAULT NULL COMMENT '状态',
  `gys_colnum` int(10) DEFAULT '0' COMMENT '收藏数量',
  `gys_elite` tinyint(2) DEFAULT NULL COMMENT '推荐',
  `gys_txm` varchar(255) DEFAULT NULL COMMENT '条形码',
  `gys_storeid` int(11) NOT NULL COMMENT '店铺id',
  `gys_storename` varchar(255) NOT NULL COMMENT '店铺名称',
  `gys_salenum` int(11) DEFAULT NULL COMMENT '销售数量',
  `gys_id` int(10) unsigned NOT NULL COMMENT '供应商id',
  `gys_did` int(11) NOT NULL COMMENT '地区id',
  `gys_spgg` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `gys_spdw` varchar(255) DEFAULT NULL COMMENT '商品单位',
  `gys_spbh` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `gys_hot` varchar(255) DEFAULT NULL COMMENT '热门商品',
  PRIMARY KEY (`gys_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_goods
-- ----------------------------
INSERT INTO `wf_gys_goods` VALUES ('34', '苹果', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168', '', '0', '2', '0', '19', '0', '', '506', '1', '1', '3', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('35', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218', '', '0', '1', '0', '23', '0', '', '467', '1', '1', '4', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('36', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298', '', '0', '1', '0', '22', '1', '', '717', '1', '1', '5', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('37', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596', '', '0', '1', '0', '26', '0', '', '282', '1', '1', '1', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('38', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351', '', '0', '1', '0', '26', '1', '', '961', '1', '1', '1', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('39', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536', '', '0', '1', '0', '66', '1', '', '258', '1', '1', '5', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('45', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250', '', '0', '1', '0', '64', '1', '', '548', '1', '1', '1', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('73', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120', '', '0', '1', '0', '279', '0', '', '219', '1', '1', '7', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('76', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500', '', '0', '2', '0', '65', '0', '', '692', '1', '1', '4', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('77', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230', '测试一下', '0', '2', '0', '288', '0', '', '219', '1', '1', '5', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('30', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450', '', '0', '1', '0', '203', '1', '件', '200', '1', '1', '5', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('105', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222', '测试一下', '0', '2', '0', '0', '1', '', '100', '1', '1', '5', '', '0', '');
INSERT INTO `wf_gys_goods` VALUES ('106', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('107', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198', '', '0', '2', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('108', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168', '', '0', '2', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('109', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('110', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('111', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('112', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('113', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('114', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('115', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('116', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('117', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('118', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000', '', '0', '1', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('120', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500', '', '1', '2', '0', null, '0', '', null, '1', '0', null, null, null, null);
INSERT INTO `wf_gys_goods` VALUES ('121', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178', '', '1', '2', '0', null, '0', '', null, '1', '0', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_kinds
-- ----------------------------
INSERT INTO `wf_gys_kinds` VALUES ('1', '食品、饮料、酒水', '0', '1', '');
INSERT INTO `wf_gys_kinds` VALUES ('2', '美妆洗护、个人护理', '0', '2', '');
INSERT INTO `wf_gys_kinds` VALUES ('3', '家纺、家居、家装', '0', '3', '');
INSERT INTO `wf_gys_kinds` VALUES ('4', '母婴、童装、玩具', '0', '4', '');
INSERT INTO `wf_gys_kinds` VALUES ('5', '生鲜食品、冷藏冷冻', '0', '5', '');
INSERT INTO `wf_gys_kinds` VALUES ('6', '12349便民服务', '0', '6', '');
INSERT INTO `wf_gys_kinds` VALUES ('7', '测试、测试、测试', '0', '7', '');
INSERT INTO `wf_gys_kinds` VALUES ('8', '测试、测试、测试', '0', '8', '');
INSERT INTO `wf_gys_kinds` VALUES ('9', '测试、测试、测试', '0', '9', '');
INSERT INTO `wf_gys_kinds` VALUES ('10', '测试、测试、测试', '0', '10', '');
INSERT INTO `wf_gys_kinds` VALUES ('11', '食品', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('12', '饮料', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('13', '酒水', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('14', '其他', '1', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('15', '美妆洗护', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('16', '个人护理', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('17', '其他', '2', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('18', '家纺', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('19', '家居', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('20', '家装', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('21', '其他', '3', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('22', '母婴', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('23', '童装', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('24', '玩具', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('25', '其他', '4', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('26', '生鲜食品', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('27', '冷藏冷冻', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('28', '其他', '5', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('29', '家政服务', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('30', '设备维修', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('31', '心理咨询', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('32', '法律援助', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('33', '代缴代办', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('34', '信息咨询', '6', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('35', '其他测试', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('36', '其他测试', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('37', '其他测试', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('38', '其他测试', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('39', '其他测试', '7', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('40', '其他测试2', '8', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('41', '其他测试2', '8', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('42', '其他测试2', '8', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('43', '其他测试2', '8', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('44', '其他测试3', '9', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('45', '其他测试3', '9', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('46', '其他测试3', '9', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('47', '其他测试3', '9', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('48', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('49', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('50', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('51', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('52', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('53', '其他测试4', '10', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('54', '薯片', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('55', '薯片', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('56', '薯片薯片薯片', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('57', '薯片', '11', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('58', '薯片', '16', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('59', '可乐', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('60', '可乐', '16', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('61', '可乐', '17', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('62', '可乐', '15', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('63', '可乐', '12', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('64', '小浣熊', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('65', '小浣熊', '29', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('66', '小浣熊', '13', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('67', '小浣熊', '34', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('68', '大蛋糕', '14', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('69', '小蛋糕', '15', '', '');
INSERT INTO `wf_gys_kinds` VALUES ('70', '甜蛋糕', '50', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_gys_user
-- ----------------------------
INSERT INTO `wf_gys_user` VALUES ('1', 'csgys', '123456', '12312312312', '123@qq.com', '信息', '测试供应商', null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_ckb
-- ----------------------------
INSERT INTO `wf_jms_ckb` VALUES ('22', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('23', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('24', '1', '20151223000001', 'B201512230000001', '白鲨', '1.0', '8.0', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('25', '1', '20151223000002', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-23 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('26', '1', '20151224000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-24 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('27', '1', '20151224000002', 'B201512230000001', '白鲨', '1.0', '8.0', '盒', '2015-12-24 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('28', '1', '20151224000003', 'B201512230000001', '白鲨', '10.0', '85.0', '盒', '2015-12-24 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('29', '1', '20151225000001', 'B201512230000001', '白鲨', '10.0', '85.0', '盒', '2015-12-25 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('30', '1', '20151225000002', 'B201512240000003', '鼠标', '1.0', '10.0', '', '2015-12-25 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('31', '1', '20151225000002', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-25 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('32', '1', '20151228000001', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-28 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('33', '1', '20151228000002', 'B201512230000001', '白鲨', '1.0', '8.5', '盒', '2015-12-28 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('34', '1', '20151229000001', 'B201512230000001', '白鲨', '1000.0', '8500.0', '盒', '2015-12-29 00:00:00');
INSERT INTO `wf_jms_ckb` VALUES ('35', '1', '20151229000002', 'B201512240000003', '鼠标', '1000.0', '10000.0', '', '2015-12-29 00:00:00');

-- ----------------------------
-- Table structure for wf_jms_dingdan
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_dingdan`;
CREATE TABLE `wf_jms_dingdan` (
  `jms_ddid` int(11) NOT NULL AUTO_INCREMENT,
  `jms_ddtime` datetime NOT NULL COMMENT '订单时间',
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
  `jms_consignee` varchar(255) NOT NULL COMMENT '加盟商收货地址',
  `jms_ddact` varchar(255) NOT NULL COMMENT '付款方式',
  `jms_sphone` int(255) NOT NULL COMMENT '供货商电话',
  PRIMARY KEY (`jms_ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_dingdan
-- ----------------------------
INSERT INTO `wf_jms_dingdan` VALUES ('1', '2015-11-05 09:30:22', 'A2015110509302301', '100', '32', '索尼爱立信', '1', 'admin', '1', '测试加盟商', '', '1', '5', '3000', '1', '在线付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('2', '2015-11-05 09:31:22', 'A2015110509302301', '100', '33', 'aidfd', '1', 'admin', '1', '测试加盟商', '', '1', '5', '3000', '2', '网上支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('3', '2015-11-05 09:31:22', 'A2015110509302301', '100', '32', '2', '1', 'admin', '1', '测试加盟商', '', '1', '5', '3100', '3', '货到付款', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('4', '2015-11-05 09:31:22', 'A2015110509302301', '200', '33', '22', '1', 'admin', '1', '测试加盟商', '', '1', '5', '3200', '4', '网上支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('5', '2015-11-05 09:31:22', 'A2015110509302301', '200', '33', ' 不vv', '1', 'admin', '1', '测试加盟商', '', '1', '5', '3200', '5', '网上支付', '0');
INSERT INTO `wf_jms_dingdan` VALUES ('6', '0000-00-00 00:00:00', 'A2015110509302301', '', '0', '', '0', '', '0', null, '', '', '5', '0', '', '', '0');

-- ----------------------------
-- Table structure for wf_jms_goods
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_goods`;
CREATE TABLE `wf_jms_goods` (
  `jms_gid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `jms_gname` varchar(40) NOT NULL COMMENT '产品名称',
  `jms_photo` varchar(255) NOT NULL COMMENT '图片',
  `jms_vipprice` int(10) NOT NULL COMMENT '会员价格',
  `jms_price` int(10) NOT NULL COMMENT '市场价格',
  `jms_info` varchar(80) DEFAULT NULL COMMENT '产品信息',
  `jms_kid` int(10) NOT NULL COMMENT '所属分类',
  `jms_num` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '库存',
  `jms_brand` varchar(50) DEFAULT NULL COMMENT '品牌',
  `jms_uptime` varchar(50) NOT NULL COMMENT '上架时间',
  `jms_status` varchar(20) DEFAULT NULL COMMENT '状态 1 上架 0下架',
  `jms_colnum` int(10) DEFAULT '0' COMMENT '收藏数量',
  `jms_paynum` int(10) DEFAULT '0' COMMENT '卖出数量',
  `jms_hot` tinyint(2) DEFAULT NULL COMMENT '最热商品',
  `jms_marque` varchar(50) DEFAULT NULL COMMENT '规格',
  `jms_weight` int(11) DEFAULT NULL COMMENT '重量',
  `jms_id` int(11) NOT NULL COMMENT '加盟商id',
  `jms_new` tinyint(2) unsigned DEFAULT NULL COMMENT '最新商品',
  `jms_did` int(11) NOT NULL COMMENT '地区id',
  `jms_tiaoma` varchar(255) NOT NULL COMMENT '商品条形码',
  `jms_spdw` varchar(255) DEFAULT NULL COMMENT '商品单位',
  `jms_spbh` varchar(255) DEFAULT NULL COMMENT '商品编号',
  PRIMARY KEY (`jms_gid`)
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_goods
-- ----------------------------
INSERT INTO `wf_jms_goods` VALUES ('33', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '100.00', null, '2009-03-07 12:22:26', '0', '1', '20', '0', null, '589', '1', '0', '1', '', '0', 'A0033');
INSERT INTO `wf_jms_goods` VALUES ('32', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '100.00', null, '2009-03-07 12:22:32', '0', '1', '18', '0', null, '655', '1', '0', '2', '', '0', 'A0032');
INSERT INTO `wf_jms_goods` VALUES ('34', '苹果', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '1', '19', '0', null, '506', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('35', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', null, '2012-05-06 18:11:02', '0', '1', '23', '0', null, '467', '1', '0', '4', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('36', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', null, '2012-05-06 18:09:09', '0', '1', '22', '1', null, '717', '1', '0', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('37', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', null, '2012-05-06 18:09:16', '0', '1', '26', '0', null, '282', '1', '0', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('38', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', null, '2012-05-06 18:09:19', '0', '1', '26', '1', null, '961', '1', '0', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('39', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', null, '2012-01-11 18:09:22', '0', '1', '66', '1', null, '258', '1', '0', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('45', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', null, '2011-10-16 18:10:25', '0', '1', '64', '1', null, '548', '1', '1', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('53', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', null, '2012-05-10 08:49:01', '0', '1', '9', '1', null, '447', '1', '1', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('56', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '55', '500.00', null, '2012-05-10 09:16:21', '0', '1', '28', '1', null, '152', '1', '1', '6', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('57', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', null, '2012-05-10 09:18:27', '0', '1', '46', '1', null, '217', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('58', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', null, '2012-05-10 09:18:36', '0', '1', '60', '1', null, '531', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('59', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', null, '2012-05-10 09:18:44', '0', '1', '361', '1', null, '105', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('60', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', null, '2012-05-10 09:20:56', '0', '1', '350', '1', null, '632', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('61', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '57', '178.00', null, '2012-05-10 09:23:59', '0', '1', '49', '1', null, '930', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('62', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '56', '1000.00', null, '2012-05-10 09:24:30', '0', '1', '160', '0', null, '813', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('63', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '56', '2000.00', null, '2012-05-10 09:26:08', '0', '1', '260', '0', null, '275', '1', '0', '7', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('67', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '56', '1200.00', null, '2012-05-10 09:34:32', '0', '1', '250', '0', null, '277', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('68', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', null, '2012-05-10 09:35:59', '0', '1', '66', '0', null, '811', '1', '1', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('69', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', null, '2012-05-10 09:37:05', '0', '1', '363', '0', null, '426', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('71', '松下（Panasonic）TH-P50UT30C 50英寸', 'sonx.jpg', '6159', '6999', '全高清 3D等离子电视', '60', '340.00', null, '2012-05-10 09:39:05', '0', '1', '298', '0', null, '214', '1', '1', '4', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('72', '迪优美特H71A 27寸LED背光液晶显示器IPS 广视角', 'T1c2a7XkdqXXXUsbw6_061013.jpg_310x310.jpg', '2199', '2499', '新店特惠 1999.20', '60', '450.00', null, '2012-05-10 09:40:06', '0', '1', '203', '0', null, '372', '1', '0', '4', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('73', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120.00', null, '2012-05-10 09:41:24', '0', '1', '279', '0', null, '219', '1', '0', '7', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('76', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '1', '65', '0', '', '692', '1', '1', '4', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('77', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '1', '288', '0', '', '219', '1', '1', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('30', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450.00', '', '2012-05-10 09:40:06', '0', '1', '203', '1', '件', '200', '1', '1', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('105', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222.00', '测试一下', '2015-09-26 10:49:26', '0', '1', '0', '1', null, '100', '1', '1', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('106', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200.00', '', '2009-03-07 12:22:26', '0', '1', '20', '1', '', '589', '1', '1', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('107', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '1', '18', '1', '', '655', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('108', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '1', '19', '1', '', '506', '1', '1', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('109', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218.00', '', '2012-05-06 18:11:02', '0', '1', '23', '1', '', '467', '1', '1', '4', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('110', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298.00', '', '2012-05-06 18:09:09', '0', '1', '22', '1', '', '717', '1', '1', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('111', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596.00', '', '2012-05-06 18:09:16', '0', '1', '26', '1', '', '282', '1', '1', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('112', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351.00', '', '2012-05-06 18:09:19', '0', '1', '26', '0', '', '961', '1', '1', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('113', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536.00', '', '2012-01-11 18:09:22', '0', '1', '66', '1', '', '258', '1', '0', '5', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('114', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250.00', '', '2011-10-16 18:10:25', '0', '1', '64', '1', '', '548', '1', '0', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('115', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '0', '', '447', '1', '0', '1', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('116', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '0', '', '152', '1', '0', '6', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('117', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '0', '', '217', '1', '0', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('118', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '0', '', '531', '1', '0', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('119', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '66', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '0', '', '105', '1', '0', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('120', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('121', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', '1', '2', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('122', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '68', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '1', '', '813', '1', '1', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('123', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '60', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '1', '', '275', '1', '0', '7', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('124', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '60', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '1', '', '277', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('125', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '60', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', '1', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('126', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '62', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', '0', '3', '', '0', null);
INSERT INTO `wf_jms_goods` VALUES ('127', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '0', '', '589', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('128', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '0', '', '655', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('129', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '0', '', '506', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('130', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '0', '', '467', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('131', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('132', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '0', '', '282', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('133', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '1', '', '961', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('134', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('135', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('136', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '1', '', '447', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('137', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '55', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '1', '', '152', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('138', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '1', '', '217', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('139', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '1', '', '531', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('140', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '1', '', '105', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('141', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('142', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '57', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('143', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '56', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '0', '', '813', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('144', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '56', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '0', '', '275', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('145', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '56', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '0', '', '277', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('146', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('147', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('148', '松下（Panasonic）TH-P50UT30C 50英寸', 'sonx.jpg', '6159', '6999', '全高清 3D等离子电视', '60', '340.00', '', '2012-05-10 09:39:05', '0', '0', '298', '0', '', '214', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('149', '迪优美特H71A 27寸LED背光液晶显示器IPS 广视角', 'T1c2a7XkdqXXXUsbw6_061013.jpg_310x310.jpg', '2199', '2499', '新店特惠 1999.20', '60', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '0', '', '372', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('150', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120.00', '', '2012-05-10 09:41:24', '0', '0', '279', '0', '', '219', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('151', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '0', '65', '0', '', '692', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('152', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '0', '288', '0', '', '219', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('153', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '1', '', '200', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('154', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222.00', '测试一下', '2015-09-26 10:49:26', '0', '0', '0', '1', '', '100', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('155', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '1', '', '589', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('156', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '1', '', '655', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('157', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '1', '', '506', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('158', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '1', '', '467', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('159', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('160', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '1', '', '282', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('161', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '0', '', '961', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('162', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('163', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('164', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '0', '', '447', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('165', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '0', '', '152', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('166', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '0', '', '217', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('167', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '0', '', '531', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('168', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '66', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '0', '', '105', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('169', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('170', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('171', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '68', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '1', '', '813', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('172', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '60', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '1', '', '275', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('173', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '60', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '1', '', '277', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('174', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '60', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('175', '索尼爱立信W908c', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '62', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('176', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '0', '', '589', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('177', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '0', '', '655', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('178', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '0', '', '506', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('179', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '0', '', '467', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('180', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('181', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '0', '', '282', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('182', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '1', '', '961', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('183', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('184', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('185', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '1', '', '447', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('186', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '55', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '1', '', '152', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('187', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '1', '', '217', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('188', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '1', '', '531', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('189', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '1', '', '105', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('190', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('191', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '57', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('192', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '56', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '0', '', '813', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('193', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '56', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '0', '', '275', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('194', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '56', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '0', '', '277', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('195', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('196', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('197', '松下（Panasonic）TH-P50UT30C 50英寸', 'sonx.jpg', '6159', '6999', '全高清 3D等离子电视', '60', '340.00', '', '2012-05-10 09:39:05', '0', '0', '298', '0', '', '214', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('198', '迪优美特H71A 27寸LED背光液晶显示器IPS 广视角', 'T1c2a7XkdqXXXUsbw6_061013.jpg_310x310.jpg', '2199', '2499', '新店特惠 1999.20', '60', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '0', '', '372', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('199', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120.00', '', '2012-05-10 09:41:24', '0', '0', '279', '0', '', '219', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('200', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '0', '65', '0', '', '692', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('201', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '0', '288', '0', '', '219', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('202', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '1', '', '200', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('203', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222.00', '测试一下', '2015-09-26 10:49:26', '0', '0', '0', '1', '', '100', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('204', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '1', '', '589', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('205', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '1', '', '655', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('206', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '1', '', '506', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('207', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '1', '', '467', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('208', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('209', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '1', '', '282', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('210', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '0', '', '961', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('211', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('212', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('213', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '0', '', '447', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('214', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '0', '', '152', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('215', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '0', '', '217', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('216', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '0', '', '531', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('217', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '66', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '0', '', '105', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('218', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('219', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('220', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '68', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '1', '', '813', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('221', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '60', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '1', '', '275', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('222', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '60', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '1', '', '277', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('223', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '60', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('224', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '62', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', null, null);
INSERT INTO `wf_jms_goods` VALUES ('225', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '0', '', '589', '1', '0', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('226', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '0', '', '655', '1', '0', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('227', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '0', '', '506', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('228', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '0', '', '467', '1', '0', '4', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('229', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', '0', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('230', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '0', '', '282', '1', '0', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('231', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '1', '', '961', '1', '0', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('232', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', '0', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('233', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', '1', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('234', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '1', '', '447', '1', '1', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('235', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '55', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '1', '', '152', '1', '1', '6', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('236', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '1', '', '217', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('237', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '1', '', '531', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('238', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '1', '', '105', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('239', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('240', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '57', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('241', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '56', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '0', '', '813', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('242', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '56', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '0', '', '275', '1', '0', '7', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('243', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '56', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '0', '', '277', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('244', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', '1', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('245', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('246', '松下（Panasonic）TH-P50UT30C 50英寸', 'sonx.jpg', '6159', '6999', '全高清 3D等离子电视', '60', '340.00', '', '2012-05-10 09:39:05', '0', '0', '298', '0', '', '214', '1', '1', '4', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('247', '迪优美特H71A 27寸LED背光液晶显示器IPS 广视角', 'T1c2a7XkdqXXXUsbw6_061013.jpg_310x310.jpg', '2199', '2499', '新店特惠 1999.20', '60', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '0', '', '372', '1', '0', '4', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('248', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120.00', '', '2012-05-10 09:41:24', '0', '0', '279', '0', '', '219', '1', '0', '7', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('249', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '0', '65', '0', '', '692', '1', '1', '4', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('250', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '0', '288', '0', '', '219', '1', '1', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('251', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '1', '', '200', '1', '1', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('252', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222.00', '测试一下', '2015-09-26 10:49:26', '0', '0', '0', '1', '', '100', '1', '1', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('253', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '1', '', '589', '1', '1', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('254', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '1', '', '655', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('255', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '1', '', '506', '1', '1', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('256', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '1', '', '467', '1', '1', '4', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('257', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', '1', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('258', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '1', '', '282', '1', '1', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('259', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '0', '', '961', '1', '1', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('260', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', '0', '5', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('261', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', '0', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('262', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '0', '', '447', '1', '0', '1', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('263', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '0', '', '152', '1', '0', '6', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('264', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '0', '', '217', '1', '0', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('265', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '0', '', '531', '1', '0', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('266', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '66', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '0', '', '105', '1', '0', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('267', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('268', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', '1', '2', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('269', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '68', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '1', '', '813', '1', '1', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('270', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '60', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '1', '', '275', '1', '0', '7', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('271', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '60', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '1', '', '277', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('272', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '60', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', '1', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('273', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '62', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', '0', '3', '', '0', '');
INSERT INTO `wf_jms_goods` VALUES ('274', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '0', '', '589', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('275', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '0', '', '655', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('276', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '0', '', '506', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('277', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '0', '', '467', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('278', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('279', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '0', '', '282', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('280', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '1', '', '961', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('281', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('282', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('283', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '1', '', '447', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('284', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '55', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '1', '', '152', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('285', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '1', '', '217', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('286', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '1', '', '531', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('287', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '1', '', '105', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('288', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('289', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '57', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('290', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '56', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '0', '', '813', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('291', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '56', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '0', '', '275', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('292', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '56', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '0', '', '277', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('293', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('294', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('295', '松下（Panasonic）TH-P50UT30C 50英寸', 'sonx.jpg', '6159', '6999', '全高清 3D等离子电视', '60', '340.00', '', '2012-05-10 09:39:05', '0', '0', '298', '0', '', '214', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('296', '迪优美特H71A 27寸LED背光液晶显示器IPS 广视角', 'T1c2a7XkdqXXXUsbw6_061013.jpg_310x310.jpg', '2199', '2499', '新店特惠 1999.20', '60', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '0', '', '372', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('297', '三星（SAMSUNG）E2220W', 'sumingxsq.jpg', '2639', '2999', '22英寸宽屏液晶显示器', '60', '120.00', '', '2012-05-10 09:41:24', '0', '0', '279', '0', '', '219', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('298', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '0', '65', '0', '', '692', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('299', '美达斯安迪双门鞋柜', '560614cbd735a.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '0', '288', '0', '', '219', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('300', '三星(W110120)', '55f8fd1aed830.jpg', '2200', '2500', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '65', '450.00', '', '2012-05-10 09:40:06', '0', '0', '203', '1', '', '200', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('301', '测试一下', '560614c5520fb.jpg', '18021', '25001', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '62', '2222.00', '测试一下', '2015-09-26 10:49:26', '0', '0', '0', '1', '', '100', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('302', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '67', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '1', '', '589', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('303', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '1', '', '655', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('304', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '1', '', '506', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('305', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '58', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '1', '', '467', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('306', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '58', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('307', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '58', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '1', '', '282', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('308', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '59', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '0', '', '961', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('309', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '59', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('310', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '59', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('311', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '59', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '0', '', '447', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('312', 'iPhone 4S(无锁)', 'T2q19hXn0XXXXXXXXX_!!263726286.jpg', '5939', '6749', '触摸屏：电容式触摸屏', '66', '500.00', '', '2012-05-10 09:16:21', '0', '0', '28', '0', '', '152', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('313', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '66', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '0', '', '217', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('314', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '66', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '0', '', '531', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('315', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '66', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '0', '', '105', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('316', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '68', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('317', '笔记本Lenovo/联想 Y470P-IFI/4G/2G A卡独显', 'lenovo.jpg', '4751', '5399', 'A卡独显 笔记本电脑/包邮', '68', '178.00', '', '2012-05-10 09:23:59', '0', '0', '49', '1', '', '930', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('318', 'Samsung/三星 GT-S5830I', 'T24t5mXXdaXXXXXXXX_!!370627083.jpg', '1495', '1699', '安卓智能3G手机 带原装4G卡', '68', '1000.00', '', '2012-05-10 09:24:30', '0', '0', '160', '1', '', '813', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('319', 'Nokia/诺基亚 N9', 'cea6KWoossupg.jpg', '2402', '2730', '全新原装机 智能手机 音乐手机 拍照手机 3G手机', '60', '2000.00', '', '2012-05-10 09:26:08', '0', '0', '260', '1', '', '275', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('320', '三星（SAMSUNG）S6500D', 'suming.jpg', '3246', '3689', '3.5寸荧屏', '60', '1200.00', '', '2012-05-10 09:34:32', '0', '0', '250', '1', '', '277', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('321', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '60', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('322', '索尼爱立信W908c', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '62', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('323', '索尼爱立信W908c', '4li.jpg', '2638', '2998', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：克手机类型：3G手机制式：GSM主屏尺寸：2.7英寸外观设计：滑盖屏幕色彩：26万色彩屏摄像头：内置', '70', '200.00', '', '2009-03-07 12:22:26', '0', '0', '20', '0', '', '589', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('324', '索尼爱立信XPERIA X1', '200903052134476421.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '0', '', '655', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('325', '索尼爱立信G700', '55f8fd433580e.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '54', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '0', '', '506', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('326', '诺基亚N95', '200903080442099724.jpg', '2200', '2500', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：3.0英寸外观设计：旋转屏屏幕色彩：1600万色彩屏摄像头：内置', '54', '218.00', '', '2012-05-06 18:11:02', '0', '0', '23', '0', '', '467', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('327', '诺基亚6500 slide', '200903080446581169.jpg', '2112', '2400', '品　　牌：诺基亚(NOKIA)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：直板屏幕色彩：1600万色彩屏', '54', '298.00', '', '2012-05-06 18:09:09', '0', '0', '22', '1', '', '717', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('328', '摩托罗拉RAZR V8(2GB) 黄金典藏版', '200903080453014457.jpg', '2464', '2800', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.1英寸外观设计：直板屏幕色彩：26万色彩屏', '54', '596.00', '', '2012-05-06 18:09:16', '0', '0', '26', '0', '', '282', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('329', '摩托罗拉E6', '200903080538346417.jpg', '2541', '2888', '品　　牌：摩托罗拉(MOTO)手机类型：3G手机制式：GSM主屏尺寸：2.6英寸外观设计：滑盖屏幕色彩：26万色彩屏', '55', '351.00', '', '2012-05-06 18:09:19', '0', '0', '26', '1', '', '961', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('330', '冠捷（AOC）42寸全高清液晶电视L42BN83F', '200903092221521664.jpg', '5984', '6800', 'AOC L42BN83F是一台液晶电视机.AOC L42BN83F采用1920×1080分辨率.AOC L42BN83F支持广色域增靓技术:WCG-CCFL/背', '55', '536.00', '', '2012-01-11 18:09:22', '0', '0', '66', '1', '', '258', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('331', '怡莲办公达人四件套LY-NO11 ', '200903092246036517.jpg', '70', '80', '怡莲 办公达人四件套LY-NO11', '55', '250.00', '', '2011-10-16 18:10:25', '0', '0', '64', '1', '', '548', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('332', '步步高型号: v207', 'zylbbg1.jpg', '957', '1088', '品牌: BBK/步步高步步高型号: v207手机价格区间: 1000元以下上市时间: 2011年11年上市月份: 5月网络类型: GSM外观样式: 直板主屏尺寸', '55', '50.00', '', '2012-05-10 08:49:01', '0', '0', '9', '1', '', '447', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('334', 'Apple/苹果 iPhone 4S', 'zhaoyl1.jpg', '4301', '4888', '品牌: iPhoneApple型号: iPhone 4S(无锁)手机价格区间: 4000元以上上市时间: 2011年11年上市月份: 1月网络类型: GSM/W', '57', '106.00', '', '2012-05-10 09:18:27', '0', '0', '46', '1', '', '217', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('335', 'iPhone 4S(无锁)', 'T1UuG7Xm8pXXbLgPgY_030104.jpg_310x310.jpg', '5939', '6749', '  触摸屏：电容式触摸屏 主屏尺寸：3.5英寸 上市时间：2011年 11年上市月份：1月', '57', '1000.00', '', '2012-05-10 09:18:36', '0', '0', '60', '1', '', '531', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('336', 'HTC One X S720e安卓4.0', 'htc.jpg', '3300', '3750', '超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1212.00', '', '2012-05-10 09:18:44', '0', '0', '361', '1', '', '105', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('337', 'HTC One X S720e', '55f8f9ba4b0c0.jpg', '3300', '3750', '安卓4.0 超薄时尚 4.7寸屏 四核机皇 原装正品', '57', '1500.00', '', '2012-05-10 09:20:56', '0', '0', '350', '1', '', '632', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('386', '测试图片', '/Public/Home/images/2015-12-31/568494b33d747.jpg,/Public/Home/images/2015-12-31/568494b33ead0.jpg', '1', '2', '1111111111111111111111', '54', '11.00', null, '', '0', '0', '0', null, null, null, '1', null, '0', '11111111', '袋', null);
INSERT INTO `wf_jms_goods` VALUES ('388', 'asdfghjk', '/Public/Home/images/2016-01-06/568c7049c5a0e.jpg', '1111', '11', '11111', '56', '11.00', null, '', '0', '0', '0', null, null, null, '0', null, '35', '111', '111', null);
INSERT INTO `wf_jms_goods` VALUES ('389', '111111111111111111', '/Public/Home/images/2016-01-07/568dc8a20db71.jpg', '0', '0', '', '0', '0.00', null, '', '0', '0', '0', null, null, null, '0', null, '0', '', '', null);
INSERT INTO `wf_jms_goods` VALUES ('342', 'Haier/海尔 BCD-206SM', 'T1b2F7XmpJXXc4XzZV_021313.jpg_310x310.jpg', '1759', '1999', '三门冰箱/机械温控/007软冷冻技术/包邮', '56', '100.00', '', '2012-05-10 09:35:59', '0', '0', '66', '0', '', '811', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('343', '东芝（TOSHIBA） H30 闪存数码摄像机', 'toshiba.jpg', '3238', '3680', '闪存数码摄像机 野玫红', '60', '554.00', '', '2012-05-10 09:37:05', '0', '0', '363', '0', '', '426', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('347', '金士顿优盘16g盘', 'T1px9uXjhXXXa0tYUU_014041.jpg_310x310.jpg', '79', '90', '16g dt101g2 16u盘旋转金属创意u盘包邮特价正品', '62', '500.00', '', '2012-05-10 09:44:11', '0', '0', '65', '0', '', '692', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('348', '美达斯安迪双门鞋柜', '/Public/Home/images/2015-12-31/56849278beb22.jpg,/Public/Home/images/2015-12-31/56849278c0293.jpg', '263', '299', '质量保证', '62', '230.00', '测试一下', '2011-11-18', '0', '0', '288', '0', '', '219', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('352', '索尼爱立信XPERIA X1', '/Public/Home/images/2015-12-31/5684926677654.jpg', '1759', '1999', '索尼爱立信(Sony Ericsson)智能手机制式：CDMA主屏尺寸：2.0英寸外观设计：旋转屏屏幕色彩：26万色彩屏摄像头：内置', '70', '198.00', '', '2009-03-07 12:22:32', '0', '0', '18', '1', '', '655', '1', null, '0', '', '', '');
INSERT INTO `wf_jms_goods` VALUES ('353', '索尼爱立信G700', '/Public/Home/images/2015-12-31/56849032e3bca.jpg,/Public/Home/images/2015-12-31/56849032e4f53.jpg', '1802', '2048', '品　　牌：索尼爱立信(Sony Ericsson)计量单位：款手机类型：商务手机制式：CDMA主屏尺寸：2.1英寸外观设计：旋转屏屏幕色彩：65K色彩屏摄像头：', '58', '168.00', '', '2012-05-06 18:10:58', '0', '0', '19', '1', '', '506', '1', null, '0', '', '', '');

-- ----------------------------
-- Table structure for wf_jms_kinds
-- ----------------------------
DROP TABLE IF EXISTS `wf_jms_kinds`;
CREATE TABLE `wf_jms_kinds` (
  `jms_kid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类id',
  `jms_kname` varchar(255) NOT NULL COMMENT '类名',
  `jms_parentid` int(11) NOT NULL COMMENT '父id',
  `jms_sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `jms_gids` varchar(255) DEFAULT NULL COMMENT '商品所归属范围',
  PRIMARY KEY (`jms_kid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_kinds
-- ----------------------------
INSERT INTO `wf_jms_kinds` VALUES ('1', '食品、饮料、酒水', '0', '1', '1');
INSERT INTO `wf_jms_kinds` VALUES ('2', '美妆洗护、个人护理', '0', '2', '2');
INSERT INTO `wf_jms_kinds` VALUES ('3', '家纺、家居、家装', '0', '3', '3');
INSERT INTO `wf_jms_kinds` VALUES ('4', '母婴、童装、玩具', '0', '4', '4');
INSERT INTO `wf_jms_kinds` VALUES ('5', '生鲜食品、冷藏冷冻', '0', '5', '5');
INSERT INTO `wf_jms_kinds` VALUES ('6', '12349便民服务', '0', '6', '6');
INSERT INTO `wf_jms_kinds` VALUES ('7', '测试、测试、测试', '0', '7', '7');
INSERT INTO `wf_jms_kinds` VALUES ('8', '测试、测试、测试', '0', '8', '8');
INSERT INTO `wf_jms_kinds` VALUES ('9', '测试、测试、测试', '0', '9', '9');
INSERT INTO `wf_jms_kinds` VALUES ('10', '测试、测试、测试', '0', '10', '10');
INSERT INTO `wf_jms_kinds` VALUES ('11', '食品', '1', '11', '1,11');
INSERT INTO `wf_jms_kinds` VALUES ('12', '饮料', '1', '12', '1,12');
INSERT INTO `wf_jms_kinds` VALUES ('13', '酒水', '1', '13', '1,13');
INSERT INTO `wf_jms_kinds` VALUES ('14', '其他', '1', '14', '1,14');
INSERT INTO `wf_jms_kinds` VALUES ('15', '美妆洗护', '2', '15', '2,15');
INSERT INTO `wf_jms_kinds` VALUES ('16', '个人护理', '2', '16', '2,16');
INSERT INTO `wf_jms_kinds` VALUES ('17', '其他', '2', '17', '2,17');
INSERT INTO `wf_jms_kinds` VALUES ('18', '家纺', '3', '18', '3,18');
INSERT INTO `wf_jms_kinds` VALUES ('19', '家居', '3', '19', '3,19');
INSERT INTO `wf_jms_kinds` VALUES ('20', '家装', '3', '20', '3,20');
INSERT INTO `wf_jms_kinds` VALUES ('21', '其他', '3', '21', '3,21');
INSERT INTO `wf_jms_kinds` VALUES ('22', '母婴', '4', '22', '4,22');
INSERT INTO `wf_jms_kinds` VALUES ('23', '童装', '4', '23', '4,23');
INSERT INTO `wf_jms_kinds` VALUES ('24', '玩具', '4', '24', '4,24');
INSERT INTO `wf_jms_kinds` VALUES ('25', '其他', '4', '25', '4,25');
INSERT INTO `wf_jms_kinds` VALUES ('26', '生鲜食品', '5', '26', '5,26');
INSERT INTO `wf_jms_kinds` VALUES ('27', '冷藏冷冻', '5', '27', '5,27');
INSERT INTO `wf_jms_kinds` VALUES ('28', '其他', '5', '28', '5,28');
INSERT INTO `wf_jms_kinds` VALUES ('29', '家政服务', '6', '29', '6,29');
INSERT INTO `wf_jms_kinds` VALUES ('30', '设备维修', '6', '30', '6,30');
INSERT INTO `wf_jms_kinds` VALUES ('31', '心理咨询', '6', '31', '6,31');
INSERT INTO `wf_jms_kinds` VALUES ('32', '法律援助', '6', '32', '6,32');
INSERT INTO `wf_jms_kinds` VALUES ('33', '代缴代办', '6', '33', '6,33');
INSERT INTO `wf_jms_kinds` VALUES ('34', '信息咨询', '6', '34', '6,34');
INSERT INTO `wf_jms_kinds` VALUES ('35', '其他测试', '7', '35', '7,35');
INSERT INTO `wf_jms_kinds` VALUES ('36', '其他测试', '7', '36', '7,36');
INSERT INTO `wf_jms_kinds` VALUES ('37', '其他测试', '7', '37', '7,37');
INSERT INTO `wf_jms_kinds` VALUES ('38', '其他测试', '7', '38', '7,38');
INSERT INTO `wf_jms_kinds` VALUES ('39', '其他测试', '7', '39', '7,39');
INSERT INTO `wf_jms_kinds` VALUES ('40', '其他测试2', '8', '40', '8,40');
INSERT INTO `wf_jms_kinds` VALUES ('41', '其他测试2', '8', '41', '8,41');
INSERT INTO `wf_jms_kinds` VALUES ('42', '其他测试2', '8', '42', '8,42');
INSERT INTO `wf_jms_kinds` VALUES ('43', '其他测试2', '8', '43', '8,43');
INSERT INTO `wf_jms_kinds` VALUES ('44', '其他测试3', '9', '44', '9,44');
INSERT INTO `wf_jms_kinds` VALUES ('45', '其他测试3', '9', '45', '9,45');
INSERT INTO `wf_jms_kinds` VALUES ('46', '其他测试3', '9', '46', '9,46');
INSERT INTO `wf_jms_kinds` VALUES ('47', '其他测试3', '9', '47', '9,47');
INSERT INTO `wf_jms_kinds` VALUES ('48', '其他测试4', '10', '48', '10,48');
INSERT INTO `wf_jms_kinds` VALUES ('49', '其他测试4', '10', '49', '10,49');
INSERT INTO `wf_jms_kinds` VALUES ('50', '其他测试4', '10', '50', '10,50');
INSERT INTO `wf_jms_kinds` VALUES ('51', '其他测试4', '10', '51', '10,51');
INSERT INTO `wf_jms_kinds` VALUES ('52', '其他测试4', '10', '52', '10,52');
INSERT INTO `wf_jms_kinds` VALUES ('53', '其他测试4', '10', '53', '10,53');
INSERT INTO `wf_jms_kinds` VALUES ('54', '薯片', '11', '54', '1,11,54');
INSERT INTO `wf_jms_kinds` VALUES ('55', '薯片', '11', '55', '1,11,55');
INSERT INTO `wf_jms_kinds` VALUES ('56', '薯片薯片薯片', '11', '56', '1,11,56');
INSERT INTO `wf_jms_kinds` VALUES ('57', '薯片', '11', '57', '1,11,57');
INSERT INTO `wf_jms_kinds` VALUES ('58', '薯片', '16', '58', '1,11,58');
INSERT INTO `wf_jms_kinds` VALUES ('59', '可乐', '17', '59', '1,12,59');
INSERT INTO `wf_jms_kinds` VALUES ('60', '可乐', '16', '60', '1,12,60');
INSERT INTO `wf_jms_kinds` VALUES ('61', '可乐', '17', '61', '1,12,61');
INSERT INTO `wf_jms_kinds` VALUES ('62', '可乐', '15', '62', '1,12,62');
INSERT INTO `wf_jms_kinds` VALUES ('63', '可乐', '12', '63', '1,12,63');
INSERT INTO `wf_jms_kinds` VALUES ('64', '小浣熊', '13', '64', '1,13,64');
INSERT INTO `wf_jms_kinds` VALUES ('65', '小浣熊', '29', '65', '1,29,65');
INSERT INTO `wf_jms_kinds` VALUES ('66', '小浣熊', '13', '66', '1,13,66');
INSERT INTO `wf_jms_kinds` VALUES ('67', '小浣熊', '34', '67', '1,34,67');
INSERT INTO `wf_jms_kinds` VALUES ('68', '大蛋糕', '14', '68', '1,14,68');
INSERT INTO `wf_jms_kinds` VALUES ('69', '小蛋糕', '15', '69', '2,15,69');
INSERT INTO `wf_jms_kinds` VALUES ('70', '甜蛋糕', '50', '70', '10,50,70');

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
  PRIMARY KEY (`jms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_jms_user
-- ----------------------------
INSERT INTO `wf_jms_user` VALUES ('1', 'admin', '123456', '12312312312', '123@qq.com', '测试加盟商', null, null, null, null, null, '126.671546', '45.744915');
INSERT INTO `wf_jms_user` VALUES ('2', 'csjms1', '123456', '12312312312', '123@qq.com', '测试加盟商', null, null, null, null, null, '126.555988', '45.739883');
INSERT INTO `wf_jms_user` VALUES ('4', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '15044443333', '486464', null, '就', '儿童', null, null, null, '', '');
INSERT INTO `wf_jms_user` VALUES ('5', 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '15044445555', '256204@qq.com', null, '换个方式', '多久发货', null, null, null, '', '');

-- ----------------------------
-- Table structure for wf_vip_address
-- ----------------------------
DROP TABLE IF EXISTS `wf_vip_address`;
CREATE TABLE `wf_vip_address` (
  `vip_addressid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `vip_name` varchar(255) NOT NULL COMMENT '会员账号',
  `vip_consignee` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL COMMENT '市',
  `district` varchar(255) NOT NULL COMMENT '区',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `postcode` varchar(255) NOT NULL COMMENT '邮编',
  `mobile` varchar(255) NOT NULL COMMENT '手机号',
  `defaul` int(2) NOT NULL COMMENT '是否设为默认 1是 0否',
  `lat` varchar(255) NOT NULL COMMENT '纬度',
  `lng` varchar(255) NOT NULL COMMENT '经度',
  PRIMARY KEY (`vip_addressid`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_address
-- ----------------------------
INSERT INTO `wf_vip_address` VALUES ('78', 'admin', '', '哈尔滨', '道里区', '和兴路', '', '13200001111', '0', '', '');
INSERT INTO `wf_vip_address` VALUES ('69', 'seller', '欣欣', '哈尔滨', '道里区', '紫园路', '000000', '18645556558', '1', '', '');
INSERT INTO `wf_vip_address` VALUES ('66', 'seller', '芈月', '哈尔滨', '道里区', '中央大街', '000000', '18695876589', '0', '', '');
INSERT INTO `wf_vip_address` VALUES ('67', 'seller', '芈姝', '哈尔滨', '道里区', '防洪纪念塔', '111111', '13542354321', '0', '', '');
INSERT INTO `wf_vip_address` VALUES ('98', 'admin1', '', '哈尔滨市', '道里区', '中央大街', '', '13212345678', '0', '45.779657', '126.625372');
INSERT INTO `wf_vip_address` VALUES ('99', 'admin', '156', '双鸭山市', '岭东区', 'vjgilh', '155623', '15151515151', '1', '', '');

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
  `vip_uname` varchar(255) NOT NULL,
  `vip_address` varchar(255) NOT NULL COMMENT '联系地址',
  `vip_phone` varchar(255) NOT NULL COMMENT '联系方式',
  `vip_price` decimal(10,0) NOT NULL COMMENT '订单价钱',
  `vip_consignee` varchar(255) NOT NULL COMMENT '收货人',
  `vip_ddact` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `vip_ddstate` varchar(255) DEFAULT NULL COMMENT '订单状态 1提交未付款 2取消 3已付款未发货 4已发货未收货 5已收货未评价 6已评价',
  `vip_sphone` varchar(255) NOT NULL COMMENT '加盟商电话号码',
  PRIMARY KEY (`vip_ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_dingdan
-- ----------------------------
INSERT INTO `wf_vip_dingdan` VALUES ('1', '2015-12-01 09:10:24', '2015062693819', '10', '0', '旺仔牛奶', '1', 'admin', '1', 'wang', '哈尔滨市道里区中央大街', '18695863259', '5', '李先生', '在线支付', '1', '18968926583');
INSERT INTO `wf_vip_dingdan` VALUES ('2', '2015-12-02 11:30:47', '2015062693820', '3', '0', '原汁麦', '1', 'admin', '2', 'seller', '哈尔滨市道里区中央大街防洪纪念塔', '15689652365', '6', '王女士', '在线支付', '2', '18965896325');
INSERT INTO `wf_vip_dingdan` VALUES ('3', '2015-12-02 11:49:43', '2015062693865', '3', '0', '4365', '1', 'admin', '3', 'seller', '哈尔滨市南岗区', '15896586259', '20', '郑丽娜', '在线支付', '3', '15968596352');
INSERT INTO `wf_vip_dingdan` VALUES ('4', '2015-12-02 11:49:43', '2015062693865', '3', '0', '53453443 bdfs', '1', 'admin', '4', 'seller', '哈尔滨市南岗区', '15896586259', '20', '郑丽娜', '在线支付', '4', '15968596352');
INSERT INTO `wf_vip_dingdan` VALUES ('5', '2015-12-02 11:49:43', '2015062693819', '2', '0', '53453443 bdfs', '1', 'admin', '4', 'seller', '哈尔滨市南岗区', '15896586259', '20', '郑丽娜', '在线支付', '5', '15968596352');

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
  `vip_shopping` varchar(255) DEFAULT NULL COMMENT '购物车',
  `vip_favorites` varchar(255) DEFAULT NULL COMMENT '会员收藏',
  `vip_birth` varchar(255) DEFAULT NULL COMMENT '会员生日',
  `vip_sex` varchar(255) DEFAULT NULL COMMENT '会员性别',
  `vip_qq` varchar(255) DEFAULT NULL COMMENT '会员QQ',
  `vip_pic` varchar(255) DEFAULT NULL COMMENT '会员头像',
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_vip_user
-- ----------------------------
INSERT INTO `wf_vip_user` VALUES ('3', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '18659842355', '1335115750@qq.com', null, null, '', '0', '2525252', '/Public/Home/images/2016-01-07/568e13d171528.jpg');
INSERT INTO `wf_vip_user` VALUES ('22', 'seller', '670b14728ad9902aecba32e22fa4f6bd', '18659842355', '1335115750@qq.com', null, '32,33,34,35,36,37,38', '1991-05-01', '1', '1335115750', '/Public/Home/images/2015-12-29/5681f3320305d.jpg');
INSERT INTO `wf_vip_user` VALUES ('35', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '13212345678', '', null, null, null, null, null, null);
