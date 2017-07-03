/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2017-06-30 18:01:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('25', '2', '24', '开发部', '开发部', '', null);
INSERT INTO `dept` VALUES ('26', '3', '24', '运营部', '运营部', '', null);
INSERT INTO `dept` VALUES ('27', '4', '24', '战略部', '战略部', '', null);
INSERT INTO `dept` VALUES ('34', '5', '1', '测试', '测试fullname', '测试tips', '1');
INSERT INTO `dept` VALUES ('35', '5', '1', '测试', '测试fullname', '测试tips', '1');
INSERT INTO `dept` VALUES ('36', '5', '1', '测试', '测试fullname', '测试tips', '1');
INSERT INTO `dept` VALUES ('37', '5', '1', '测试', '测试fullname', '测试tips', '1');
INSERT INTO `dept` VALUES ('38', '5', '1', '测试', '测试fullname', '测试tips', '1');
INSERT INTO `dept` VALUES ('39', '5', '1', '测试', '测试fullname', '测试tips', '1');

-- ----------------------------
-- Table structure for `dict`
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('29', '0', '0', '性别', null);
INSERT INTO `dict` VALUES ('30', '1', '29', '男', null);
INSERT INTO `dict` VALUES ('31', '2', '29', '女', null);
INSERT INTO `dict` VALUES ('35', '0', '0', '账号状态', null);
INSERT INTO `dict` VALUES ('36', '1', '35', '启用', null);
INSERT INTO `dict` VALUES ('37', '2', '35', '冻结', null);
INSERT INTO `dict` VALUES ('38', '3', '35', '已删除', null);
INSERT INTO `dict` VALUES ('39', '0', '0', '这是一个字典测试', null);
INSERT INTO `dict` VALUES ('40', '1', '39', '测试1', null);
INSERT INTO `dict` VALUES ('41', '2', '39', '测试2', null);
INSERT INTO `dict` VALUES ('42', '0', '0', '测试', null);
INSERT INTO `dict` VALUES ('43', '1', '42', '测试1', null);
INSERT INTO `dict` VALUES ('44', '2', '42', '测试2', null);
INSERT INTO `dict` VALUES ('49', '0', '0', '推送方式', null);
INSERT INTO `dict` VALUES ('50', '0', '49', '全局', null);
INSERT INTO `dict` VALUES ('51', '1', '49', '安卓', null);
INSERT INTO `dict` VALUES ('52', '2', '49', 'ios', null);
INSERT INTO `dict` VALUES ('53', '3', '49', 'wp', null);

