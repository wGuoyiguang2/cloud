/*
Navicat MySQL Data Transfer

Source Server         : cloud(开发)
Source Server Version : 50728
Source Host           : 10.0.254.110:3306
Source Database       : gs_cloud

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-01-17 16:35:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gs_business
-- ----------------------------
DROP TABLE IF EXISTS `gs_business`;
CREATE TABLE `gs_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_code` varchar(20) DEFAULT NULL COMMENT '业务code',
  `business_name` varchar(30) DEFAULT NULL COMMENT '业务名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `extr1` varchar(20) DEFAULT NULL COMMENT '扩展字段1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_business
-- ----------------------------

-- ----------------------------
-- Table structure for gs_open_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_open_user`;
CREATE TABLE `gs_open_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `open_user_id` varchar(30) DEFAULT NULL COMMENT '对外的用户id',
  `ecf_id` varchar(30) DEFAULT NULL COMMENT '业务方系统内用户id',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `pwd` varchar(20) DEFAULT NULL COMMENT '登录密码',
  `sex` varchar(5) DEFAULT NULL COMMENT '用户性别（1男、2女）',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `card_type` varchar(5) DEFAULT NULL COMMENT '证件类型（0：身份证,1：户口薄,2：护照,3：军官证,4：士兵证,5：港澳居民来往内地通行证,6：台湾同胞来往内地通行证,7：临时身份证,8：外国人居留证, 9：警官证,10：其他证件）',
  `card_num` varchar(30) DEFAULT NULL COMMENT '证件号码',
  `service_code` varchar(30) DEFAULT NULL COMMENT '业务方code',
  `head_photo` varchar(100) DEFAULT NULL COMMENT '用户头像地址',
  `email` varchar(30) DEFAULT NULL COMMENT '用户邮箱',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `wx_open_id` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `pay_pwd` varchar(20) DEFAULT NULL COMMENT '支付密码',
  `register_channel` varchar(30) DEFAULT NULL COMMENT '注册渠道',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_open_user
-- ----------------------------
INSERT INTO `gs_open_user` VALUES ('8', '20200115102755425', null, '13716765761', 'MTIzNDU2', null, null, null, null, null, null, null, null, null, '', null, '2020-01-14 20:27:55', '2020-01-15 20:49:29');
INSERT INTO `gs_open_user` VALUES ('9', '20200116110914046', '48844162449375232', '15101133403', 'MTIzNDU2', null, null, null, null, null, null, null, null, null, 'MTIzNDU2', null, '2020-01-15 21:09:14', '2020-01-15 23:59:50');

-- ----------------------------
-- Table structure for gs_product
-- ----------------------------
DROP TABLE IF EXISTS `gs_product`;
CREATE TABLE `gs_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `product_code` varchar(30) DEFAULT NULL COMMENT '产品code',
  `product_name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `product_type` varchar(20) DEFAULT NULL COMMENT '产品类型',
  `issue` int(11) DEFAULT NULL COMMENT '期数',
  `repay_type` varchar(5) DEFAULT NULL COMMENT '还款类型：1等额本息；2等额本金；3利随本清；4到期还本按月结息；5到期还本按季结息；6按计划',
  `month_rent_rate` decimal(20,4) DEFAULT '0.0000' COMMENT '月租息率',
  `month_charge_rate` decimal(20,4) DEFAULT '0.0000' COMMENT '月手续费率',
  `audit_fee_rate` decimal(20,4) DEFAULT '0.0000' COMMENT '审核费率',
  `consultation_fee_rate` decimal(20,4) DEFAULT '0.0000' COMMENT '咨询费率',
  `service_fee` decimal(20,4) DEFAULT '0.0000' COMMENT '服务费',
  `purchase_fee` decimal(20,4) DEFAULT '0.0000' COMMENT '留购价款',
  `other_fee` decimal(20,4) DEFAULT '0.0000' COMMENT '其他费用',
  `bond_amount` decimal(20,4) DEFAULT '0.0000' COMMENT '保证金金额',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_product
-- ----------------------------
INSERT INTO `gs_product` VALUES ('1', '10001', 'GPS类-12期-A', '车贷', '12', '1', '0.0090', '0.0113', '0.0010', '0.0059', '200.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:53:18');
INSERT INTO `gs_product` VALUES ('2', '10002', 'GPS类-12期-B', '车贷', '12', '1', '0.0090', '0.0158', '0.0010', '0.0059', '400.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:49:30');
INSERT INTO `gs_product` VALUES ('3', '10003', 'GPS类-12期-C', '车贷', '12', '1', '0.0090', '0.0202', '0.0010', '0.0059', '600.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:50:22');
INSERT INTO `gs_product` VALUES ('4', '10004', 'GPS类-24期-A', '车贷', '24', '1', '0.0090', '0.0093', '0.0010', '0.0039', '200.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:50:52');
INSERT INTO `gs_product` VALUES ('5', '10005', 'GPS类-24期-B', '车贷', '24', '1', '0.0090', '0.0138', '0.0010', '0.0039', '400.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:51:13');
INSERT INTO `gs_product` VALUES ('6', '10006', 'GPS类-24期-C', '车贷', '24', '1', '0.0090', '0.0182', '0.0010', '0.0039', '600.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 16:51:40');
INSERT INTO `gs_product` VALUES ('7', '10007', 'GPS类-3期-A', '车贷', '3', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:37');
INSERT INTO `gs_product` VALUES ('8', '10008', 'GPS类-3期-B', '车贷', '3', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:38');
INSERT INTO `gs_product` VALUES ('9', '10009', 'GPS类-3期-C', '车贷', '3', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:39');
INSERT INTO `gs_product` VALUES ('10', '10010', 'GPS类-6期-A', '车贷', '6', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:40');
INSERT INTO `gs_product` VALUES ('11', '10011', 'GPS类-6期-B', '车贷', '6', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:41');
INSERT INTO `gs_product` VALUES ('12', '10012', 'GPS类-6期-C', '车贷', '6', '4', '0.0240', '0.0000', '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', null, '2020-01-14 15:02:43');

-- ----------------------------
-- Table structure for gs_service
-- ----------------------------
DROP TABLE IF EXISTS `gs_service`;
CREATE TABLE `gs_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_code` varchar(20) DEFAULT NULL COMMENT '业务方code',
  `service_name` varchar(30) DEFAULT NULL COMMENT '业务方名称',
  `status` varchar(5) DEFAULT NULL COMMENT '渠道状态（0无效，1有效）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `extr1` varchar(20) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_service
-- ----------------------------
INSERT INTO `gs_service` VALUES ('1', 'service_zblh001', '中博联合', '1', '2020-01-10 09:39:00', null);

-- ----------------------------
-- Table structure for gs_service_business
-- ----------------------------
DROP TABLE IF EXISTS `gs_service_business`;
CREATE TABLE `gs_service_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_code` varchar(20) DEFAULT NULL COMMENT '业务方code',
  `business_code` varchar(20) DEFAULT NULL COMMENT '业务code',
  `status` varchar(5) DEFAULT '1' COMMENT '是否有效：0关闭；1开启',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `extr1` varchar(20) DEFAULT NULL COMMENT '扩展字段1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_service_business
-- ----------------------------
INSERT INTO `gs_service_business` VALUES ('1', 'service_zblh001', 'service_user001', '1', '2020-01-10 09:40:00', null, null);
INSERT INTO `gs_service_business` VALUES ('2', 'service_zblh001', 'service_order001', '1', '2020-01-10 09:41:00', null, null);

-- ----------------------------
-- Table structure for gs_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_user`;
CREATE TABLE `gs_user` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(32) NOT NULL COMMENT '系统内用户id',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `sex` varchar(5) DEFAULT NULL COMMENT '用户性别（1男、2女）',
  `card_type` varchar(5) DEFAULT NULL COMMENT '证件类型（0：身份证,1：户口薄,2：护照,3：军官证,4：士兵证,5：港澳居民来往内地通行证,6：台湾同胞来往内地通行证,7：临时身份证,8：外国人居留证, 9：警官证,10：其他证件）',
  `card_num` varchar(30) DEFAULT NULL COMMENT '证件号码',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `service_code` varchar(20) DEFAULT NULL COMMENT '业务方code',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user
-- ----------------------------
INSERT INTO `gs_user` VALUES ('2', '48844149967126528', '罗智丹', '1', '0', '320602197603195014', '18811146889', 'service_zblh001', '2020-01-13 21:04:52', null, '0');
INSERT INTO `gs_user` VALUES ('3', '48890542602670080', '李毅凡', '1', '0', '340522198707224391', '13988885567', 'service_zblh001', '2020-01-14 00:09:13', null, '0');
INSERT INTO `gs_user` VALUES ('4', '48891525667835904', '刘业青', '1', '0', '370827198908121755', '13988885559', 'service_zblh001', '2020-01-14 00:13:07', null, '0');

-- ----------------------------
-- Table structure for gs_user_order
-- ----------------------------
DROP TABLE IF EXISTS `gs_user_order`;
CREATE TABLE `gs_user_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(30) DEFAULT NULL COMMENT '系统内用户id',
  `ecf_id` varchar(30) DEFAULT NULL COMMENT '系统内业务专用用户id',
  `service_code` varchar(30) DEFAULT NULL COMMENT '业务方code',
  `product_name` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `product_code` varchar(30) DEFAULT NULL COMMENT '产品code',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `user_name` varchar(30) DEFAULT NULL COMMENT '借款人姓名',
  `card_num` varchar(20) DEFAULT NULL COMMENT '借款人证件号',
  `phone` varchar(20) DEFAULT NULL COMMENT '借款人手机号',
  `contract_no` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `apply_amount` decimal(20,2) DEFAULT '0.00' COMMENT '借款金额',
  `apply_time` datetime DEFAULT NULL COMMENT '借款时间',
  `loan_amount` decimal(20,2) DEFAULT '0.00' COMMENT '放款金额',
  `loan_time` datetime DEFAULT NULL COMMENT '放款时间',
  `start_date` varchar(30) DEFAULT NULL COMMENT '起息日期',
  `end_date` varchar(30) DEFAULT NULL COMMENT '到期日期',
  `issue` int(11) DEFAULT NULL COMMENT '期限',
  `rate` decimal(20,2) DEFAULT '0.00' COMMENT '利率',
  `status` varchar(5) DEFAULT NULL COMMENT '订单状态：1未结清；2已结清',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user_order
-- ----------------------------
INSERT INTO `gs_user_order` VALUES ('8', '48844149967126528', '', 'service_zblh001', 'GPS类-12期-B', '10002', 'CONT19050811221410981', '陈国强-国商金融-190508001', '罗智丹', '320602197603195014', '18811146889', 'MFT1905080001', '45000.00', '2019-05-07 22:26:59', '45000.00', '2019-05-15 11:00:00', '2019-05-08', '2020-05-07', '12', '0.00', '1', null, null);
INSERT INTO `gs_user_order` VALUES ('9', '48844149967126528', '', 'service_zblh001', 'GPS类-24期-C', '10006', 'CONT190508112214109866', '陈国强-国商金融-190508001', '罗智丹', '320602197603195014', '18811146889', 'MFT1905080001', '45000.00', '2019-05-07 22:26:59', '45000.00', '2019-05-15 11:00:00', '2019-05-08', '2020-05-07', '24', '0.00', '1', null, null);
INSERT INTO `gs_user_order` VALUES ('10', '48844149967126528', '', 'service_zblh001', 'GPS类-24期-C', '10006', 'CONT190508112214109869', '李四-国商金融-190508001', '罗智丹', '320602197603195014', '18811146889', 'MFT1905080023', '45000.00', '2019-05-07 22:26:59', '45000.00', '2019-05-15 11:00:00', '2019-05-08', '2020-05-07', '24', '0.00', '1', null, null);

-- ----------------------------
-- Table structure for gs_user_order_plan
-- ----------------------------
DROP TABLE IF EXISTS `gs_user_order_plan`;
CREATE TABLE `gs_user_order_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` varchar(30) DEFAULT NULL COMMENT '订单号',
  `user_id` varchar(30) DEFAULT NULL COMMENT '系统内用户id',
  `ecf_id` varchar(30) DEFAULT NULL COMMENT '系统内业务用户id',
  `service_code` varchar(30) DEFAULT NULL COMMENT '业务方code',
  `contract_no` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `loan_amount` decimal(20,2) DEFAULT NULL,
  `issue_amount` decimal(20,2) DEFAULT '0.00' COMMENT '每期本金',
  `month_rent` decimal(20,2) DEFAULT '0.00' COMMENT '租息(含税）',
  `consultation_fee` decimal(20,2) DEFAULT '0.00' COMMENT '咨询费',
  `audit_fee` decimal(20,2) DEFAULT '0.00' COMMENT '审核费',
  `service_fee` decimal(20,2) DEFAULT '0.00' COMMENT '服务费',
  `one_issue_amount` decimal(20,2) DEFAULT '0.00' COMMENT '每期应还金额',
  `order_status` varchar(5) DEFAULT NULL COMMENT '订单状态：1未结清；2已结清',
  `issue` varchar(5) DEFAULT NULL COMMENT '当前期数',
  `repay_date` varchar(30) DEFAULT NULL COMMENT '应还日期',
  `refund_date` datetime DEFAULT NULL COMMENT '实际还款日',
  `refund_money` decimal(20,2) DEFAULT '0.00' COMMENT '实际还款金额',
  `waiver_money` decimal(20,2) DEFAULT '0.00' COMMENT '减免金额',
  `defer_money` decimal(20,2) DEFAULT '0.00' COMMENT '展期费',
  `defer_time` datetime DEFAULT NULL COMMENT '展期实际',
  `defer_day` int(10) DEFAULT NULL COMMENT '展期天数',
  `issue_count` varchar(20) DEFAULT NULL COMMENT '总期数',
  `pay_no` varchar(50) DEFAULT NULL COMMENT '支付流水号',
  `pay_status` varchar(20) DEFAULT NULL COMMENT '还款状态：1、正常还款；2逾期线上还款；3逾期线下还款；4展期还款',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user_order_plan
-- ----------------------------
INSERT INTO `gs_user_order_plan` VALUES ('85', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '1', '2019-06-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('86', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '2', '2019-07-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('87', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '3', '2019-08-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('88', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '4', '2019-09-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('89', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '5', '2019-10-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('90', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '6', '2019-11-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('91', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '7', '2019-12-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('92', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '8', '2020-01-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('93', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '9', '2020-02-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('94', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '10', '2020-03-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('95', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4865.50', '1', '11', '2020-04-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('96', 'CONT19050811221410981', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '3750.00', '405.00', '265.50', '45.00', '400.00', '4872.50', '1', '12', '2020-05-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '12', null, null, '2020-01-14 03:25:17', null);
INSERT INTO `gs_user_order_plan` VALUES ('97', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '1', '2019-06-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('98', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '2', '2019-07-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('99', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '3', '2019-08-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('100', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '4', '2019-09-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('101', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '5', '2019-10-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('102', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '6', '2019-11-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('103', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '7', '2019-12-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('104', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '8', '2020-01-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('105', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '9', '2020-02-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('106', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '10', '2020-03-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('107', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '11', '2020-04-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('108', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '12', '2020-05-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('109', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '13', '2020-06-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('110', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '14', '2020-07-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('111', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '15', '2020-08-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('112', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '16', '2020-09-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('113', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '17', '2020-10-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('114', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '18', '2020-11-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('115', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '19', '2020-12-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('116', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '20', '2021-01-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('117', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '21', '2021-02-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('118', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '22', '2021-03-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('119', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '23', '2021-04-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('120', 'CONT190508112214109866', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3101.50', '1', '24', '2021-05-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:04', null);
INSERT INTO `gs_user_order_plan` VALUES ('121', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '1', '2019-06-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('122', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '2', '2019-07-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('123', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '3', '2019-08-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('124', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '4', '2019-09-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('125', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '5', '2019-10-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('126', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '6', '2019-11-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('127', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '7', '2019-12-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('128', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '8', '2020-01-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('129', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '9', '2020-02-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('130', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '10', '2020-03-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('131', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '11', '2020-04-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('132', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '12', '2020-05-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('133', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '13', '2020-06-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('134', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '14', '2020-07-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('135', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '15', '2020-08-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('136', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '16', '2020-09-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('137', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '17', '2020-10-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('138', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '18', '2020-11-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('139', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '19', '2020-12-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('140', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '20', '2021-01-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('141', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '21', '2021-02-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('142', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '22', '2021-03-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('143', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3100.50', '1', '23', '2021-04-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);
INSERT INTO `gs_user_order_plan` VALUES ('144', 'CONT190508112214109869', '48844149967126528', '48844162449375232', 'service_zblh001', 'MFT1905080001', '45000.00', '1875.00', '405.00', '175.50', '45.00', '600.00', '3101.50', '1', '24', '2021-05-07 00:00:00', null, '0.00', '0.00', '0.00', null, null, '24', null, null, '2020-01-17 00:39:49', null);

-- ----------------------------
-- Table structure for gs_user_service
-- ----------------------------
DROP TABLE IF EXISTS `gs_user_service`;
CREATE TABLE `gs_user_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(32) DEFAULT NULL COMMENT '系统内用户id',
  `ecf_id` varchar(32) DEFAULT NULL COMMENT '系统内ecf_id,每个用户在每个业务方都会有一个ecf_id',
  `service_user_id` varchar(50) DEFAULT NULL COMMENT '业务方用户id',
  `service_code` varchar(20) DEFAULT NULL COMMENT '业务方code',
  `service_channel` varchar(30) DEFAULT NULL COMMENT '业务方渠道名称',
  `service_channel_code` varchar(30) DEFAULT NULL COMMENT '业务方渠道编号',
  `service_register_time` varchar(30) DEFAULT NULL COMMENT '业务方用户注册时间',
  `service_phone` varchar(20) DEFAULT NULL COMMENT '业务方用户手机号',
  `service_user_type` varchar(10) DEFAULT NULL COMMENT '业务方用户类型（1个人用户；2企业用户）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `extr1` varchar(20) DEFAULT NULL COMMENT '扩展字段1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user_service
-- ----------------------------
INSERT INTO `gs_user_service` VALUES ('2', '48844149967126528', '48844162449375232', '2020000014891', 'service_zblh001', '马鞍山一店-职能端', '100036', '20200114 10:46:44', '18811146889', '1', '2020-01-13 21:04:55', null, null);
INSERT INTO `gs_user_service` VALUES ('3', '48890542602670080', '48890542690750464', '2020000014897', 'service_zblh001', '马鞍山一店-职能端', '100036', '20200114 14:08:53', '13988885567', '1', '2020-01-14 00:09:13', null, null);
INSERT INTO `gs_user_service` VALUES ('4', '48891525667835904', '48891525722361856', '2020000014898', 'service_zblh001', '马鞍山一店-职能端', '100036', '20200114 14:12:47', '13988885559', '1', '2020-01-14 00:13:07', null, null);

-- ----------------------------
-- Table structure for mf_sys_kind
-- ----------------------------
DROP TABLE IF EXISTS `mf_sys_kind`;
CREATE TABLE `mf_sys_kind` (
  `kind_no` varchar(30) NOT NULL,
  `kind_name` varchar(50) DEFAULT NULL,
  `cur_no` varchar(10) DEFAULT NULL,
  `bus_model` varchar(100) DEFAULT NULL COMMENT '业务模式：1-动产质押融资 2-仓单融资 3-保单融资 4-保兑仓融资 5-应收账款融资  6-应收账款管理parm_dic表key_name=BUS_MODEL',
  `is_investigate` char(1) DEFAULT NULL COMMENT '0无追索1有追索',
  `is_finc` char(1) DEFAULT NULL COMMENT '0无融资1有融资',
  `coll_side` char(1) DEFAULT NULL COMMENT '催收方1保理商（明保理）/2卖方（暗保理）',
  `repay_type` char(20) DEFAULT NULL COMMENT '还款方式1等额本息2等额本金3利随本清4到期还本按月结息5到期还本按季结息6按计划',
  `repay_type_def` char(2) DEFAULT NULL COMMENT '默认还款方式',
  `ic_type` char(20) DEFAULT NULL COMMENT '计息方式暂只支持固定利率1为固定利率',
  `ic_type_def` char(1) DEFAULT NULL,
  `rate_type` char(20) DEFAULT NULL COMMENT '利率类型当前只支持年利率1为年利率',
  `rate_type_def` char(1) DEFAULT NULL COMMENT '利率类型当前只支持年利率1为年利率',
  `finc_rate` decimal(10,6) DEFAULT NULL COMMENT '融资默认利率百分比',
  `min_finc_rate` decimal(10,6) DEFAULT NULL COMMENT '融资利率下限',
  `max_finc_rate` decimal(10,6) DEFAULT NULL COMMENT '融资利率上限',
  `rate_decimal_digits` char(1) DEFAULT NULL COMMENT '利率小数点后位数 2-两位 4-四位',
  `over_rate` decimal(10,6) DEFAULT '0.000000' COMMENT '逾期利率',
  `over_flt_rate_def` decimal(10,6) DEFAULT NULL COMMENT '逾期利率浮动百分比默认值',
  `over_flt_rate_readonly` char(1) DEFAULT NULL COMMENT '逾期利率浮动是否可修改0不可修改1可修改',
  `cmp_flt_rate_def` decimal(10,6) DEFAULT NULL COMMENT '复利利率浮动百分比默认值',
  `cmp_flt_rate_show` char(1) DEFAULT NULL COMMENT '复利利率浮动百分比是否显示0不显示1显示',
  `cmp_flt_rate_readonly` char(1) DEFAULT NULL COMMENT '复利利率浮动百分比是否可修改0不可修改1可修改',
  `vou_type` char(20) DEFAULT NULL COMMENT '担保方式：1-信用2-保证3-抵押4-质押 5-转让',
  `vou_type_def` char(2) DEFAULT NULL COMMENT '默认担保方式',
  `norm_calc_type` char(1) DEFAULT NULL COMMENT '利息计算方式（按月计息：每月30天/按日计息：实际天数）2按月结息3按日结息',
  `second_norm_calc_type` char(1) DEFAULT NULL COMMENT '按月结息时，不足一月利息计算方式 2-按月结息,3-按日结息',
  `return_plan_point` char(1) DEFAULT NULL COMMENT '还款计划保留小数位0-不保留1-保留一位2-保留两位',
  `return_plan_round` char(1) DEFAULT NULL COMMENT '还款计划舍入方式2四舍五入',
  `return_plan_inst_supp` char(1) DEFAULT NULL COMMENT '还款计划每期利息差额是否计入最后一期0不计入1计入',
  `max_prepay_rate` decimal(10,6) DEFAULT NULL COMMENT '预付款比例上限',
  `min_prepay_rate` decimal(10,6) DEFAULT NULL COMMENT '预付款比例下限',
  `term_type` char(1) DEFAULT NULL COMMENT '期限类型1月2日',
  `max_term` int(11) DEFAULT NULL COMMENT '合同期限上限',
  `min_term` int(11) DEFAULT NULL COMMENT '融资金额下限',
  `max_finc_term` int(11) DEFAULT NULL COMMENT '单笔借据期限上限',
  `min_finc_term` int(11) DEFAULT NULL COMMENT '单笔借据期限下限',
  `max_amt` decimal(20,6) DEFAULT NULL COMMENT '融资金额上限',
  `min_amt` decimal(20,6) DEFAULT NULL COMMENT '应收账款下限',
  `if_advance_repay` char(1) DEFAULT NULL COMMENT '是否收取提前还款违约金',
  `advance_repay_rate` decimal(10,6) DEFAULT NULL COMMENT '提前还款比例',
  `advance_repay_base` char(1) DEFAULT NULL,
  `if_penalty_finc` char(1) DEFAULT NULL COMMENT '是否收取融资款逾期违约金0不收取1收取',
  `penalty_cal_base_finc` char(1) DEFAULT NULL COMMENT '融资款违约金基数A合同金额B合同余额C借据金额D借据余额K逾期金额',
  `penalty_cal_rate_finc` decimal(10,6) DEFAULT NULL COMMENT '融资款违约金比例',
  `penalty_cal_readonly_finc` char(1) DEFAULT NULL COMMENT '违约金比例是否可修改0不可修改1可修改',
  `if_penalty_accnt` char(1) DEFAULT NULL COMMENT '是否收取应收账款逾期违约金0不收取1收取',
  `penalty_cal_base_accnt` char(1) DEFAULT NULL COMMENT '应收账款逾期违约金计算基数A合同金额B合同余额C单据金额D单据余额K逾期金额',
  `penalty_cal_rate_accnt` decimal(10,6) DEFAULT NULL,
  `penalty_cal_readonly_accnt` char(1) DEFAULT NULL COMMENT '0不可修改1可修改',
  `fee_std_no` varchar(30) DEFAULT NULL COMMENT '费用标准号',
  `fee_std_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `fee_use_flag` char(1) DEFAULT NULL COMMENT '费用启动标志0-禁用 1-启用',
  `pact_model_no` varchar(30) DEFAULT NULL COMMENT '合同模板编号',
  `pact_model_name` varchar(50) DEFAULT NULL COMMENT '合同模板名称',
  `template_use_flag` varchar(50) DEFAULT NULL COMMENT '模板阶段启用标志串（模板生成阶段编号以@分割拼接）',
  `research_model_no` varchar(30) DEFAULT NULL COMMENT '贷前调查模板编号',
  `research_model_name` varchar(50) DEFAULT NULL COMMENT '贷前调查模板名称',
  `risk_level` char(1) DEFAULT NULL COMMENT '买方信用风险担保额度参与[可融资额度]的计算0不参与1参与',
  `remark` text,
  `use_flag` char(1) DEFAULT NULL,
  `cus_type` varchar(200) DEFAULT NULL COMMENT '客户类型',
  `loan_obejct` char(6) DEFAULT NULL COMMENT '贷款对象：1-个人贷款，2-企业客户，3-其他 parm_dic表key_name=LOAN_OBJECT_TYPE',
  `kind_property` char(4) DEFAULT NULL COMMENT '产品属性：1-线上产品，2-线下产品 parm_dic表key_name=KIND_PROPERTY_TYPE',
  `BR_NO` varchar(2000) DEFAULT NULL,
  `role_no` varchar(200) DEFAULT NULL COMMENT '开办角色',
  `pact_property` char(4) DEFAULT NULL COMMENT '合同性质：1-普通，2-最高额担保合同 parm_dic表key_name=AGREEMENT_PROPERTY_TYPE',
  `pact_property_def` char(1) DEFAULT NULL COMMENT '默认合同性质：1-普通，2-最高额担保合同',
  `interest_derate_flag` char(1) DEFAULT NULL COMMENT '利息是否支持减免 1-是 0-否',
  `repay_date_set` char(1) DEFAULT NULL COMMENT '还款日设置：1-贷款发放日 2-月末 3-固定还款日  parm_dic表key_name=REPAY_DATE_SET_TYPE',
  `repay_date_def` char(2) DEFAULT NULL COMMENT '默认还款日 当repay_date_set为固定还款日时,该字段才有值',
  `interest_collect_type` char(1) DEFAULT NULL COMMENT '利息收息方式：1-上收息 2-下收息  parm_dic表key_name=INTEREST_COLLECT_TYPE',
  `interest_collect_term_type` char(10) DEFAULT NULL COMMENT '利息上收息时 9999 代表收取全部利息 其他值代表收取N期利息(如 1,2,3)',
  `lsbq_interest_collect_type` char(1) DEFAULT '2' COMMENT '利随本清放款时提前收取利息 1 上收息（全部） 2下收息（正常） 3 按天数收取',
  `fee_collect_way` char(1) DEFAULT NULL COMMENT '费用收取方式：1-上收费 2-下收费  parm_dic表key_name=FEE_COLLECT_WAY',
  `pre_repay_type` char(10) DEFAULT NULL COMMENT '提前还款：1-提前结清 2-提前归还部分本金 3-一次性偿还所有未还本金、利息',
  `year_days` char(3) DEFAULT NULL COMMENT '一年等于多少天',
  `fee_plan_merge` char(1) DEFAULT NULL COMMENT '费用计划是否与还款计划合并 1-是 0-否',
  `balance_deal_type` char(1) DEFAULT NULL COMMENT '结余处理方式：1-冲抵贷款、2-退款  parm_dic表key_name=BALANCE_DEAL_TYPE',
  `cmpd_rate_type` char(1) DEFAULT NULL COMMENT '复利利息收取：0-不收取、1-收取',
  `feesum_faxi_type` char(1) DEFAULT '0' COMMENT '费用罚息收取：0-不收取、1-收取',
  `over_cmpd_rate_inputtype` char(1) DEFAULT NULL COMMENT '逾期利率复利利率输入类型：0-利率浮动、1-利率',
  `over_cmpd_flt_saveflag` char(1) DEFAULT '0' COMMENT '为利率浮动时 逾期利率和复利利率保存到数据库的值：0-正常年利率加浮动利率值（正常存放 存合计值 存1+0.5计算出的值）、1-浮动利率值（只存浮动值 存0.5计算出的值）',
  `over_days_flag` char(1) DEFAULT '0' COMMENT '逾期利息计算天数 0 取正常每一期逾期的天数 1 取借据逾期的天数',
  `modify_flag` char(1) DEFAULT NULL COMMENT '0未修改1修改过',
  `lst_mod_time` varchar(17) DEFAULT NULL COMMENT '最近修改时间',
  `apply_process_id` varchar(50) DEFAULT NULL,
  `pact_process_id` varchar(50) DEFAULT NULL,
  `finc_process_id` varchar(50) DEFAULT NULL,
  `trans_process_id` varchar(50) DEFAULT NULL,
  `process_use_flag` varchar(150) DEFAULT NULL COMMENT '流程启用标志串（流程id以@分割拼接）',
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `ext3` varchar(100) DEFAULT NULL,
  `ext4` varchar(100) DEFAULT NULL,
  `ext5` varchar(100) DEFAULT NULL,
  `ple_form_no` varchar(30) DEFAULT NULL COMMENT '押品动态表单编号',
  `ple_form_name` varchar(100) DEFAULT NULL COMMENT '押品动态表单名称',
  `apply_process_name` varchar(50) DEFAULT NULL COMMENT '业务审批流程名称',
  `pact_process_name` varchar(50) DEFAULT NULL COMMENT '合同审批流程名称',
  `finc_process_name` varchar(50) DEFAULT NULL COMMENT '支用审批流程名称',
  `trans_process_name` varchar(50) DEFAULT NULL COMMENT '转让审批流程名称',
  `finc_use` varchar(100) DEFAULT NULL COMMENT '融资用途大类字典项TRADE',
  `finc_use_name` varchar(500) DEFAULT NULL COMMENT '融资用途名称',
  `recall_use_flag` char(1) DEFAULT NULL COMMENT '催收模板启动标志0-禁用 1-启用',
  `apply_requirement` varchar(200) DEFAULT NULL COMMENT '产品申请条件',
  `pre_repay_inst_accout_base` char(1) DEFAULT NULL COMMENT '提前还款利息计算基数：1-按借据余额、2-按提前还款本金  3-只还本金，利息分段计息  parm_dic表key_name=PRE_REPAY_INTEREST_ACCOUT_TYPE',
  `term_inst_must_back` char(1) DEFAULT NULL COMMENT '当期本息是否必须归还：1-是、0-否',
  `multiple_loan_plan_merge` char(1) DEFAULT NULL COMMENT '多次放款还款计划合并：1-启用、0-禁用',
  `repayment_order` char(20) DEFAULT NULL,
  `repayment_order_changeflag` char(1) DEFAULT '0' COMMENT '还款计划可以变更：0-不变更、1-变更',
  `repayment_order_change_overday` varchar(20) DEFAULT '0' COMMENT '逾期N天还款顺序变更',
  `pre_inst_collect_type` char(1) DEFAULT '' COMMENT '预先支付利息收取方式：3-放款时收取，1-合并第一期，2-独立一期  parm_dic表key_name=PRE_INTEREST_COLLECT_TYPE',
  `inst_calc_base` char(1) DEFAULT NULL COMMENT '特殊还款方式利息计算基数1-贷款金额 2-贷款余额 3-当期本金',
  `pact_attribute` char(1) DEFAULT NULL COMMENT '合同属性',
  `auth_cycle` char(1) DEFAULT NULL COMMENT '合同额度是否循环',
  `bus_class` char(1) DEFAULT '0' COMMENT '业务分类（0：贷款；1：担保；2：理财）',
  `lsbq_charge_intst` char(1) DEFAULT '' COMMENT '利随本清利息收取方式 1-分次部分收取， 2-一次性全部收取  3-按还款本金收取利息（例如还本1000 收 利息 =1000*（还款日期-还款计划开始日期）*日利率）',
  `is_fund` char(1) DEFAULT NULL COMMENT '启用资金方0：禁用；1：启用；默认：0',
  `festival_type` char(1) DEFAULT NULL COMMENT '还款日与法定节假日或周末重合时逾期后逾期利息、复利收取方式 0 不收取  1 收取',
  `festival_repayplan_over` char(1) DEFAULT '0' COMMENT '节假日（宽限期）内还款计划逾期正常利息 0-不收取 1-收取  还款计划逾期 节假日（宽限期）还款时是否收取 节假日（宽限期）正常利息',
  `festival_finc_over` char(1) DEFAULT '0' COMMENT '节假日（宽限期）内借据逾期正常利息 0-不收取 1-收取  还款计划逾期 节假日（宽限期）还款时是否收取 节假日（宽限期）正常利息',
  `festival_repay_plan_flag` char(1) DEFAULT '0' COMMENT '还款计划到期日期是节假日时 还款计划是否标记为逾期  默认是0  0 按正常（逾期） 1 不逾期（顺延不逾期）',
  `has_penalty_rate_flag` char(1) DEFAULT '0' COMMENT '是否启用已结罚息 0 不启用  1 启用',
  `has_penalty_rate_type` char(1) DEFAULT '1' COMMENT '已结罚息类型 0 每日结息  1 按期结息',
  `repay_charge_intst_flag` char(1) DEFAULT '2' COMMENT '到期还本按月结息支持按日计息（正常还款时是收取到当天的利息还是收取整月的利息）1 收取到当天利息 2 收取整月利息',
  `last_term_balance_type` char(1) DEFAULT '0' COMMENT '允许最后一期结余：0-不允许、1-允许',
  `terminal_adaptation` char(10) DEFAULT NULL COMMENT '终端适配参数',
  `grace_days` int(11) DEFAULT '0' COMMENT '逾期宽限天数',
  `exhibition_area` text COMMENT '展业区域',
  `over_intst_flag` char(1) DEFAULT '0' COMMENT '逾期（复利）利息计算方式 0 按照固定利率 1 按阶梯规则（需配置规则）  默认是 0',
  `repay_plan_over_flag` char(1) DEFAULT '0' COMMENT '还款计划当期利息或本息归还后 还款计划是否标记不逾期  默认是0  0 按正常（逾期） 1 不逾期（本金利息还完后默认不逾期）',
  `pact_enddate_show_flag` char(1) DEFAULT '1' COMMENT '合同借据结束日期展示  1-显示结束日期 2-显示结束日期减一天,3-实际结束日期减一天，显示结束日期再减一天',
  `if_submit` char(1) DEFAULT NULL COMMENT '是否提交流程（1.启动并提交流程；0.只启动流程）',
  `lntp` varchar(2) DEFAULT NULL COMMENT '贷款业务种类（征信）',
  `lnhabit` varchar(2) DEFAULT NULL COMMENT '贷款性质（征信）',
  `credittype` varchar(2) DEFAULT NULL COMMENT '信贷业务种类（征信）',
  `sub_kind_no` varchar(200) DEFAULT NULL COMMENT '产品子类编号',
  `total_max_amt` decimal(20,6) DEFAULT NULL COMMENT '产品总融资金额上限',
  `submit_credit_flag` char(1) DEFAULT NULL COMMENT '是否参与征信上报：0-不上报；1-上报',
  `lntype_short` varchar(10) DEFAULT NULL COMMENT '短期（征信）',
  `lntype_mid` varchar(10) DEFAULT NULL COMMENT '中期（征信）',
  `lntype_long` varchar(10) DEFAULT NULL COMMENT '长期（征信）',
  `unique_repaymethod_charge_intst` char(1) DEFAULT '1' COMMENT '还款方式为特殊还款方式时利息计算时天数的计算方式 1 取正常计算的每一期天数  2取到期日期和借据开始日期之间的天数 ',
  `exten_lixi_type` char(1) DEFAULT '0' COMMENT '展期前利息是否全部收取：0-不收取、1-收取',
  `asset_class` varchar(500) DEFAULT NULL COMMENT '资产类别编号，以|分割',
  `asset_class_name` varchar(500) DEFAULT NULL COMMENT '资产类别名称，以|分割',
  `month_total_rate` decimal(20,6) DEFAULT NULL COMMENT '综合费率',
  `exhibition_area_name` text COMMENT '展业区域',
  `calc_intst_flag` char(1) DEFAULT NULL COMMENT '1-算头不算尾 2-首尾都计算',
  `cmpd_intst_calc_type` char(1) DEFAULT '0' COMMENT '复利利息计算基数设置 0 正常利息为计算基数 1 正常利息加逾期利息为计算基数（前N期的逾期利息）',
  `manage_ment` int(1) DEFAULT NULL COMMENT '产品所适用的资方(1:国商，2：人保，3：云南信托)',
  PRIMARY KEY (`kind_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品种类表';

-- ----------------------------
-- Records of mf_sys_kind
-- ----------------------------
INSERT INTO `mf_sys_kind` VALUES ('1000', '二手车_融资租赁', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '3.600000', '3.600000', '9.600000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '24', '1', '60', '6', '100000000.000000', '10000.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '202|', '1', '2', '100000|100008|100015|100016|100017|100018|', 'Advance|BL00001|BL00005|BL00003|BL00006|BL00007|BL00009|BL00010|BL00008|BL00004|BL00012|BL00011|BL00002|', '1', '', '1', '1', '', '2', null, '2', '2', '2', '360', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '2', '0', '0', '0|1|2|3|4|5|', '0', '0', '1', '1', '1', '0', '0', '1', '0', '0', null, null, '0', '0', '1', '2', '0', '1', null, '', '0', '0', null, '1', null, null, null, '1|4|46|47|48|49|5|50|51|6|7|8|9|', null, null, null, null, null, '1', '0', '', '', '2.000000', '', '2', '0', '1');
INSERT INTO `mf_sys_kind` VALUES ('1007', '二手车_融资租赁B', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '24', '1', '60', '6', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '二手车_融资租赁B', '1', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', '0', '1', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '46|47|48|49|50|51|60|61|62|', null, null, null, null, null, null, null, '', '', null, '', '2', '0', '1');
INSERT INTO `mf_sys_kind` VALUES ('1012', '二手车_融资租赁-人保', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '24', '1', '60', '6', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '二手车_融资租赁-人保', '0', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '1|2|3|46|47|48|49|50|51|6|60|61|62|7|8|9|', null, null, null, null, null, null, null, '', '', null, '', null, null, '1');
INSERT INTO `mf_sys_kind` VALUES ('1013', '华兴产品', '1', '7', null, null, null, '1', '1', '1', null, '1', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '36', '12', '36', '12', '10000000.000000', '100.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '华兴银行', '0', '202|', '1', '2|', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100184|100186|100187|100188|100190|100191|100003|100019|100021|100022|100020|100183|100004|100023|100027|100189|', 'BL00001|Advance|BL00002|BL00009|', '1', '', '0', '1', null, '2', '0', '2', '2', '1', '360', '0', '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'B|C|G|F|J|K|O|N|', null, null, null, '2', '1', '0', '2|0|1|4|3|5|', '0', '90', '1', '1', '1', '0', '0', null, '0', '1', null, null, '0', '0', '1', '2', null, '', null, '', '0', '0', null, '1', '', '', '', '63|64|65|', null, null, null, null, null, null, null, '', '', null, '', '2', null, '1');
INSERT INTO `mf_sys_kind` VALUES ('1014', '新安产品', '1', '7', null, null, null, '1', '1', '1', null, '1', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '3', '3', '2', '2', '2', '2', null, null, null, '1', '36', '12', '36', '12', '1000000.000000', '50000.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '新安产品', '0', '202|', '1', '2', '100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100184|100186|100187|100188|100190|100191|', 'BL00001|BL00002|BL00005|', '1', '1', '0', '1', null, '2', '0', '2', '2', '1', '360', '0', '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C|K|J|G|', null, null, null, '2', '1', '0', '2|0|1|4|3|5|', '0', '90', '1', '1', '1', '1', '0', null, '0', '1', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '66|67|68|', null, null, null, null, null, null, null, '', '', null, '', '2', null, '1');
INSERT INTO `mf_sys_kind` VALUES ('1015', '人保新安', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '36', '12', '36', '12', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '新安', '1', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|100202|100203|100204|100205|100206|100207|100208|100209|100210|100211|100212|100215|100216|100217|100218|100219|100220|100221|100222|100223|100224|100225|100226|100227|100228|100229|100213|100214|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, 'YGHQCARLOAN001', null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '6|66|67|68|7|', null, null, null, null, null, null, null, '', '', null, '', null, null, '2');
INSERT INTO `mf_sys_kind` VALUES ('1016', '人保华兴', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '36', '12', '36', '12', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '华兴', '1', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|100211|100212|100215|100216|100217|100218|100219|100220|100221|100222|100223|100224|100225|100226|100227|100228|100229|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, 'UDDCYGHQHX1907A', null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '3|4|5|63|64|65|', null, null, null, null, null, null, null, '', '', null, '', null, null, '2');
INSERT INTO `mf_sys_kind` VALUES ('1018', '产品测试', '1', '1', null, null, null, '1|10|2|4|7|', '1', '1', null, '2', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4', '4', '2', '2', '2', '2', null, null, null, '1', '36', '1', '36', '12', '500000.000000', '5000.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '产品不参加哦', '0', '202|102|301|C01|403|504|', '1', '2|', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100184|100186|100187|100188|100190|100191|100003|100019|100021|100022|100020|100004|100023|100027|100202|100203|100204|100205|100206|100207|100208|100209|100210|100211|100212|100215|100216|100217|100218|100219|100220|100221|100222|100223|100224|100225|100226|100227|100228|100229|100213|100214|', 'BL00002|BL00001|Advance|BL00004|BL00011|BL00010|BL00009|BL00008|BL00013|BL00014|BL00015|BL00017|BL00020|BL00022|BL00027|BL00026|BL00025|BL00024|', '1', '1', '0', '1', null, '2', '0', '2', '2', '1', '360', '0', '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A|B|C|D|H|L|T|P|S|O|K|G|F|J|N|R|Q|M|I|E|', null, null, null, '2', '1', '0', '2|0|1|4|3|5|', '0', '90', '1', '1', '1', '1', '0', null, '0', '1', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '1', '2', '1', '1|12|2|3|46|47|48|49|5|50|51|6|60|61|62|7|8|9|', '500000.000000', null, null, null, null, null, null, '', '', '10.000000', '', '2', null, '1');
INSERT INTO `mf_sys_kind` VALUES ('1019', '2222', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '24', '1', '60', '6', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '测试合同', '0', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '46|47|48|49|50|51|60|61|62|', null, null, null, null, null, null, null, '', '', null, '', null, null, '1');
INSERT INTO `mf_sys_kind` VALUES ('1020', '车抵贷-新安', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '2', '2', '2', '2', null, null, null, '1', '36', '1', '36', '1', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '车抵贷-新安', '1', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100008|100015|100016|100017|100018|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100023|100027|100203|100204|100205|100206|100207|100208|100209|100210|100211|100212|100215|100216|100217|100218|100219|100220|100221|100222|100223|100224|100225|100226|100227|100228|100229|100213|100214|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '1', null, '2', null, null, '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '68|', null, null, null, null, null, null, null, '', '', null, '', null, null, '2');
INSERT INTO `mf_sys_kind` VALUES ('1021', '渤海信托-融资租赁', '1', '7', null, null, null, '4|7|', '7', '1', null, '4', null, '0.000000', '0.000000', '0.000000', '2', '0.000000', '0.000000', null, '0.000000', null, null, '4|3|2|', '3', '3', '3', '2', '2', null, null, null, '1', '24', '1', '60', '6', '100000000.000000', '1.000000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '渤海信托-融资租赁', '1', '202|', '1', '2', '100000|100001|100192|100193|100194|100195|100196|100197|100002|100005|100006|100007|100032|100036|100037|100033|100038|100039|100034|100040|100041|100042|100043|100035|100048|100049|100050|100051|100009|100010|100011|100024|100025|100026|100044|100045|100046|100047|100052|100059|100062|100063|100064|100012|100013|100014|100028|100029|100030|100031|100067|100068|100069|100070|100071|100072|100073|100074|100086|100087|100088|100091|100092|100093|100094|100095|100103|100104|100105|100106|100107|100053|100054|100055|100065|100066|100056|100076|100182|100057|100089|100090|100058|100100|100102|100108|100060|100109|100110|100061|100114|100115|100075|100077|100078|100079|100080|100081|100082|100083|100084|100085|100096|100097|100098|100099|100101|100111|100112|100113|100116|100117|100118|100119|100131|100134|100136|100141|100143|100144|100145|100146|100151|100152|100153|100155|100157|100158|100160|100161|100159|100162|100163|100172|100173|100174|100175|100176|100177|100178|100179|100180|100181|100120|100121|100122|100123|100124|100125|100130|100132|100126|100127|100128|100140|100142|100129|100147|100148|100133|100149|100150|100135|100154|100156|100137|100164|100165|100138|100166|100167|100168|100139|100169|100170|100171|100003|100019|100021|100022|100020|100183|100004|100023|100027|', 'Advance|BL00001|BL00002|BL00003|BL00004|BL00005|BL00006|BL00007|BL00008|BL00009|BL00010|', '1', '', '1', '3', '14', '2', null, '3', '2', '1', '360', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'F|H|G|A|B|C|D|E|I|J|K|L|P|O|N|M|Q|R|S|T|', null, null, null, '0', '1', '0', '0|1|2|3|4|5|', null, null, '1', '1', '1', '0', '0', null, '0', '0', null, null, '0', '0', '1', '2', null, '1', null, '', '0', '0', null, '1', '', '', '', '69|70|71|', null, null, null, null, null, '1', null, '', '', null, '', null, null, '1');
