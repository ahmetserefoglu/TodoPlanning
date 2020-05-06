/*
Navicat MySQL Data Transfer

Source Server         : DURAK2018
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : todoplanning

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-06 09:19:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for business_plan
-- ----------------------------
DROP TABLE IF EXISTS `business_plan`;
CREATE TABLE `business_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `estimated_duration` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of business_plan
-- ----------------------------
INSERT INTO `business_plan` VALUES ('1', 'Business Task 0', '1', '7');
INSERT INTO `business_plan` VALUES ('2', 'Business Task 1', '3', '4');
INSERT INTO `business_plan` VALUES ('3', 'Business Task 2', '1', '6');
INSERT INTO `business_plan` VALUES ('4', 'Business Task 3', '5', '4');
INSERT INTO `business_plan` VALUES ('5', 'Business Task 4', '2', '7');
INSERT INTO `business_plan` VALUES ('6', 'Business Task 5', '5', '7');
INSERT INTO `business_plan` VALUES ('7', 'Business Task 6', '4', '5');
INSERT INTO `business_plan` VALUES ('8', 'Business Task 7', '2', '11');
INSERT INTO `business_plan` VALUES ('9', 'Business Task 8', '4', '12');
INSERT INTO `business_plan` VALUES ('10', 'Business Task 9', '1', '4');
INSERT INTO `business_plan` VALUES ('11', 'Business Task 10', '2', '7');
INSERT INTO `business_plan` VALUES ('12', 'Business Task 11', '4', '3');
INSERT INTO `business_plan` VALUES ('13', 'Business Task 12', '3', '10');
INSERT INTO `business_plan` VALUES ('14', 'Business Task 13', '1', '3');
INSERT INTO `business_plan` VALUES ('15', 'Business Task 14', '2', '10');
INSERT INTO `business_plan` VALUES ('16', 'Business Task 15', '2', '12');
INSERT INTO `business_plan` VALUES ('17', 'Business Task 16', '3', '9');
INSERT INTO `business_plan` VALUES ('18', 'Business Task 17', '4', '9');
INSERT INTO `business_plan` VALUES ('19', 'Business Task 18', '1', '7');
INSERT INTO `business_plan` VALUES ('20', 'Business Task 19', '4', '4');
INSERT INTO `business_plan` VALUES ('21', 'Business Task 20', '5', '4');
INSERT INTO `business_plan` VALUES ('22', 'Business Task 21', '4', '4');
INSERT INTO `business_plan` VALUES ('23', 'Business Task 22', '2', '5');
INSERT INTO `business_plan` VALUES ('24', 'Business Task 23', '5', '9');
INSERT INTO `business_plan` VALUES ('25', 'Business Task 24', '5', '12');
INSERT INTO `business_plan` VALUES ('26', 'Business Task 25', '3', '9');
INSERT INTO `business_plan` VALUES ('27', 'Business Task 26', '2', '12');
INSERT INTO `business_plan` VALUES ('28', 'Business Task 27', '3', '9');
INSERT INTO `business_plan` VALUES ('29', 'Business Task 28', '1', '7');
INSERT INTO `business_plan` VALUES ('30', 'Business Task 29', '4', '4');
INSERT INTO `business_plan` VALUES ('31', 'Business Task 30', '4', '4');
INSERT INTO `business_plan` VALUES ('32', 'Business Task 31', '1', '7');
INSERT INTO `business_plan` VALUES ('33', 'Business Task 32', '4', '7');
INSERT INTO `business_plan` VALUES ('34', 'Business Task 33', '3', '9');
INSERT INTO `business_plan` VALUES ('35', 'Business Task 34', '2', '9');
INSERT INTO `business_plan` VALUES ('36', 'Business Task 35', '1', '9');
INSERT INTO `business_plan` VALUES ('37', 'Business Task 36', '5', '3');
INSERT INTO `business_plan` VALUES ('38', 'Business Task 37', '4', '5');
INSERT INTO `business_plan` VALUES ('39', 'Business Task 38', '1', '9');
INSERT INTO `business_plan` VALUES ('40', 'Business Task 39', '5', '7');
INSERT INTO `business_plan` VALUES ('41', 'Business Task 40', '1', '6');
INSERT INTO `business_plan` VALUES ('42', 'Business Task 41', '1', '5');
INSERT INTO `business_plan` VALUES ('43', 'Business Task 42', '5', '9');
INSERT INTO `business_plan` VALUES ('44', 'Business Task 43', '1', '9');
INSERT INTO `business_plan` VALUES ('45', 'Business Task 44', '5', '8');
INSERT INTO `business_plan` VALUES ('46', 'Business Task 45', '5', '8');
INSERT INTO `business_plan` VALUES ('47', 'Business Task 46', '1', '9');
INSERT INTO `business_plan` VALUES ('48', 'Business Task 47', '1', '12');
INSERT INTO `business_plan` VALUES ('49', 'Business Task 48', '1', '3');
INSERT INTO `business_plan` VALUES ('50', 'Business Task 49', '5', '7');
INSERT INTO `business_plan` VALUES ('51', 'Business Task 50', '5', '12');
INSERT INTO `business_plan` VALUES ('52', 'Business Task 51', '1', '11');
INSERT INTO `business_plan` VALUES ('53', 'Business Task 52', '3', '7');
INSERT INTO `business_plan` VALUES ('54', 'Business Task 53', '1', '3');
INSERT INTO `business_plan` VALUES ('55', 'Business Task 54', '4', '10');
INSERT INTO `business_plan` VALUES ('56', 'Business Task 55', '2', '11');
INSERT INTO `business_plan` VALUES ('57', 'Business Task 56', '4', '9');
INSERT INTO `business_plan` VALUES ('58', 'Business Task 57', '3', '7');
INSERT INTO `business_plan` VALUES ('59', 'Business Task 58', '2', '4');
INSERT INTO `business_plan` VALUES ('60', 'Business Task 59', '4', '9');
INSERT INTO `business_plan` VALUES ('61', 'Business Task 60', '2', '10');
INSERT INTO `business_plan` VALUES ('62', 'Business Task 61', '3', '8');
INSERT INTO `business_plan` VALUES ('63', 'Business Task 62', '1', '10');
INSERT INTO `business_plan` VALUES ('64', 'Business Task 63', '4', '11');
INSERT INTO `business_plan` VALUES ('65', 'Business Task 64', '4', '5');
INSERT INTO `business_plan` VALUES ('66', 'Business Task 65', '3', '9');
INSERT INTO `business_plan` VALUES ('67', 'Business Task 66', '1', '3');

-- ----------------------------
-- Table structure for business_work_plan
-- ----------------------------
DROP TABLE IF EXISTS `business_work_plan`;
CREATE TABLE `business_work_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_hour` int(11) NOT NULL,
  `hard_degree` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of business_work_plan
-- ----------------------------
INSERT INTO `business_work_plan` VALUES ('1', 'Business Task 0', '7', '1');
INSERT INTO `business_work_plan` VALUES ('2', 'Business Task 1', '4', '3');
INSERT INTO `business_work_plan` VALUES ('3', 'Business Task 2', '6', '1');
INSERT INTO `business_work_plan` VALUES ('4', 'Business Task 3', '4', '5');
INSERT INTO `business_work_plan` VALUES ('5', 'Business Task 4', '7', '2');
INSERT INTO `business_work_plan` VALUES ('6', 'Business Task 5', '7', '5');
INSERT INTO `business_work_plan` VALUES ('7', 'Business Task 6', '5', '4');
INSERT INTO `business_work_plan` VALUES ('8', 'Business Task 7', '11', '2');
INSERT INTO `business_work_plan` VALUES ('9', 'Business Task 8', '12', '4');
INSERT INTO `business_work_plan` VALUES ('10', 'Business Task 9', '4', '1');
INSERT INTO `business_work_plan` VALUES ('11', 'Business Task 10', '7', '2');
INSERT INTO `business_work_plan` VALUES ('12', 'Business Task 11', '3', '4');
INSERT INTO `business_work_plan` VALUES ('13', 'Business Task 12', '10', '3');
INSERT INTO `business_work_plan` VALUES ('14', 'Business Task 13', '3', '1');
INSERT INTO `business_work_plan` VALUES ('15', 'Business Task 14', '10', '2');
INSERT INTO `business_work_plan` VALUES ('16', 'Business Task 15', '12', '2');
INSERT INTO `business_work_plan` VALUES ('17', 'Business Task 16', '9', '3');
INSERT INTO `business_work_plan` VALUES ('18', 'Business Task 17', '9', '4');
INSERT INTO `business_work_plan` VALUES ('19', 'Business Task 18', '7', '1');
INSERT INTO `business_work_plan` VALUES ('20', 'Business Task 19', '4', '4');
INSERT INTO `business_work_plan` VALUES ('21', 'Business Task 20', '4', '5');
INSERT INTO `business_work_plan` VALUES ('22', 'Business Task 21', '4', '4');
INSERT INTO `business_work_plan` VALUES ('23', 'Business Task 22', '5', '2');
INSERT INTO `business_work_plan` VALUES ('24', 'Business Task 23', '9', '5');
INSERT INTO `business_work_plan` VALUES ('25', 'Business Task 24', '12', '5');
INSERT INTO `business_work_plan` VALUES ('26', 'Business Task 25', '9', '3');
INSERT INTO `business_work_plan` VALUES ('27', 'Business Task 26', '12', '2');
INSERT INTO `business_work_plan` VALUES ('28', 'Business Task 27', '9', '3');
INSERT INTO `business_work_plan` VALUES ('29', 'Business Task 28', '7', '1');
INSERT INTO `business_work_plan` VALUES ('30', 'Business Task 29', '4', '4');
INSERT INTO `business_work_plan` VALUES ('31', 'Business Task 30', '4', '4');
INSERT INTO `business_work_plan` VALUES ('32', 'Business Task 31', '7', '1');
INSERT INTO `business_work_plan` VALUES ('33', 'Business Task 32', '7', '4');
INSERT INTO `business_work_plan` VALUES ('34', 'Business Task 33', '9', '3');
INSERT INTO `business_work_plan` VALUES ('35', 'Business Task 34', '9', '2');
INSERT INTO `business_work_plan` VALUES ('36', 'Business Task 35', '9', '1');
INSERT INTO `business_work_plan` VALUES ('37', 'Business Task 36', '3', '5');
INSERT INTO `business_work_plan` VALUES ('38', 'Business Task 37', '5', '4');
INSERT INTO `business_work_plan` VALUES ('39', 'Business Task 38', '9', '1');
INSERT INTO `business_work_plan` VALUES ('40', 'Business Task 39', '7', '5');
INSERT INTO `business_work_plan` VALUES ('41', 'Business Task 40', '6', '1');
INSERT INTO `business_work_plan` VALUES ('42', 'Business Task 41', '5', '1');
INSERT INTO `business_work_plan` VALUES ('43', 'Business Task 42', '9', '5');
INSERT INTO `business_work_plan` VALUES ('44', 'Business Task 43', '9', '1');
INSERT INTO `business_work_plan` VALUES ('45', 'Business Task 44', '8', '5');
INSERT INTO `business_work_plan` VALUES ('46', 'Business Task 45', '8', '5');
INSERT INTO `business_work_plan` VALUES ('47', 'Business Task 46', '9', '1');
INSERT INTO `business_work_plan` VALUES ('48', 'Business Task 47', '12', '1');
INSERT INTO `business_work_plan` VALUES ('49', 'Business Task 48', '3', '1');
INSERT INTO `business_work_plan` VALUES ('50', 'Business Task 49', '7', '5');
INSERT INTO `business_work_plan` VALUES ('51', 'Business Task 50', '12', '5');
INSERT INTO `business_work_plan` VALUES ('52', 'Business Task 51', '11', '1');
INSERT INTO `business_work_plan` VALUES ('53', 'Business Task 52', '7', '3');
INSERT INTO `business_work_plan` VALUES ('54', 'Business Task 53', '3', '1');
INSERT INTO `business_work_plan` VALUES ('55', 'Business Task 54', '10', '4');
INSERT INTO `business_work_plan` VALUES ('56', 'Business Task 55', '11', '2');
INSERT INTO `business_work_plan` VALUES ('57', 'Business Task 56', '9', '4');
INSERT INTO `business_work_plan` VALUES ('58', 'Business Task 57', '7', '3');
INSERT INTO `business_work_plan` VALUES ('59', 'Business Task 58', '4', '2');
INSERT INTO `business_work_plan` VALUES ('60', 'Business Task 59', '9', '4');
INSERT INTO `business_work_plan` VALUES ('61', 'Business Task 60', '10', '2');
INSERT INTO `business_work_plan` VALUES ('62', 'Business Task 61', '8', '3');
INSERT INTO `business_work_plan` VALUES ('63', 'Business Task 62', '10', '1');
INSERT INTO `business_work_plan` VALUES ('64', 'Business Task 63', '11', '4');
INSERT INTO `business_work_plan` VALUES ('65', 'Business Task 64', '5', '4');
INSERT INTO `business_work_plan` VALUES ('66', 'Business Task 65', '9', '3');
INSERT INTO `business_work_plan` VALUES ('67', 'Business Task 66', '3', '1');

-- ----------------------------
-- Table structure for developer
-- ----------------------------
DROP TABLE IF EXISTS `developer`;
CREATE TABLE `developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `hard_degree` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of developer
-- ----------------------------
INSERT INTO `developer` VALUES ('1', 'dev1', '1', '1');
INSERT INTO `developer` VALUES ('2', 'dev2', '1', '2');
INSERT INTO `developer` VALUES ('3', 'dev3', '1', '3');
INSERT INTO `developer` VALUES ('4', 'dev4', '1', '4');
INSERT INTO `developer` VALUES ('5', 'dev5', '1', '5');

-- ----------------------------
-- Table structure for migration_versions
-- ----------------------------
DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migration_versions
-- ----------------------------
INSERT INTO `migration_versions` VALUES ('20200502120729', '2020-05-02 12:07:52');
INSERT INTO `migration_versions` VALUES ('20200502131055', '2020-05-02 13:11:02');
INSERT INTO `migration_versions` VALUES ('20200503032516', '2020-05-03 03:26:54');
INSERT INTO `migration_versions` VALUES ('20200504201833', '2020-05-04 20:18:44');

-- ----------------------------
-- Table structure for todo_plan
-- ----------------------------
DROP TABLE IF EXISTS `todo_plan`;
CREATE TABLE `todo_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_hour` int(11) NOT NULL,
  `hard_degree` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of todo_plan
-- ----------------------------
INSERT INTO `todo_plan` VALUES ('5', 'IT Task 0', '6', '3');
INSERT INTO `todo_plan` VALUES ('6', 'IT Task 1', '6', '4');
INSERT INTO `todo_plan` VALUES ('7', 'IT Task 2', '10', '3');
INSERT INTO `todo_plan` VALUES ('8', 'IT Task 3', '4', '4');
INSERT INTO `todo_plan` VALUES ('9', 'IT Task 4', '5', '3');
INSERT INTO `todo_plan` VALUES ('10', 'IT Task 5', '12', '1');
INSERT INTO `todo_plan` VALUES ('11', 'IT Task 6', '4', '1');
INSERT INTO `todo_plan` VALUES ('12', 'IT Task 7', '6', '5');
INSERT INTO `todo_plan` VALUES ('13', 'IT Task 8', '8', '3');
INSERT INTO `todo_plan` VALUES ('14', 'IT Task 9', '6', '1');
INSERT INTO `todo_plan` VALUES ('15', 'IT Task 10', '10', '2');
INSERT INTO `todo_plan` VALUES ('16', 'IT Task 11', '6', '1');
INSERT INTO `todo_plan` VALUES ('17', 'IT Task 12', '11', '4');
INSERT INTO `todo_plan` VALUES ('18', 'IT Task 13', '3', '5');
INSERT INTO `todo_plan` VALUES ('19', 'IT Task 14', '11', '1');
INSERT INTO `todo_plan` VALUES ('20', 'IT Task 15', '6', '4');
INSERT INTO `todo_plan` VALUES ('21', 'IT Task 16', '4', '5');
INSERT INTO `todo_plan` VALUES ('22', 'IT Task 17', '11', '3');
INSERT INTO `todo_plan` VALUES ('23', 'IT Task 18', '11', '2');
INSERT INTO `todo_plan` VALUES ('24', 'IT Task 19', '8', '3');
INSERT INTO `todo_plan` VALUES ('25', 'IT Task 20', '11', '3');
INSERT INTO `todo_plan` VALUES ('26', 'IT Task 21', '5', '1');
INSERT INTO `todo_plan` VALUES ('27', 'IT Task 22', '5', '4');
INSERT INTO `todo_plan` VALUES ('28', 'IT Task 23', '7', '2');
INSERT INTO `todo_plan` VALUES ('29', 'IT Task 24', '6', '2');
INSERT INTO `todo_plan` VALUES ('30', 'IT Task 25', '9', '3');
INSERT INTO `todo_plan` VALUES ('31', 'IT Task 26', '6', '4');
INSERT INTO `todo_plan` VALUES ('32', 'IT Task 27', '7', '4');
INSERT INTO `todo_plan` VALUES ('33', 'IT Task 28', '4', '1');
INSERT INTO `todo_plan` VALUES ('34', 'IT Task 29', '5', '4');
INSERT INTO `todo_plan` VALUES ('35', 'IT Task 30', '9', '5');
INSERT INTO `todo_plan` VALUES ('36', 'IT Task 31', '5', '2');
INSERT INTO `todo_plan` VALUES ('37', 'IT Task 32', '5', '2');
INSERT INTO `todo_plan` VALUES ('38', 'IT Task 33', '6', '2');
INSERT INTO `todo_plan` VALUES ('39', 'IT Task 34', '6', '5');
INSERT INTO `todo_plan` VALUES ('40', 'IT Task 35', '10', '1');
INSERT INTO `todo_plan` VALUES ('41', 'IT Task 36', '10', '1');
INSERT INTO `todo_plan` VALUES ('42', 'IT Task 37', '10', '1');
INSERT INTO `todo_plan` VALUES ('43', 'IT Task 38', '12', '5');
INSERT INTO `todo_plan` VALUES ('44', 'IT Task 39', '12', '4');
INSERT INTO `todo_plan` VALUES ('45', 'IT Task 40', '6', '2');
INSERT INTO `todo_plan` VALUES ('46', 'IT Task 41', '8', '3');
INSERT INTO `todo_plan` VALUES ('47', 'IT Task 42', '10', '5');
INSERT INTO `todo_plan` VALUES ('48', 'IT Task 43', '10', '3');
INSERT INTO `todo_plan` VALUES ('49', 'IT Task 44', '8', '5');
INSERT INTO `todo_plan` VALUES ('50', 'IT Task 45', '9', '5');
INSERT INTO `todo_plan` VALUES ('51', 'IT Task 46', '3', '3');
INSERT INTO `todo_plan` VALUES ('52', 'IT Task 47', '4', '4');
INSERT INTO `todo_plan` VALUES ('53', 'IT Task 48', '12', '1');
INSERT INTO `todo_plan` VALUES ('54', 'IT Task 49', '7', '1');
INSERT INTO `todo_plan` VALUES ('55', 'IT Task 50', '4', '1');
INSERT INTO `todo_plan` VALUES ('56', 'IT Task 51', '10', '1');
INSERT INTO `todo_plan` VALUES ('57', 'IT Task 52', '8', '4');
INSERT INTO `todo_plan` VALUES ('58', 'IT Task 53', '3', '3');
INSERT INTO `todo_plan` VALUES ('59', 'IT Task 54', '10', '4');
INSERT INTO `todo_plan` VALUES ('60', 'IT Task 55', '12', '4');
INSERT INTO `todo_plan` VALUES ('61', 'IT Task 56', '10', '3');
INSERT INTO `todo_plan` VALUES ('62', 'IT Task 57', '11', '2');
INSERT INTO `todo_plan` VALUES ('63', 'IT Task 58', '7', '1');
INSERT INTO `todo_plan` VALUES ('64', 'IT Task 59', '4', '2');
INSERT INTO `todo_plan` VALUES ('65', 'IT Task 60', '4', '3');
INSERT INTO `todo_plan` VALUES ('66', 'IT Task 61', '3', '1');
INSERT INTO `todo_plan` VALUES ('67', 'IT Task 62', '6', '1');
INSERT INTO `todo_plan` VALUES ('68', 'IT Task 63', '3', '3');
INSERT INTO `todo_plan` VALUES ('69', 'IT Task 64', '12', '4');
INSERT INTO `todo_plan` VALUES ('70', 'IT Task 65', '11', '2');
INSERT INTO `todo_plan` VALUES ('71', 'IT Task 66', '10', '3');

-- ----------------------------
-- Table structure for work_plan
-- ----------------------------
DROP TABLE IF EXISTS `work_plan`;
CREATE TABLE `work_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workplan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zorluk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of work_plan
-- ----------------------------