-- ----------------------------
-- Table structure for `login_log`
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('126', '退出日志', '1', '2017-06-04 10:21:55', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('127', '登录日志', '1', '2017-06-04 10:21:59', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('128', '退出日志', '1', '2017-06-04 10:22:59', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('129', '登录日志', '1', '2017-06-04 10:23:01', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('130', '登录日志', '1', '2017-06-30 13:57:39', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('131', '退出日志', '1', '2017-06-30 14:06:53', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('132', '登录日志', '45', '2017-06-30 14:06:56', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('133', '退出日志', '45', '2017-06-30 14:08:58', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('134', '登录日志', '1', '2017-06-30 14:09:01', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('135', '退出日志', '1', '2017-06-30 14:13:02', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('136', '登录日志', '1', '2017-06-30 14:13:07', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('137', '退出日志', '1', '2017-06-30 14:14:18', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('138', '登录日志', '45', '2017-06-30 14:14:21', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('139', '退出日志', '45', '2017-06-30 14:14:52', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('140', '登录日志', '1', '2017-06-30 14:14:55', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('141', '退出日志', '1', '2017-06-30 14:46:20', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('142', '登录日志', '1', '2017-06-30 14:46:47', '成功', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'fa-user', '', '3', '1', '1', null, '1', '1');
INSERT INTO `menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `menu` VALUES ('148', 'code', 'system', '[0],[system],', '代码生成', 'fa-user', '/code', '10', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('168', '1', '0', null, '订单管理', '', '/dict', '1', '1', '1', null, '1', null);

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('6', '世界', '10', '欢迎使用Guns管理系统', '2017-01-11 08:53:20', '1');
INSERT INTO `notice` VALUES ('8', '你好', null, '你好', '2017-05-10 19:28:57', '1');
INSERT INTO `notice` VALUES ('11', 'hello all', null, '请按时做面，谢谢！', '2017-06-30 14:05:25', '1');

-- ----------------------------
-- Table structure for `operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=522 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('521', '业务日志', '清空业务日志', '1', 'com.stylefeng.guns.modular.system.controller.LogController', 'delLog', '2017-06-30 17:56:05', '成功', '主键id=null');

-- ----------------------------
-- Table structure for `relation`
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` int(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3846 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('3377', '105', '5');
INSERT INTO `relation` VALUES ('3378', '106', '5');
INSERT INTO `relation` VALUES ('3379', '107', '5');
INSERT INTO `relation` VALUES ('3380', '108', '5');
INSERT INTO `relation` VALUES ('3381', '109', '5');
INSERT INTO `relation` VALUES ('3382', '110', '5');
INSERT INTO `relation` VALUES ('3383', '111', '5');
INSERT INTO `relation` VALUES ('3384', '112', '5');
INSERT INTO `relation` VALUES ('3385', '113', '5');
INSERT INTO `relation` VALUES ('3386', '114', '5');
INSERT INTO `relation` VALUES ('3387', '115', '5');
INSERT INTO `relation` VALUES ('3388', '116', '5');
INSERT INTO `relation` VALUES ('3389', '117', '5');
INSERT INTO `relation` VALUES ('3390', '118', '5');
INSERT INTO `relation` VALUES ('3391', '119', '5');
INSERT INTO `relation` VALUES ('3392', '120', '5');
INSERT INTO `relation` VALUES ('3393', '121', '5');
INSERT INTO `relation` VALUES ('3394', '122', '5');
INSERT INTO `relation` VALUES ('3395', '150', '5');
INSERT INTO `relation` VALUES ('3396', '151', '5');
INSERT INTO `relation` VALUES ('3734', '105', '6');
INSERT INTO `relation` VALUES ('3735', '106', '6');
INSERT INTO `relation` VALUES ('3736', '107', '6');
INSERT INTO `relation` VALUES ('3737', '108', '6');
INSERT INTO `relation` VALUES ('3738', '109', '6');
INSERT INTO `relation` VALUES ('3739', '110', '6');
INSERT INTO `relation` VALUES ('3740', '111', '6');
INSERT INTO `relation` VALUES ('3741', '112', '6');
INSERT INTO `relation` VALUES ('3742', '113', '6');
INSERT INTO `relation` VALUES ('3743', '165', '6');
INSERT INTO `relation` VALUES ('3744', '166', '6');
INSERT INTO `relation` VALUES ('3745', '167', '6');
INSERT INTO `relation` VALUES ('3746', '114', '6');
INSERT INTO `relation` VALUES ('3747', '115', '6');
INSERT INTO `relation` VALUES ('3748', '116', '6');
INSERT INTO `relation` VALUES ('3749', '117', '6');
INSERT INTO `relation` VALUES ('3750', '118', '6');
INSERT INTO `relation` VALUES ('3751', '162', '6');
INSERT INTO `relation` VALUES ('3752', '163', '6');
INSERT INTO `relation` VALUES ('3753', '164', '6');
INSERT INTO `relation` VALUES ('3754', '119', '6');
INSERT INTO `relation` VALUES ('3755', '120', '6');
INSERT INTO `relation` VALUES ('3756', '121', '6');
INSERT INTO `relation` VALUES ('3757', '122', '6');
INSERT INTO `relation` VALUES ('3758', '150', '6');
INSERT INTO `relation` VALUES ('3759', '151', '6');
INSERT INTO `relation` VALUES ('3760', '128', '6');
INSERT INTO `relation` VALUES ('3761', '134', '6');
INSERT INTO `relation` VALUES ('3762', '158', '6');
INSERT INTO `relation` VALUES ('3763', '159', '6');
INSERT INTO `relation` VALUES ('3764', '130', '6');
INSERT INTO `relation` VALUES ('3765', '131', '6');
INSERT INTO `relation` VALUES ('3766', '135', '6');
INSERT INTO `relation` VALUES ('3767', '136', '6');
INSERT INTO `relation` VALUES ('3768', '137', '6');
INSERT INTO `relation` VALUES ('3769', '152', '6');
INSERT INTO `relation` VALUES ('3770', '153', '6');
INSERT INTO `relation` VALUES ('3771', '154', '6');
INSERT INTO `relation` VALUES ('3772', '132', '6');
INSERT INTO `relation` VALUES ('3773', '138', '6');
INSERT INTO `relation` VALUES ('3774', '139', '6');
INSERT INTO `relation` VALUES ('3775', '140', '6');
INSERT INTO `relation` VALUES ('3776', '155', '6');
INSERT INTO `relation` VALUES ('3777', '156', '6');
INSERT INTO `relation` VALUES ('3778', '157', '6');
INSERT INTO `relation` VALUES ('3779', '133', '6');
INSERT INTO `relation` VALUES ('3780', '160', '6');
INSERT INTO `relation` VALUES ('3781', '161', '6');
INSERT INTO `relation` VALUES ('3782', '141', '6');
INSERT INTO `relation` VALUES ('3783', '142', '6');
INSERT INTO `relation` VALUES ('3784', '143', '6');
INSERT INTO `relation` VALUES ('3785', '144', '6');
INSERT INTO `relation` VALUES ('3786', '148', '6');
INSERT INTO `relation` VALUES ('3787', '145', '6');
INSERT INTO `relation` VALUES ('3788', '149', '6');
INSERT INTO `relation` VALUES ('3789', '168', '6');
INSERT INTO `relation` VALUES ('3790', '105', '1');
INSERT INTO `relation` VALUES ('3791', '106', '1');
INSERT INTO `relation` VALUES ('3792', '107', '1');
INSERT INTO `relation` VALUES ('3793', '108', '1');
INSERT INTO `relation` VALUES ('3794', '109', '1');
INSERT INTO `relation` VALUES ('3795', '110', '1');
INSERT INTO `relation` VALUES ('3796', '111', '1');
INSERT INTO `relation` VALUES ('3797', '112', '1');
INSERT INTO `relation` VALUES ('3798', '113', '1');
INSERT INTO `relation` VALUES ('3799', '165', '1');
INSERT INTO `relation` VALUES ('3800', '166', '1');
INSERT INTO `relation` VALUES ('3801', '167', '1');
INSERT INTO `relation` VALUES ('3802', '114', '1');
INSERT INTO `relation` VALUES ('3803', '115', '1');
INSERT INTO `relation` VALUES ('3804', '116', '1');
INSERT INTO `relation` VALUES ('3805', '117', '1');
INSERT INTO `relation` VALUES ('3806', '118', '1');
INSERT INTO `relation` VALUES ('3807', '162', '1');
INSERT INTO `relation` VALUES ('3808', '163', '1');
INSERT INTO `relation` VALUES ('3809', '164', '1');
INSERT INTO `relation` VALUES ('3810', '119', '1');
INSERT INTO `relation` VALUES ('3811', '120', '1');
INSERT INTO `relation` VALUES ('3812', '121', '1');
INSERT INTO `relation` VALUES ('3813', '122', '1');
INSERT INTO `relation` VALUES ('3814', '150', '1');
INSERT INTO `relation` VALUES ('3815', '151', '1');
INSERT INTO `relation` VALUES ('3816', '128', '1');
INSERT INTO `relation` VALUES ('3817', '134', '1');
INSERT INTO `relation` VALUES ('3818', '158', '1');
INSERT INTO `relation` VALUES ('3819', '159', '1');
INSERT INTO `relation` VALUES ('3820', '130', '1');
INSERT INTO `relation` VALUES ('3821', '131', '1');
INSERT INTO `relation` VALUES ('3822', '135', '1');
INSERT INTO `relation` VALUES ('3823', '136', '1');
INSERT INTO `relation` VALUES ('3824', '137', '1');
INSERT INTO `relation` VALUES ('3825', '152', '1');
INSERT INTO `relation` VALUES ('3826', '153', '1');
INSERT INTO `relation` VALUES ('3827', '154', '1');
INSERT INTO `relation` VALUES ('3828', '132', '1');
INSERT INTO `relation` VALUES ('3829', '138', '1');
INSERT INTO `relation` VALUES ('3830', '139', '1');
INSERT INTO `relation` VALUES ('3831', '140', '1');
INSERT INTO `relation` VALUES ('3832', '155', '1');
INSERT INTO `relation` VALUES ('3833', '156', '1');
INSERT INTO `relation` VALUES ('3834', '157', '1');
INSERT INTO `relation` VALUES ('3835', '133', '1');
INSERT INTO `relation` VALUES ('3836', '160', '1');
INSERT INTO `relation` VALUES ('3837', '161', '1');
INSERT INTO `relation` VALUES ('3838', '141', '1');
INSERT INTO `relation` VALUES ('3839', '142', '1');
INSERT INTO `relation` VALUES ('3840', '143', '1');
INSERT INTO `relation` VALUES ('3841', '144', '1');
INSERT INTO `relation` VALUES ('3842', '148', '1');
INSERT INTO `relation` VALUES ('3843', '145', '1');
INSERT INTO `relation` VALUES ('3844', '149', '1');
INSERT INTO `relation` VALUES ('3845', '168', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `role` VALUES ('5', '2', '1', '临时', '26', 'temp', null);
INSERT INTO `role` VALUES ('6', null, '0', '城管', null, '城管', null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '123');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'b56b3aa5-7a5d-4ccb-bae3-592394f01786.jpg', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '神逝花月魔', '2017-05-05 00:00:00', '2', '286899139@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `user` VALUES ('44', null, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '1', '2017-05-16 20:33:37', null);
INSERT INTO `user` VALUES ('45', null, 'gaowh', '4dd13211eaf750e47b6b76c7270858ba', 'duqyw', 'gaowh', '1983-06-30 00:00:00', '1', '', '', '6', '27', '1', '2017-06-30 14:00:20', null);
