/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : job_echarts

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 03/02/2024 14:06:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 城市分布
-- ----------------------------
DROP TABLE IF EXISTS `城市分布`;
CREATE TABLE `城市分布`  (
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 城市分布
-- ----------------------------
INSERT INTO `城市分布` VALUES ('三亚', 2);
INSERT INTO `城市分布` VALUES ('上海', 343);
INSERT INTO `城市分布` VALUES ('东莞', 24);
INSERT INTO `城市分布` VALUES ('中山', 2);
INSERT INTO `城市分布` VALUES ('临沂', 1);
INSERT INTO `城市分布` VALUES ('乌鲁木齐', 9);
INSERT INTO `城市分布` VALUES ('佛山', 13);
INSERT INTO `城市分布` VALUES ('保定', 5);
INSERT INTO `城市分布` VALUES ('信阳', 1);
INSERT INTO `城市分布` VALUES ('兰州', 6);
INSERT INTO `城市分布` VALUES ('包头', 4);
INSERT INTO `城市分布` VALUES ('北京', 455);
INSERT INTO `城市分布` VALUES ('南京', 150);
INSERT INTO `城市分布` VALUES ('南充', 1);
INSERT INTO `城市分布` VALUES ('南宁', 10);
INSERT INTO `城市分布` VALUES ('南昌', 17);
INSERT INTO `城市分布` VALUES ('南通', 2);
INSERT INTO `城市分布` VALUES ('厦门', 45);
INSERT INTO `城市分布` VALUES ('台州', 1);
INSERT INTO `城市分布` VALUES ('合肥', 91);
INSERT INTO `城市分布` VALUES ('吉林市', 1);
INSERT INTO `城市分布` VALUES ('呼和浩特', 2);
INSERT INTO `城市分布` VALUES ('哈尔滨', 18);
INSERT INTO `城市分布` VALUES ('唐山', 6);
INSERT INTO `城市分布` VALUES ('商丘', 1);
INSERT INTO `城市分布` VALUES ('商洛', 1);
INSERT INTO `城市分布` VALUES ('嘉兴', 2);
INSERT INTO `城市分布` VALUES ('大连', 67);
INSERT INTO `城市分布` VALUES ('天津', 62);
INSERT INTO `城市分布` VALUES ('太原', 8);
INSERT INTO `城市分布` VALUES ('威海', 1);
INSERT INTO `城市分布` VALUES ('娄底', 2);
INSERT INTO `城市分布` VALUES ('宁德', 1);
INSERT INTO `城市分布` VALUES ('宁波', 19);
INSERT INTO `城市分布` VALUES ('宿州', 2);
INSERT INTO `城市分布` VALUES ('宿迁', 4);
INSERT INTO `城市分布` VALUES ('常州', 11);
INSERT INTO `城市分布` VALUES ('平顶山', 1);
INSERT INTO `城市分布` VALUES ('广州', 211);
INSERT INTO `城市分布` VALUES ('廊坊', 1);
INSERT INTO `城市分布` VALUES ('徐州', 9);
INSERT INTO `城市分布` VALUES ('德州', 1);
INSERT INTO `城市分布` VALUES ('成都', 222);
INSERT INTO `城市分布` VALUES ('攀枝花', 1);
INSERT INTO `城市分布` VALUES ('新乡', 1);
INSERT INTO `城市分布` VALUES ('无锡', 33);
INSERT INTO `城市分布` VALUES ('日照', 1);
INSERT INTO `城市分布` VALUES ('昆明', 7);
INSERT INTO `城市分布` VALUES ('晋中', 1);
INSERT INTO `城市分布` VALUES ('杭州', 129);
INSERT INTO `城市分布` VALUES ('松原', 1);
INSERT INTO `城市分布` VALUES ('柳州', 2);
INSERT INTO `城市分布` VALUES ('株洲', 1);
INSERT INTO `城市分布` VALUES ('榆林', 2);
INSERT INTO `城市分布` VALUES ('武汉', 152);
INSERT INTO `城市分布` VALUES ('汕头', 1);
INSERT INTO `城市分布` VALUES ('江门', 1);
INSERT INTO `城市分布` VALUES ('沈阳', 64);
INSERT INTO `城市分布` VALUES ('泉州', 1);
INSERT INTO `城市分布` VALUES ('泰安', 2);
INSERT INTO `城市分布` VALUES ('泰州', 1);
INSERT INTO `城市分布` VALUES ('洛阳', 1);
INSERT INTO `城市分布` VALUES ('济南', 126);
INSERT INTO `城市分布` VALUES ('济宁', 3);
INSERT INTO `城市分布` VALUES ('海口', 3);
INSERT INTO `城市分布` VALUES ('淄博', 8);
INSERT INTO `城市分布` VALUES ('淮安', 2);
INSERT INTO `城市分布` VALUES ('深圳', 291);
INSERT INTO `城市分布` VALUES ('温州', 4);
INSERT INTO `城市分布` VALUES ('滁州', 1);
INSERT INTO `城市分布` VALUES ('滨州', 3);
INSERT INTO `城市分布` VALUES ('潍坊', 16);
INSERT INTO `城市分布` VALUES ('烟台', 4);
INSERT INTO `城市分布` VALUES ('珠海', 2);
INSERT INTO `城市分布` VALUES ('白城', 1);
INSERT INTO `城市分布` VALUES ('益阳', 1);
INSERT INTO `城市分布` VALUES ('盐城', 4);
INSERT INTO `城市分布` VALUES ('石家庄', 32);
INSERT INTO `城市分布` VALUES ('福州', 79);
INSERT INTO `城市分布` VALUES ('秦皇岛', 4);
INSERT INTO `城市分布` VALUES ('绍兴', 1);
INSERT INTO `城市分布` VALUES ('绵阳', 1);
INSERT INTO `城市分布` VALUES ('芜湖', 1);
INSERT INTO `城市分布` VALUES ('苏州', 53);
INSERT INTO `城市分布` VALUES ('莆田', 1);
INSERT INTO `城市分布` VALUES ('蚌埠', 1);
INSERT INTO `城市分布` VALUES ('衡阳', 2);
INSERT INTO `城市分布` VALUES ('西宁', 2);
INSERT INTO `城市分布` VALUES ('西安', 146);
INSERT INTO `城市分布` VALUES ('贵港', 2);
INSERT INTO `城市分布` VALUES ('贵阳', 18);
INSERT INTO `城市分布` VALUES ('资阳', 1);
INSERT INTO `城市分布` VALUES ('赣州', 5);
INSERT INTO `城市分布` VALUES ('赤峰', 1);
INSERT INTO `城市分布` VALUES ('邢台', 1);
INSERT INTO `城市分布` VALUES ('邯郸', 1);
INSERT INTO `城市分布` VALUES ('郑州', 100);
INSERT INTO `城市分布` VALUES ('重庆', 138);
INSERT INTO `城市分布` VALUES ('银川', 3);
INSERT INTO `城市分布` VALUES ('长春', 34);
INSERT INTO `城市分布` VALUES ('长沙', 117);
INSERT INTO `城市分布` VALUES ('阜阳', 6);
INSERT INTO `城市分布` VALUES ('青岛', 126);
INSERT INTO `城市分布` VALUES ('香港', 1);
INSERT INTO `城市分布` VALUES ('驻马店', 2);

-- ----------------------------
-- Table structure for 城市职位需求量
-- ----------------------------
DROP TABLE IF EXISTS `城市职位需求量`;
CREATE TABLE `城市职位需求量`  (
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 城市职位需求量
-- ----------------------------
INSERT INTO `城市职位需求量` VALUES ('上海', 343);
INSERT INTO `城市职位需求量` VALUES ('北京', 455);
INSERT INTO `城市职位需求量` VALUES ('南京', 150);
INSERT INTO `城市职位需求量` VALUES ('合肥', 91);
INSERT INTO `城市职位需求量` VALUES ('大连', 67);
INSERT INTO `城市职位需求量` VALUES ('天津', 62);
INSERT INTO `城市职位需求量` VALUES ('广州', 211);
INSERT INTO `城市职位需求量` VALUES ('成都', 222);
INSERT INTO `城市职位需求量` VALUES ('杭州', 129);
INSERT INTO `城市职位需求量` VALUES ('武汉', 152);
INSERT INTO `城市职位需求量` VALUES ('沈阳', 64);
INSERT INTO `城市职位需求量` VALUES ('济南', 126);
INSERT INTO `城市职位需求量` VALUES ('深圳', 291);
INSERT INTO `城市职位需求量` VALUES ('福州', 79);
INSERT INTO `城市职位需求量` VALUES ('苏州', 53);
INSERT INTO `城市职位需求量` VALUES ('西安', 146);
INSERT INTO `城市职位需求量` VALUES ('郑州', 100);
INSERT INTO `城市职位需求量` VALUES ('重庆', 138);
INSERT INTO `城市职位需求量` VALUES ('长沙', 117);
INSERT INTO `城市职位需求量` VALUES ('青岛', 126);

-- ----------------------------
-- Table structure for 学历要求
-- ----------------------------
DROP TABLE IF EXISTS `学历要求`;
CREATE TABLE `学历要求`  (
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 学历要求
-- ----------------------------
INSERT INTO `学历要求` VALUES ('中专/中技', 13);
INSERT INTO `学历要求` VALUES ('博士', 57);
INSERT INTO `学历要求` VALUES ('大专', 669);
INSERT INTO `学历要求` VALUES ('学历不限', 84);
INSERT INTO `学历要求` VALUES ('本科', 2823);
INSERT INTO `学历要求` VALUES ('硕士', 408);
INSERT INTO `学历要求` VALUES ('高中', 18);

-- ----------------------------
-- Table structure for 经验要求
-- ----------------------------
DROP TABLE IF EXISTS `经验要求`;
CREATE TABLE `经验要求`  (
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 经验要求
-- ----------------------------
INSERT INTO `经验要求` VALUES ('1-3年', 723);
INSERT INTO `经验要求` VALUES ('10年以上', 40);
INSERT INTO `经验要求` VALUES ('1年以下', 35);
INSERT INTO `经验要求` VALUES ('3-5年', 1453);
INSERT INTO `经验要求` VALUES ('5-10年', 826);
INSERT INTO `经验要求` VALUES ('不限', 916);
INSERT INTO `经验要求` VALUES ('无经验', 79);

-- ----------------------------
-- Table structure for 薪水分布
-- ----------------------------
DROP TABLE IF EXISTS `薪水分布`;
CREATE TABLE `薪水分布`  (
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 薪水分布
-- ----------------------------
INSERT INTO `薪水分布` VALUES ('0k-5k', 56);
INSERT INTO `薪水分布` VALUES ('100k以上', 6);
INSERT INTO `薪水分布` VALUES ('10k-15k', 910);
INSERT INTO `薪水分布` VALUES ('15k-20k', 1179);
INSERT INTO `薪水分布` VALUES ('20k-25k', 524);
INSERT INTO `薪水分布` VALUES ('25k-30k', 469);
INSERT INTO `薪水分布` VALUES ('30k-35k', 109);
INSERT INTO `薪水分布` VALUES ('35k-40k', 95);
INSERT INTO `薪水分布` VALUES ('40k-45k', 26);
INSERT INTO `薪水分布` VALUES ('45k-50k', 39);
INSERT INTO `薪水分布` VALUES ('50k-55k', 3);
INSERT INTO `薪水分布` VALUES ('55k-60k', 15);
INSERT INTO `薪水分布` VALUES ('5k-10k', 489);
INSERT INTO `薪水分布` VALUES ('60k-65k', 6);
INSERT INTO `薪水分布` VALUES ('65k-70k', 3);
INSERT INTO `薪水分布` VALUES ('75k-80k', 4);
INSERT INTO `薪水分布` VALUES ('95k-100k', 4);
INSERT INTO `薪水分布` VALUES ('面试', 135);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add userinfo', 7, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (26, 'Can change userinfo', 7, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (27, 'Can delete userinfo', 7, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (28, 'Can view userinfo', 7, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (29, 'Can add evaluate', 8, 'add_evaluate');
INSERT INTO `auth_permission` VALUES (30, 'Can change evaluate', 8, 'change_evaluate');
INSERT INTO `auth_permission` VALUES (31, 'Can delete evaluate', 8, 'delete_evaluate');
INSERT INTO `auth_permission` VALUES (32, 'Can view evaluate', 8, 'view_evaluate');
INSERT INTO `auth_permission` VALUES (33, 'Can add scenery', 9, 'add_scenery');
INSERT INTO `auth_permission` VALUES (34, 'Can change scenery', 9, 'change_scenery');
INSERT INTO `auth_permission` VALUES (35, 'Can delete scenery', 9, 'delete_scenery');
INSERT INTO `auth_permission` VALUES (36, 'Can view scenery', 9, 'view_scenery');
INSERT INTO `auth_permission` VALUES (37, 'Can add spider log', 10, 'add_spiderlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change spider log', 10, 'change_spiderlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete spider log', 10, 'delete_spiderlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view spider log', 10, 'view_spiderlog');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'mainapp', 'userinfo');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'warehouse', 'evaluate');
INSERT INTO `django_content_type` VALUES (9, 'warehouse', 'scenery');
INSERT INTO `django_content_type` VALUES (10, 'warehouse', 'spiderlog');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-05-11 10:04:52.389418');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-05-11 10:04:53.218116');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-05-11 10:04:53.434857');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-05-11 10:04:53.479293');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-11 10:04:53.522638');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-05-11 10:04:53.727959');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-05-11 10:04:53.833486');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-05-11 10:04:53.918375');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-05-11 10:04:53.975336');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-05-11 10:04:54.078936');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-05-11 10:04:54.117558');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-11 10:04:54.163965');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-05-11 10:04:54.256678');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-11 10:04:54.363235');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-05-11 10:04:54.450117');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-05-11 10:04:54.546508');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-11 10:04:54.648724');
INSERT INTO `django_migrations` VALUES (18, 'mainapp', '0001_initial', '2023-05-11 10:04:54.686448');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-05-11 10:04:54.804421');
INSERT INTO `django_migrations` VALUES (20, 'warehouse', '0001_initial', '2023-05-11 10:04:55.116517');
INSERT INTO `django_migrations` VALUES (21, 'mainapp', '0002_alter_userinfo_options', '2023-05-11 12:42:30.856621');
INSERT INTO `django_migrations` VALUES (22, 'mainapp', '0003_delete_userinfo', '2023-05-11 12:54:36.096970');
INSERT INTO `django_migrations` VALUES (23, 'mainapp', '0004_initial', '2023-05-11 12:54:58.355046');
INSERT INTO `django_migrations` VALUES (24, 'warehouse', '0002_spiderlog', '2023-05-13 01:50:31.638737');
INSERT INTO `django_migrations` VALUES (25, 'warehouse', '0003_delete_spiderlog', '2023-05-13 01:58:58.346000');
INSERT INTO `django_migrations` VALUES (26, 'warehouse', '0004_spiderlog', '2023-05-13 01:59:09.914278');
INSERT INTO `django_migrations` VALUES (27, 'warehouse', '0005_alter_evaluate_scenery_name_alter_evaluate_score_and_more', '2023-05-16 04:35:58.837698');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lxijds3zwmirdl1jvcnq5vm2xfz78nfv', 'eyJ1c2VyX2luZm8iOiJ0enV4aW4ifQ:1px5xL:MKaG5I7o5o0gNZoz2cbl5Zw6hwe_511uml3hpmZ84SU', '2023-05-25 13:03:39.941719');
INSERT INTO `django_session` VALUES ('rwuz6hor0orbxzfejet9cwo2ed69hb9s', 'eyJ1c2VyX2luZm8iOiJ0enV4aW4ifQ:1pyZNV:PYyBLcIaxD-O3qgMWnarTHaezE4tUsIm7sc8fLzQhng', '2023-05-29 14:40:45.067572');

