/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.125@root
Source Server Version : 50626
Source Host           : 192.168.2.125:3306
Source Database       : jumper_anglesound

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-11-28 14:33:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crm_admin
-- ----------------------------
DROP TABLE IF EXISTS `crm_admin`;
CREATE TABLE `crm_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `is_enabled` bit(1) NOT NULL DEFAULT b'1',
  `is_locked` bit(1) NOT NULL DEFAULT b'0',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `login_failure_count` int(11) NOT NULL DEFAULT '0',
  `locked_date` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0：未删除  1：已删除)',
  PRIMARY KEY (`id`),
  KEY `admin_doctor_id` (`doctor_id`),
  CONSTRAINT `admin_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `hospital_doctor_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_admin
-- ----------------------------
INSERT INTO `crm_admin` VALUES ('1', 'admin@gmail.com', '', '\0', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '超级管理员', '1', '2017-11-22 16:05:45', '2017-11-28 10:50:27', '2015-07-08 14:12:11', '', null, '2017-11-06 10:45:10', '0');
INSERT INTO `crm_admin` VALUES ('2', 'rent@gmail.com', '', '\0', 'rent', 'E10ADC3949BA59ABBE56E057F20F883E', '普通管理员', '0', null, '2016-01-19 17:49:07', '2015-07-08 14:24:06', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('8', 'admin@qq.com', '', '\0', 'wt', 'E10ADC3949BA59ABBE56E057F20F883E', '汪藤', '0', null, '2016-03-18 09:38:36', '2015-08-10 17:52:50', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('11', '11@qq.com', '', '', 'oxy', '17AA19B22C75D591BF7BD2FA89B43ECF', '区晓云', '0', null, '2015-12-18 16:49:50', '2015-09-01 20:48:53', null, null, '2017-11-13 13:56:57', '0');
INSERT INTO `crm_admin` VALUES ('12', '11@qq.com', '', '\0', 'ljx', '52F8569AB79B13799D1AA25A4B28D805', '罗金秀', '0', '2015-09-10 08:28:13', '2015-12-18 11:32:26', '2015-09-02 09:33:12', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('14', '11@qq.com', '', '\0', 'lyr', '93E058DFE118201C8C2FC11D7F4C88DF', '林彦茹', '0', '2015-09-04 16:48:57', '2015-12-16 20:10:58', '2015-09-02 09:57:20', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('16', '11@qq.com', '', '\0', 'rn', 'B9DA2380CD56D16BE311A3F1216C5E81', '荣妮', '2', '2015-11-06 09:34:23', '2016-01-08 11:11:27', '2015-09-02 10:00:09', null, '126', '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('17', '11@qq.com', '', '\0', 'lhl', '9B893493191289F0AE7AFC455F395746', '李浩龙', '0', null, '2015-12-18 16:39:55', '2015-09-02 10:02:25', null, '390', '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('18', '11@qq.com', '', '\0', 'gq', '905C2C458AC595E1409883051689AE5F', '高琪', '0', null, '2015-12-17 14:50:43', '2015-09-05 11:27:09', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('19', '11@qq.com', '', '\0', 'zyl', '14FB99A379BF0C386386EC75F460B31D', '郑宇磊', '0', null, '2017-02-07 15:28:09', '2015-09-05 11:29:00', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('20', '272002464@qq.com', '', '\0', 'lmd', '420FD861BCA455842EEC7A2611D632CE', '罗美丹', '0', null, '2015-12-18 15:15:32', '2015-09-29 15:05:10', null, '392', '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('21', '11@qq.com', '', '\0', 'zxk', 'E10ADC3949BA59ABBE56E057F20F883E', '赵雪柯', '0', null, '2015-12-18 16:19:14', '2015-09-29 15:10:25', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('22', '11@qq.com', '', '\0', 'zt', 'E10ADC3949BA59ABBE56E057F20F883E', '曾婷', '0', null, '2015-12-18 16:19:19', '2015-09-29 15:11:33', null, null, '2017-10-31 09:57:01', '0');
INSERT INTO `crm_admin` VALUES ('23', '11@qq.com', '', '\0', 'fy', 'E10ADC3949BA59ABBE56E057F20F883E', '付媛', '0', '2015-10-21 09:01:01', '2015-12-14 14:53:20', '2015-09-29 15:12:28', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('24', '111@qq.com', '', '\0', 'yw', 'E10ADC3949BA59ABBE56E057F20F883E', '杨魏', '0', null, '2015-12-18 15:39:19', '2015-10-12 11:21:41', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('25', '11@qq.com', '', '\0', 'zj', '5B8060D7C7B37364732BFD91D688AFBA', '张俊', '0', null, '2015-12-10 19:13:51', '2015-10-17 11:45:22', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('26', 'cc@qq.com', '', '\0', 'cc', 'C7DC51D8C78F7F961199266AED05CC9D', '倪春', '0', null, '2015-11-10 14:12:24', '2015-10-17 11:49:31', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('27', 'yb@qq.com', '', '\0', 'yb', '4FA960B487B09F0C5965DF159FBEAEBA', '晁永兵', '0', null, '2015-11-03 08:34:37', '2015-10-23 16:06:25', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('28', 'zjy@qq.com', '', '\0', 'zjy', 'E10ADC3949BA59ABBE56E057F20F883E', '曾金艳', '0', null, '2016-08-16 11:44:54', '2015-10-31 15:33:17', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('30', 'xpw@qq.com', '', '\0', 'xpw', 'D0F4DE479710958D073F73641C15F2C1', '徐培玮', '4', null, '2015-12-01 14:35:24', '2015-10-31 15:38:14', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('31', '11@qq.com', '', '\0', 'jds', 'E10ADC3949BA59ABBE56E057F20F883E', '靳德申', '0', null, '2015-12-15 20:05:06', '2015-11-03 18:05:42', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('32', 'jy@qq.com', '', '\0', 'hjy', '8B3F5D8A0CB679CB7FD2173ED2F03C6A', '黄坚宇', '2', null, '2015-12-23 16:24:04', '2015-11-23 11:26:44', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('33', '11@qq.com', '', '\0', 'xwj', '79B713E736A77606675E3744E6CB2F61', '肖文杰', '0', null, '2015-12-18 11:33:47', '2015-12-18 11:06:05', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('34', '11@qq.com', '', '\0', 'cqq', '6398CEEF71FBF1EC02C77C58740243FE', '陈巧琼', '0', null, '2015-12-18 14:14:39', '2015-12-18 11:07:57', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('35', '11@qq.com', '', '\0', 'ccp', 'C15F5A7DA012E361D815ADCA6F25B366', '陈彩萍', '0', null, null, '2015-12-18 11:08:35', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('36', '347700830@qq.com', '', '\0', 'yhz', 'A4B145EEB4515A2815FE861DE2C14539', '杨焕志', '2', null, null, '2016-03-30 11:22:41', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('37', 'xcl@163.com', '', '\0', 'xcl', 'E10ADC3949BA59ABBE56E057F20F883E', '谢城龙', '0', null, '2017-02-06 11:06:44', '2016-09-02 16:54:19', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('38', 'wq@ad.com', '', '\0', 'wq', 'D8578EDF8458CE06FBC5BB76A58C5CA4', '王权', '0', null, '2017-01-17 09:18:46', '2017-01-10 18:13:27', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('39', 'cpl@ad.com', '', '\0', 'cpl', 'E10ADC3949BA59ABBE56E057F20F883E', '陈佩玲', '0', null, '2017-01-11 15:03:40', '2017-01-10 18:15:39', null, null, '2017-10-30 11:39:19', '0');
INSERT INTO `crm_admin` VALUES ('40', 'fuwc@ad.net', '', '\0', 'fuwc', 'E10ADC3949BA59ABBE56E057F20F883E', '付文成', '0', null, '2017-11-11 17:15:24', '2017-01-23 15:59:08', null, null, '2017-11-11 18:17:04', '0');
INSERT INTO `crm_admin` VALUES ('41', 'ceshi@ad.net', '', '\0', 'ceshi', '52FAF512F26F99EC6153582A39773B75', '测试账号', '0', '2017-11-13 17:37:38', '2017-11-15 16:55:06', '2017-10-30 17:00:02', null, null, '2017-11-13 17:41:08', '0');
INSERT INTO `crm_admin` VALUES ('42', 'zhangsan@163.com', '', '\0', 'zhangs', '52FAF512F26F99EC6153582A39773B75', '张三', '0', '2017-11-06 10:19:36', '2017-11-08 13:52:52', '2017-10-31 17:38:22', null, null, '2017-11-08 12:02:54', '0');
INSERT INTO `crm_admin` VALUES ('43', '123@123.com', '', '\0', 'cwzg', '538D9F492CECA79199F83BE515AC857D', '徐工', '0', null, '2017-11-10 14:39:41', '2017-11-07 14:16:51', null, null, '2017-11-10 14:39:46', '0');
INSERT INTO `crm_admin` VALUES ('48', 'aaaaaaaaaaaa@163.com', '', '\0', 'cszh', 'E10ADC3949BA59ABBE56E057F20F883E', '测试账号', '0', null, '2017-11-28 13:43:17', '2017-11-15 09:43:10', null, null, '2017-11-20 18:19:38', '0');

-- ----------------------------
-- Table structure for manager_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `manager_admin_role`;
CREATE TABLE `manager_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `admin_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COMMENT='用户角色';

-- ----------------------------
-- Records of manager_admin_role
-- ----------------------------
INSERT INTO `manager_admin_role` VALUES ('1', '1', '1');
INSERT INTO `manager_admin_role` VALUES ('28', '42', '19');
INSERT INTO `manager_admin_role` VALUES ('29', '43', '2');
INSERT INTO `manager_admin_role` VALUES ('30', '43', '12');
INSERT INTO `manager_admin_role` VALUES ('33', '40', '7');
INSERT INTO `manager_admin_role` VALUES ('34', '44', '2');
INSERT INTO `manager_admin_role` VALUES ('35', '11', '7');
INSERT INTO `manager_admin_role` VALUES ('36', '45', '2');
INSERT INTO `manager_admin_role` VALUES ('37', '46', '2');
INSERT INTO `manager_admin_role` VALUES ('38', '47', '2');
INSERT INTO `manager_admin_role` VALUES ('42', '41', '2');
INSERT INTO `manager_admin_role` VALUES ('48', '48', '2');

-- ----------------------------
-- Table structure for manager_menu_authority
-- ----------------------------
DROP TABLE IF EXISTS `manager_menu_authority`;
CREATE TABLE `manager_menu_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) NOT NULL COMMENT '父级菜单编号',
  `url` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '链接',
  `icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标',
  `is_show` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否显示(1：显示；0：不显示)',
  `permission` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1 COMMENT='运营后台--权限菜单';

-- ----------------------------
-- Records of manager_menu_authority
-- ----------------------------
INSERT INTO `manager_menu_authority` VALUES ('1', '数据中心', '0', null, null, '1', 'menu:data:center');
INSERT INTO `manager_menu_authority` VALUES ('2', '用户统计', '1', null, null, '1', 'menu:user:statistics');
INSERT INTO `manager_menu_authority` VALUES ('3', '数据概览', '2', null, null, '1', 'menu:data:summarize');
INSERT INTO `manager_menu_authority` VALUES ('4', '推广统计', '1', null, null, '1', 'menu:generalize:statistics');
INSERT INTO `manager_menu_authority` VALUES ('5', '医院总表', '4', null, null, '1', 'menu:hospital:table');
INSERT INTO `manager_menu_authority` VALUES ('6', '院区查询', '4', null, null, '1', 'menu:hospitalArea:query');
INSERT INTO `manager_menu_authority` VALUES ('7', '实时统计', '1', null, null, '1', 'menu:realTime:statistics');
INSERT INTO `manager_menu_authority` VALUES ('8', '问诊统计', '7', null, null, '1', 'menu:inquiry:statistics');
INSERT INTO `manager_menu_authority` VALUES ('9', '地图统计', '7', null, null, '1', 'menu:map:statistics');
INSERT INTO `manager_menu_authority` VALUES ('10', '用户统计', '7', null, null, '1', 'menu:child:user:statistics');
INSERT INTO `manager_menu_authority` VALUES ('11', '胎心统计', '7', null, null, '1', 'menu:tx:statistics');
INSERT INTO `manager_menu_authority` VALUES ('12', '内容管理', '0', null, null, '1', 'menu:context:manager');
INSERT INTO `manager_menu_authority` VALUES ('13', '资讯订阅', '12', null, null, '1', 'menu:information:subscription');
INSERT INTO `manager_menu_authority` VALUES ('14', '健康指导', '12', null, null, '1', 'menu:health:guidance');
INSERT INTO `manager_menu_authority` VALUES ('15', '播放器', '12', null, null, '1', 'menu:player');
INSERT INTO `manager_menu_authority` VALUES ('16', '孕期百科', '12', null, null, '1', 'menu:pregnancy:bk');
INSERT INTO `manager_menu_authority` VALUES ('17', '广告管理', '12', null, null, '1', 'menu:advertising:manager');
INSERT INTO `manager_menu_authority` VALUES ('18', '产检管理', '12', null, null, '1', 'menu:antenatal:manager');
INSERT INTO `manager_menu_authority` VALUES ('19', '文章管理', '13', null, null, '1', 'menu:article:manager');
INSERT INTO `manager_menu_authority` VALUES ('20', '新增文章', '19', null, null, '0', 'add:article');
INSERT INTO `manager_menu_authority` VALUES ('21', '编辑', '19', null, null, '0', 'edit:article');
INSERT INTO `manager_menu_authority` VALUES ('22', '下线', '19', null, null, '0', 'down:article');
INSERT INTO `manager_menu_authority` VALUES ('23', '推送通知消息', '19', null, null, '0', 'jpush:message');
INSERT INTO `manager_menu_authority` VALUES ('24', '删除评论', '19', null, null, '0', 'delete:comment');
INSERT INTO `manager_menu_authority` VALUES ('25', '频道管理', '13', null, null, '1', 'menu:channel:manager');
INSERT INTO `manager_menu_authority` VALUES ('26', '新增频道', '25', null, null, '0', 'add:channel');
INSERT INTO `manager_menu_authority` VALUES ('27', '编辑', '25', null, null, '0', 'edit:channel');
INSERT INTO `manager_menu_authority` VALUES ('28', '置上', '25', null, null, '0', 'up:channel');
INSERT INTO `manager_menu_authority` VALUES ('29', '删除', '25', null, null, '0', 'delete:channel');
INSERT INTO `manager_menu_authority` VALUES ('30', '宝宝发育变化', '14', null, null, '1', 'menu:baby:change');
INSERT INTO `manager_menu_authority` VALUES ('31', '新增', '30', null, null, '0', 'add:baby');
INSERT INTO `manager_menu_authority` VALUES ('32', '编辑', '30', null, null, '0', 'edit:baby');
INSERT INTO `manager_menu_authority` VALUES ('33', '删除', '30', null, null, '0', 'delete:baby');
INSERT INTO `manager_menu_authority` VALUES ('34', '孕周健康提示', '14', null, null, '1', 'menu:weeks:hint');
INSERT INTO `manager_menu_authority` VALUES ('35', '新增', '34', null, null, '0', 'add:weeks');
INSERT INTO `manager_menu_authority` VALUES ('36', '编辑', '34', null, null, '0', 'edit:weeks');
INSERT INTO `manager_menu_authority` VALUES ('37', '删除', '34', null, null, '0', 'delete:weeks');
INSERT INTO `manager_menu_authority` VALUES ('38', '孕周宝宝状态图', '14', null, null, '1', 'menu:weeks:baby');
INSERT INTO `manager_menu_authority` VALUES ('39', '上传图片', '38', null, null, '0', 'upload:images');
INSERT INTO `manager_menu_authority` VALUES ('40', '电台内容管理', '15', null, null, '1', 'menu:broadcasting:manager');
INSERT INTO `manager_menu_authority` VALUES ('41', '下线', '40', null, null, '0', 'down:broadcasting');
INSERT INTO `manager_menu_authority` VALUES ('42', '修改', '40', null, null, '0', 'update:broadcasting');
INSERT INTO `manager_menu_authority` VALUES ('43', '试听', '40', null, null, '0', 'play:broadcasting');
INSERT INTO `manager_menu_authority` VALUES ('44', '删除', '40', null, null, '0', 'delete:broadcasting');
INSERT INTO `manager_menu_authority` VALUES ('45', '置顶', '40', null, null, '0', 'top:broadcasting');
INSERT INTO `manager_menu_authority` VALUES ('46', '上传节目', '40', null, null, '0', 'upload:program');
INSERT INTO `manager_menu_authority` VALUES ('47', '模块与标签', '16', null, null, '1', 'menu:module:label');
INSERT INTO `manager_menu_authority` VALUES ('48', '模块管理-新增', '47', null, null, '0', 'add:module');
INSERT INTO `manager_menu_authority` VALUES ('49', '模块管理-编辑', '47', null, null, '0', 'edit:module');
INSERT INTO `manager_menu_authority` VALUES ('50', '模块管理-删除', '47', null, null, '0', 'delete:module');
INSERT INTO `manager_menu_authority` VALUES ('51', '标签管理-新增', '47', null, null, '0', 'add:label');
INSERT INTO `manager_menu_authority` VALUES ('52', '标签管理-编辑', '47', null, null, '0', 'edit:label');
INSERT INTO `manager_menu_authority` VALUES ('53', '标签管理-删除', '47', null, null, '0', 'delete:label');
INSERT INTO `manager_menu_authority` VALUES ('54', '内容库管理', '16', null, null, '1', 'menu:contentLibrary:manager');
INSERT INTO `manager_menu_authority` VALUES ('55', '新增内容', '54', null, null, '0', 'add:content');
INSERT INTO `manager_menu_authority` VALUES ('56', '编辑', '54', null, null, '0', 'edit:content');
INSERT INTO `manager_menu_authority` VALUES ('57', '删除', '54', null, null, '0', 'delete:content');
INSERT INTO `manager_menu_authority` VALUES ('58', '隐藏', '54', null, null, '0', 'hide:content');
INSERT INTO `manager_menu_authority` VALUES ('59', '广告列表', '17', null, null, '1', 'menu:advertising:list');
INSERT INTO `manager_menu_authority` VALUES ('60', '新增广告', '59', null, null, '0', 'add:advertising');
INSERT INTO `manager_menu_authority` VALUES ('61', '编辑', '59', null, null, '0', 'edit:advertising');
INSERT INTO `manager_menu_authority` VALUES ('62', '删除', '59', null, null, '0', 'delete:advertising');
INSERT INTO `manager_menu_authority` VALUES ('63', '设置/取消banner', '59', null, null, '0', 'cancel:banner');
INSERT INTO `manager_menu_authority` VALUES ('64', '平台产检管理', '18', null, null, '1', 'menu:platform:antenatal:manager');
INSERT INTO `manager_menu_authority` VALUES ('65', '添加产检信息', '64', null, null, '0', 'add:antenatal:info');
INSERT INTO `manager_menu_authority` VALUES ('66', '功能设置', '64', null, null, '0', 'function:setting');
INSERT INTO `manager_menu_authority` VALUES ('67', '编辑', '64', null, null, '0', 'edit:antenatal');
INSERT INTO `manager_menu_authority` VALUES ('68', '删除', '64', null, null, '0', 'delete:antenatal');
INSERT INTO `manager_menu_authority` VALUES ('69', '医院产检管理', '18', null, null, '1', 'menu:hospital:antenatal:manager');
INSERT INTO `manager_menu_authority` VALUES ('70', '添加产检信息', '69', null, null, '0', 'add:hospital:antenatal');
INSERT INTO `manager_menu_authority` VALUES ('71', '功能设置', '69', null, null, '0', 'function:hospital:setting');
INSERT INTO `manager_menu_authority` VALUES ('72', '编辑', '69', null, null, '0', 'edit:hospital:antenatal');
INSERT INTO `manager_menu_authority` VALUES ('73', '删除', '69', null, null, '0', 'delete:hospital:antenatal');
INSERT INTO `manager_menu_authority` VALUES ('74', '社交管理', '0', null, null, '1', 'menu:social:manager');
INSERT INTO `manager_menu_authority` VALUES ('75', '话题组', '74', null, null, '1', 'menu:topic');
INSERT INTO `manager_menu_authority` VALUES ('76', '交流圈', '74', null, null, '1', 'menu:exchange');
INSERT INTO `manager_menu_authority` VALUES ('77', '宝妈日记', '74', null, null, '1', 'menu:diary');
INSERT INTO `manager_menu_authority` VALUES ('78', '其他', '74', null, null, '1', 'menu:others');
INSERT INTO `manager_menu_authority` VALUES ('79', '小组管理', '75', null, null, '1', 'menu:group:manager');
INSERT INTO `manager_menu_authority` VALUES ('80', '新增话题组', '79', null, null, '0', 'add:topic');
INSERT INTO `manager_menu_authority` VALUES ('81', '编辑', '79', null, null, '0', 'edit:topic');
INSERT INTO `manager_menu_authority` VALUES ('82', '禁用', '79', null, null, '0', 'disable:topic');
INSERT INTO `manager_menu_authority` VALUES ('83', '置上', '79', null, null, '0', 'dowm:topic');
INSERT INTO `manager_menu_authority` VALUES ('84', '删除', '79', null, null, '0', 'delete:topic');
INSERT INTO `manager_menu_authority` VALUES ('85', '成员管理', '75', null, null, '1', 'menu:member:manager');
INSERT INTO `manager_menu_authority` VALUES ('86', '禁言/解除禁言', '85', null, null, '0', 'disable:member');
INSERT INTO `manager_menu_authority` VALUES ('87', '帖子管理', '75', null, null, '1', 'menu:invitation:manager');
INSERT INTO `manager_menu_authority` VALUES ('88', '隐藏/恢复显示', '87', null, null, '0', 'show:invitation');
INSERT INTO `manager_menu_authority` VALUES ('89', '推广', '87', null, null, '0', 'generalize:invitation');
INSERT INTO `manager_menu_authority` VALUES ('90', '删除', '87', null, null, '0', 'delete:invitation');
INSERT INTO `manager_menu_authority` VALUES ('91', '（评论）删除', '87', null, null, '0', 'delete:invitation');
INSERT INTO `manager_menu_authority` VALUES ('92', '评论管理', '75', null, null, '1', 'menu:comment:manager');
INSERT INTO `manager_menu_authority` VALUES ('93', '删除', '92', null, null, '0', 'delete:comment');
INSERT INTO `manager_menu_authority` VALUES ('94', '圈子管理', '76', null, null, '1', 'menu:circle:manager');
INSERT INTO `manager_menu_authority` VALUES ('95', '新建圈子', '94', null, null, '0', 'add:circle');
INSERT INTO `manager_menu_authority` VALUES ('96', '禁用/启用', '94', null, null, '0', 'disable:circle');
INSERT INTO `manager_menu_authority` VALUES ('97', '编辑', '94', null, null, '0', 'edit:circle');
INSERT INTO `manager_menu_authority` VALUES ('98', '删除', '94', null, null, '0', 'delete:circle');
INSERT INTO `manager_menu_authority` VALUES ('99', '成员管理', '76', null, null, '1', 'menuExchangeMember');
INSERT INTO `manager_menu_authority` VALUES ('100', '禁言/解除禁言', '99', null, null, '0', 'banned:member:manager');
INSERT INTO `manager_menu_authority` VALUES ('101', '设置身份', '99', null, null, '0', 'set:identity');
INSERT INTO `manager_menu_authority` VALUES ('102', '管理员管理', '76', null, null, '1', 'menu:admin:manager');
INSERT INTO `manager_menu_authority` VALUES ('103', '设置身份', '102', null, null, '0', 'admin:set:identity');
INSERT INTO `manager_menu_authority` VALUES ('104', '解绑', '102', null, null, '0', 'unbind:identity');
INSERT INTO `manager_menu_authority` VALUES ('105', '绑定', '102', null, null, '0', 'bind:identity');
INSERT INTO `manager_menu_authority` VALUES ('106', '私信管理', '76', null, null, '1', 'menu:private:manger');
INSERT INTO `manager_menu_authority` VALUES ('107', '禁言/解除禁言', '106', null, null, '0', 'banned:private');
INSERT INTO `manager_menu_authority` VALUES ('108', '删除', '106', null, null, '0', 'delete:private');
INSERT INTO `manager_menu_authority` VALUES ('109', '查看', '106', null, null, '0', 'query:private');
INSERT INTO `manager_menu_authority` VALUES ('110', '日记管理', '77', null, null, '1', 'menu:diary:manager');
INSERT INTO `manager_menu_authority` VALUES ('111', '日记管理页面', '110', null, null, '0', 'query:diary');
INSERT INTO `manager_menu_authority` VALUES ('112', '举报中心', '78', null, null, '1', 'menu:report:center');
INSERT INTO `manager_menu_authority` VALUES ('113', '通过', '112', null, null, '0', 'pass:report');
INSERT INTO `manager_menu_authority` VALUES ('114', '删除', '112', null, null, '0', 'delete:report');
INSERT INTO `manager_menu_authority` VALUES ('115', '回收站', '78', null, null, '1', 'menu:recycleBin');
INSERT INTO `manager_menu_authority` VALUES ('116', '回收站页面', '115', null, null, '0', 'query:recycleBin');
INSERT INTO `manager_menu_authority` VALUES ('117', '业务管理', '0', null, null, '1', 'menu:service:manager');
INSERT INTO `manager_menu_authority` VALUES ('118', '咨询管理', '117', null, null, '1', 'menu:advisory:manager');
INSERT INTO `manager_menu_authority` VALUES ('119', '短信管理', '117', null, null, '1', 'menu:note:manger');
INSERT INTO `manager_menu_authority` VALUES ('120', '开放用户管理', '117', null, null, '1', 'menu:open:user:manager');
INSERT INTO `manager_menu_authority` VALUES ('121', '短信统计', '117', null, null, '1', 'menu:note:statistics');
INSERT INTO `manager_menu_authority` VALUES ('122', '全部咨询', '118', null, null, '1', 'menu:all:advisory');
INSERT INTO `manager_menu_authority` VALUES ('123', '全部咨询页面', '122', null, null, '0', 'query:advisory');
INSERT INTO `manager_menu_authority` VALUES ('124', '问题库', '118', null, null, '1', 'menu:issue');
INSERT INTO `manager_menu_authority` VALUES ('125', '领取问题', '124', null, null, '0', 'get:issue');
INSERT INTO `manager_menu_authority` VALUES ('126', '我的解答', '118', null, null, '1', 'menu:my:answer');
INSERT INTO `manager_menu_authority` VALUES ('127', '回复咨询', '126', null, null, '0', 'reply:advisory');
INSERT INTO `manager_menu_authority` VALUES ('128', '关闭咨询', '126', null, null, '0', 'close:advisory');
INSERT INTO `manager_menu_authority` VALUES ('129', '验证码管理', '119', null, null, '1', 'menu:code:manager');
INSERT INTO `manager_menu_authority` VALUES ('130', '验证码管理页面', '129', null, null, '0', 'query:code');
INSERT INTO `manager_menu_authority` VALUES ('131', '用户列表', '120', null, null, '1', 'menu:user:list');
INSERT INTO `manager_menu_authority` VALUES ('132', '删除', '131', null, null, '0', 'delete:user');
INSERT INTO `manager_menu_authority` VALUES ('133', '医院列表', '121', null, null, '1', 'menu:hospital:list');
INSERT INTO `manager_menu_authority` VALUES ('134', '医院列表页面', '133', null, null, '0', 'query:hospital');
INSERT INTO `manager_menu_authority` VALUES ('135', '医院管理', '0', null, null, '1', 'menu:hospital:manager');
INSERT INTO `manager_menu_authority` VALUES ('136', '医院维护', '135', null, null, '1', 'menu:hospital:maintain');
INSERT INTO `manager_menu_authority` VALUES ('137', '科室维护', '135', null, null, '1', 'menu:departments:maintain');
INSERT INTO `manager_menu_authority` VALUES ('138', '医院列表', '136', null, null, '1', 'query:hospital:list');
INSERT INTO `manager_menu_authority` VALUES ('139', '编辑', '138', null, null, '0', 'edit:hospital');
INSERT INTO `manager_menu_authority` VALUES ('140', '删除', '138', null, null, '0', 'delete:hospital');
INSERT INTO `manager_menu_authority` VALUES ('141', '开通网络医院', '138', null, null, '0', 'open:internet:hospital');
INSERT INTO `manager_menu_authority` VALUES ('142', '管理', '138', null, null, '0', 'manager');
INSERT INTO `manager_menu_authority` VALUES ('143', '添加新医院', '138', null, null, '0', 'add:hospital');
INSERT INTO `manager_menu_authority` VALUES ('144', '主页设置', '136', null, null, '1', 'menu:index:setting');
INSERT INTO `manager_menu_authority` VALUES ('145', '主页设置页面', '144', null, null, '0', 'query:index');
INSERT INTO `manager_menu_authority` VALUES ('146', '科室列表', '137', null, null, '1', 'menu:ks:list');
INSERT INTO `manager_menu_authority` VALUES ('147', '添加新科室', '146', null, null, '0', 'add:ks');
INSERT INTO `manager_menu_authority` VALUES ('148', '编辑', '146', null, null, '0', 'edit:ks');
INSERT INTO `manager_menu_authority` VALUES ('149', '删除', '146', null, null, '0', 'delete:ks');
INSERT INTO `manager_menu_authority` VALUES ('150', '应用管理', '0', null, null, '1', 'menu:use:manager');
INSERT INTO `manager_menu_authority` VALUES ('151', '反馈管理', '150', null, null, '1', 'menu:feedback:manager');
INSERT INTO `manager_menu_authority` VALUES ('152', '版本更新', '150', null, null, '1', 'menu:version:manager');
INSERT INTO `manager_menu_authority` VALUES ('153', '用户反馈', '151', null, null, '1', 'menu:user:feedback');
INSERT INTO `manager_menu_authority` VALUES ('154', '删除', '153', null, null, '0', 'delte:feedback');
INSERT INTO `manager_menu_authority` VALUES ('155', '版本更新', '152', null, null, '1', 'menu:version:update');
INSERT INTO `manager_menu_authority` VALUES ('156', '添加版本', '155', null, null, '0', 'add:version');
INSERT INTO `manager_menu_authority` VALUES ('157', '删除', '155', null, null, '0', 'delte:version');
INSERT INTO `manager_menu_authority` VALUES ('158', '编辑', '155', null, null, '0', 'edit:version');
INSERT INTO `manager_menu_authority` VALUES ('159', '用户管理', '0', null, null, '1', 'menu:user:manger:list');
INSERT INTO `manager_menu_authority` VALUES ('160', '用户管理', '159', null, null, '1', 'user:list');
INSERT INTO `manager_menu_authority` VALUES ('161', '医生管理', '159', null, null, '1', 'menu:hospital:manager:list');
INSERT INTO `manager_menu_authority` VALUES ('162', '用户列表', '160', null, null, '1', 'hospital:manger:list');
INSERT INTO `manager_menu_authority` VALUES ('163', '删除', '162', null, null, '0', 'del:hospital');
INSERT INTO `manager_menu_authority` VALUES ('164', '禁用/启用', '162', null, null, '0', 'disabel:hospital');
INSERT INTO `manager_menu_authority` VALUES ('165', '编辑', '162', null, null, '0', 'edit:hospital:manger');
INSERT INTO `manager_menu_authority` VALUES ('166', '账号管理', '162', null, null, '0', 'account:manager');
INSERT INTO `manager_menu_authority` VALUES ('167', '医生审核', '161', null, null, '1', 'menu:hospital:check');
INSERT INTO `manager_menu_authority` VALUES ('168', '查看', '167', null, null, '0', 'query:check');
INSERT INTO `manager_menu_authority` VALUES ('169', '禁用', '167', null, null, '0', 'disabel:check');
INSERT INTO `manager_menu_authority` VALUES ('170', '医生列表', '161', null, null, '1', 'menu:doctor:list');
INSERT INTO `manager_menu_authority` VALUES ('171', '添加医生', '170', null, null, '0', 'add:doctor');
INSERT INTO `manager_menu_authority` VALUES ('172', '编辑', '170', null, null, '0', 'edit:doctor');
INSERT INTO `manager_menu_authority` VALUES ('173', '删除', '170', null, null, '0', 'delete:doctor');
INSERT INTO `manager_menu_authority` VALUES ('174', '禁用/启用', '170', null, null, '0', 'disabel:doctor');
INSERT INTO `manager_menu_authority` VALUES ('175', '诊所规则', '161', null, null, '1', 'menu:clini:crule');
INSERT INTO `manager_menu_authority` VALUES ('176', '添加规则', '175', null, null, '0', 'add:rule');
INSERT INTO `manager_menu_authority` VALUES ('177', '删除', '175', null, null, '0', 'delete:rule');
INSERT INTO `manager_menu_authority` VALUES ('178', '编辑', '175', null, null, '0', 'edit:rule');
INSERT INTO `manager_menu_authority` VALUES ('179', '后台管理', '0', null, null, '1', 'menu:backstage:manager');
INSERT INTO `manager_menu_authority` VALUES ('180', '账户权限', '179', null, null, '1', 'menu:account:auth');
INSERT INTO `manager_menu_authority` VALUES ('181', '操作日志', '179', null, null, '1', 'menu:opration:log');
INSERT INTO `manager_menu_authority` VALUES ('182', '账户管理', '180', null, null, '1', 'menu:account:manager');
INSERT INTO `manager_menu_authority` VALUES ('183', '添加账户', '182', null, null, '0', 'add:account');
INSERT INTO `manager_menu_authority` VALUES ('184', '编辑', '182', null, null, '0', 'edit:account');
INSERT INTO `manager_menu_authority` VALUES ('185', '删除', '182', null, null, '0', 'delete:account');
INSERT INTO `manager_menu_authority` VALUES ('186', '角色管理', '180', null, null, '1', 'menu:role');
INSERT INTO `manager_menu_authority` VALUES ('187', '添加角色', '186', null, null, '0', 'add:role');
INSERT INTO `manager_menu_authority` VALUES ('188', '编辑', '186', null, null, '0', 'edit:role');
INSERT INTO `manager_menu_authority` VALUES ('189', '删除', '186', null, null, '0', 'delete:role');
INSERT INTO `manager_menu_authority` VALUES ('190', '分配权限', '186', null, null, '0', 'allocation:auth');
INSERT INTO `manager_menu_authority` VALUES ('191', '操作日志', '181', null, null, '1', 'menu:opration:log');
INSERT INTO `manager_menu_authority` VALUES ('192', '操作日志页面', '191', null, null, '0', 'query:log');
INSERT INTO `manager_menu_authority` VALUES ('193', '服务审核', '161', null, null, '1', 'serviceVerify');
INSERT INTO `manager_menu_authority` VALUES ('194', '审核', '193', null, null, '0', 'verify');

-- ----------------------------
-- Table structure for manager_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `manager_role_authority`;
CREATE TABLE `manager_role_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `authority_id` int(11) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=866 DEFAULT CHARSET=latin1 COMMENT='角色权限';

