/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : ajaxfilterpagination

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2023-02-11 20:08:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `daerah`
-- ----------------------------
DROP TABLE IF EXISTS `daerah`;
CREATE TABLE `daerah` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kod_negeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kod_daerah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of daerah
-- ----------------------------
INSERT INTO `daerah` VALUES ('1', 'KOTA TINGGI', '01', '04');
INSERT INTO `daerah` VALUES ('2', 'BATU PAHAT', '01', '01');
INSERT INTO `daerah` VALUES ('3', 'MUAR', '01', '06');
INSERT INTO `daerah` VALUES ('4', 'PONTIAN', '01', '07');
INSERT INTO `daerah` VALUES ('5', 'JOHOR BAHRU', '01', '02');
INSERT INTO `daerah` VALUES ('6', 'KLUANG', '01', '03');
INSERT INTO `daerah` VALUES ('7', 'KULAI', '01', '21');
INSERT INTO `daerah` VALUES ('8', 'TANGKAK', '01', '22');
INSERT INTO `daerah` VALUES ('9', 'DAERAH SEGAMAT', '01', '08');
INSERT INTO `daerah` VALUES ('10', 'DAERAH MERSING', '01', '05');
INSERT INTO `daerah` VALUES ('11', 'DAERAH LANGKAWI', '02', '04');
INSERT INTO `daerah` VALUES ('12', 'DAERAH KOTA SETAR', '02', '01');
INSERT INTO `daerah` VALUES ('13', 'DAERAH PADANG TERAP', '02', '03');
INSERT INTO `daerah` VALUES ('14', 'DAERAH KUALA MUDA', '02', '05');
INSERT INTO `daerah` VALUES ('15', 'DAERAH YAN', '02', '06');
INSERT INTO `daerah` VALUES ('16', 'DAERAH SIK', '02', '07');
INSERT INTO `daerah` VALUES ('17', 'DAERAH BALING', '02', '08');
INSERT INTO `daerah` VALUES ('18', 'DAERAH KULIM', '02', '09');
INSERT INTO `daerah` VALUES ('19', 'DAERAH BANDAR BAHARU', '02', '10');
INSERT INTO `daerah` VALUES ('20', 'DAERAH PENDANG', '02', '11');
INSERT INTO `daerah` VALUES ('21', 'DAERAH POKOK SENA', '02', '12');
INSERT INTO `daerah` VALUES ('22', 'DAERAH KUBANG PASU', '02', '02');
INSERT INTO `daerah` VALUES ('23', 'MACHANG', '03', '03');
INSERT INTO `daerah` VALUES ('24', 'KECIL LOJING', '03', '12');
INSERT INTO `daerah` VALUES ('25', 'TUMPAT', '03', '07');
INSERT INTO `daerah` VALUES ('26', 'PASIR MAS', '03', '04');
INSERT INTO `daerah` VALUES ('27', 'KUALA KRAI', '03', '10');
INSERT INTO `daerah` VALUES ('28', 'KOTA BHARU', '03', '02');
INSERT INTO `daerah` VALUES ('29', 'BACHOK', '03', '01');
INSERT INTO `daerah` VALUES ('30', 'GUA MUSANG', '03', '08');
INSERT INTO `daerah` VALUES ('31', 'PASIR PUTEH', '03', '05');
INSERT INTO `daerah` VALUES ('32', 'TANAH MERAH', '03', '06');
INSERT INTO `daerah` VALUES ('33', 'JELI', '03', '11');
INSERT INTO `daerah` VALUES ('34', 'JASIN', '04', '02');
INSERT INTO `daerah` VALUES ('35', 'MELAKA TENGAH', '04', '01');
INSERT INTO `daerah` VALUES ('36', 'ALOR GAJAH', '04', '03');
INSERT INTO `daerah` VALUES ('37', 'PORT DICKSON', '05', '03');
INSERT INTO `daerah` VALUES ('38', 'REMBAU', '05', '04');
INSERT INTO `daerah` VALUES ('39', 'SEREMBAN', '05', '05');
INSERT INTO `daerah` VALUES ('40', 'TAMPIN', '05', '06');
INSERT INTO `daerah` VALUES ('41', 'JEMPOL', '05', '07');
INSERT INTO `daerah` VALUES ('42', 'JELEBU', '05', '01');
INSERT INTO `daerah` VALUES ('43', 'KUALA PILAH', '05', '02');
INSERT INTO `daerah` VALUES ('44', 'KUANTAN', '06', '04');
INSERT INTO `daerah` VALUES ('45', 'LIPIS', '06', '05');
INSERT INTO `daerah` VALUES ('46', 'PEKAN', '06', '06');
INSERT INTO `daerah` VALUES ('47', 'TEMERLOH', '06', '08');
INSERT INTO `daerah` VALUES ('48', 'ROMPIN', '06', '09');
INSERT INTO `daerah` VALUES ('49', 'MARAN', '06', '10');
INSERT INTO `daerah` VALUES ('50', 'BERA', '06', '11');
INSERT INTO `daerah` VALUES ('51', 'CAMERON HIGHLANDS', '06', '02');
INSERT INTO `daerah` VALUES ('52', 'RAUB', '06', '07');
INSERT INTO `daerah` VALUES ('53', 'BENTONG', '06', '01');
INSERT INTO `daerah` VALUES ('54', 'JERANTUT', '06', '03');
INSERT INTO `daerah` VALUES ('55', 'SEBERANG PERAI SELATAN', '07', '03');
INSERT INTO `daerah` VALUES ('56', 'TIMOR LAUT', '07', '04');
INSERT INTO `daerah` VALUES ('57', 'BARAT DAYA', '07', '05');
INSERT INTO `daerah` VALUES ('58', 'SEBERANG PERAI TENGAH', '07', '01');
INSERT INTO `daerah` VALUES ('59', 'SEBERANG PERAI UTARA', '07', '02');
INSERT INTO `daerah` VALUES ('60', 'KINTA', '08', '03');
INSERT INTO `daerah` VALUES ('61', 'KUALA KANGSAR', '08', '05');
INSERT INTO `daerah` VALUES ('62', 'HILIR PERAK', '08', '07');
INSERT INTO `daerah` VALUES ('63', 'SELAMA', '08', '09');
INSERT INTO `daerah` VALUES ('64', 'PERAK TENGAH', '08', '10');
INSERT INTO `daerah` VALUES ('65', 'MUALLIM', '08', '12');
INSERT INTO `daerah` VALUES ('66', 'MANJUNG', '08', '02');
INSERT INTO `daerah` VALUES ('67', 'KAMPAR', '08', '11');
INSERT INTO `daerah` VALUES ('68', 'BATANG PADANG', '08', '01');
INSERT INTO `daerah` VALUES ('69', 'BAGAN DATUK', '08', '13');
INSERT INTO `daerah` VALUES ('70', 'LARUT & MATANG', '08', '06');
INSERT INTO `daerah` VALUES ('71', 'KERIAN', '08', '04');
INSERT INTO `daerah` VALUES ('72', 'HULU PERAK', '08', '08');
INSERT INTO `daerah` VALUES ('73', 'TIADA DAERAH', '09', '00');
INSERT INTO `daerah` VALUES ('74', 'KUALA LANGAT', '10', '02');
INSERT INTO `daerah` VALUES ('75', 'KUALA SELANGOR', '10', '04');
INSERT INTO `daerah` VALUES ('76', 'ULU LANGAT', '10', '06');
INSERT INTO `daerah` VALUES ('77', 'ULU SELANGOR', '10', '07');
INSERT INTO `daerah` VALUES ('78', 'PETALING', '10', '08');
INSERT INTO `daerah` VALUES ('79', 'GOMBAK', '10', '09');
INSERT INTO `daerah` VALUES ('80', 'SEPANG', '10', '10');
INSERT INTO `daerah` VALUES ('81', 'KLANG', '10', '01');
INSERT INTO `daerah` VALUES ('82', 'SABAK BERNAM', '10', '05');
INSERT INTO `daerah` VALUES ('83', 'KEMAMAN', '11', '03');
INSERT INTO `daerah` VALUES ('84', 'HULU TERENGGANU', '11', '05');
INSERT INTO `daerah` VALUES ('85', 'MARANG', '11', '06');
INSERT INTO `daerah` VALUES ('86', 'SETIU', '11', '07');
INSERT INTO `daerah` VALUES ('87', 'DUNGUN', '11', '02');
INSERT INTO `daerah` VALUES ('88', 'KUALA NERUS', '11', '08');
INSERT INTO `daerah` VALUES ('89', 'KUALA TERENGGANU', '11', '04');
INSERT INTO `daerah` VALUES ('90', 'BESUT', '11', '01');
INSERT INTO `daerah` VALUES ('91', 'KUALA LUMPUR', '14', '00');
INSERT INTO `daerah` VALUES ('92', 'PUTRAJAYA', '16', '01');