-- ----------------------------
-- Table structure for my_app_company_type
-- ----------------------------
DROP TABLE IF EXISTS `my_app_company_type`;
CREATE TABLE `my_app_company_type`  (
  `company_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_app_company_type
-- ----------------------------
INSERT INTO `my_app_company_type` VALUES ('上市公司', 449, 1);
INSERT INTO `my_app_company_type` VALUES ('事业单位', 107, 2);
INSERT INTO `my_app_company_type` VALUES ('其它', 235, 3);
INSERT INTO `my_app_company_type` VALUES ('合资', 251, 4);
INSERT INTO `my_app_company_type` VALUES ('国企', 547, 5);
INSERT INTO `my_app_company_type` VALUES ('外商独资', 43, 6);
INSERT INTO `my_app_company_type` VALUES ('学校/下级学院', 45, 7);
INSERT INTO `my_app_company_type` VALUES ('民营', 1948, 8);
INSERT INTO `my_app_company_type` VALUES ('港澳台公司', 4, 9);
INSERT INTO `my_app_company_type` VALUES ('社会团体', 6, 10);
INSERT INTO `my_app_company_type` VALUES ('股份制企业', 376, 11);
INSERT INTO `my_app_company_type` VALUES ('银行', 1, 12);

-- ----------------------------
-- Table structure for my_app_top20
-- ----------------------------
DROP TABLE IF EXISTS `my_app_top20`;
CREATE TABLE `my_app_top20`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_app_top20
-- ----------------------------
INSERT INTO `my_app_top20` VALUES (1, 'Java大数据开发工程师', 25);
INSERT INTO `my_app_top20` VALUES (2, 'JAVA开发工程师', 15);
INSERT INTO `my_app_top20` VALUES (3, '产品经理', 24);
INSERT INTO `my_app_top20` VALUES (4, '大数据', 60);
INSERT INTO `my_app_top20` VALUES (5, '大数据产品经理', 83);
INSERT INTO `my_app_top20` VALUES (6, '大数据产品销售经理', 41);
INSERT INTO `my_app_top20` VALUES (7, '大数据分析', 18);
INSERT INTO `my_app_top20` VALUES (8, '大数据分析工程师', 51);
INSERT INTO `my_app_top20` VALUES (9, '大数据分析师', 123);
INSERT INTO `my_app_top20` VALUES (10, '大数据工程师', 212);
INSERT INTO `my_app_top20` VALUES (11, '大数据开发工程师', 1211);
INSERT INTO `my_app_top20` VALUES (12, '大数据架构师', 75);
INSERT INTO `my_app_top20` VALUES (13, '大数据测试工程师', 80);
INSERT INTO `my_app_top20` VALUES (14, '大数据研发工程师', 35);
INSERT INTO `my_app_top20` VALUES (15, '大数据研究员', 106);
INSERT INTO `my_app_top20` VALUES (16, '大数据算法工程师', 26);
INSERT INTO `my_app_top20` VALUES (17, '大数据讲师', 62);
INSERT INTO `my_app_top20` VALUES (18, '大数据运维工程师', 141);
INSERT INTO `my_app_top20` VALUES (19, '大数据销售', 32);
INSERT INTO `my_app_top20` VALUES (20, '大数据销售经理', 15);
INSERT INTO `my_app_top20` VALUES (21, '大数据项目经理', 39);

SET FOREIGN_KEY_CHECKS = 1;