-- ----------------------------
-- Records of manager_role_authority
-- ----------------------------
INSERT INTO `manager_role_authority` VALUES ('205', '12', '179');
INSERT INTO `manager_role_authority` VALUES ('206', '12', '180');
INSERT INTO `manager_role_authority` VALUES ('207', '12', '181');
INSERT INTO `manager_role_authority` VALUES ('208', '12', '182');
INSERT INTO `manager_role_authority` VALUES ('209', '12', '183');
INSERT INTO `manager_role_authority` VALUES ('210', '12', '184');
INSERT INTO `manager_role_authority` VALUES ('211', '12', '185');
INSERT INTO `manager_role_authority` VALUES ('212', '12', '186');
INSERT INTO `manager_role_authority` VALUES ('213', '12', '187');
INSERT INTO `manager_role_authority` VALUES ('214', '12', '188');
INSERT INTO `manager_role_authority` VALUES ('215', '12', '189');
INSERT INTO `manager_role_authority` VALUES ('216', '12', '190');
INSERT INTO `manager_role_authority` VALUES ('217', '12', '191');
INSERT INTO `manager_role_authority` VALUES ('218', '12', '192');
INSERT INTO `manager_role_authority` VALUES ('219', '20', '1');
INSERT INTO `manager_role_authority` VALUES ('220', '20', '2');
INSERT INTO `manager_role_authority` VALUES ('221', '20', '3');
INSERT INTO `manager_role_authority` VALUES ('222', '13', '12');
INSERT INTO `manager_role_authority` VALUES ('223', '13', '13');
INSERT INTO `manager_role_authority` VALUES ('224', '13', '19');
INSERT INTO `manager_role_authority` VALUES ('225', '13', '22');
INSERT INTO `manager_role_authority` VALUES ('263', '19', '12');
INSERT INTO `manager_role_authority` VALUES ('264', '19', '14');
INSERT INTO `manager_role_authority` VALUES ('265', '19', '30');
INSERT INTO `manager_role_authority` VALUES ('266', '19', '31');
INSERT INTO `manager_role_authority` VALUES ('267', '19', '32');
INSERT INTO `manager_role_authority` VALUES ('268', '19', '33');
INSERT INTO `manager_role_authority` VALUES ('269', '19', '34');
INSERT INTO `manager_role_authority` VALUES ('270', '19', '35');
INSERT INTO `manager_role_authority` VALUES ('271', '19', '36');
INSERT INTO `manager_role_authority` VALUES ('272', '19', '37');
INSERT INTO `manager_role_authority` VALUES ('273', '19', '38');
INSERT INTO `manager_role_authority` VALUES ('274', '19', '39');
INSERT INTO `manager_role_authority` VALUES ('275', '19', '15');
INSERT INTO `manager_role_authority` VALUES ('276', '19', '40');
INSERT INTO `manager_role_authority` VALUES ('277', '19', '41');
INSERT INTO `manager_role_authority` VALUES ('278', '19', '42');
INSERT INTO `manager_role_authority` VALUES ('279', '19', '43');
INSERT INTO `manager_role_authority` VALUES ('280', '19', '44');
INSERT INTO `manager_role_authority` VALUES ('281', '19', '45');
INSERT INTO `manager_role_authority` VALUES ('282', '19', '46');
INSERT INTO `manager_role_authority` VALUES ('283', '19', '16');
INSERT INTO `manager_role_authority` VALUES ('284', '19', '47');
INSERT INTO `manager_role_authority` VALUES ('285', '19', '48');
INSERT INTO `manager_role_authority` VALUES ('286', '19', '49');
INSERT INTO `manager_role_authority` VALUES ('287', '19', '50');
INSERT INTO `manager_role_authority` VALUES ('288', '19', '51');
INSERT INTO `manager_role_authority` VALUES ('289', '19', '52');
INSERT INTO `manager_role_authority` VALUES ('290', '19', '53');
INSERT INTO `manager_role_authority` VALUES ('291', '19', '54');
INSERT INTO `manager_role_authority` VALUES ('292', '19', '55');
INSERT INTO `manager_role_authority` VALUES ('293', '19', '56');
INSERT INTO `manager_role_authority` VALUES ('294', '19', '57');
INSERT INTO `manager_role_authority` VALUES ('295', '19', '58');
INSERT INTO `manager_role_authority` VALUES ('296', '19', '17');
INSERT INTO `manager_role_authority` VALUES ('297', '19', '59');
INSERT INTO `manager_role_authority` VALUES ('298', '19', '60');
INSERT INTO `manager_role_authority` VALUES ('299', '19', '61');
INSERT INTO `manager_role_authority` VALUES ('300', '19', '62');
INSERT INTO `manager_role_authority` VALUES ('301', '19', '63');
INSERT INTO `manager_role_authority` VALUES ('302', '19', '18');
INSERT INTO `manager_role_authority` VALUES ('303', '19', '64');
INSERT INTO `manager_role_authority` VALUES ('304', '19', '65');
INSERT INTO `manager_role_authority` VALUES ('305', '19', '66');
INSERT INTO `manager_role_authority` VALUES ('306', '19', '67');
INSERT INTO `manager_role_authority` VALUES ('307', '19', '68');
INSERT INTO `manager_role_authority` VALUES ('308', '19', '69');
INSERT INTO `manager_role_authority` VALUES ('309', '19', '70');
INSERT INTO `manager_role_authority` VALUES ('310', '19', '71');
INSERT INTO `manager_role_authority` VALUES ('311', '19', '72');
INSERT INTO `manager_role_authority` VALUES ('312', '19', '73');
INSERT INTO `manager_role_authority` VALUES ('313', '19', '150');
INSERT INTO `manager_role_authority` VALUES ('314', '19', '151');
INSERT INTO `manager_role_authority` VALUES ('315', '19', '153');
INSERT INTO `manager_role_authority` VALUES ('316', '19', '154');
INSERT INTO `manager_role_authority` VALUES ('657', '2', '74');
INSERT INTO `manager_role_authority` VALUES ('658', '2', '76');
INSERT INTO `manager_role_authority` VALUES ('659', '2', '94');
INSERT INTO `manager_role_authority` VALUES ('660', '2', '95');
INSERT INTO `manager_role_authority` VALUES ('661', '2', '96');
INSERT INTO `manager_role_authority` VALUES ('662', '2', '97');
INSERT INTO `manager_role_authority` VALUES ('663', '2', '98');
INSERT INTO `manager_role_authority` VALUES ('664', '2', '102');
INSERT INTO `manager_role_authority` VALUES ('665', '2', '103');
INSERT INTO `manager_role_authority` VALUES ('666', '2', '104');
INSERT INTO `manager_role_authority` VALUES ('667', '2', '105');
INSERT INTO `manager_role_authority` VALUES ('668', '2', '106');
INSERT INTO `manager_role_authority` VALUES ('669', '2', '107');
INSERT INTO `manager_role_authority` VALUES ('670', '2', '108');
INSERT INTO `manager_role_authority` VALUES ('671', '2', '109');
INSERT INTO `manager_role_authority` VALUES ('672', '1', '1');
INSERT INTO `manager_role_authority` VALUES ('673', '1', '2');
INSERT INTO `manager_role_authority` VALUES ('674', '1', '3');
INSERT INTO `manager_role_authority` VALUES ('675', '1', '4');
INSERT INTO `manager_role_authority` VALUES ('676', '1', '5');
INSERT INTO `manager_role_authority` VALUES ('677', '1', '6');
INSERT INTO `manager_role_authority` VALUES ('678', '1', '7');
INSERT INTO `manager_role_authority` VALUES ('679', '1', '8');
INSERT INTO `manager_role_authority` VALUES ('680', '1', '9');
INSERT INTO `manager_role_authority` VALUES ('681', '1', '10');
INSERT INTO `manager_role_authority` VALUES ('682', '1', '11');
INSERT INTO `manager_role_authority` VALUES ('683', '1', '12');
INSERT INTO `manager_role_authority` VALUES ('684', '1', '13');
INSERT INTO `manager_role_authority` VALUES ('685', '1', '19');
INSERT INTO `manager_role_authority` VALUES ('686', '1', '20');
INSERT INTO `manager_role_authority` VALUES ('687', '1', '21');
INSERT INTO `manager_role_authority` VALUES ('688', '1', '22');
INSERT INTO `manager_role_authority` VALUES ('689', '1', '23');
INSERT INTO `manager_role_authority` VALUES ('690', '1', '24');
INSERT INTO `manager_role_authority` VALUES ('691', '1', '25');
INSERT INTO `manager_role_authority` VALUES ('692', '1', '26');
INSERT INTO `manager_role_authority` VALUES ('693', '1', '27');
INSERT INTO `manager_role_authority` VALUES ('694', '1', '28');
INSERT INTO `manager_role_authority` VALUES ('695', '1', '29');
INSERT INTO `manager_role_authority` VALUES ('696', '1', '14');
INSERT INTO `manager_role_authority` VALUES ('697', '1', '30');
INSERT INTO `manager_role_authority` VALUES ('698', '1', '31');
INSERT INTO `manager_role_authority` VALUES ('699', '1', '32');
INSERT INTO `manager_role_authority` VALUES ('700', '1', '33');
INSERT INTO `manager_role_authority` VALUES ('701', '1', '34');
INSERT INTO `manager_role_authority` VALUES ('702', '1', '35');
INSERT INTO `manager_role_authority` VALUES ('703', '1', '36');
INSERT INTO `manager_role_authority` VALUES ('704', '1', '37');
INSERT INTO `manager_role_authority` VALUES ('705', '1', '38');
INSERT INTO `manager_role_authority` VALUES ('706', '1', '39');
INSERT INTO `manager_role_authority` VALUES ('707', '1', '15');
INSERT INTO `manager_role_authority` VALUES ('708', '1', '40');
INSERT INTO `manager_role_authority` VALUES ('709', '1', '41');
INSERT INTO `manager_role_authority` VALUES ('710', '1', '42');
INSERT INTO `manager_role_authority` VALUES ('711', '1', '43');
INSERT INTO `manager_role_authority` VALUES ('712', '1', '44');
INSERT INTO `manager_role_authority` VALUES ('713', '1', '45');
INSERT INTO `manager_role_authority` VALUES ('714', '1', '46');
INSERT INTO `manager_role_authority` VALUES ('715', '1', '16');
INSERT INTO `manager_role_authority` VALUES ('716', '1', '47');
INSERT INTO `manager_role_authority` VALUES ('717', '1', '48');
INSERT INTO `manager_role_authority` VALUES ('718', '1', '49');
INSERT INTO `manager_role_authority` VALUES ('719', '1', '50');
INSERT INTO `manager_role_authority` VALUES ('720', '1', '51');
INSERT INTO `manager_role_authority` VALUES ('721', '1', '52');
INSERT INTO `manager_role_authority` VALUES ('722', '1', '53');
INSERT INTO `manager_role_authority` VALUES ('723', '1', '54');
INSERT INTO `manager_role_authority` VALUES ('724', '1', '55');
INSERT INTO `manager_role_authority` VALUES ('725', '1', '56');
INSERT INTO `manager_role_authority` VALUES ('726', '1', '57');
INSERT INTO `manager_role_authority` VALUES ('727', '1', '58');
INSERT INTO `manager_role_authority` VALUES ('728', '1', '17');
INSERT INTO `manager_role_authority` VALUES ('729', '1', '59');
INSERT INTO `manager_role_authority` VALUES ('730', '1', '60');
INSERT INTO `manager_role_authority` VALUES ('731', '1', '61');
INSERT INTO `manager_role_authority` VALUES ('732', '1', '62');
INSERT INTO `manager_role_authority` VALUES ('733', '1', '63');
INSERT INTO `manager_role_authority` VALUES ('734', '1', '18');
INSERT INTO `manager_role_authority` VALUES ('735', '1', '64');
INSERT INTO `manager_role_authority` VALUES ('736', '1', '65');
INSERT INTO `manager_role_authority` VALUES ('737', '1', '66');
INSERT INTO `manager_role_authority` VALUES ('738', '1', '67');
INSERT INTO `manager_role_authority` VALUES ('739', '1', '68');
INSERT INTO `manager_role_authority` VALUES ('740', '1', '69');
INSERT INTO `manager_role_authority` VALUES ('741', '1', '70');
INSERT INTO `manager_role_authority` VALUES ('742', '1', '71');
INSERT INTO `manager_role_authority` VALUES ('743', '1', '72');
INSERT INTO `manager_role_authority` VALUES ('744', '1', '73');
INSERT INTO `manager_role_authority` VALUES ('745', '1', '74');
INSERT INTO `manager_role_authority` VALUES ('746', '1', '75');
INSERT INTO `manager_role_authority` VALUES ('747', '1', '79');
INSERT INTO `manager_role_authority` VALUES ('748', '1', '80');
INSERT INTO `manager_role_authority` VALUES ('749', '1', '81');
INSERT INTO `manager_role_authority` VALUES ('750', '1', '82');
INSERT INTO `manager_role_authority` VALUES ('751', '1', '83');
INSERT INTO `manager_role_authority` VALUES ('752', '1', '84');
INSERT INTO `manager_role_authority` VALUES ('753', '1', '85');
INSERT INTO `manager_role_authority` VALUES ('754', '1', '86');
INSERT INTO `manager_role_authority` VALUES ('755', '1', '87');
INSERT INTO `manager_role_authority` VALUES ('756', '1', '88');
INSERT INTO `manager_role_authority` VALUES ('757', '1', '89');
INSERT INTO `manager_role_authority` VALUES ('758', '1', '90');
INSERT INTO `manager_role_authority` VALUES ('759', '1', '91');
INSERT INTO `manager_role_authority` VALUES ('760', '1', '92');
INSERT INTO `manager_role_authority` VALUES ('761', '1', '93');
INSERT INTO `manager_role_authority` VALUES ('762', '1', '76');
INSERT INTO `manager_role_authority` VALUES ('763', '1', '94');
INSERT INTO `manager_role_authority` VALUES ('764', '1', '95');
INSERT INTO `manager_role_authority` VALUES ('765', '1', '96');
INSERT INTO `manager_role_authority` VALUES ('766', '1', '97');
INSERT INTO `manager_role_authority` VALUES ('767', '1', '98');
INSERT INTO `manager_role_authority` VALUES ('768', '1', '99');
INSERT INTO `manager_role_authority` VALUES ('769', '1', '100');
INSERT INTO `manager_role_authority` VALUES ('770', '1', '101');
INSERT INTO `manager_role_authority` VALUES ('771', '1', '102');
INSERT INTO `manager_role_authority` VALUES ('772', '1', '103');
INSERT INTO `manager_role_authority` VALUES ('773', '1', '104');
INSERT INTO `manager_role_authority` VALUES ('774', '1', '105');
INSERT INTO `manager_role_authority` VALUES ('775', '1', '106');
INSERT INTO `manager_role_authority` VALUES ('776', '1', '107');
INSERT INTO `manager_role_authority` VALUES ('777', '1', '108');
INSERT INTO `manager_role_authority` VALUES ('778', '1', '109');
INSERT INTO `manager_role_authority` VALUES ('779', '1', '77');
INSERT INTO `manager_role_authority` VALUES ('780', '1', '110');
INSERT INTO `manager_role_authority` VALUES ('781', '1', '111');
INSERT INTO `manager_role_authority` VALUES ('782', '1', '78');
INSERT INTO `manager_role_authority` VALUES ('783', '1', '112');
INSERT INTO `manager_role_authority` VALUES ('784', '1', '113');
INSERT INTO `manager_role_authority` VALUES ('785', '1', '114');
INSERT INTO `manager_role_authority` VALUES ('786', '1', '115');
INSERT INTO `manager_role_authority` VALUES ('787', '1', '116');
INSERT INTO `manager_role_authority` VALUES ('788', '1', '117');
INSERT INTO `manager_role_authority` VALUES ('789', '1', '118');
INSERT INTO `manager_role_authority` VALUES ('790', '1', '122');
INSERT INTO `manager_role_authority` VALUES ('791', '1', '123');
INSERT INTO `manager_role_authority` VALUES ('792', '1', '124');
INSERT INTO `manager_role_authority` VALUES ('793', '1', '125');
INSERT INTO `manager_role_authority` VALUES ('794', '1', '126');
INSERT INTO `manager_role_authority` VALUES ('795', '1', '127');
INSERT INTO `manager_role_authority` VALUES ('796', '1', '128');
INSERT INTO `manager_role_authority` VALUES ('797', '1', '119');
INSERT INTO `manager_role_authority` VALUES ('798', '1', '129');
INSERT INTO `manager_role_authority` VALUES ('799', '1', '130');
INSERT INTO `manager_role_authority` VALUES ('800', '1', '120');
INSERT INTO `manager_role_authority` VALUES ('801', '1', '131');
INSERT INTO `manager_role_authority` VALUES ('802', '1', '132');
INSERT INTO `manager_role_authority` VALUES ('803', '1', '121');
INSERT INTO `manager_role_authority` VALUES ('804', '1', '133');
INSERT INTO `manager_role_authority` VALUES ('805', '1', '134');
INSERT INTO `manager_role_authority` VALUES ('806', '1', '135');
INSERT INTO `manager_role_authority` VALUES ('807', '1', '136');
INSERT INTO `manager_role_authority` VALUES ('808', '1', '138');
INSERT INTO `manager_role_authority` VALUES ('809', '1', '139');
INSERT INTO `manager_role_authority` VALUES ('810', '1', '140');
INSERT INTO `manager_role_authority` VALUES ('811', '1', '141');
INSERT INTO `manager_role_authority` VALUES ('812', '1', '142');
INSERT INTO `manager_role_authority` VALUES ('813', '1', '143');
INSERT INTO `manager_role_authority` VALUES ('814', '1', '144');
INSERT INTO `manager_role_authority` VALUES ('815', '1', '145');
INSERT INTO `manager_role_authority` VALUES ('816', '1', '137');
INSERT INTO `manager_role_authority` VALUES ('817', '1', '146');
INSERT INTO `manager_role_authority` VALUES ('818', '1', '147');
INSERT INTO `manager_role_authority` VALUES ('819', '1', '148');
INSERT INTO `manager_role_authority` VALUES ('820', '1', '149');
INSERT INTO `manager_role_authority` VALUES ('821', '1', '150');
INSERT INTO `manager_role_authority` VALUES ('822', '1', '151');
INSERT INTO `manager_role_authority` VALUES ('823', '1', '153');
INSERT INTO `manager_role_authority` VALUES ('824', '1', '154');
INSERT INTO `manager_role_authority` VALUES ('825', '1', '152');
INSERT INTO `manager_role_authority` VALUES ('826', '1', '155');
INSERT INTO `manager_role_authority` VALUES ('827', '1', '156');
INSERT INTO `manager_role_authority` VALUES ('828', '1', '157');
INSERT INTO `manager_role_authority` VALUES ('829', '1', '158');
INSERT INTO `manager_role_authority` VALUES ('830', '1', '159');
INSERT INTO `manager_role_authority` VALUES ('831', '1', '160');
INSERT INTO `manager_role_authority` VALUES ('832', '1', '162');
INSERT INTO `manager_role_authority` VALUES ('833', '1', '163');
INSERT INTO `manager_role_authority` VALUES ('834', '1', '164');
INSERT INTO `manager_role_authority` VALUES ('835', '1', '165');
INSERT INTO `manager_role_authority` VALUES ('836', '1', '166');
INSERT INTO `manager_role_authority` VALUES ('837', '1', '161');
INSERT INTO `manager_role_authority` VALUES ('838', '1', '167');
INSERT INTO `manager_role_authority` VALUES ('839', '1', '168');
INSERT INTO `manager_role_authority` VALUES ('840', '1', '169');
INSERT INTO `manager_role_authority` VALUES ('841', '1', '170');
INSERT INTO `manager_role_authority` VALUES ('842', '1', '171');
INSERT INTO `manager_role_authority` VALUES ('843', '1', '172');
INSERT INTO `manager_role_authority` VALUES ('844', '1', '173');
INSERT INTO `manager_role_authority` VALUES ('845', '1', '174');
INSERT INTO `manager_role_authority` VALUES ('846', '1', '175');
INSERT INTO `manager_role_authority` VALUES ('847', '1', '176');
INSERT INTO `manager_role_authority` VALUES ('848', '1', '177');
INSERT INTO `manager_role_authority` VALUES ('849', '1', '178');
INSERT INTO `manager_role_authority` VALUES ('850', '1', '193');
INSERT INTO `manager_role_authority` VALUES ('851', '1', '194');
INSERT INTO `manager_role_authority` VALUES ('852', '1', '179');
INSERT INTO `manager_role_authority` VALUES ('853', '1', '180');
INSERT INTO `manager_role_authority` VALUES ('854', '1', '182');
INSERT INTO `manager_role_authority` VALUES ('855', '1', '183');
INSERT INTO `manager_role_authority` VALUES ('856', '1', '184');
INSERT INTO `manager_role_authority` VALUES ('857', '1', '185');
INSERT INTO `manager_role_authority` VALUES ('858', '1', '186');
INSERT INTO `manager_role_authority` VALUES ('859', '1', '187');
INSERT INTO `manager_role_authority` VALUES ('860', '1', '188');
INSERT INTO `manager_role_authority` VALUES ('861', '1', '189');
INSERT INTO `manager_role_authority` VALUES ('862', '1', '190');
INSERT INTO `manager_role_authority` VALUES ('863', '1', '181');
INSERT INTO `manager_role_authority` VALUES ('864', '1', '191');
INSERT INTO `manager_role_authority` VALUES ('865', '1', '192');
