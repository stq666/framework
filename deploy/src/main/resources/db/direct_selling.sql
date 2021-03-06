/*
Navicat MySQL Data Transfer

Source Server         : 118
Source Server Version : 50630
Source Host           : 118.184.25.224:3306
Source Database       : direct_selling

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2016-10-18 11:35:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agent_center
-- ----------------------------
DROP TABLE IF EXISTS `agent_center`;
CREATE TABLE `agent_center` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '保单中心名称',
  `address` varchar(500) NOT NULL COMMENT '保单中心地址',
  `member_id` bigint(20) NOT NULL COMMENT '保单中心负责人',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理中心';

-- ----------------------------
-- Records of agent_center
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(50) NOT NULL COMMENT '登录名',
  `name` varchar(50) NOT NULL COMMENT '员工名称',
  `sex` tinyint(2) NOT NULL COMMENT '员工性别，0：男，1：女',
  `serialnumber` varchar(50) NOT NULL COMMENT '会员编号',
  `idcard` varchar(20) NOT NULL COMMENT '身份证号',
  `telphone` varchar(20) NOT NULL COMMENT '手机号',
  `cardno` varchar(30) NOT NULL COMMENT '银行卡号',
  `createuser` bigint(20) NOT NULL COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `qq` varchar(30) DEFAULT NULL COMMENT 'qq号',
  `status` tinyint(2) NOT NULL COMMENT '是否启用：0：启用，1：禁用',
  `alipay` varchar(50) DEFAULT NULL COMMENT '支付宝账号',
  `rewardstatus` tinyint(4) DEFAULT '0' COMMENT '是否发放，0：否，1：是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('60', '88880000', '石人豪', '0', '88880000', '412923196405285518', '13461174999', '623059113000518225', '1', '2016-05-15 01:08:34', '13461174999', '', '0', '', '0');
INSERT INTO `member` VALUES ('61', '88880001', '杨云霞', '1', '88880001', '410882197907093046', '13782612820', '6228482379392242273', '1', '2016-05-15 01:10:38', '13782612820', '', '0', '', null);
INSERT INTO `member` VALUES ('62', '88880002', '石三经', '0', '88880002', '411330198903181550', '13623750035', '623059113000351833', '1', '2016-05-15 01:12:13', '13623750035', '', '0', '', null);
INSERT INTO `member` VALUES ('63', '88880003', '张玉花', '1', '88880003', '310110196804166240', '15903901088', '4367455153371393', '1', '2016-05-15 01:13:47', '15903901088', '', '0', '', null);
INSERT INTO `member` VALUES ('64', '88880004', '徐麒麟', '0', '88880004', '412926195311120610', '15137788387', '6228100013222691', '1', '2016-05-15 01:15:59', '15137788387', '', '0', '', null);
INSERT INTO `member` VALUES ('65', '88880005', '浩冉', '0', '88880005', '412923198512122214', '18211813539', '62285678223488123', '1', '2016-08-24 08:49:35', '', '', '0', '', null);
INSERT INTO `member` VALUES ('66', '88880006', '刘桂欣', '1', '88880006', '412901195107152503', '15660025601', '6228480979518923771', '1', '2016-05-15 01:19:12', '15660025601', '', '0', '', null);
INSERT INTO `member` VALUES ('67', '88880007', '端木质良', '1', '88880007', '410402199508255648', '15890636101', '4033610016362807', '1', '2016-05-15 01:21:19', '15890636101', '', '0', '', null);
INSERT INTO `member` VALUES ('68', '88880008', '江玫莹', '1', '88880008', '412926195507090628', '15936437999', '623059186600265850', '1', '2016-05-15 01:24:09', '', '', '0', '', null);
INSERT INTO `member` VALUES ('69', '88880009', '徐献党', '0', '88880009', '41292619661112065*', '1111', '623059186300087315', '1', '2016-05-15 01:25:49', '', '', '0', '', null);
INSERT INTO `member` VALUES ('70', '88880010', '姚玉春', '1', '88880010', '412924197202284241', '15038716610', '6228480979072514172', '1', '2016-05-18 20:52:40', '', '', '0', '', null);
INSERT INTO `member` VALUES ('71', '88880011', '石俊堂', '0', '88880011', '412923195711211571', '13937744657', '622991186800782202', '1', '2016-07-30 10:58:08', '', '', '0', '', null);
INSERT INTO `member` VALUES ('72', '88880012', '王湘婷', '1', '88880012', '412923196505192214', '18338206888', '622991187101030390', '1', '2016-07-31 15:41:40', '', '', '0', '', null);
INSERT INTO `member` VALUES ('74', '88880013', '石成林', '0', '88880013', '412923196403182013', '13569297195', '6236682590000445402', '1', '2016-07-31 16:00:51', '', '', '0', '', null);
INSERT INTO `member` VALUES ('75', '88880014', '白亚利', '1', '88880014', '410402195611050028', '18738926069', '建行6217002440002355329', '1', '2016-08-07 10:35:08', '', '', '0', '', null);
INSERT INTO `member` VALUES ('77', '88880015', '赵永立', '0', '88880015', '412925195403264818', '13703413025', '信用社622991186301661210', '1', '2016-08-24 10:51:48', '', '', '0', '', null);
INSERT INTO `member` VALUES ('78', '88880016', '王新', '1', '88880016', '412923195804021572', '13837773840', '信用社622991186800782202', '1', '2016-09-26 08:57:41', '', '', '0', '', null);
INSERT INTO `member` VALUES ('79', '88880017', '张英丽', '1', '88880017', '41290115107062506', '13590209622', '农行6228480979518923771', '1', '2016-08-25 09:58:36', '', '', '0', '', null);
INSERT INTO `member` VALUES ('80', '88880018', '赵霖鸿', '0', '88880018', '4113242002050300017', '15670694140', '信用社623059186300950819', '1', '2016-08-30 10:12:56', '', '', '0', '', null);
INSERT INTO `member` VALUES ('81', '88880019', '孔二梅', '1', '88880019', '4104081972051620222', '15993477753', '信用社622991150201564502', '1', '2016-08-30 10:15:21', '', '', '0', '', null);
INSERT INTO `member` VALUES ('82', '88880020', '刘桂欣', '1', '88880020', '412901195107152503', '1563772301', '农行6228480979518923771', '1', '2016-08-30 10:05:07', '', '', '0', '', null);
INSERT INTO `member` VALUES ('83', '88880021', '孔相交', '0', '88880021', '410108197810220053', '18837595506', '6228482062288733817', '1', '2016-08-30 10:35:23', '', '', '0', '', null);
INSERT INTO `member` VALUES ('84', '88880022', '李平', '1', '88880022', '411303198205204285', '15893562511', '农行411303198205204285', '1', '2016-09-02 12:21:23', '', '', '0', '', null);
INSERT INTO `member` VALUES ('85', '88880023', '张惠敏', '1', '88880023', '410511197208185536', '15090280089', '信用社622991732102278301', '1', '2016-09-01 19:17:13', '', '', '0', '', null);
INSERT INTO `member` VALUES ('86', '88880024', '王丽娜', '1', '88880024', '411317197308054176', '13569909134', '信用社622991713101522522', '1', '2016-09-01 19:21:20', '', '', '0', '', null);
INSERT INTO `member` VALUES ('87', '88880025', '赵友', '0', '88880025', '411324198606210098', '18537793092', '信用社623059186301031155', '1', '2016-09-01 19:23:22', '', '', '0', '', null);
INSERT INTO `member` VALUES ('88', '88880026', '杨建伟', '0', '88880026', '411320197211233257', '13271362088', '信用社622991187101413448', '1', '2016-09-01 19:26:33', '', '', '0', '', null);
INSERT INTO `member` VALUES ('89', '88880027', '姚翠平', '1', '88880027', '411324196304111397', '15688118796', '农行6228480979428938976', '1', '2016-09-02 12:32:00', '', '', '0', '', null);
INSERT INTO `member` VALUES ('90', '88880028', '王景鸽', '1', '88880028', '410803196908195324', '13839556821', '建行6227002560170097038', '1', '2016-09-02 12:34:49', '', '', '0', '', null);
INSERT INTO `member` VALUES ('91', '88880029', '李伟', '0', '88880029', '411303198104302118', '15839987878', '建行', '1', '2016-09-02 12:36:14', '', '', '0', '', null);
INSERT INTO `member` VALUES ('92', '88880030', '赵春', '0', '88880030', '411324200002024817', '13137096118', '信用社86313002400030715', '1', '2016-09-02 20:28:43', '', '', '0', '', null);
INSERT INTO `member` VALUES ('93', '88880031', '邵军', '0', '88880031', '412925196904070936', '13837763806', '农行6228480979498444475', '1', '2016-09-03 09:19:56', '', '', '0', '', null);
INSERT INTO `member` VALUES ('94', '88880032', '盛朝', '0', '88880032', '412923196605265511', '13503875022', '农行6228480979515840879', '1', '2016-09-26 18:39:40', '', '', '0', '', null);
INSERT INTO `member` VALUES ('95', '88880033', '付小平', '1', '88880033', '41292319621005156x', '15838759389', '工行6212261714005551051', '1', '2016-10-18 11:35:50', '', '', '0', '', null);
INSERT INTO `member` VALUES ('96', '88880034', '王春霞', '1', '88880034', '411302198404262844', '15967966894', '邮政6210985131005435962', '1', '2016-10-10 09:39:26', '', '', '0', '', null);
INSERT INTO `member` VALUES ('97', '88880035', '张书友', '0', '88880035', '412926195604040059', '18638468969', '农行6228480798004772676', '1', '2016-10-10 10:38:26', '', '', '0', '', null);
INSERT INTO `member` VALUES ('98', '88880036', '王桂荣', '0', '88880036', '412925195007244831', '18317216925', '信用社622991786301162828', '1', '2016-10-11 10:03:21', '', '', '0', '', null);

-- ----------------------------
-- Table structure for member_level
-- ----------------------------
DROP TABLE IF EXISTS `member_level`;
CREATE TABLE `member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serialnumber` varchar(50) NOT NULL COMMENT '会员编号',
  `pserialnumber` varchar(50) DEFAULT NULL COMMENT '一级代理会员编号',
  `bord` tinyint(3) NOT NULL COMMENT '局：1：第一局，2：第二局，3：第三局',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_level
-- ----------------------------
INSERT INTO `member_level` VALUES ('28', '88880001', '88880000', '1');
INSERT INTO `member_level` VALUES ('29', '88880002', '88880000', '1');
INSERT INTO `member_level` VALUES ('30', '88880003', '88880000', '1');
INSERT INTO `member_level` VALUES ('31', '88880004', '88880001', '1');
INSERT INTO `member_level` VALUES ('32', '88880005', '88880001', '1');
INSERT INTO `member_level` VALUES ('33', '88880006', '88880001', '1');
INSERT INTO `member_level` VALUES ('34', '88880007', '88880003', '1');
INSERT INTO `member_level` VALUES ('35', '88880008', '88880004', '1');
INSERT INTO `member_level` VALUES ('36', '88880009', '88880004', '1');
INSERT INTO `member_level` VALUES ('37', '88880010', '88880006', '1');
INSERT INTO `member_level` VALUES ('38', '88880011', '88880002', '1');
INSERT INTO `member_level` VALUES ('39', '88880012', '88880002', '1');
INSERT INTO `member_level` VALUES ('41', '88880013', '88880011', '1');
INSERT INTO `member_level` VALUES ('42', '88880014', '88880003', '1');
INSERT INTO `member_level` VALUES ('44', '88880015', '88880002', '1');
INSERT INTO `member_level` VALUES ('45', '88880016', '88880005', '1');
INSERT INTO `member_level` VALUES ('46', '88880017', '88880005', '1');
INSERT INTO `member_level` VALUES ('47', '88880018', '88880016', '1');
INSERT INTO `member_level` VALUES ('48', '88880019', '88880018', '1');
INSERT INTO `member_level` VALUES ('49', '88880020', '88880012', '1');
INSERT INTO `member_level` VALUES ('50', '88880021', '88880019', '1');
INSERT INTO `member_level` VALUES ('51', '88880022', '88880007', '1');
INSERT INTO `member_level` VALUES ('52', '88880023', '88880007', '1');
INSERT INTO `member_level` VALUES ('53', '88880024', '88880009', '1');
INSERT INTO `member_level` VALUES ('54', '88880025', '88880015', '1');
INSERT INTO `member_level` VALUES ('55', '88880026', '88880023', '1');
INSERT INTO `member_level` VALUES ('56', '88880027', '88880024', '1');
INSERT INTO `member_level` VALUES ('57', '88880028', '88880023', '1');
INSERT INTO `member_level` VALUES ('58', '88880029', '88880022', '1');
INSERT INTO `member_level` VALUES ('59', '88880030', '88880015', '1');
INSERT INTO `member_level` VALUES ('60', '88880031', '88880015', '1');
INSERT INTO `member_level` VALUES ('61', '88880032', '88880011', '1');
INSERT INTO `member_level` VALUES ('62', '88880033', '88880032', '1');
INSERT INTO `member_level` VALUES ('63', '88880034', '88880022', '1');
INSERT INTO `member_level` VALUES ('64', '88880035', '88880020', '1');
INSERT INTO `member_level` VALUES ('65', '88880036', '88880015', '1');

-- ----------------------------
-- Table structure for old_reward
-- ----------------------------
DROP TABLE IF EXISTS `old_reward`;
CREATE TABLE `old_reward` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `memberid` bigint(20) NOT NULL COMMENT '会员主键',
  `rewardmoney` int(11) NOT NULL COMMENT '奖励金额',
  `rewardtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '奖励时间',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `createuser` bigint(20) DEFAULT NULL COMMENT '创建人',
  `type` tinyint(3) NOT NULL COMMENT '类型，0：奖励，1：额外奖励',
  `status` tinyint(3) NOT NULL COMMENT '是否发放，0：否，1：是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励历史表';

-- ----------------------------
-- Records of old_reward
-- ----------------------------

-- ----------------------------
-- Table structure for public_row
-- ----------------------------
DROP TABLE IF EXISTS `public_row`;
CREATE TABLE `public_row` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serialnumber` varchar(50) NOT NULL COMMENT '会员编号',
  `pserialnumber` varchar(50) DEFAULT NULL COMMENT '一级代理会员编号',
  `bord` tinyint(3) NOT NULL COMMENT '局：1：第一局，2：第二局，3：第三局',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='公排';

-- ----------------------------
-- Records of public_row
-- ----------------------------
INSERT INTO `public_row` VALUES ('28', '88880001', '88880000', '1');
INSERT INTO `public_row` VALUES ('29', '88880002', '88880000', '1');
INSERT INTO `public_row` VALUES ('30', '88880003', '88880000', '1');
INSERT INTO `public_row` VALUES ('31', '88880004', '88880001', '1');
INSERT INTO `public_row` VALUES ('32', '88880005', '88880001', '1');
INSERT INTO `public_row` VALUES ('33', '88880006', '88880001', '1');
INSERT INTO `public_row` VALUES ('34', '88880007', '88880003', '1');
INSERT INTO `public_row` VALUES ('35', '88880008', '88880004', '1');
INSERT INTO `public_row` VALUES ('36', '88880009', '88880004', '1');
INSERT INTO `public_row` VALUES ('37', '88880010', '88880006', '1');
INSERT INTO `public_row` VALUES ('38', '88880011', '88880002', '1');
INSERT INTO `public_row` VALUES ('39', '88880012', '88880002', '1');
INSERT INTO `public_row` VALUES ('41', '88880013', '88880011', '1');
INSERT INTO `public_row` VALUES ('42', '88880014', '88880003', '1');
INSERT INTO `public_row` VALUES ('44', '88880015', '88880002', '1');
INSERT INTO `public_row` VALUES ('45', '88880016', '88880005', '1');
INSERT INTO `public_row` VALUES ('46', '88880017', '88880005', '1');
INSERT INTO `public_row` VALUES ('47', '88880018', '88880016', '1');
INSERT INTO `public_row` VALUES ('48', '88880019', '88880018', '1');
INSERT INTO `public_row` VALUES ('49', '88880020', '88880012', '1');
INSERT INTO `public_row` VALUES ('50', '88880021', '88880019', '1');
INSERT INTO `public_row` VALUES ('51', '88880022', '88880007', '1');
INSERT INTO `public_row` VALUES ('52', '88880023', '88880007', '1');
INSERT INTO `public_row` VALUES ('53', '88880024', '88880009', '1');
INSERT INTO `public_row` VALUES ('54', '88880025', '88880015', '1');
INSERT INTO `public_row` VALUES ('55', '88880026', '88880023', '1');
INSERT INTO `public_row` VALUES ('56', '88880027', '88880024', '1');
INSERT INTO `public_row` VALUES ('57', '88880028', '88880023', '1');
INSERT INTO `public_row` VALUES ('58', '88880029', '88880022', '1');
INSERT INTO `public_row` VALUES ('59', '88880030', '88880015', '1');
INSERT INTO `public_row` VALUES ('60', '88880031', '88880015', '1');
INSERT INTO `public_row` VALUES ('61', '88880032', '88880011', '1');
INSERT INTO `public_row` VALUES ('62', '88880033', '88880032', '1');
INSERT INTO `public_row` VALUES ('63', '88880034', '88880022', '1');
INSERT INTO `public_row` VALUES ('64', '88880035', '88880020', '1');
INSERT INTO `public_row` VALUES ('65', '88880036', '88880015', '1');

-- ----------------------------
-- Table structure for reward
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `memberserialnumber` varchar(50) NOT NULL COMMENT '会员编号',
  `rewardmoney` int(11) NOT NULL COMMENT '奖励金额',
  `rewardtime` date NOT NULL DEFAULT '1999-05-10' COMMENT '奖励时间',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `createuser` bigint(20) DEFAULT NULL COMMENT '创建人',
  `type` tinyint(3) NOT NULL COMMENT '类型，0：奖励，1：额外奖励',
  `status` tinyint(3) NOT NULL COMMENT '是否发放，0：否，1：是',
  `level` tinyint(3) NOT NULL COMMENT '0:额外奖励，1：一级收入，2：二级收入，3：三级收入',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COMMENT='奖励表';

-- ----------------------------
-- Records of reward
-- ----------------------------
INSERT INTO `reward` VALUES ('115', '88880000', '280', '2016-05-15', '2016-05-15 01:10:38', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('116', '88880000', '50', '2016-05-15', '2016-05-15 01:10:38', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('117', '88880000', '280', '2016-05-15', '2016-05-15 01:12:14', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('118', '88880000', '50', '2016-05-15', '2016-05-15 01:12:14', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('119', '88880000', '280', '2016-05-15', '2016-05-15 01:13:47', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('120', '88880000', '50', '2016-05-15', '2016-05-15 01:13:47', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('121', '88880001', '280', '2016-05-15', '2016-05-15 01:15:59', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('122', '88880001', '50', '2016-05-15', '2016-05-15 01:15:59', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('123', '88880000', '150', '2016-05-15', '2016-05-15 01:15:59', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('124', '88880001', '280', '2016-05-15', '2016-05-15 01:17:20', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('125', '88880001', '50', '2016-05-15', '2016-05-15 01:17:20', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('126', '88880000', '150', '2016-05-15', '2016-05-15 01:17:20', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('127', '88880001', '280', '2016-05-15', '2016-05-15 01:19:13', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('128', '88880001', '50', '2016-05-15', '2016-05-15 01:19:13', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('129', '88880000', '150', '2016-05-15', '2016-05-15 01:19:13', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('130', '88880003', '280', '2016-05-15', '2016-05-15 01:21:20', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('131', '88880003', '50', '2016-05-15', '2016-05-15 01:21:20', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('132', '88880000', '150', '2016-05-15', '2016-05-15 01:21:20', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('133', '88880004', '280', '2016-05-15', '2016-05-15 01:24:10', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('134', '88880004', '50', '2016-05-15', '2016-05-15 01:24:10', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('135', '88880001', '150', '2016-05-15', '2016-05-15 01:24:10', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('136', '88880000', '200', '2016-05-15', '2016-05-15 01:24:10', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('137', '88880004', '280', '2016-05-15', '2016-05-15 01:25:49', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('138', '88880004', '50', '2016-05-15', '2016-05-15 01:25:49', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('139', '88880001', '150', '2016-05-15', '2016-05-15 01:25:49', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('140', '88880000', '200', '2016-05-15', '2016-05-15 01:25:49', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('141', '88880006', '280', '2016-05-18', '2016-05-18 20:52:40', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('142', '88880006', '50', '2016-05-18', '2016-05-18 20:52:40', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('143', '88880001', '150', '2016-05-18', '2016-05-18 20:52:40', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('144', '88880000', '200', '2016-05-18', '2016-05-18 20:52:40', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('145', '88880002', '280', '2016-05-25', '2016-05-25 08:08:26', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('146', '88880002', '50', '2016-05-25', '2016-05-25 08:08:26', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('147', '88880000', '150', '2016-05-25', '2016-05-25 08:08:26', '1', '0', '1', '2');
INSERT INTO `reward` VALUES ('148', '88880002', '280', '2016-07-31', '2016-07-31 15:41:41', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('149', '88880002', '50', '2016-07-31', '2016-07-31 15:41:41', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('150', '88880000', '150', '2016-07-31', '2016-07-31 15:41:41', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('151', '88880002', '280', '2016-07-31', '2016-07-31 15:41:41', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('152', '88880002', '50', '2016-07-31', '2016-07-31 15:41:41', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('153', '88880000', '150', '2016-07-31', '2016-07-31 15:41:41', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('154', '88880011', '280', '2016-07-31', '2016-07-31 16:00:51', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('155', '88880011', '50', '2016-07-31', '2016-07-31 16:00:51', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('156', '88880002', '150', '2016-07-31', '2016-07-31 16:00:51', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('157', '88880000', '200', '2016-07-31', '2016-07-31 16:00:51', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('158', '88880003', '280', '2016-08-07', '2016-08-07 10:35:09', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('159', '88880003', '50', '2016-08-07', '2016-08-07 10:35:09', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('160', '88880000', '150', '2016-08-07', '2016-08-07 10:35:09', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('161', '88880002', '280', '2016-08-24', '2016-08-24 09:28:32', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('162', '88880002', '50', '2016-08-24', '2016-08-24 09:28:32', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('163', '88880002', '280', '2016-08-24', '2016-08-24 09:28:33', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('164', '88880002', '50', '2016-08-24', '2016-08-24 09:28:33', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('165', '88880000', '150', '2016-08-24', '2016-08-24 09:28:33', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('166', '88880000', '150', '2016-08-24', '2016-08-24 09:28:33', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('167', '88880005', '280', '2016-08-25', '2016-08-25 09:50:36', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('168', '88880005', '50', '2016-08-25', '2016-08-25 09:50:36', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('169', '88880001', '150', '2016-08-25', '2016-08-25 09:50:36', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('170', '88880000', '200', '2016-08-25', '2016-08-25 09:50:36', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('171', '88880005', '280', '2016-08-25', '2016-08-25 09:58:36', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('172', '88880005', '50', '2016-08-25', '2016-08-25 09:58:36', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('173', '88880001', '150', '2016-08-25', '2016-08-25 09:58:36', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('174', '88880000', '200', '2016-08-25', '2016-08-25 09:58:36', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('175', '88880016', '280', '2016-08-25', '2016-08-25 10:07:47', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('176', '88880016', '50', '2016-08-25', '2016-08-25 10:07:47', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('177', '88880005', '150', '2016-08-25', '2016-08-25 10:07:47', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('178', '88880001', '200', '2016-08-25', '2016-08-25 10:07:47', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('179', '88880018', '280', '2016-08-30', '2016-08-30 10:02:56', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('180', '88880018', '50', '2016-08-30', '2016-08-30 10:02:56', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('181', '88880016', '150', '2016-08-30', '2016-08-30 10:02:56', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('182', '88880005', '200', '2016-08-30', '2016-08-30 10:02:56', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('183', '88880012', '280', '2016-08-30', '2016-08-30 10:05:07', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('184', '88880012', '50', '2016-08-30', '2016-08-30 10:05:07', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('185', '88880002', '150', '2016-08-30', '2016-08-30 10:05:08', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('186', '88880000', '200', '2016-08-30', '2016-08-30 10:05:08', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('187', '88880019', '280', '2016-08-30', '2016-08-30 10:35:23', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('188', '88880019', '50', '2016-08-30', '2016-08-30 10:35:23', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('189', '88880018', '150', '2016-08-30', '2016-08-30 10:35:23', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('190', '88880016', '200', '2016-08-30', '2016-08-30 10:35:23', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('191', '88880007', '280', '2016-08-30', '2016-08-30 10:41:23', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('192', '88880007', '50', '2016-08-30', '2016-08-30 10:41:23', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('193', '88880003', '150', '2016-08-30', '2016-08-30 10:41:23', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('194', '88880000', '200', '2016-08-30', '2016-08-30 10:41:23', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('195', '88880007', '280', '2016-09-01', '2016-09-01 19:17:13', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('196', '88880007', '50', '2016-09-01', '2016-09-01 19:17:13', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('197', '88880003', '150', '2016-09-01', '2016-09-01 19:17:13', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('198', '88880000', '200', '2016-09-01', '2016-09-01 19:17:13', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('199', '88880009', '280', '2016-09-01', '2016-09-01 19:21:20', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('200', '88880009', '50', '2016-09-01', '2016-09-01 19:21:20', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('201', '88880004', '150', '2016-09-01', '2016-09-01 19:21:20', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('202', '88880001', '200', '2016-09-01', '2016-09-01 19:21:20', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('203', '88880015', '280', '2016-09-01', '2016-09-01 19:23:22', '1', '0', '1', '1');
INSERT INTO `reward` VALUES ('204', '88880015', '50', '2016-09-01', '2016-09-01 19:23:22', '1', '1', '1', '0');
INSERT INTO `reward` VALUES ('205', '88880002', '150', '2016-09-01', '2016-09-01 19:23:22', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('206', '88880000', '200', '2016-09-01', '2016-09-01 19:23:22', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('207', '88880023', '280', '2016-09-01', '2016-09-01 19:26:34', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('208', '88880023', '50', '2016-09-01', '2016-09-01 19:26:34', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('209', '88880007', '150', '2016-09-01', '2016-09-01 19:26:34', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('210', '88880003', '200', '2016-09-01', '2016-09-01 19:26:34', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('211', '88880024', '280', '2016-09-02', '2016-09-02 12:32:00', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('212', '88880024', '50', '2016-09-02', '2016-09-02 12:32:00', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('213', '88880009', '150', '2016-09-02', '2016-09-02 12:32:00', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('214', '88880004', '200', '2016-09-02', '2016-09-02 12:32:00', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('215', '88880023', '280', '2016-09-02', '2016-09-02 12:34:50', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('216', '88880023', '50', '2016-09-02', '2016-09-02 12:34:50', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('217', '88880007', '150', '2016-09-02', '2016-09-02 12:34:50', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('218', '88880003', '200', '2016-09-02', '2016-09-02 12:34:50', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('219', '88880022', '280', '2016-09-02', '2016-09-02 12:36:14', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('220', '88880022', '50', '2016-09-02', '2016-09-02 12:36:14', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('221', '88880007', '150', '2016-09-02', '2016-09-02 12:36:14', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('222', '88880003', '200', '2016-09-02', '2016-09-02 12:36:14', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('223', '88880015', '280', '2016-09-02', '2016-09-02 20:28:44', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('224', '88880015', '50', '2016-09-02', '2016-09-02 20:28:44', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('225', '88880002', '150', '2016-09-02', '2016-09-02 20:28:44', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('226', '88880000', '200', '2016-09-02', '2016-09-02 20:28:44', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('227', '88880015', '280', '2016-09-03', '2016-09-03 09:19:56', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('228', '88880015', '50', '2016-09-03', '2016-09-03 09:19:56', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('229', '88880002', '150', '2016-09-03', '2016-09-03 09:19:56', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('230', '88880000', '200', '2016-09-03', '2016-09-03 09:19:56', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('231', '88880011', '300', '2016-09-26', '2016-09-26 18:39:41', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('232', '88880002', '200', '2016-09-26', '2016-09-26 18:39:41', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('233', '88880000', '150', '2016-09-26', '2016-09-26 18:39:41', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('234', '88880011', '30', '2016-09-26', '2016-09-26 18:39:41', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('235', '88880032', '300', '2016-10-04', '2016-10-04 09:30:03', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('236', '88880011', '200', '2016-10-04', '2016-10-04 09:30:03', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('237', '88880002', '150', '2016-10-04', '2016-10-04 09:30:03', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('238', '88880000', '100', '2016-10-04', '2016-10-04 09:30:03', '1', '0', '0', '4');
INSERT INTO `reward` VALUES ('239', '88880032', '30', '2016-10-04', '2016-10-04 09:30:03', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('240', '88880022', '300', '2016-10-10', '2016-10-10 09:39:27', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('241', '88880007', '150', '2016-10-10', '2016-10-10 09:39:27', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('242', '88880003', '120', '2016-10-10', '2016-10-10 09:39:27', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('243', '88880000', '80', '2016-10-10', '2016-10-10 09:39:27', '1', '0', '0', '4');
INSERT INTO `reward` VALUES ('244', '88880022', '30', '2016-10-10', '2016-10-10 09:39:27', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('245', '88880020', '300', '2016-10-10', '2016-10-10 10:38:27', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('246', '88880012', '150', '2016-10-10', '2016-10-10 10:38:27', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('247', '88880002', '120', '2016-10-10', '2016-10-10 10:38:27', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('248', '88880000', '80', '2016-10-10', '2016-10-10 10:38:27', '1', '0', '0', '4');
INSERT INTO `reward` VALUES ('249', '88880020', '30', '2016-10-10', '2016-10-10 10:38:27', '1', '1', '0', '0');
INSERT INTO `reward` VALUES ('250', '88880015', '300', '2016-10-11', '2016-10-11 10:03:22', '1', '0', '0', '1');
INSERT INTO `reward` VALUES ('251', '88880002', '150', '2016-10-11', '2016-10-11 10:03:22', '1', '0', '0', '2');
INSERT INTO `reward` VALUES ('252', '88880000', '120', '2016-10-11', '2016-10-11 10:03:22', '1', '0', '0', '3');
INSERT INTO `reward` VALUES ('253', '88880015', '30', '2016-10-11', '2016-10-11 10:03:22', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否被禁用：0:启用，1:禁用',
  `ifmanager` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为管理员，0：否，1：是',
  `memberid` bigint(20) DEFAULT NULL COMMENT '用户对应的员工主键',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'CF5AD70DDD35E0A722902160FBEADFF3', '0', '1', null, '2016-05-15 11:54:04');
INSERT INTO `user` VALUES ('2', 'stqsht', 'C1784A66E284333BA46984F2096BE52D', '0', '1', null, '2016-05-01 11:19:17');
INSERT INTO `user` VALUES ('58', '88880000', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '60', '2016-07-30 11:29:41');
INSERT INTO `user` VALUES ('59', '88880001', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '61', '2016-05-15 01:10:38');
INSERT INTO `user` VALUES ('60', '88880002', '827CCB0EEA8A706C4C34A16891F84E7B', '0', '0', '62', '2016-07-30 10:42:26');
INSERT INTO `user` VALUES ('61', '88880003', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '63', '2016-05-15 01:13:47');
INSERT INTO `user` VALUES ('62', '88880004', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '64', '2016-05-15 01:15:59');
INSERT INTO `user` VALUES ('63', '88880005', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '65', '2016-05-15 01:17:20');
INSERT INTO `user` VALUES ('64', '88880006', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '66', '2016-05-15 01:19:13');
INSERT INTO `user` VALUES ('65', '88880007', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '67', '2016-05-15 01:21:20');
INSERT INTO `user` VALUES ('66', '88880008', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '68', '2016-05-15 01:24:10');
INSERT INTO `user` VALUES ('67', '88880009', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '69', '2016-05-15 01:25:49');
INSERT INTO `user` VALUES ('68', '88880010', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '70', '2016-05-18 20:52:40');
INSERT INTO `user` VALUES ('69', '88880011', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '71', '2016-05-25 08:08:26');
INSERT INTO `user` VALUES ('70', '88880012', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '72', '2016-07-31 15:41:40');
INSERT INTO `user` VALUES ('72', '88880013', '827CCB0EEA8A706C4C34A16891F84E7B', '0', '0', '74', '2016-07-31 17:56:27');
INSERT INTO `user` VALUES ('73', '88880014', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '75', '2016-08-07 10:35:09');
INSERT INTO `user` VALUES ('75', '88880015', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '77', '2016-08-24 09:28:33');
INSERT INTO `user` VALUES ('76', '88880016', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '78', '2016-08-25 09:50:36');
INSERT INTO `user` VALUES ('77', '88880017', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '79', '2016-08-25 09:58:36');
INSERT INTO `user` VALUES ('78', '88880018', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '80', '2016-08-25 10:07:47');
INSERT INTO `user` VALUES ('79', '88880019', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '81', '2016-08-30 10:02:56');
INSERT INTO `user` VALUES ('80', '88880020', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '82', '2016-08-30 10:05:07');
INSERT INTO `user` VALUES ('81', '88880021', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '83', '2016-08-30 10:35:23');
INSERT INTO `user` VALUES ('82', '88880022', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '84', '2016-08-30 10:41:23');
INSERT INTO `user` VALUES ('83', '88880023', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '85', '2016-09-01 19:17:13');
INSERT INTO `user` VALUES ('84', '88880024', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '86', '2016-09-01 19:21:20');
INSERT INTO `user` VALUES ('85', '88880025', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '87', '2016-09-01 19:23:22');
INSERT INTO `user` VALUES ('86', '88880026', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '88', '2016-09-01 19:26:34');
INSERT INTO `user` VALUES ('87', '88880027', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '89', '2016-09-02 12:32:00');
INSERT INTO `user` VALUES ('88', '88880028', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '90', '2016-09-02 12:34:50');
INSERT INTO `user` VALUES ('89', '88880029', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '91', '2016-09-02 12:36:14');
INSERT INTO `user` VALUES ('90', '88880030', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '92', '2016-09-02 20:28:44');
INSERT INTO `user` VALUES ('91', '88880031', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '93', '2016-09-03 09:19:56');
INSERT INTO `user` VALUES ('92', '88880032', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '94', '2016-09-26 18:39:41');
INSERT INTO `user` VALUES ('93', '88880033', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '95', '2016-10-04 09:30:03');
INSERT INTO `user` VALUES ('94', '88880034', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '96', '2016-10-10 09:39:27');
INSERT INTO `user` VALUES ('95', '88880035', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '97', '2016-10-10 10:38:27');
INSERT INTO `user` VALUES ('96', '88880036', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '0', '98', '2016-10-11 10:03:22');
