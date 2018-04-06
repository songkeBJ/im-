/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : zykj

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2017-06-16 01:14:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advert_record
-- ----------------------------
DROP TABLE IF EXISTS `advert_record`;
CREATE TABLE `advert_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `advertId` bigint(20) NOT NULL,
  `readStatus` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advert_record
-- ----------------------------
INSERT INTO `advert_record` VALUES ('79', '7236', '51', '0');
INSERT INTO `advert_record` VALUES ('81', '7236', '52', '0');
INSERT INTO `advert_record` VALUES ('82', '7237', '52', '0');
INSERT INTO `advert_record` VALUES ('83', '7236', '53', '0');
INSERT INTO `advert_record` VALUES ('84', '7236', '54', '0');
INSERT INTO `advert_record` VALUES ('85', '7236', '55', '0');
INSERT INTO `advert_record` VALUES ('87', '7236', '56', '0');
INSERT INTO `advert_record` VALUES ('88', '7237', '56', '0');
INSERT INTO `advert_record` VALUES ('89', '7236', '57', '0');
INSERT INTO `advert_record` VALUES ('91', '7236', '58', '1');
INSERT INTO `advert_record` VALUES ('92', '7236', '59', '0');
INSERT INTO `advert_record` VALUES ('93', '7237', '58', '1');
INSERT INTO `advert_record` VALUES ('95', '7236', '60', '0');
INSERT INTO `advert_record` VALUES ('96', '7237', '60', '0');
INSERT INTO `advert_record` VALUES ('97', '7236', '62', '0');
INSERT INTO `advert_record` VALUES ('98', '7226', '61', '1');
INSERT INTO `advert_record` VALUES ('99', '7236', '61', '0');
INSERT INTO `advert_record` VALUES ('100', '7237', '61', '1');
INSERT INTO `advert_record` VALUES ('101', '7236', '63', '0');
INSERT INTO `advert_record` VALUES ('102', '7236', '65', '0');
INSERT INTO `advert_record` VALUES ('103', '7226', '64', '0');
INSERT INTO `advert_record` VALUES ('105', '7237', '64', '1');
INSERT INTO `advert_record` VALUES ('107', '7226', '67', '1');
INSERT INTO `advert_record` VALUES ('108', '7237', '67', '1');
INSERT INTO `advert_record` VALUES ('109', '7226', '68', '1');
INSERT INTO `advert_record` VALUES ('110', '7236', '69', '1');
INSERT INTO `advert_record` VALUES ('111', '7226', '70', '1');
INSERT INTO `advert_record` VALUES ('113', '7226', '72', '1');
INSERT INTO `advert_record` VALUES ('118', '7236', '75', '0');
INSERT INTO `advert_record` VALUES ('119', '7236', '76', '0');
INSERT INTO `advert_record` VALUES ('120', '7236', '77', '0');
INSERT INTO `advert_record` VALUES ('121', '7236', '78', '0');
INSERT INTO `advert_record` VALUES ('122', '7236', '79', '0');
INSERT INTO `advert_record` VALUES ('123', '7236', '80', '0');
INSERT INTO `advert_record` VALUES ('124', '7244', '81', '0');
INSERT INTO `advert_record` VALUES ('125', '7244', '82', '0');
INSERT INTO `advert_record` VALUES ('126', '7244', '83', '1');
INSERT INTO `advert_record` VALUES ('127', '7226', '84', '0');
INSERT INTO `advert_record` VALUES ('128', '7226', '85', '1');
INSERT INTO `advert_record` VALUES ('129', '7226', '86', '1');
INSERT INTO `advert_record` VALUES ('130', '7226', '87', '1');
INSERT INTO `advert_record` VALUES ('131', '7226', '88', '1');
INSERT INTO `advert_record` VALUES ('132', '7226', '89', '1');
INSERT INTO `advert_record` VALUES ('133', '7226', '90', '1');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` bigint(20) NOT NULL COMMENT '增加后有虚拟市级的',
  `parentId` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('110000', '0', '北京市');
INSERT INTO `area` VALUES ('110100', '110000', '北京市');
INSERT INTO `area` VALUES ('110101', '110100', '东城区');
INSERT INTO `area` VALUES ('110102', '110100', '西城区');
INSERT INTO `area` VALUES ('110105', '110100', '朝阳区');
INSERT INTO `area` VALUES ('110106', '110100', '丰台区');
INSERT INTO `area` VALUES ('110107', '110100', '石景山区');
INSERT INTO `area` VALUES ('110108', '110100', '海淀区');
INSERT INTO `area` VALUES ('110109', '110100', '门头沟区');
INSERT INTO `area` VALUES ('110111', '110100', '房山区');
INSERT INTO `area` VALUES ('110112', '110100', '通州区');
INSERT INTO `area` VALUES ('110113', '110100', '顺义区');
INSERT INTO `area` VALUES ('110114', '110100', '昌平区');
INSERT INTO `area` VALUES ('110115', '110100', '大兴区');
INSERT INTO `area` VALUES ('110116', '110100', '怀柔区');
INSERT INTO `area` VALUES ('110117', '110100', '平谷区');
INSERT INTO `area` VALUES ('110228', '110100', '密云县');
INSERT INTO `area` VALUES ('110229', '110100', '延庆县');
INSERT INTO `area` VALUES ('120000', '0', '天津市');
INSERT INTO `area` VALUES ('120100', '120000', '天津市');
INSERT INTO `area` VALUES ('120101', '120100', '和平区');
INSERT INTO `area` VALUES ('120102', '120100', '河东区');
INSERT INTO `area` VALUES ('120103', '120100', '河西区');
INSERT INTO `area` VALUES ('120104', '120100', '南开区');
INSERT INTO `area` VALUES ('120105', '120100', '河北区');
INSERT INTO `area` VALUES ('120106', '120100', '红桥区');
INSERT INTO `area` VALUES ('120110', '120100', '东丽区');
INSERT INTO `area` VALUES ('120111', '120100', '西青区');
INSERT INTO `area` VALUES ('120112', '120100', '津南区');
INSERT INTO `area` VALUES ('120113', '120100', '北辰区');
INSERT INTO `area` VALUES ('120114', '120100', '武清区');
INSERT INTO `area` VALUES ('120115', '120100', '宝坻区');
INSERT INTO `area` VALUES ('120116', '120100', '滨海新区');
INSERT INTO `area` VALUES ('120117', '120100', '宁河区');
INSERT INTO `area` VALUES ('120118', '120100', '静海区');
INSERT INTO `area` VALUES ('120225', '120100', '蓟县');
INSERT INTO `area` VALUES ('130000', '0', '河北省');
INSERT INTO `area` VALUES ('130100', '130000', '石家庄市');
INSERT INTO `area` VALUES ('130102', '130100', '长安区');
INSERT INTO `area` VALUES ('130104', '130100', '桥西区');
INSERT INTO `area` VALUES ('130105', '130100', '新华区');
INSERT INTO `area` VALUES ('130107', '130100', '井陉矿区');
INSERT INTO `area` VALUES ('130108', '130100', '裕华区');
INSERT INTO `area` VALUES ('130109', '130100', '藁城区');
INSERT INTO `area` VALUES ('130110', '130100', '鹿泉区');
INSERT INTO `area` VALUES ('130111', '130100', '栾城区');
INSERT INTO `area` VALUES ('130121', '130100', '井陉县');
INSERT INTO `area` VALUES ('130123', '130100', '正定县');
INSERT INTO `area` VALUES ('130125', '130100', '行唐县');
INSERT INTO `area` VALUES ('130126', '130100', '灵寿县');
INSERT INTO `area` VALUES ('130127', '130100', '高邑县');
INSERT INTO `area` VALUES ('130128', '130100', '深泽县');
INSERT INTO `area` VALUES ('130129', '130100', '赞皇县');
INSERT INTO `area` VALUES ('130130', '130100', '无极县');
INSERT INTO `area` VALUES ('130131', '130100', '平山县');
INSERT INTO `area` VALUES ('130132', '130100', '元氏县');
INSERT INTO `area` VALUES ('130133', '130100', '赵县');
INSERT INTO `area` VALUES ('130183', '130100', '晋州市');
INSERT INTO `area` VALUES ('130184', '130100', '新乐市');
INSERT INTO `area` VALUES ('130200', '130000', '唐山市');
INSERT INTO `area` VALUES ('130202', '130200', '路南区');
INSERT INTO `area` VALUES ('130203', '130200', '路北区');
INSERT INTO `area` VALUES ('130204', '130200', '古冶区');
INSERT INTO `area` VALUES ('130205', '130200', '开平区');
INSERT INTO `area` VALUES ('130207', '130200', '丰南区');
INSERT INTO `area` VALUES ('130208', '130200', '丰润区');
INSERT INTO `area` VALUES ('130209', '130200', '曹妃甸区');
INSERT INTO `area` VALUES ('130223', '130200', '滦县');
INSERT INTO `area` VALUES ('130224', '130200', '滦南县');
INSERT INTO `area` VALUES ('130225', '130200', '乐亭县');
INSERT INTO `area` VALUES ('130227', '130200', '迁西县');
INSERT INTO `area` VALUES ('130229', '130200', '玉田县');
INSERT INTO `area` VALUES ('130281', '130200', '遵化市');
INSERT INTO `area` VALUES ('130283', '130200', '迁安市');
INSERT INTO `area` VALUES ('130300', '130000', '秦皇岛市');
INSERT INTO `area` VALUES ('130302', '130300', '海港区');
INSERT INTO `area` VALUES ('130303', '130300', '山海关区');
INSERT INTO `area` VALUES ('130304', '130300', '北戴河区');
INSERT INTO `area` VALUES ('130306', '130300', '抚宁区');
INSERT INTO `area` VALUES ('130321', '130300', '青龙满族自治县');
INSERT INTO `area` VALUES ('130322', '130300', '昌黎县');
INSERT INTO `area` VALUES ('130324', '130300', '卢龙县');
INSERT INTO `area` VALUES ('130400', '130000', '邯郸市');
INSERT INTO `area` VALUES ('130402', '130400', '邯山区');
INSERT INTO `area` VALUES ('130403', '130400', '丛台区');
INSERT INTO `area` VALUES ('130404', '130400', '复兴区');
INSERT INTO `area` VALUES ('130406', '130400', '峰峰矿区');
INSERT INTO `area` VALUES ('130421', '130400', '邯郸县');
INSERT INTO `area` VALUES ('130423', '130400', '临漳县');
INSERT INTO `area` VALUES ('130424', '130400', '成安县');
INSERT INTO `area` VALUES ('130425', '130400', '大名县');
INSERT INTO `area` VALUES ('130426', '130400', '涉县');
INSERT INTO `area` VALUES ('130427', '130400', '磁县');
INSERT INTO `area` VALUES ('130428', '130400', '肥乡县');
INSERT INTO `area` VALUES ('130429', '130400', '永年县');
INSERT INTO `area` VALUES ('130430', '130400', '邱县');
INSERT INTO `area` VALUES ('130431', '130400', '鸡泽县');
INSERT INTO `area` VALUES ('130432', '130400', '广平县');
INSERT INTO `area` VALUES ('130433', '130400', '馆陶县');
INSERT INTO `area` VALUES ('130434', '130400', '魏县');
INSERT INTO `area` VALUES ('130435', '130400', '曲周县');
INSERT INTO `area` VALUES ('130481', '130400', '武安市');
INSERT INTO `area` VALUES ('130500', '130000', '邢台市');
INSERT INTO `area` VALUES ('130502', '130500', '桥东区');
INSERT INTO `area` VALUES ('130503', '130500', '桥西区');
INSERT INTO `area` VALUES ('130521', '130500', '邢台县');
INSERT INTO `area` VALUES ('130522', '130500', '临城县');
INSERT INTO `area` VALUES ('130523', '130500', '内丘县');
INSERT INTO `area` VALUES ('130524', '130500', '柏乡县');
INSERT INTO `area` VALUES ('130525', '130500', '隆尧县');
INSERT INTO `area` VALUES ('130526', '130500', '任县');
INSERT INTO `area` VALUES ('130527', '130500', '南和县');
INSERT INTO `area` VALUES ('130528', '130500', '宁晋县');
INSERT INTO `area` VALUES ('130529', '130500', '巨鹿县');
INSERT INTO `area` VALUES ('130530', '130500', '新河县');
INSERT INTO `area` VALUES ('130531', '130500', '广宗县');
INSERT INTO `area` VALUES ('130532', '130500', '平乡县');
INSERT INTO `area` VALUES ('130533', '130500', '威县');
INSERT INTO `area` VALUES ('130534', '130500', '清河县');
INSERT INTO `area` VALUES ('130535', '130500', '临西县');
INSERT INTO `area` VALUES ('130581', '130500', '南宫市');
INSERT INTO `area` VALUES ('130582', '130500', '沙河市');
INSERT INTO `area` VALUES ('130600', '130000', '保定市');
INSERT INTO `area` VALUES ('130602', '130600', '新市区');
INSERT INTO `area` VALUES ('130606', '130600', '莲池区');
INSERT INTO `area` VALUES ('130607', '130600', '满城区');
INSERT INTO `area` VALUES ('130608', '130600', '清苑区');
INSERT INTO `area` VALUES ('130609', '130600', '徐水区');
INSERT INTO `area` VALUES ('130623', '130600', '涞水县');
INSERT INTO `area` VALUES ('130624', '130600', '阜平县');
INSERT INTO `area` VALUES ('130626', '130600', '定兴县');
INSERT INTO `area` VALUES ('130627', '130600', '唐县');
INSERT INTO `area` VALUES ('130628', '130600', '高阳县');
INSERT INTO `area` VALUES ('130629', '130600', '容城县');
INSERT INTO `area` VALUES ('130630', '130600', '涞源县');
INSERT INTO `area` VALUES ('130631', '130600', '望都县');
INSERT INTO `area` VALUES ('130632', '130600', '安新县');
INSERT INTO `area` VALUES ('130633', '130600', '易县');
INSERT INTO `area` VALUES ('130634', '130600', '曲阳县');
INSERT INTO `area` VALUES ('130635', '130600', '蠡县');
INSERT INTO `area` VALUES ('130636', '130600', '顺平县');
INSERT INTO `area` VALUES ('130637', '130600', '博野县');
INSERT INTO `area` VALUES ('130638', '130600', '雄县');
INSERT INTO `area` VALUES ('130681', '130600', '涿州市');
INSERT INTO `area` VALUES ('130683', '130600', '安国市');
INSERT INTO `area` VALUES ('130684', '130600', '高碑店市');
INSERT INTO `area` VALUES ('130700', '130000', '张家口市');
INSERT INTO `area` VALUES ('130702', '130700', '桥东区');
INSERT INTO `area` VALUES ('130703', '130700', '桥西区');
INSERT INTO `area` VALUES ('130705', '130700', '宣化区');
INSERT INTO `area` VALUES ('130706', '130700', '下花园区');
INSERT INTO `area` VALUES ('130721', '130700', '宣化县');
INSERT INTO `area` VALUES ('130722', '130700', '张北县');
INSERT INTO `area` VALUES ('130723', '130700', '康保县');
INSERT INTO `area` VALUES ('130724', '130700', '沽源县');
INSERT INTO `area` VALUES ('130725', '130700', '尚义县');
INSERT INTO `area` VALUES ('130726', '130700', '蔚县');
INSERT INTO `area` VALUES ('130727', '130700', '阳原县');
INSERT INTO `area` VALUES ('130728', '130700', '怀安县');
INSERT INTO `area` VALUES ('130729', '130700', '万全县');
INSERT INTO `area` VALUES ('130730', '130700', '怀来县');
INSERT INTO `area` VALUES ('130731', '130700', '涿鹿县');
INSERT INTO `area` VALUES ('130732', '130700', '赤城县');
INSERT INTO `area` VALUES ('130733', '130700', '崇礼县');
INSERT INTO `area` VALUES ('130800', '130000', '承德市');
INSERT INTO `area` VALUES ('130802', '130800', '双桥区');
INSERT INTO `area` VALUES ('130803', '130800', '双滦区');
INSERT INTO `area` VALUES ('130804', '130800', '鹰手营子矿区');
INSERT INTO `area` VALUES ('130821', '130800', '承德县');
INSERT INTO `area` VALUES ('130822', '130800', '兴隆县');
INSERT INTO `area` VALUES ('130823', '130800', '平泉县');
INSERT INTO `area` VALUES ('130824', '130800', '滦平县');
INSERT INTO `area` VALUES ('130825', '130800', '隆化县');
INSERT INTO `area` VALUES ('130826', '130800', '丰宁满族自治县');
INSERT INTO `area` VALUES ('130827', '130800', '宽城满族自治县');
INSERT INTO `area` VALUES ('130828', '130800', '围场满族蒙古族自治县');
INSERT INTO `area` VALUES ('130900', '130000', '沧州市');
INSERT INTO `area` VALUES ('130902', '130900', '新华区');
INSERT INTO `area` VALUES ('130903', '130900', '运河区');
INSERT INTO `area` VALUES ('130921', '130900', '沧县');
INSERT INTO `area` VALUES ('130922', '130900', '青县');
INSERT INTO `area` VALUES ('130923', '130900', '东光县');
INSERT INTO `area` VALUES ('130924', '130900', '海兴县');
INSERT INTO `area` VALUES ('130925', '130900', '盐山县');
INSERT INTO `area` VALUES ('130926', '130900', '肃宁县');
INSERT INTO `area` VALUES ('130927', '130900', '南皮县');
INSERT INTO `area` VALUES ('130928', '130900', '吴桥县');
INSERT INTO `area` VALUES ('130929', '130900', '献县');
INSERT INTO `area` VALUES ('130930', '130900', '孟村回族自治县');
INSERT INTO `area` VALUES ('130981', '130900', '泊头市');
INSERT INTO `area` VALUES ('130982', '130900', '任丘市');
INSERT INTO `area` VALUES ('130983', '130900', '黄骅市');
INSERT INTO `area` VALUES ('130984', '130900', '河间市');
INSERT INTO `area` VALUES ('131000', '130000', '廊坊市');
INSERT INTO `area` VALUES ('131002', '131000', '安次区');
INSERT INTO `area` VALUES ('131003', '131000', '广阳区');
INSERT INTO `area` VALUES ('131022', '131000', '固安县');
INSERT INTO `area` VALUES ('131023', '131000', '永清县');
INSERT INTO `area` VALUES ('131024', '131000', '香河县');
INSERT INTO `area` VALUES ('131025', '131000', '大城县');
INSERT INTO `area` VALUES ('131026', '131000', '文安县');
INSERT INTO `area` VALUES ('131028', '131000', '大厂回族自治县');
INSERT INTO `area` VALUES ('131081', '131000', '霸州市');
INSERT INTO `area` VALUES ('131082', '131000', '三河市');
INSERT INTO `area` VALUES ('131100', '130000', '衡水市');
INSERT INTO `area` VALUES ('131102', '131100', '桃城区');
INSERT INTO `area` VALUES ('131121', '131100', '枣强县');
INSERT INTO `area` VALUES ('131122', '131100', '武邑县');
INSERT INTO `area` VALUES ('131123', '131100', '武强县');
INSERT INTO `area` VALUES ('131124', '131100', '饶阳县');
INSERT INTO `area` VALUES ('131125', '131100', '安平县');
INSERT INTO `area` VALUES ('131126', '131100', '故城县');
INSERT INTO `area` VALUES ('131127', '131100', '景县');
INSERT INTO `area` VALUES ('131128', '131100', '阜城县');
INSERT INTO `area` VALUES ('131181', '131100', '冀州市');
INSERT INTO `area` VALUES ('131182', '131100', '深州市');
INSERT INTO `area` VALUES ('139001', '130000', '定州市');
INSERT INTO `area` VALUES ('139002', '130000', '辛集市');
INSERT INTO `area` VALUES ('140000', '0', '山西省');
INSERT INTO `area` VALUES ('140100', '140000', '太原市');
INSERT INTO `area` VALUES ('140105', '140100', '小店区');
INSERT INTO `area` VALUES ('140106', '140100', '迎泽区');
INSERT INTO `area` VALUES ('140107', '140100', '杏花岭区');
INSERT INTO `area` VALUES ('140108', '140100', '尖草坪区');
INSERT INTO `area` VALUES ('140109', '140100', '万柏林区');
INSERT INTO `area` VALUES ('140110', '140100', '晋源区');
INSERT INTO `area` VALUES ('140121', '140100', '清徐县');
INSERT INTO `area` VALUES ('140122', '140100', '阳曲县');
INSERT INTO `area` VALUES ('140123', '140100', '娄烦县');
INSERT INTO `area` VALUES ('140181', '140100', '古交市');
INSERT INTO `area` VALUES ('140200', '140000', '大同市');
INSERT INTO `area` VALUES ('140202', '140200', '城区');
INSERT INTO `area` VALUES ('140203', '140200', '矿区');
INSERT INTO `area` VALUES ('140211', '140200', '南郊区');
INSERT INTO `area` VALUES ('140212', '140200', '新荣区');
INSERT INTO `area` VALUES ('140221', '140200', '阳高县');
INSERT INTO `area` VALUES ('140222', '140200', '天镇县');
INSERT INTO `area` VALUES ('140223', '140200', '广灵县');
INSERT INTO `area` VALUES ('140224', '140200', '灵丘县');
INSERT INTO `area` VALUES ('140225', '140200', '浑源县');
INSERT INTO `area` VALUES ('140226', '140200', '左云县');
INSERT INTO `area` VALUES ('140227', '140200', '大同县');
INSERT INTO `area` VALUES ('140300', '140000', '阳泉市');
INSERT INTO `area` VALUES ('140302', '140300', '城区');
INSERT INTO `area` VALUES ('140303', '140300', '矿区');
INSERT INTO `area` VALUES ('140311', '140300', '郊区');
INSERT INTO `area` VALUES ('140321', '140300', '平定县');
INSERT INTO `area` VALUES ('140322', '140300', '盂县');
INSERT INTO `area` VALUES ('140400', '140000', '长治市');
INSERT INTO `area` VALUES ('140402', '140400', '城区');
INSERT INTO `area` VALUES ('140411', '140400', '郊区');
INSERT INTO `area` VALUES ('140421', '140400', '长治县');
INSERT INTO `area` VALUES ('140423', '140400', '襄垣县');
INSERT INTO `area` VALUES ('140424', '140400', '屯留县');
INSERT INTO `area` VALUES ('140425', '140400', '平顺县');
INSERT INTO `area` VALUES ('140426', '140400', '黎城县');
INSERT INTO `area` VALUES ('140427', '140400', '壶关县');
INSERT INTO `area` VALUES ('140428', '140400', '长子县');
INSERT INTO `area` VALUES ('140429', '140400', '武乡县');
INSERT INTO `area` VALUES ('140430', '140400', '沁县');
INSERT INTO `area` VALUES ('140431', '140400', '沁源县');
INSERT INTO `area` VALUES ('140481', '140400', '潞城市');
INSERT INTO `area` VALUES ('140500', '140000', '晋城市');
INSERT INTO `area` VALUES ('140502', '140500', '城区');
INSERT INTO `area` VALUES ('140521', '140500', '沁水县');
INSERT INTO `area` VALUES ('140522', '140500', '阳城县');
INSERT INTO `area` VALUES ('140524', '140500', '陵川县');
INSERT INTO `area` VALUES ('140525', '140500', '泽州县');
INSERT INTO `area` VALUES ('140581', '140500', '高平市');
INSERT INTO `area` VALUES ('140600', '140000', '朔州市');
INSERT INTO `area` VALUES ('140602', '140600', '朔城区');
INSERT INTO `area` VALUES ('140603', '140600', '平鲁区');
INSERT INTO `area` VALUES ('140621', '140600', '山阴县');
INSERT INTO `area` VALUES ('140622', '140600', '应县');
INSERT INTO `area` VALUES ('140623', '140600', '右玉县');
INSERT INTO `area` VALUES ('140624', '140600', '怀仁县');
INSERT INTO `area` VALUES ('140700', '140000', '晋中市');
INSERT INTO `area` VALUES ('140702', '140700', '榆次区');
INSERT INTO `area` VALUES ('140721', '140700', '榆社县');
INSERT INTO `area` VALUES ('140722', '140700', '左权县');
INSERT INTO `area` VALUES ('140723', '140700', '和顺县');
INSERT INTO `area` VALUES ('140724', '140700', '昔阳县');
INSERT INTO `area` VALUES ('140725', '140700', '寿阳县');
INSERT INTO `area` VALUES ('140726', '140700', '太谷县');
INSERT INTO `area` VALUES ('140727', '140700', '祁县');
INSERT INTO `area` VALUES ('140728', '140700', '平遥县');
INSERT INTO `area` VALUES ('140729', '140700', '灵石县');
INSERT INTO `area` VALUES ('140781', '140700', '介休市');
INSERT INTO `area` VALUES ('140800', '140000', '运城市');
INSERT INTO `area` VALUES ('140802', '140800', '盐湖区');
INSERT INTO `area` VALUES ('140821', '140800', '临猗县');
INSERT INTO `area` VALUES ('140822', '140800', '万荣县');
INSERT INTO `area` VALUES ('140823', '140800', '闻喜县');
INSERT INTO `area` VALUES ('140824', '140800', '稷山县');
INSERT INTO `area` VALUES ('140825', '140800', '新绛县');
INSERT INTO `area` VALUES ('140826', '140800', '绛县');
INSERT INTO `area` VALUES ('140827', '140800', '垣曲县');
INSERT INTO `area` VALUES ('140828', '140800', '夏县');
INSERT INTO `area` VALUES ('140829', '140800', '平陆县');
INSERT INTO `area` VALUES ('140830', '140800', '芮城县');
INSERT INTO `area` VALUES ('140881', '140800', '永济市');
INSERT INTO `area` VALUES ('140882', '140800', '河津市');
INSERT INTO `area` VALUES ('140900', '140000', '忻州市');
INSERT INTO `area` VALUES ('140902', '140900', '忻府区');
INSERT INTO `area` VALUES ('140921', '140900', '定襄县');
INSERT INTO `area` VALUES ('140922', '140900', '五台县');
INSERT INTO `area` VALUES ('140923', '140900', '代县');
INSERT INTO `area` VALUES ('140924', '140900', '繁峙县');
INSERT INTO `area` VALUES ('140925', '140900', '宁武县');
INSERT INTO `area` VALUES ('140926', '140900', '静乐县');
INSERT INTO `area` VALUES ('140927', '140900', '神池县');
INSERT INTO `area` VALUES ('140928', '140900', '五寨县');
INSERT INTO `area` VALUES ('140929', '140900', '岢岚县');
INSERT INTO `area` VALUES ('140930', '140900', '河曲县');
INSERT INTO `area` VALUES ('140931', '140900', '保德县');
INSERT INTO `area` VALUES ('140932', '140900', '偏关县');
INSERT INTO `area` VALUES ('140981', '140900', '原平市');
INSERT INTO `area` VALUES ('141000', '140000', '临汾市');
INSERT INTO `area` VALUES ('141002', '141000', '尧都区');
INSERT INTO `area` VALUES ('141021', '141000', '曲沃县');
INSERT INTO `area` VALUES ('141022', '141000', '翼城县');
INSERT INTO `area` VALUES ('141023', '141000', '襄汾县');
INSERT INTO `area` VALUES ('141024', '141000', '洪洞县');
INSERT INTO `area` VALUES ('141025', '141000', '古县');
INSERT INTO `area` VALUES ('141026', '141000', '安泽县');
INSERT INTO `area` VALUES ('141027', '141000', '浮山县');
INSERT INTO `area` VALUES ('141028', '141000', '吉县');
INSERT INTO `area` VALUES ('141029', '141000', '乡宁县');
INSERT INTO `area` VALUES ('141030', '141000', '大宁县');
INSERT INTO `area` VALUES ('141031', '141000', '隰县');
INSERT INTO `area` VALUES ('141032', '141000', '永和县');
INSERT INTO `area` VALUES ('141033', '141000', '蒲县');
INSERT INTO `area` VALUES ('141034', '141000', '汾西县');
INSERT INTO `area` VALUES ('141081', '141000', '侯马市');
INSERT INTO `area` VALUES ('141082', '141000', '霍州市');
INSERT INTO `area` VALUES ('141100', '140000', '吕梁市');
INSERT INTO `area` VALUES ('141102', '141100', '离石区');
INSERT INTO `area` VALUES ('141121', '141100', '文水县');
INSERT INTO `area` VALUES ('141122', '141100', '交城县');
INSERT INTO `area` VALUES ('141123', '141100', '兴县');
INSERT INTO `area` VALUES ('141124', '141100', '临县');
INSERT INTO `area` VALUES ('141125', '141100', '柳林县');
INSERT INTO `area` VALUES ('141126', '141100', '石楼县');
INSERT INTO `area` VALUES ('141127', '141100', '岚县');
INSERT INTO `area` VALUES ('141128', '141100', '方山县');
INSERT INTO `area` VALUES ('141129', '141100', '中阳县');
INSERT INTO `area` VALUES ('141130', '141100', '交口县');
INSERT INTO `area` VALUES ('141181', '141100', '孝义市');
INSERT INTO `area` VALUES ('141182', '141100', '汾阳市');
INSERT INTO `area` VALUES ('150000', '0', '内蒙古');
INSERT INTO `area` VALUES ('150100', '150000', '呼和浩特市');
INSERT INTO `area` VALUES ('150102', '150100', '新城区');
INSERT INTO `area` VALUES ('150103', '150100', '回民区');
INSERT INTO `area` VALUES ('150104', '150100', '玉泉区');
INSERT INTO `area` VALUES ('150105', '150100', '赛罕区');
INSERT INTO `area` VALUES ('150121', '150100', '土默特左旗');
INSERT INTO `area` VALUES ('150122', '150100', '托克托县');
INSERT INTO `area` VALUES ('150123', '150100', '和林格尔县');
INSERT INTO `area` VALUES ('150124', '150100', '清水河县');
INSERT INTO `area` VALUES ('150125', '150100', '武川县');
INSERT INTO `area` VALUES ('150200', '150000', '包头市');
INSERT INTO `area` VALUES ('150202', '150200', '东河区');
INSERT INTO `area` VALUES ('150203', '150200', '昆都仑区');
INSERT INTO `area` VALUES ('150204', '150200', '青山区');
INSERT INTO `area` VALUES ('150205', '150200', '石拐区');
INSERT INTO `area` VALUES ('150206', '150200', '白云鄂博矿区');
INSERT INTO `area` VALUES ('150207', '150200', '九原区');
INSERT INTO `area` VALUES ('150221', '150200', '土默特右旗');
INSERT INTO `area` VALUES ('150222', '150200', '固阳县');
INSERT INTO `area` VALUES ('150223', '150200', '达尔罕茂明安联合旗');
INSERT INTO `area` VALUES ('150300', '150000', '乌海市');
INSERT INTO `area` VALUES ('150302', '150300', '海勃湾区');
INSERT INTO `area` VALUES ('150303', '150300', '海南区');
INSERT INTO `area` VALUES ('150304', '150300', '乌达区');
INSERT INTO `area` VALUES ('150400', '150000', '赤峰市');
INSERT INTO `area` VALUES ('150402', '150400', '红山区');
INSERT INTO `area` VALUES ('150403', '150400', '元宝山区');
INSERT INTO `area` VALUES ('150404', '150400', '松山区');
INSERT INTO `area` VALUES ('150421', '150400', '阿鲁科尔沁旗');
INSERT INTO `area` VALUES ('150422', '150400', '巴林左旗');
INSERT INTO `area` VALUES ('150423', '150400', '巴林右旗');
INSERT INTO `area` VALUES ('150424', '150400', '林西县');
INSERT INTO `area` VALUES ('150425', '150400', '克什克腾旗');
INSERT INTO `area` VALUES ('150426', '150400', '翁牛特旗');
INSERT INTO `area` VALUES ('150428', '150400', '喀喇沁旗');
INSERT INTO `area` VALUES ('150429', '150400', '宁城县');
INSERT INTO `area` VALUES ('150430', '150400', '敖汉旗');
INSERT INTO `area` VALUES ('150500', '150000', '通辽市');
INSERT INTO `area` VALUES ('150502', '150500', '科尔沁区');
INSERT INTO `area` VALUES ('150521', '150500', '科尔沁左翼中旗');
INSERT INTO `area` VALUES ('150522', '150500', '科尔沁左翼后旗');
INSERT INTO `area` VALUES ('150523', '150500', '开鲁县');
INSERT INTO `area` VALUES ('150524', '150500', '库伦旗');
INSERT INTO `area` VALUES ('150525', '150500', '奈曼旗');
INSERT INTO `area` VALUES ('150526', '150500', '扎鲁特旗');
INSERT INTO `area` VALUES ('150581', '150500', '霍林郭勒市');
INSERT INTO `area` VALUES ('150600', '150000', '鄂尔多斯市');
INSERT INTO `area` VALUES ('150602', '150600', '东胜区');
INSERT INTO `area` VALUES ('150621', '150600', '达拉特旗');
INSERT INTO `area` VALUES ('150622', '150600', '准格尔旗');
INSERT INTO `area` VALUES ('150623', '150600', '鄂托克前旗');
INSERT INTO `area` VALUES ('150624', '150600', '鄂托克旗');
INSERT INTO `area` VALUES ('150625', '150600', '杭锦旗');
INSERT INTO `area` VALUES ('150626', '150600', '乌审旗');
INSERT INTO `area` VALUES ('150627', '150600', '伊金霍洛旗');
INSERT INTO `area` VALUES ('150700', '150000', '呼伦贝尔市');
INSERT INTO `area` VALUES ('150702', '150700', '海拉尔区');
INSERT INTO `area` VALUES ('150703', '150700', '扎赉诺尔区');
INSERT INTO `area` VALUES ('150721', '150700', '阿荣旗');
INSERT INTO `area` VALUES ('150722', '150700', '莫力达瓦达斡尔族自治旗');
INSERT INTO `area` VALUES ('150723', '150700', '鄂伦春自治旗');
INSERT INTO `area` VALUES ('150724', '150700', '鄂温克族自治旗');
INSERT INTO `area` VALUES ('150725', '150700', '陈巴尔虎旗');
INSERT INTO `area` VALUES ('150726', '150700', '新巴尔虎左旗');
INSERT INTO `area` VALUES ('150727', '150700', '新巴尔虎右旗');
INSERT INTO `area` VALUES ('150781', '150700', '满洲里市');
INSERT INTO `area` VALUES ('150782', '150700', '牙克石市');
INSERT INTO `area` VALUES ('150783', '150700', '扎兰屯市');
INSERT INTO `area` VALUES ('150784', '150700', '额尔古纳市');
INSERT INTO `area` VALUES ('150785', '150700', '根河市');
INSERT INTO `area` VALUES ('150800', '150000', '巴彦淖尔市');
INSERT INTO `area` VALUES ('150802', '150800', '临河区');
INSERT INTO `area` VALUES ('150821', '150800', '五原县');
INSERT INTO `area` VALUES ('150822', '150800', '磴口县');
INSERT INTO `area` VALUES ('150823', '150800', '乌拉特前旗');
INSERT INTO `area` VALUES ('150824', '150800', '乌拉特中旗');
INSERT INTO `area` VALUES ('150825', '150800', '乌拉特后旗');
INSERT INTO `area` VALUES ('150826', '150800', '杭锦后旗');
INSERT INTO `area` VALUES ('150900', '150000', '乌兰察布市');
INSERT INTO `area` VALUES ('150902', '150900', '集宁区');
INSERT INTO `area` VALUES ('150921', '150900', '卓资县');
INSERT INTO `area` VALUES ('150922', '150900', '化德县');
INSERT INTO `area` VALUES ('150923', '150900', '商都县');
INSERT INTO `area` VALUES ('150924', '150900', '兴和县');
INSERT INTO `area` VALUES ('150925', '150900', '凉城县');
INSERT INTO `area` VALUES ('150926', '150900', '察哈尔右翼前旗');
INSERT INTO `area` VALUES ('150927', '150900', '察哈尔右翼中旗');
INSERT INTO `area` VALUES ('150928', '150900', '察哈尔右翼后旗');
INSERT INTO `area` VALUES ('150929', '150900', '四子王旗');
INSERT INTO `area` VALUES ('150981', '150900', '丰镇市');
INSERT INTO `area` VALUES ('152200', '150000', '兴安盟');
INSERT INTO `area` VALUES ('152201', '152200', '乌兰浩特市');
INSERT INTO `area` VALUES ('152202', '152200', '阿尔山市');
INSERT INTO `area` VALUES ('152221', '152200', '科尔沁右翼前旗');
INSERT INTO `area` VALUES ('152222', '152200', '科尔沁右翼中旗');
INSERT INTO `area` VALUES ('152223', '152200', '扎赉特旗');
INSERT INTO `area` VALUES ('152224', '152200', '突泉县');
INSERT INTO `area` VALUES ('152500', '150000', '锡林郭勒盟');
INSERT INTO `area` VALUES ('152501', '152500', '二连浩特市');
INSERT INTO `area` VALUES ('152502', '152500', '锡林浩特市');
INSERT INTO `area` VALUES ('152522', '152500', '阿巴嘎旗');
INSERT INTO `area` VALUES ('152523', '152500', '苏尼特左旗');
INSERT INTO `area` VALUES ('152524', '152500', '苏尼特右旗');
INSERT INTO `area` VALUES ('152525', '152500', '东乌珠穆沁旗');
INSERT INTO `area` VALUES ('152526', '152500', '西乌珠穆沁旗');
INSERT INTO `area` VALUES ('152527', '152500', '太仆寺旗');
INSERT INTO `area` VALUES ('152528', '152500', '镶黄旗');
INSERT INTO `area` VALUES ('152529', '152500', '正镶白旗');
INSERT INTO `area` VALUES ('152530', '152500', '正蓝旗');
INSERT INTO `area` VALUES ('152531', '152500', '多伦县');
INSERT INTO `area` VALUES ('152900', '150000', '阿拉善盟');
INSERT INTO `area` VALUES ('152921', '152900', '阿拉善左旗');
INSERT INTO `area` VALUES ('152922', '152900', '阿拉善右旗');
INSERT INTO `area` VALUES ('152923', '152900', '额济纳旗');
INSERT INTO `area` VALUES ('210000', '0', '辽宁省');
INSERT INTO `area` VALUES ('210100', '210000', '沈阳市');
INSERT INTO `area` VALUES ('210102', '210100', '和平区');
INSERT INTO `area` VALUES ('210103', '210100', '沈河区');
INSERT INTO `area` VALUES ('210104', '210100', '大东区');
INSERT INTO `area` VALUES ('210105', '210100', '皇姑区');
INSERT INTO `area` VALUES ('210106', '210100', '铁西区');
INSERT INTO `area` VALUES ('210111', '210100', '苏家屯区');
INSERT INTO `area` VALUES ('210112', '210100', '东陵区');
INSERT INTO `area` VALUES ('210113', '210100', '新城子区');
INSERT INTO `area` VALUES ('210114', '210100', '于洪区');
INSERT INTO `area` VALUES ('210122', '210100', '辽中县');
INSERT INTO `area` VALUES ('210123', '210100', '康平县');
INSERT INTO `area` VALUES ('210124', '210100', '法库县');
INSERT INTO `area` VALUES ('210181', '210100', '新民市');
INSERT INTO `area` VALUES ('210200', '210000', '大连市');
INSERT INTO `area` VALUES ('210202', '210200', '中山区');
INSERT INTO `area` VALUES ('210203', '210200', '西岗区');
INSERT INTO `area` VALUES ('210204', '210200', '沙河口区');
INSERT INTO `area` VALUES ('210211', '210200', '甘井子区');
INSERT INTO `area` VALUES ('210212', '210200', '旅顺口区');
INSERT INTO `area` VALUES ('210213', '210200', '金州区');
INSERT INTO `area` VALUES ('210224', '210200', '长海县');
INSERT INTO `area` VALUES ('210281', '210200', '瓦房店市');
INSERT INTO `area` VALUES ('210282', '210200', '普兰店市');
INSERT INTO `area` VALUES ('210283', '210200', '庄河市');
INSERT INTO `area` VALUES ('210300', '210000', '鞍山市');
INSERT INTO `area` VALUES ('210302', '210300', '铁东区');
INSERT INTO `area` VALUES ('210303', '210300', '铁西区');
INSERT INTO `area` VALUES ('210304', '210300', '立山区');
INSERT INTO `area` VALUES ('210311', '210300', '千山区');
INSERT INTO `area` VALUES ('210321', '210300', '台安县');
INSERT INTO `area` VALUES ('210323', '210300', '岫岩满族自治县');
INSERT INTO `area` VALUES ('210381', '210300', '海城市');
INSERT INTO `area` VALUES ('210400', '210000', '抚顺市');
INSERT INTO `area` VALUES ('210402', '210400', '新抚区');
INSERT INTO `area` VALUES ('210403', '210400', '东洲区');
INSERT INTO `area` VALUES ('210404', '210400', '望花区');
INSERT INTO `area` VALUES ('210411', '210400', '顺城区');
INSERT INTO `area` VALUES ('210421', '210400', '抚顺县');
INSERT INTO `area` VALUES ('210422', '210400', '新宾满族自治县');
INSERT INTO `area` VALUES ('210423', '210400', '清原满族自治县');
INSERT INTO `area` VALUES ('210500', '210000', '本溪市');
INSERT INTO `area` VALUES ('210502', '210500', '平山区');
INSERT INTO `area` VALUES ('210503', '210500', '溪湖区');
INSERT INTO `area` VALUES ('210504', '210500', '明山区');
INSERT INTO `area` VALUES ('210505', '210500', '南芬区');
INSERT INTO `area` VALUES ('210521', '210500', '本溪满族自治县');
INSERT INTO `area` VALUES ('210522', '210500', '桓仁满族自治县');
INSERT INTO `area` VALUES ('210600', '210000', '丹东市');
INSERT INTO `area` VALUES ('210602', '210600', '元宝区');
INSERT INTO `area` VALUES ('210603', '210600', '振兴区');
INSERT INTO `area` VALUES ('210604', '210600', '振安区');
INSERT INTO `area` VALUES ('210624', '210600', '宽甸满族自治县');
INSERT INTO `area` VALUES ('210681', '210600', '东港市');
INSERT INTO `area` VALUES ('210682', '210600', '凤城市');
INSERT INTO `area` VALUES ('210700', '210000', '锦州市');
INSERT INTO `area` VALUES ('210702', '210700', '古塔区');
INSERT INTO `area` VALUES ('210703', '210700', '凌河区');
INSERT INTO `area` VALUES ('210711', '210700', '太和区');
INSERT INTO `area` VALUES ('210726', '210700', '黑山县');
INSERT INTO `area` VALUES ('210727', '210700', '义县');
INSERT INTO `area` VALUES ('210781', '210700', '凌海市');
INSERT INTO `area` VALUES ('210782', '210700', '北镇市');
INSERT INTO `area` VALUES ('210800', '210000', '营口市');
INSERT INTO `area` VALUES ('210802', '210800', '站前区');
INSERT INTO `area` VALUES ('210803', '210800', '西市区');
INSERT INTO `area` VALUES ('210804', '210800', '鲅鱼圈区');
INSERT INTO `area` VALUES ('210811', '210800', '老边区');
INSERT INTO `area` VALUES ('210881', '210800', '盖州市');
INSERT INTO `area` VALUES ('210882', '210800', '大石桥市');
INSERT INTO `area` VALUES ('210900', '210000', '阜新市');
INSERT INTO `area` VALUES ('210902', '210900', '海州区');
INSERT INTO `area` VALUES ('210903', '210900', '新邱区');
INSERT INTO `area` VALUES ('210904', '210900', '太平区');
INSERT INTO `area` VALUES ('210905', '210900', '清河门区');
INSERT INTO `area` VALUES ('210911', '210900', '细河区');
INSERT INTO `area` VALUES ('210921', '210900', '阜新蒙古族自治县');
INSERT INTO `area` VALUES ('210922', '210900', '彰武县');
INSERT INTO `area` VALUES ('211000', '210000', '辽阳市');
INSERT INTO `area` VALUES ('211002', '211000', '白塔区');
INSERT INTO `area` VALUES ('211003', '211000', '文圣区');
INSERT INTO `area` VALUES ('211004', '211000', '宏伟区');
INSERT INTO `area` VALUES ('211005', '211000', '弓长岭区');
INSERT INTO `area` VALUES ('211011', '211000', '太子河区');
INSERT INTO `area` VALUES ('211021', '211000', '辽阳县');
INSERT INTO `area` VALUES ('211081', '211000', '灯塔市');
INSERT INTO `area` VALUES ('211100', '210000', '盘锦市');
INSERT INTO `area` VALUES ('211102', '211100', '双台子区');
INSERT INTO `area` VALUES ('211103', '211100', '兴隆台区');
INSERT INTO `area` VALUES ('211121', '211100', '大洼县');
INSERT INTO `area` VALUES ('211122', '211100', '盘山县');
INSERT INTO `area` VALUES ('211200', '210000', '铁岭市');
INSERT INTO `area` VALUES ('211202', '211200', '银州区');
INSERT INTO `area` VALUES ('211204', '211200', '清河区');
INSERT INTO `area` VALUES ('211221', '211200', '铁岭县');
INSERT INTO `area` VALUES ('211223', '211200', '西丰县');
INSERT INTO `area` VALUES ('211224', '211200', '昌图县');
INSERT INTO `area` VALUES ('211281', '211200', '调兵山市');
INSERT INTO `area` VALUES ('211282', '211200', '开原市');
INSERT INTO `area` VALUES ('211300', '210000', '朝阳市');
INSERT INTO `area` VALUES ('211302', '211300', '双塔区');
INSERT INTO `area` VALUES ('211303', '211300', '龙城区');
INSERT INTO `area` VALUES ('211321', '211300', '朝阳县');
INSERT INTO `area` VALUES ('211322', '211300', '建平县');
INSERT INTO `area` VALUES ('211324', '211300', '喀喇沁左翼蒙古族自治县');
INSERT INTO `area` VALUES ('211381', '211300', '北票市');
INSERT INTO `area` VALUES ('211382', '211300', '凌源市');
INSERT INTO `area` VALUES ('211400', '210000', '葫芦岛市');
INSERT INTO `area` VALUES ('211402', '211400', '连山区');
INSERT INTO `area` VALUES ('211403', '211400', '龙港区');
INSERT INTO `area` VALUES ('211404', '211400', '南票区');
INSERT INTO `area` VALUES ('211421', '211400', '绥中县');
INSERT INTO `area` VALUES ('211422', '211400', '建昌县');
INSERT INTO `area` VALUES ('211481', '211400', '兴城市');
INSERT INTO `area` VALUES ('220000', '0', '吉林省');
INSERT INTO `area` VALUES ('220100', '220000', '长春市');
INSERT INTO `area` VALUES ('220102', '220100', '南关区');
INSERT INTO `area` VALUES ('220103', '220100', '宽城区');
INSERT INTO `area` VALUES ('220104', '220100', '朝阳区');
INSERT INTO `area` VALUES ('220105', '220100', '二道区');
INSERT INTO `area` VALUES ('220106', '220100', '绿园区');
INSERT INTO `area` VALUES ('220112', '220100', '双阳区');
INSERT INTO `area` VALUES ('220113', '220100', '九台区');
INSERT INTO `area` VALUES ('220122', '220100', '农安县');
INSERT INTO `area` VALUES ('220182', '220100', '榆树市');
INSERT INTO `area` VALUES ('220183', '220100', '德惠市');
INSERT INTO `area` VALUES ('220200', '220000', '吉林市');
INSERT INTO `area` VALUES ('220202', '220200', '昌邑区');
INSERT INTO `area` VALUES ('220203', '220200', '龙潭区');
INSERT INTO `area` VALUES ('220204', '220200', '船营区');
INSERT INTO `area` VALUES ('220211', '220200', '丰满区');
INSERT INTO `area` VALUES ('220221', '220200', '永吉县');
INSERT INTO `area` VALUES ('220281', '220200', '蛟河市');
INSERT INTO `area` VALUES ('220282', '220200', '桦甸市');
INSERT INTO `area` VALUES ('220283', '220200', '舒兰市');
INSERT INTO `area` VALUES ('220284', '220200', '磐石市');
INSERT INTO `area` VALUES ('220300', '220000', '四平市');
INSERT INTO `area` VALUES ('220302', '220300', '铁西区');
INSERT INTO `area` VALUES ('220303', '220300', '铁东区');
INSERT INTO `area` VALUES ('220322', '220300', '梨树县');
INSERT INTO `area` VALUES ('220323', '220300', '伊通满族自治县');
INSERT INTO `area` VALUES ('220381', '220300', '公主岭市');
INSERT INTO `area` VALUES ('220382', '220300', '双辽市');
INSERT INTO `area` VALUES ('220400', '220000', '辽源市');
INSERT INTO `area` VALUES ('220402', '220400', '龙山区');
INSERT INTO `area` VALUES ('220403', '220400', '西安区');
INSERT INTO `area` VALUES ('220421', '220400', '东丰县');
INSERT INTO `area` VALUES ('220422', '220400', '东辽县');
INSERT INTO `area` VALUES ('220500', '220000', '通化市');
INSERT INTO `area` VALUES ('220502', '220500', '东昌区');
INSERT INTO `area` VALUES ('220503', '220500', '二道江区');
INSERT INTO `area` VALUES ('220521', '220500', '通化县');
INSERT INTO `area` VALUES ('220523', '220500', '辉南县');
INSERT INTO `area` VALUES ('220524', '220500', '柳河县');
INSERT INTO `area` VALUES ('220581', '220500', '梅河口市');
INSERT INTO `area` VALUES ('220582', '220500', '集安市');
INSERT INTO `area` VALUES ('220600', '220000', '白山市');
INSERT INTO `area` VALUES ('220602', '220600', '浑江区');
INSERT INTO `area` VALUES ('220605', '220600', '江源区');
INSERT INTO `area` VALUES ('220621', '220600', '抚松县');
INSERT INTO `area` VALUES ('220622', '220600', '靖宇县');
INSERT INTO `area` VALUES ('220623', '220600', '长白朝鲜族自治县');
INSERT INTO `area` VALUES ('220681', '220600', '临江市');
INSERT INTO `area` VALUES ('220700', '220000', '松原市');
INSERT INTO `area` VALUES ('220702', '220700', '宁江区');
INSERT INTO `area` VALUES ('220721', '220700', '前郭尔罗斯蒙古族自治县');
INSERT INTO `area` VALUES ('220722', '220700', '长岭县');
INSERT INTO `area` VALUES ('220723', '220700', '乾安县');
INSERT INTO `area` VALUES ('220781', '220700', '扶余市');
INSERT INTO `area` VALUES ('220800', '220000', '白城市');
INSERT INTO `area` VALUES ('220802', '220800', '洮北区');
INSERT INTO `area` VALUES ('220821', '220800', '镇赉县');
INSERT INTO `area` VALUES ('220822', '220800', '通榆县');
INSERT INTO `area` VALUES ('220881', '220800', '洮南市');
INSERT INTO `area` VALUES ('220882', '220800', '大安市');
INSERT INTO `area` VALUES ('222400', '220000', '延边朝鲜族自治州');
INSERT INTO `area` VALUES ('222401', '222400', '延吉市');
INSERT INTO `area` VALUES ('222402', '222400', '图们市');
INSERT INTO `area` VALUES ('222403', '222400', '敦化市');
INSERT INTO `area` VALUES ('222404', '222400', '珲春市');
INSERT INTO `area` VALUES ('222405', '222400', '龙井市');
INSERT INTO `area` VALUES ('222406', '222400', '和龙市');
INSERT INTO `area` VALUES ('222424', '222400', '汪清县');
INSERT INTO `area` VALUES ('222426', '222400', '安图县');
INSERT INTO `area` VALUES ('230000', '0', '黑龙江省');
INSERT INTO `area` VALUES ('230100', '230000', '哈尔滨市');
INSERT INTO `area` VALUES ('230102', '230100', '道里区');
INSERT INTO `area` VALUES ('230103', '230100', '南岗区');
INSERT INTO `area` VALUES ('230104', '230100', '道外区');
INSERT INTO `area` VALUES ('230108', '230100', '平房区');
INSERT INTO `area` VALUES ('230109', '230100', '松北区');
INSERT INTO `area` VALUES ('230110', '230100', '香坊区');
INSERT INTO `area` VALUES ('230111', '230100', '呼兰区');
INSERT INTO `area` VALUES ('230112', '230100', '阿城区');
INSERT INTO `area` VALUES ('230113', '230100', '双城区');
INSERT INTO `area` VALUES ('230123', '230100', '依兰县');
INSERT INTO `area` VALUES ('230124', '230100', '方正县');
INSERT INTO `area` VALUES ('230125', '230100', '宾县');
INSERT INTO `area` VALUES ('230126', '230100', '巴彦县');
INSERT INTO `area` VALUES ('230127', '230100', '木兰县');
INSERT INTO `area` VALUES ('230128', '230100', '通河县');
INSERT INTO `area` VALUES ('230129', '230100', '延寿县');
INSERT INTO `area` VALUES ('230183', '230100', '尚志市');
INSERT INTO `area` VALUES ('230184', '230100', '五常市');
INSERT INTO `area` VALUES ('230200', '230000', '齐齐哈尔市');
INSERT INTO `area` VALUES ('230202', '230200', '龙沙区');
INSERT INTO `area` VALUES ('230203', '230200', '建华区');
INSERT INTO `area` VALUES ('230204', '230200', '铁锋区');
INSERT INTO `area` VALUES ('230205', '230200', '昂昂溪区');
INSERT INTO `area` VALUES ('230206', '230200', '富拉尔基区');
INSERT INTO `area` VALUES ('230207', '230200', '碾子山区');
INSERT INTO `area` VALUES ('230208', '230200', '梅里斯达斡尔族区');
INSERT INTO `area` VALUES ('230221', '230200', '龙江县');
INSERT INTO `area` VALUES ('230223', '230200', '依安县');
INSERT INTO `area` VALUES ('230224', '230200', '泰来县');
INSERT INTO `area` VALUES ('230225', '230200', '甘南县');
INSERT INTO `area` VALUES ('230227', '230200', '富裕县');
INSERT INTO `area` VALUES ('230229', '230200', '克山县');
INSERT INTO `area` VALUES ('230230', '230200', '克东县');
INSERT INTO `area` VALUES ('230231', '230200', '拜泉县');
INSERT INTO `area` VALUES ('230281', '230200', '讷河市');
INSERT INTO `area` VALUES ('230300', '230000', '鸡西市');
INSERT INTO `area` VALUES ('230302', '230300', '鸡冠区');
INSERT INTO `area` VALUES ('230303', '230300', '恒山区');
INSERT INTO `area` VALUES ('230304', '230300', '滴道区');
INSERT INTO `area` VALUES ('230305', '230300', '梨树区');
INSERT INTO `area` VALUES ('230306', '230300', '城子河区');
INSERT INTO `area` VALUES ('230307', '230300', '麻山区');
INSERT INTO `area` VALUES ('230321', '230300', '鸡东县');
INSERT INTO `area` VALUES ('230381', '230300', '虎林市');
INSERT INTO `area` VALUES ('230382', '230300', '密山市');
INSERT INTO `area` VALUES ('230400', '230000', '鹤岗市');
INSERT INTO `area` VALUES ('230402', '230400', '向阳区');
INSERT INTO `area` VALUES ('230403', '230400', '工农区');
INSERT INTO `area` VALUES ('230404', '230400', '南山区');
INSERT INTO `area` VALUES ('230405', '230400', '兴安区');
INSERT INTO `area` VALUES ('230406', '230400', '东山区');
INSERT INTO `area` VALUES ('230407', '230400', '兴山区');
INSERT INTO `area` VALUES ('230421', '230400', '萝北县');
INSERT INTO `area` VALUES ('230422', '230400', '绥滨县');
INSERT INTO `area` VALUES ('230500', '230000', '双鸭山市');
INSERT INTO `area` VALUES ('230502', '230500', '尖山区');
INSERT INTO `area` VALUES ('230503', '230500', '岭东区');
INSERT INTO `area` VALUES ('230505', '230500', '四方台区');
INSERT INTO `area` VALUES ('230506', '230500', '宝山区');
INSERT INTO `area` VALUES ('230521', '230500', '集贤县');
INSERT INTO `area` VALUES ('230522', '230500', '友谊县');
INSERT INTO `area` VALUES ('230523', '230500', '宝清县');
INSERT INTO `area` VALUES ('230524', '230500', '饶河县');
INSERT INTO `area` VALUES ('230600', '230000', '大庆市');
INSERT INTO `area` VALUES ('230602', '230600', '萨尔图区');
INSERT INTO `area` VALUES ('230603', '230600', '龙凤区');
INSERT INTO `area` VALUES ('230604', '230600', '让胡路区');
INSERT INTO `area` VALUES ('230605', '230600', '红岗区');
INSERT INTO `area` VALUES ('230606', '230600', '大同区');
INSERT INTO `area` VALUES ('230621', '230600', '肇州县');
INSERT INTO `area` VALUES ('230622', '230600', '肇源县');
INSERT INTO `area` VALUES ('230623', '230600', '林甸县');
INSERT INTO `area` VALUES ('230624', '230600', '杜尔伯特蒙古族自治县');
INSERT INTO `area` VALUES ('230700', '230000', '伊春市');
INSERT INTO `area` VALUES ('230702', '230700', '伊春区');
INSERT INTO `area` VALUES ('230703', '230700', '南岔区');
INSERT INTO `area` VALUES ('230704', '230700', '友好区');
INSERT INTO `area` VALUES ('230705', '230700', '西林区');
INSERT INTO `area` VALUES ('230706', '230700', '翠峦区');
INSERT INTO `area` VALUES ('230707', '230700', '新青区');
INSERT INTO `area` VALUES ('230708', '230700', '美溪区');
INSERT INTO `area` VALUES ('230709', '230700', '金山屯区');
INSERT INTO `area` VALUES ('230710', '230700', '五营区');
INSERT INTO `area` VALUES ('230711', '230700', '乌马河区');
INSERT INTO `area` VALUES ('230712', '230700', '汤旺河区');
INSERT INTO `area` VALUES ('230713', '230700', '带岭区');
INSERT INTO `area` VALUES ('230714', '230700', '乌伊岭区');
INSERT INTO `area` VALUES ('230715', '230700', '红星区');
INSERT INTO `area` VALUES ('230716', '230700', '上甘岭区');
INSERT INTO `area` VALUES ('230722', '230700', '嘉荫县');
INSERT INTO `area` VALUES ('230781', '230700', '铁力市');
INSERT INTO `area` VALUES ('230800', '230000', '佳木斯市');
INSERT INTO `area` VALUES ('230803', '230800', '向阳区');
INSERT INTO `area` VALUES ('230804', '230800', '前进区');
INSERT INTO `area` VALUES ('230805', '230800', '东风区');
INSERT INTO `area` VALUES ('230811', '230800', '郊区');
INSERT INTO `area` VALUES ('230822', '230800', '桦南县');
INSERT INTO `area` VALUES ('230826', '230800', '桦川县');
INSERT INTO `area` VALUES ('230828', '230800', '汤原县');
INSERT INTO `area` VALUES ('230833', '230800', '抚远县');
INSERT INTO `area` VALUES ('230881', '230800', '同江市');
INSERT INTO `area` VALUES ('230882', '230800', '富锦市');
INSERT INTO `area` VALUES ('230900', '230000', '七台河市');
INSERT INTO `area` VALUES ('230902', '230900', '新兴区');
INSERT INTO `area` VALUES ('230903', '230900', '桃山区');
INSERT INTO `area` VALUES ('230904', '230900', '茄子河区');
INSERT INTO `area` VALUES ('230921', '230900', '勃利县');
INSERT INTO `area` VALUES ('231000', '230000', '牡丹江市');
INSERT INTO `area` VALUES ('231002', '231000', '东安区');
INSERT INTO `area` VALUES ('231003', '231000', '阳明区');
INSERT INTO `area` VALUES ('231004', '231000', '爱民区');
INSERT INTO `area` VALUES ('231005', '231000', '西安区');
INSERT INTO `area` VALUES ('231024', '231000', '东宁县');
INSERT INTO `area` VALUES ('231025', '231000', '林口县');
INSERT INTO `area` VALUES ('231081', '231000', '绥芬河市');
INSERT INTO `area` VALUES ('231083', '231000', '海林市');
INSERT INTO `area` VALUES ('231084', '231000', '宁安市');
INSERT INTO `area` VALUES ('231085', '231000', '穆棱市');
INSERT INTO `area` VALUES ('231100', '230000', '黑河市');
INSERT INTO `area` VALUES ('231102', '231100', '爱辉区');
INSERT INTO `area` VALUES ('231121', '231100', '嫩江县');
INSERT INTO `area` VALUES ('231123', '231100', '逊克县');
INSERT INTO `area` VALUES ('231124', '231100', '孙吴县');
INSERT INTO `area` VALUES ('231181', '231100', '北安市');
INSERT INTO `area` VALUES ('231182', '231100', '五大连池市');
INSERT INTO `area` VALUES ('231200', '230000', '绥化市');
INSERT INTO `area` VALUES ('231202', '231200', '北林区');
INSERT INTO `area` VALUES ('231221', '231200', '望奎县');
INSERT INTO `area` VALUES ('231222', '231200', '兰西县');
INSERT INTO `area` VALUES ('231223', '231200', '青冈县');
INSERT INTO `area` VALUES ('231224', '231200', '庆安县');
INSERT INTO `area` VALUES ('231225', '231200', '明水县');
INSERT INTO `area` VALUES ('231226', '231200', '绥棱县');
INSERT INTO `area` VALUES ('231281', '231200', '安达市');
INSERT INTO `area` VALUES ('231282', '231200', '肇东市');
INSERT INTO `area` VALUES ('231283', '231200', '海伦市');
INSERT INTO `area` VALUES ('232700', '230000', '大兴安岭地区');
INSERT INTO `area` VALUES ('232721', '232700', '呼玛县');
INSERT INTO `area` VALUES ('232722', '232700', '塔河县');
INSERT INTO `area` VALUES ('232723', '232700', '漠河县');
INSERT INTO `area` VALUES ('310000', '0', '上海市');
INSERT INTO `area` VALUES ('310100', '310000', '上海市');
INSERT INTO `area` VALUES ('310101', '310100', '黄浦区');
INSERT INTO `area` VALUES ('310104', '310100', '徐汇区');
INSERT INTO `area` VALUES ('310105', '310100', '长宁区');
INSERT INTO `area` VALUES ('310106', '310100', '静安区');
INSERT INTO `area` VALUES ('310107', '310100', '普陀区');
INSERT INTO `area` VALUES ('310108', '310100', '闸北区');
INSERT INTO `area` VALUES ('310109', '310100', '虹口区');
INSERT INTO `area` VALUES ('310110', '310100', '杨浦区');
INSERT INTO `area` VALUES ('310112', '310100', '闵行区');
INSERT INTO `area` VALUES ('310113', '310100', '宝山区');
INSERT INTO `area` VALUES ('310114', '310100', '嘉定区');
INSERT INTO `area` VALUES ('310115', '310100', '浦东新区');
INSERT INTO `area` VALUES ('310116', '310100', '金山区');
INSERT INTO `area` VALUES ('310117', '310100', '松江区');
INSERT INTO `area` VALUES ('310118', '310100', '青浦区');
INSERT INTO `area` VALUES ('310120', '310100', '奉贤区');
INSERT INTO `area` VALUES ('310230', '310100', '崇明县');
INSERT INTO `area` VALUES ('320000', '0', '江苏省');
INSERT INTO `area` VALUES ('320100', '320000', '南京市');
INSERT INTO `area` VALUES ('320102', '320100', '玄武区');
INSERT INTO `area` VALUES ('320104', '320100', '秦淮区');
INSERT INTO `area` VALUES ('320105', '320100', '建邺区');
INSERT INTO `area` VALUES ('320106', '320100', '鼓楼区');
INSERT INTO `area` VALUES ('320111', '320100', '浦口区');
INSERT INTO `area` VALUES ('320113', '320100', '栖霞区');
INSERT INTO `area` VALUES ('320114', '320100', '雨花台区');
INSERT INTO `area` VALUES ('320115', '320100', '江宁区');
INSERT INTO `area` VALUES ('320116', '320100', '六合区');
INSERT INTO `area` VALUES ('320117', '320100', '溧水区');
INSERT INTO `area` VALUES ('320118', '320100', '高淳区');
INSERT INTO `area` VALUES ('320200', '320000', '无锡市');
INSERT INTO `area` VALUES ('320202', '320200', '崇安区');
INSERT INTO `area` VALUES ('320203', '320200', '南长区');
INSERT INTO `area` VALUES ('320204', '320200', '北塘区');
INSERT INTO `area` VALUES ('320205', '320200', '锡山区');
INSERT INTO `area` VALUES ('320206', '320200', '惠山区');
INSERT INTO `area` VALUES ('320211', '320200', '滨湖区');
INSERT INTO `area` VALUES ('320281', '320200', '江阴市');
INSERT INTO `area` VALUES ('320282', '320200', '宜兴市');
INSERT INTO `area` VALUES ('320300', '320000', '徐州市');
INSERT INTO `area` VALUES ('320302', '320300', '鼓楼区');
INSERT INTO `area` VALUES ('320303', '320300', '云龙区');
INSERT INTO `area` VALUES ('320305', '320300', '贾汪区');
INSERT INTO `area` VALUES ('320311', '320300', '泉山区');
INSERT INTO `area` VALUES ('320312', '320300', '铜山区');
INSERT INTO `area` VALUES ('320321', '320300', '丰县');
INSERT INTO `area` VALUES ('320322', '320300', '沛县');
INSERT INTO `area` VALUES ('320324', '320300', '睢宁县');
INSERT INTO `area` VALUES ('320381', '320300', '新沂市');
INSERT INTO `area` VALUES ('320382', '320300', '邳州市');
INSERT INTO `area` VALUES ('320400', '320000', '常州市');
INSERT INTO `area` VALUES ('320402', '320400', '天宁区');
INSERT INTO `area` VALUES ('320404', '320400', '钟楼区');
INSERT INTO `area` VALUES ('320411', '320400', '新北区');
INSERT INTO `area` VALUES ('320412', '320400', '武进区');
INSERT INTO `area` VALUES ('320413', '320400', '金坛区');
INSERT INTO `area` VALUES ('320481', '320400', '溧阳市');
INSERT INTO `area` VALUES ('320500', '320000', '苏州市');
INSERT INTO `area` VALUES ('320505', '320500', '虎丘区');
INSERT INTO `area` VALUES ('320506', '320500', '吴中区');
INSERT INTO `area` VALUES ('320507', '320500', '相城区');
INSERT INTO `area` VALUES ('320508', '320500', '姑苏区');
INSERT INTO `area` VALUES ('320509', '320500', '吴江区');
INSERT INTO `area` VALUES ('320581', '320500', '常熟市');
INSERT INTO `area` VALUES ('320582', '320500', '张家港市');
INSERT INTO `area` VALUES ('320583', '320500', '昆山市');
INSERT INTO `area` VALUES ('320585', '320500', '太仓市');
INSERT INTO `area` VALUES ('320600', '320000', '南通市');
INSERT INTO `area` VALUES ('320602', '320600', '崇川区');
INSERT INTO `area` VALUES ('320611', '320600', '港闸区');
INSERT INTO `area` VALUES ('320612', '320600', '通州区');
INSERT INTO `area` VALUES ('320621', '320600', '海安县');
INSERT INTO `area` VALUES ('320623', '320600', '如东县');
INSERT INTO `area` VALUES ('320681', '320600', '启东市');
INSERT INTO `area` VALUES ('320682', '320600', '如皋市');
INSERT INTO `area` VALUES ('320684', '320600', '海门市');
INSERT INTO `area` VALUES ('320700', '320000', '连云港市');
INSERT INTO `area` VALUES ('320703', '320700', '连云区');
INSERT INTO `area` VALUES ('320706', '320700', '海州区');
INSERT INTO `area` VALUES ('320707', '320700', '赣榆区');
INSERT INTO `area` VALUES ('320722', '320700', '东海县');
INSERT INTO `area` VALUES ('320723', '320700', '灌云县');
INSERT INTO `area` VALUES ('320724', '320700', '灌南县');
INSERT INTO `area` VALUES ('320800', '320000', '淮安市');
INSERT INTO `area` VALUES ('320802', '320800', '清河区');
INSERT INTO `area` VALUES ('320803', '320800', '淮安区');
INSERT INTO `area` VALUES ('320804', '320800', '淮阴区');
INSERT INTO `area` VALUES ('320811', '320800', '清浦区');
INSERT INTO `area` VALUES ('320826', '320800', '涟水县');
INSERT INTO `area` VALUES ('320829', '320800', '洪泽县');
INSERT INTO `area` VALUES ('320830', '320800', '盱眙县');
INSERT INTO `area` VALUES ('320831', '320800', '金湖县');
INSERT INTO `area` VALUES ('320900', '320000', '盐城市');
INSERT INTO `area` VALUES ('320902', '320900', '亭湖区');
INSERT INTO `area` VALUES ('320903', '320900', '盐都区');
INSERT INTO `area` VALUES ('320904', '320900', '大丰区');
INSERT INTO `area` VALUES ('320921', '320900', '响水县');
INSERT INTO `area` VALUES ('320922', '320900', '滨海县');
INSERT INTO `area` VALUES ('320923', '320900', '阜宁县');
INSERT INTO `area` VALUES ('320924', '320900', '射阳县');
INSERT INTO `area` VALUES ('320925', '320900', '建湖县');
INSERT INTO `area` VALUES ('320981', '320900', '东台市');
INSERT INTO `area` VALUES ('321000', '320000', '扬州市');
INSERT INTO `area` VALUES ('321002', '321000', '广陵区');
INSERT INTO `area` VALUES ('321003', '321000', '邗江区');
INSERT INTO `area` VALUES ('321012', '321000', '江都区');
INSERT INTO `area` VALUES ('321023', '321000', '宝应县');
INSERT INTO `area` VALUES ('321081', '321000', '仪征市');
INSERT INTO `area` VALUES ('321084', '321000', '高邮市');
INSERT INTO `area` VALUES ('321100', '320000', '镇江市');
INSERT INTO `area` VALUES ('321102', '321100', '京口区');
INSERT INTO `area` VALUES ('321111', '321100', '润州区');
INSERT INTO `area` VALUES ('321112', '321100', '丹徒区');
INSERT INTO `area` VALUES ('321181', '321100', '丹阳市');
INSERT INTO `area` VALUES ('321182', '321100', '扬中市');
INSERT INTO `area` VALUES ('321183', '321100', '句容市');
INSERT INTO `area` VALUES ('321200', '320000', '泰州市');
INSERT INTO `area` VALUES ('321202', '321200', '海陵区');
INSERT INTO `area` VALUES ('321203', '321200', '高港区');
INSERT INTO `area` VALUES ('321204', '321200', '姜堰区');
INSERT INTO `area` VALUES ('321281', '321200', '兴化市');
INSERT INTO `area` VALUES ('321282', '321200', '靖江市');
INSERT INTO `area` VALUES ('321283', '321200', '泰兴市');
INSERT INTO `area` VALUES ('321300', '320000', '宿迁市');
INSERT INTO `area` VALUES ('321302', '321300', '宿城区');
INSERT INTO `area` VALUES ('321311', '321300', '宿豫区');
INSERT INTO `area` VALUES ('321322', '321300', '沭阳县');
INSERT INTO `area` VALUES ('321323', '321300', '泗阳县');
INSERT INTO `area` VALUES ('321324', '321300', '泗洪县');
INSERT INTO `area` VALUES ('330000', '0', '浙江省');
INSERT INTO `area` VALUES ('330100', '330000', '杭州市');
INSERT INTO `area` VALUES ('330102', '330100', '上城区');
INSERT INTO `area` VALUES ('330103', '330100', '下城区');
INSERT INTO `area` VALUES ('330104', '330100', '江干区');
INSERT INTO `area` VALUES ('330105', '330100', '拱墅区');
INSERT INTO `area` VALUES ('330106', '330100', '西湖区');
INSERT INTO `area` VALUES ('330108', '330100', '滨江区');
INSERT INTO `area` VALUES ('330109', '330100', '萧山区');
INSERT INTO `area` VALUES ('330110', '330100', '余杭区');
INSERT INTO `area` VALUES ('330111', '330100', '富阳区');
INSERT INTO `area` VALUES ('330122', '330100', '桐庐县');
INSERT INTO `area` VALUES ('330127', '330100', '淳安县');
INSERT INTO `area` VALUES ('330182', '330100', '建德市');
INSERT INTO `area` VALUES ('330185', '330100', '临安市');
INSERT INTO `area` VALUES ('330200', '330000', '宁波市');
INSERT INTO `area` VALUES ('330203', '330200', '海曙区');
INSERT INTO `area` VALUES ('330204', '330200', '江东区');
INSERT INTO `area` VALUES ('330205', '330200', '江北区');
INSERT INTO `area` VALUES ('330206', '330200', '北仑区');
INSERT INTO `area` VALUES ('330211', '330200', '镇海区');
INSERT INTO `area` VALUES ('330212', '330200', '鄞州区');
INSERT INTO `area` VALUES ('330225', '330200', '象山县');
INSERT INTO `area` VALUES ('330226', '330200', '宁海县');
INSERT INTO `area` VALUES ('330281', '330200', '余姚市');
INSERT INTO `area` VALUES ('330282', '330200', '慈溪市');
INSERT INTO `area` VALUES ('330283', '330200', '奉化市');
INSERT INTO `area` VALUES ('330300', '330000', '温州市');
INSERT INTO `area` VALUES ('330302', '330300', '鹿城区');
INSERT INTO `area` VALUES ('330303', '330300', '龙湾区');
INSERT INTO `area` VALUES ('330304', '330300', '瓯海区');
INSERT INTO `area` VALUES ('330305', '330300', '洞头区');
INSERT INTO `area` VALUES ('330324', '330300', '永嘉县');
INSERT INTO `area` VALUES ('330326', '330300', '平阳县');
INSERT INTO `area` VALUES ('330327', '330300', '苍南县');
INSERT INTO `area` VALUES ('330328', '330300', '文成县');
INSERT INTO `area` VALUES ('330329', '330300', '泰顺县');
INSERT INTO `area` VALUES ('330381', '330300', '瑞安市');
INSERT INTO `area` VALUES ('330382', '330300', '乐清市');
INSERT INTO `area` VALUES ('330400', '330000', '嘉兴市');
INSERT INTO `area` VALUES ('330402', '330400', '南湖区');
INSERT INTO `area` VALUES ('330411', '330400', '秀洲区');
INSERT INTO `area` VALUES ('330421', '330400', '嘉善县');
INSERT INTO `area` VALUES ('330424', '330400', '海盐县');
INSERT INTO `area` VALUES ('330481', '330400', '海宁市');
INSERT INTO `area` VALUES ('330482', '330400', '平湖市');
INSERT INTO `area` VALUES ('330483', '330400', '桐乡市');
INSERT INTO `area` VALUES ('330500', '330000', '湖州市');
INSERT INTO `area` VALUES ('330502', '330500', '吴兴区');
INSERT INTO `area` VALUES ('330503', '330500', '南浔区');
INSERT INTO `area` VALUES ('330521', '330500', '德清县');
INSERT INTO `area` VALUES ('330522', '330500', '长兴县');
INSERT INTO `area` VALUES ('330523', '330500', '安吉县');
INSERT INTO `area` VALUES ('330600', '330000', '绍兴市');
INSERT INTO `area` VALUES ('330602', '330600', '越城区');
INSERT INTO `area` VALUES ('330603', '330600', '柯桥区');
INSERT INTO `area` VALUES ('330604', '330600', '上虞区');
INSERT INTO `area` VALUES ('330624', '330600', '新昌县');
INSERT INTO `area` VALUES ('330681', '330600', '诸暨市');
INSERT INTO `area` VALUES ('330683', '330600', '嵊州市');
INSERT INTO `area` VALUES ('330700', '330000', '金华市');
INSERT INTO `area` VALUES ('330702', '330700', '婺城区');
INSERT INTO `area` VALUES ('330703', '330700', '金东区');
INSERT INTO `area` VALUES ('330723', '330700', '武义县');
INSERT INTO `area` VALUES ('330726', '330700', '浦江县');
INSERT INTO `area` VALUES ('330727', '330700', '磐安县');
INSERT INTO `area` VALUES ('330781', '330700', '兰溪市');
INSERT INTO `area` VALUES ('330782', '330700', '义乌市');
INSERT INTO `area` VALUES ('330783', '330700', '东阳市');
INSERT INTO `area` VALUES ('330784', '330700', '永康市');
INSERT INTO `area` VALUES ('330800', '330000', '衢州市');
INSERT INTO `area` VALUES ('330802', '330800', '柯城区');
INSERT INTO `area` VALUES ('330803', '330800', '衢江区');
INSERT INTO `area` VALUES ('330822', '330800', '常山县');
INSERT INTO `area` VALUES ('330824', '330800', '开化县');
INSERT INTO `area` VALUES ('330825', '330800', '龙游县');
INSERT INTO `area` VALUES ('330881', '330800', '江山市');
INSERT INTO `area` VALUES ('330900', '330000', '舟山市');
INSERT INTO `area` VALUES ('330902', '330900', '定海区');
INSERT INTO `area` VALUES ('330903', '330900', '普陀区');
INSERT INTO `area` VALUES ('330921', '330900', '岱山县');
INSERT INTO `area` VALUES ('330922', '330900', '嵊泗县');
INSERT INTO `area` VALUES ('331000', '330000', '台州市');
INSERT INTO `area` VALUES ('331002', '331000', '椒江区');
INSERT INTO `area` VALUES ('331003', '331000', '黄岩区');
INSERT INTO `area` VALUES ('331004', '331000', '路桥区');
INSERT INTO `area` VALUES ('331021', '331000', '玉环县');
INSERT INTO `area` VALUES ('331022', '331000', '三门县');
INSERT INTO `area` VALUES ('331023', '331000', '天台县');
INSERT INTO `area` VALUES ('331024', '331000', '仙居县');
INSERT INTO `area` VALUES ('331081', '331000', '温岭市');
INSERT INTO `area` VALUES ('331082', '331000', '临海市');
INSERT INTO `area` VALUES ('331100', '330000', '丽水市');
INSERT INTO `area` VALUES ('331102', '331100', '莲都区');
INSERT INTO `area` VALUES ('331121', '331100', '青田县');
INSERT INTO `area` VALUES ('331122', '331100', '缙云县');
INSERT INTO `area` VALUES ('331123', '331100', '遂昌县');
INSERT INTO `area` VALUES ('331124', '331100', '松阳县');
INSERT INTO `area` VALUES ('331125', '331100', '云和县');
INSERT INTO `area` VALUES ('331126', '331100', '庆元县');
INSERT INTO `area` VALUES ('331127', '331100', '景宁畲族自治县');
INSERT INTO `area` VALUES ('331181', '331100', '龙泉市');
INSERT INTO `area` VALUES ('340000', '0', '安徽省');
INSERT INTO `area` VALUES ('340100', '340000', '合肥市');
INSERT INTO `area` VALUES ('340102', '340100', '瑶海区');
INSERT INTO `area` VALUES ('340103', '340100', '庐阳区');
INSERT INTO `area` VALUES ('340104', '340100', '蜀山区');
INSERT INTO `area` VALUES ('340111', '340100', '包河区');
INSERT INTO `area` VALUES ('340121', '340100', '长丰县');
INSERT INTO `area` VALUES ('340122', '340100', '肥东县');
INSERT INTO `area` VALUES ('340123', '340100', '肥西县');
INSERT INTO `area` VALUES ('340124', '340100', '庐江县');
INSERT INTO `area` VALUES ('340181', '340100', '巢湖市');
INSERT INTO `area` VALUES ('340200', '340000', '芜湖市');
INSERT INTO `area` VALUES ('340202', '340200', '镜湖区');
INSERT INTO `area` VALUES ('340203', '340200', '弋江区');
INSERT INTO `area` VALUES ('340207', '340200', '鸠江区');
INSERT INTO `area` VALUES ('340208', '340200', '三山区');
INSERT INTO `area` VALUES ('340221', '340200', '芜湖县');
INSERT INTO `area` VALUES ('340222', '340200', '繁昌县');
INSERT INTO `area` VALUES ('340223', '340200', '南陵县');
INSERT INTO `area` VALUES ('340225', '340200', '无为县');
INSERT INTO `area` VALUES ('340300', '340000', '蚌埠市');
INSERT INTO `area` VALUES ('340302', '340300', '龙子湖区');
INSERT INTO `area` VALUES ('340303', '340300', '蚌山区');
INSERT INTO `area` VALUES ('340304', '340300', '禹会区');
INSERT INTO `area` VALUES ('340311', '340300', '淮上区');
INSERT INTO `area` VALUES ('340321', '340300', '怀远县');
INSERT INTO `area` VALUES ('340322', '340300', '五河县');
INSERT INTO `area` VALUES ('340323', '340300', '固镇县');
INSERT INTO `area` VALUES ('340400', '340000', '淮南市');
INSERT INTO `area` VALUES ('340402', '340400', '大通区');
INSERT INTO `area` VALUES ('340403', '340400', '田家庵区');
INSERT INTO `area` VALUES ('340404', '340400', '谢家集区');
INSERT INTO `area` VALUES ('340405', '340400', '八公山区');
INSERT INTO `area` VALUES ('340406', '340400', '潘集区');
INSERT INTO `area` VALUES ('340421', '340400', '凤台县');
INSERT INTO `area` VALUES ('340500', '340000', '马鞍山市');
INSERT INTO `area` VALUES ('340503', '340500', '花山区');
INSERT INTO `area` VALUES ('340504', '340500', '雨山区');
INSERT INTO `area` VALUES ('340506', '340500', '博望区');
INSERT INTO `area` VALUES ('340521', '340500', '当涂县');
INSERT INTO `area` VALUES ('340522', '340500', '其它区');
INSERT INTO `area` VALUES ('340523', '340500', '和县');
INSERT INTO `area` VALUES ('340600', '340000', '淮北市');
INSERT INTO `area` VALUES ('340602', '340600', '杜集区');
INSERT INTO `area` VALUES ('340603', '340600', '相山区');
INSERT INTO `area` VALUES ('340604', '340600', '烈山区');
INSERT INTO `area` VALUES ('340621', '340600', '濉溪县');
INSERT INTO `area` VALUES ('340700', '340000', '铜陵市');
INSERT INTO `area` VALUES ('340702', '340700', '铜官山区');
INSERT INTO `area` VALUES ('340703', '340700', '狮子山区');
INSERT INTO `area` VALUES ('340711', '340700', '郊区');
INSERT INTO `area` VALUES ('340721', '340700', '铜陵县');
INSERT INTO `area` VALUES ('340800', '340000', '安庆市');
INSERT INTO `area` VALUES ('340802', '340800', '迎江区');
INSERT INTO `area` VALUES ('340803', '340800', '大观区');
INSERT INTO `area` VALUES ('340811', '340800', '宜秀区');
INSERT INTO `area` VALUES ('340822', '340800', '怀宁县');
INSERT INTO `area` VALUES ('340823', '340800', '枞阳县');
INSERT INTO `area` VALUES ('340824', '340800', '潜山县');
INSERT INTO `area` VALUES ('340825', '340800', '太湖县');
INSERT INTO `area` VALUES ('340826', '340800', '宿松县');
INSERT INTO `area` VALUES ('340827', '340800', '望江县');
INSERT INTO `area` VALUES ('340828', '340800', '岳西县');
INSERT INTO `area` VALUES ('340881', '340800', '桐城市');
INSERT INTO `area` VALUES ('341000', '340000', '黄山市');
INSERT INTO `area` VALUES ('341002', '341000', '屯溪区');
INSERT INTO `area` VALUES ('341003', '341000', '黄山区');
INSERT INTO `area` VALUES ('341004', '341000', '徽州区');
INSERT INTO `area` VALUES ('341021', '341000', '歙县');
INSERT INTO `area` VALUES ('341022', '341000', '休宁县');
INSERT INTO `area` VALUES ('341023', '341000', '黟县');
INSERT INTO `area` VALUES ('341024', '341000', '祁门县');
INSERT INTO `area` VALUES ('341100', '340000', '滁州市');
INSERT INTO `area` VALUES ('341102', '341100', '琅琊区');
INSERT INTO `area` VALUES ('341103', '341100', '南谯区');
INSERT INTO `area` VALUES ('341122', '341100', '来安县');
INSERT INTO `area` VALUES ('341124', '341100', '全椒县');
INSERT INTO `area` VALUES ('341125', '341100', '定远县');
INSERT INTO `area` VALUES ('341126', '341100', '凤阳县');
INSERT INTO `area` VALUES ('341181', '341100', '天长市');
INSERT INTO `area` VALUES ('341182', '341100', '明光市');
INSERT INTO `area` VALUES ('341200', '340000', '阜阳市');
INSERT INTO `area` VALUES ('341202', '341200', '颍州区');
INSERT INTO `area` VALUES ('341203', '341200', '颍东区');
INSERT INTO `area` VALUES ('341204', '341200', '颍泉区');
INSERT INTO `area` VALUES ('341221', '341200', '临泉县');
INSERT INTO `area` VALUES ('341222', '341200', '太和县');
INSERT INTO `area` VALUES ('341225', '341200', '阜南县');
INSERT INTO `area` VALUES ('341226', '341200', '颍上县');
INSERT INTO `area` VALUES ('341282', '341200', '界首市');
INSERT INTO `area` VALUES ('341300', '340000', '宿州市');
INSERT INTO `area` VALUES ('341302', '341300', '埇桥区');
INSERT INTO `area` VALUES ('341321', '341300', '砀山县');
INSERT INTO `area` VALUES ('341322', '341300', '萧县');
INSERT INTO `area` VALUES ('341323', '341300', '灵璧县');
INSERT INTO `area` VALUES ('341324', '341300', '泗县');
INSERT INTO `area` VALUES ('341500', '340000', '六安市');
INSERT INTO `area` VALUES ('341502', '341500', '金安区');
INSERT INTO `area` VALUES ('341503', '341500', '裕安区');
INSERT INTO `area` VALUES ('341521', '341500', '寿县');
INSERT INTO `area` VALUES ('341522', '341500', '霍邱县');
INSERT INTO `area` VALUES ('341523', '341500', '舒城县');
INSERT INTO `area` VALUES ('341524', '341500', '金寨县');
INSERT INTO `area` VALUES ('341525', '341500', '霍山县');
INSERT INTO `area` VALUES ('341600', '340000', '亳州市');
INSERT INTO `area` VALUES ('341602', '341600', '谯城区');
INSERT INTO `area` VALUES ('341621', '341600', '涡阳县');
INSERT INTO `area` VALUES ('341622', '341600', '蒙城县');
INSERT INTO `area` VALUES ('341623', '341600', '利辛县');
INSERT INTO `area` VALUES ('341700', '340000', '池州市');
INSERT INTO `area` VALUES ('341702', '341700', '贵池区');
INSERT INTO `area` VALUES ('341721', '341700', '东至县');
INSERT INTO `area` VALUES ('341722', '341700', '石台县');
INSERT INTO `area` VALUES ('341723', '341700', '青阳县');
INSERT INTO `area` VALUES ('341800', '340000', '宣城市');
INSERT INTO `area` VALUES ('341802', '341800', '宣州区');
INSERT INTO `area` VALUES ('341821', '341800', '郎溪县');
INSERT INTO `area` VALUES ('341822', '341800', '广德县');
INSERT INTO `area` VALUES ('341823', '341800', '泾县');
INSERT INTO `area` VALUES ('341824', '341800', '绩溪县');
INSERT INTO `area` VALUES ('341825', '341800', '旌德县');
INSERT INTO `area` VALUES ('341881', '341800', '宁国市');
INSERT INTO `area` VALUES ('350000', '0', '福建省');
INSERT INTO `area` VALUES ('350100', '350000', '福州市');
INSERT INTO `area` VALUES ('350102', '350100', '鼓楼区');
INSERT INTO `area` VALUES ('350103', '350100', '台江区');
INSERT INTO `area` VALUES ('350104', '350100', '仓山区');
INSERT INTO `area` VALUES ('350105', '350100', '马尾区');
INSERT INTO `area` VALUES ('350111', '350100', '晋安区');
INSERT INTO `area` VALUES ('350121', '350100', '闽侯县');
INSERT INTO `area` VALUES ('350122', '350100', '连江县');
INSERT INTO `area` VALUES ('350123', '350100', '罗源县');
INSERT INTO `area` VALUES ('350124', '350100', '闽清县');
INSERT INTO `area` VALUES ('350125', '350100', '永泰县');
INSERT INTO `area` VALUES ('350128', '350100', '平潭县');
INSERT INTO `area` VALUES ('350181', '350100', '福清市');
INSERT INTO `area` VALUES ('350182', '350100', '长乐市');
INSERT INTO `area` VALUES ('350200', '350000', '厦门市');
INSERT INTO `area` VALUES ('350203', '350200', '思明区');
INSERT INTO `area` VALUES ('350205', '350200', '海沧区');
INSERT INTO `area` VALUES ('350206', '350200', '湖里区');
INSERT INTO `area` VALUES ('350211', '350200', '集美区');
INSERT INTO `area` VALUES ('350212', '350200', '同安区');
INSERT INTO `area` VALUES ('350213', '350200', '翔安区');
INSERT INTO `area` VALUES ('350300', '350000', '莆田市');
INSERT INTO `area` VALUES ('350302', '350300', '城厢区');
INSERT INTO `area` VALUES ('350303', '350300', '涵江区');
INSERT INTO `area` VALUES ('350304', '350300', '荔城区');
INSERT INTO `area` VALUES ('350305', '350300', '秀屿区');
INSERT INTO `area` VALUES ('350322', '350300', '仙游县');
INSERT INTO `area` VALUES ('350400', '350000', '三明市');
INSERT INTO `area` VALUES ('350402', '350400', '梅列区');
INSERT INTO `area` VALUES ('350403', '350400', '三元区');
INSERT INTO `area` VALUES ('350421', '350400', '明溪县');
INSERT INTO `area` VALUES ('350423', '350400', '清流县');
INSERT INTO `area` VALUES ('350424', '350400', '宁化县');
INSERT INTO `area` VALUES ('350425', '350400', '大田县');
INSERT INTO `area` VALUES ('350426', '350400', '尤溪县');
INSERT INTO `area` VALUES ('350427', '350400', '沙县');
INSERT INTO `area` VALUES ('350428', '350400', '将乐县');
INSERT INTO `area` VALUES ('350429', '350400', '泰宁县');
INSERT INTO `area` VALUES ('350430', '350400', '建宁县');
INSERT INTO `area` VALUES ('350481', '350400', '永安市');
INSERT INTO `area` VALUES ('350500', '350000', '泉州市');
INSERT INTO `area` VALUES ('350502', '350500', '鲤城区');
INSERT INTO `area` VALUES ('350503', '350500', '丰泽区');
INSERT INTO `area` VALUES ('350504', '350500', '洛江区');
INSERT INTO `area` VALUES ('350505', '350500', '泉港区');
INSERT INTO `area` VALUES ('350521', '350500', '惠安县');
INSERT INTO `area` VALUES ('350524', '350500', '安溪县');
INSERT INTO `area` VALUES ('350525', '350500', '永春县');
INSERT INTO `area` VALUES ('350526', '350500', '德化县');
INSERT INTO `area` VALUES ('350527', '350500', '金门县');
INSERT INTO `area` VALUES ('350581', '350500', '石狮市');
INSERT INTO `area` VALUES ('350582', '350500', '晋江市');
INSERT INTO `area` VALUES ('350583', '350500', '南安市');
INSERT INTO `area` VALUES ('350600', '350000', '漳州市');
INSERT INTO `area` VALUES ('350602', '350600', '芗城区');
INSERT INTO `area` VALUES ('350603', '350600', '龙文区');
INSERT INTO `area` VALUES ('350622', '350600', '云霄县');
INSERT INTO `area` VALUES ('350623', '350600', '漳浦县');
INSERT INTO `area` VALUES ('350624', '350600', '诏安县');
INSERT INTO `area` VALUES ('350625', '350600', '长泰县');
INSERT INTO `area` VALUES ('350626', '350600', '东山县');
INSERT INTO `area` VALUES ('350627', '350600', '南靖县');
INSERT INTO `area` VALUES ('350628', '350600', '平和县');
INSERT INTO `area` VALUES ('350629', '350600', '华安县');
INSERT INTO `area` VALUES ('350681', '350600', '龙海市');
INSERT INTO `area` VALUES ('350700', '350000', '南平市');
INSERT INTO `area` VALUES ('350702', '350700', '延平区');
INSERT INTO `area` VALUES ('350703', '350700', '建阳区');
INSERT INTO `area` VALUES ('350721', '350700', '顺昌县');
INSERT INTO `area` VALUES ('350722', '350700', '浦城县');
INSERT INTO `area` VALUES ('350723', '350700', '光泽县');
INSERT INTO `area` VALUES ('350724', '350700', '松溪县');
INSERT INTO `area` VALUES ('350725', '350700', '政和县');
INSERT INTO `area` VALUES ('350781', '350700', '邵武市');
INSERT INTO `area` VALUES ('350782', '350700', '武夷山市');
INSERT INTO `area` VALUES ('350783', '350700', '建瓯市');
INSERT INTO `area` VALUES ('350800', '350000', '龙岩市');
INSERT INTO `area` VALUES ('350802', '350800', '新罗区');
INSERT INTO `area` VALUES ('350803', '350800', '永定区');
INSERT INTO `area` VALUES ('350821', '350800', '长汀县');
INSERT INTO `area` VALUES ('350823', '350800', '上杭县');
INSERT INTO `area` VALUES ('350824', '350800', '武平县');
INSERT INTO `area` VALUES ('350825', '350800', '连城县');
INSERT INTO `area` VALUES ('350881', '350800', '漳平市');
INSERT INTO `area` VALUES ('350900', '350000', '宁德市');
INSERT INTO `area` VALUES ('350902', '350900', '蕉城区');
INSERT INTO `area` VALUES ('350921', '350900', '霞浦县');
INSERT INTO `area` VALUES ('350922', '350900', '古田县');
INSERT INTO `area` VALUES ('350923', '350900', '屏南县');
INSERT INTO `area` VALUES ('350924', '350900', '寿宁县');
INSERT INTO `area` VALUES ('350925', '350900', '周宁县');
INSERT INTO `area` VALUES ('350926', '350900', '柘荣县');
INSERT INTO `area` VALUES ('350981', '350900', '福安市');
INSERT INTO `area` VALUES ('350982', '350900', '福鼎市');
INSERT INTO `area` VALUES ('360000', '0', '江西省');
INSERT INTO `area` VALUES ('360100', '360000', '南昌市');
INSERT INTO `area` VALUES ('360102', '360100', '东湖区');
INSERT INTO `area` VALUES ('360103', '360100', '西湖区');
INSERT INTO `area` VALUES ('360104', '360100', '青云谱区');
INSERT INTO `area` VALUES ('360105', '360100', '湾里区');
INSERT INTO `area` VALUES ('360111', '360100', '青山湖区');
INSERT INTO `area` VALUES ('360112', '360100', '新建区');
INSERT INTO `area` VALUES ('360121', '360100', '南昌县');
INSERT INTO `area` VALUES ('360123', '360100', '安义县');
INSERT INTO `area` VALUES ('360124', '360100', '进贤县');
INSERT INTO `area` VALUES ('360200', '360000', '景德镇市');
INSERT INTO `area` VALUES ('360202', '360200', '昌江区');
INSERT INTO `area` VALUES ('360203', '360200', '珠山区');
INSERT INTO `area` VALUES ('360222', '360200', '浮梁县');
INSERT INTO `area` VALUES ('360281', '360200', '乐平市');
INSERT INTO `area` VALUES ('360300', '360000', '萍乡市');
INSERT INTO `area` VALUES ('360302', '360300', '安源区');
INSERT INTO `area` VALUES ('360313', '360300', '湘东区');
INSERT INTO `area` VALUES ('360321', '360300', '莲花县');
INSERT INTO `area` VALUES ('360322', '360300', '上栗县');
INSERT INTO `area` VALUES ('360323', '360300', '芦溪县');
INSERT INTO `area` VALUES ('360400', '360000', '九江市');
INSERT INTO `area` VALUES ('360402', '360400', '庐山区');
INSERT INTO `area` VALUES ('360403', '360400', '浔阳区');
INSERT INTO `area` VALUES ('360421', '360400', '九江县');
INSERT INTO `area` VALUES ('360423', '360400', '武宁县');
INSERT INTO `area` VALUES ('360424', '360400', '修水县');
INSERT INTO `area` VALUES ('360425', '360400', '永修县');
INSERT INTO `area` VALUES ('360426', '360400', '德安县');
INSERT INTO `area` VALUES ('360427', '360400', '星子县');
INSERT INTO `area` VALUES ('360428', '360400', '都昌县');
INSERT INTO `area` VALUES ('360429', '360400', '湖口县');
INSERT INTO `area` VALUES ('360430', '360400', '彭泽县');
INSERT INTO `area` VALUES ('360481', '360400', '瑞昌市');
INSERT INTO `area` VALUES ('360482', '360400', '其它区');
INSERT INTO `area` VALUES ('360500', '360000', '新余市');
INSERT INTO `area` VALUES ('360502', '360500', '渝水区');
INSERT INTO `area` VALUES ('360521', '360500', '分宜县');
INSERT INTO `area` VALUES ('360600', '360000', '鹰潭市');
INSERT INTO `area` VALUES ('360602', '360600', '月湖区');
INSERT INTO `area` VALUES ('360622', '360600', '余江县');
INSERT INTO `area` VALUES ('360681', '360600', '贵溪市');
INSERT INTO `area` VALUES ('360700', '360000', '赣州市');
INSERT INTO `area` VALUES ('360702', '360700', '章贡区');
INSERT INTO `area` VALUES ('360703', '360700', '南康区');
INSERT INTO `area` VALUES ('360721', '360700', '赣县');
INSERT INTO `area` VALUES ('360722', '360700', '信丰县');
INSERT INTO `area` VALUES ('360723', '360700', '大余县');
INSERT INTO `area` VALUES ('360724', '360700', '上犹县');
INSERT INTO `area` VALUES ('360725', '360700', '崇义县');
INSERT INTO `area` VALUES ('360726', '360700', '安远县');
INSERT INTO `area` VALUES ('360727', '360700', '龙南县');
INSERT INTO `area` VALUES ('360728', '360700', '定南县');
INSERT INTO `area` VALUES ('360729', '360700', '全南县');
INSERT INTO `area` VALUES ('360730', '360700', '宁都县');
INSERT INTO `area` VALUES ('360731', '360700', '于都县');
INSERT INTO `area` VALUES ('360732', '360700', '兴国县');
INSERT INTO `area` VALUES ('360733', '360700', '会昌县');
INSERT INTO `area` VALUES ('360734', '360700', '寻乌县');
INSERT INTO `area` VALUES ('360735', '360700', '石城县');
INSERT INTO `area` VALUES ('360781', '360700', '瑞金市');
INSERT INTO `area` VALUES ('360800', '360000', '吉安市');
INSERT INTO `area` VALUES ('360802', '360800', '吉州区');
INSERT INTO `area` VALUES ('360803', '360800', '青原区');
INSERT INTO `area` VALUES ('360821', '360800', '吉安县');
INSERT INTO `area` VALUES ('360822', '360800', '吉水县');
INSERT INTO `area` VALUES ('360823', '360800', '峡江县');
INSERT INTO `area` VALUES ('360824', '360800', '新干县');
INSERT INTO `area` VALUES ('360825', '360800', '永丰县');
INSERT INTO `area` VALUES ('360826', '360800', '泰和县');
INSERT INTO `area` VALUES ('360827', '360800', '遂川县');
INSERT INTO `area` VALUES ('360828', '360800', '万安县');
INSERT INTO `area` VALUES ('360829', '360800', '安福县');
INSERT INTO `area` VALUES ('360830', '360800', '永新县');
INSERT INTO `area` VALUES ('360881', '360800', '井冈山市');
INSERT INTO `area` VALUES ('360900', '360000', '宜春市');
INSERT INTO `area` VALUES ('360902', '360900', '袁州区');
INSERT INTO `area` VALUES ('360921', '360900', '奉新县');
INSERT INTO `area` VALUES ('360922', '360900', '万载县');
INSERT INTO `area` VALUES ('360923', '360900', '上高县');
INSERT INTO `area` VALUES ('360924', '360900', '宜丰县');
INSERT INTO `area` VALUES ('360925', '360900', '靖安县');
INSERT INTO `area` VALUES ('360926', '360900', '铜鼓县');
INSERT INTO `area` VALUES ('360981', '360900', '丰城市');
INSERT INTO `area` VALUES ('360982', '360900', '樟树市');
INSERT INTO `area` VALUES ('360983', '360900', '高安市');
INSERT INTO `area` VALUES ('361000', '360000', '抚州市');
INSERT INTO `area` VALUES ('361002', '361000', '临川区');
INSERT INTO `area` VALUES ('361021', '361000', '南城县');
INSERT INTO `area` VALUES ('361022', '361000', '黎川县');
INSERT INTO `area` VALUES ('361023', '361000', '南丰县');
INSERT INTO `area` VALUES ('361024', '361000', '崇仁县');
INSERT INTO `area` VALUES ('361025', '361000', '乐安县');
INSERT INTO `area` VALUES ('361026', '361000', '宜黄县');
INSERT INTO `area` VALUES ('361027', '361000', '金溪县');
INSERT INTO `area` VALUES ('361028', '361000', '资溪县');
INSERT INTO `area` VALUES ('361029', '361000', '东乡县');
INSERT INTO `area` VALUES ('361030', '361000', '广昌县');
INSERT INTO `area` VALUES ('361100', '360000', '上饶市');
INSERT INTO `area` VALUES ('361102', '361100', '信州区');
INSERT INTO `area` VALUES ('361103', '361100', '广丰区');
INSERT INTO `area` VALUES ('361121', '361100', '上饶县');
INSERT INTO `area` VALUES ('361123', '361100', '玉山县');
INSERT INTO `area` VALUES ('361124', '361100', '铅山县');
INSERT INTO `area` VALUES ('361125', '361100', '横峰县');
INSERT INTO `area` VALUES ('361126', '361100', '弋阳县');
INSERT INTO `area` VALUES ('361127', '361100', '余干县');
INSERT INTO `area` VALUES ('361128', '361100', '鄱阳县');
INSERT INTO `area` VALUES ('361129', '361100', '万年县');
INSERT INTO `area` VALUES ('361130', '361100', '婺源县');
INSERT INTO `area` VALUES ('361181', '361100', '德兴市');
INSERT INTO `area` VALUES ('370000', '0', '山东省');
INSERT INTO `area` VALUES ('370100', '370000', '济南市');
INSERT INTO `area` VALUES ('370102', '370100', '历下区');
INSERT INTO `area` VALUES ('370103', '370100', '市中区');
INSERT INTO `area` VALUES ('370104', '370100', '槐荫区');
INSERT INTO `area` VALUES ('370105', '370100', '天桥区');
INSERT INTO `area` VALUES ('370112', '370100', '历城区');
INSERT INTO `area` VALUES ('370113', '370100', '长清区');
INSERT INTO `area` VALUES ('370124', '370100', '平阴县');
INSERT INTO `area` VALUES ('370125', '370100', '济阳县');
INSERT INTO `area` VALUES ('370126', '370100', '商河县');
INSERT INTO `area` VALUES ('370181', '370100', '章丘市');
INSERT INTO `area` VALUES ('370200', '370000', '青岛市');
INSERT INTO `area` VALUES ('370202', '370200', '市南区');
INSERT INTO `area` VALUES ('370203', '370200', '市北区');
INSERT INTO `area` VALUES ('370211', '370200', '黄岛区');
INSERT INTO `area` VALUES ('370212', '370200', '崂山区');
INSERT INTO `area` VALUES ('370213', '370200', '李沧区');
INSERT INTO `area` VALUES ('370214', '370200', '城阳区');
INSERT INTO `area` VALUES ('370281', '370200', '胶州市');
INSERT INTO `area` VALUES ('370282', '370200', '即墨市');
INSERT INTO `area` VALUES ('370283', '370200', '平度市');
INSERT INTO `area` VALUES ('370285', '370200', '莱西市');
INSERT INTO `area` VALUES ('370300', '370000', '淄博市');
INSERT INTO `area` VALUES ('370302', '370300', '淄川区');
INSERT INTO `area` VALUES ('370303', '370300', '张店区');
INSERT INTO `area` VALUES ('370304', '370300', '博山区');
INSERT INTO `area` VALUES ('370305', '370300', '临淄区');
INSERT INTO `area` VALUES ('370306', '370300', '周村区');
INSERT INTO `area` VALUES ('370321', '370300', '桓台县');
INSERT INTO `area` VALUES ('370322', '370300', '高青县');
INSERT INTO `area` VALUES ('370323', '370300', '沂源县');
INSERT INTO `area` VALUES ('370400', '370000', '枣庄市');
INSERT INTO `area` VALUES ('370402', '370400', '市中区');
INSERT INTO `area` VALUES ('370403', '370400', '薛城区');
INSERT INTO `area` VALUES ('370404', '370400', '峄城区');
INSERT INTO `area` VALUES ('370405', '370400', '台儿庄区');
INSERT INTO `area` VALUES ('370406', '370400', '山亭区');
INSERT INTO `area` VALUES ('370481', '370400', '滕州市');
INSERT INTO `area` VALUES ('370500', '370000', '东营市');
INSERT INTO `area` VALUES ('370502', '370500', '东营区');
INSERT INTO `area` VALUES ('370503', '370500', '河口区');
INSERT INTO `area` VALUES ('370521', '370500', '垦利县');
INSERT INTO `area` VALUES ('370522', '370500', '利津县');
INSERT INTO `area` VALUES ('370523', '370500', '广饶县');
INSERT INTO `area` VALUES ('370600', '370000', '烟台市');
INSERT INTO `area` VALUES ('370602', '370600', '芝罘区');
INSERT INTO `area` VALUES ('370611', '370600', '福山区');
INSERT INTO `area` VALUES ('370612', '370600', '牟平区');
INSERT INTO `area` VALUES ('370613', '370600', '莱山区');
INSERT INTO `area` VALUES ('370634', '370600', '长岛县');
INSERT INTO `area` VALUES ('370681', '370600', '龙口市');
INSERT INTO `area` VALUES ('370682', '370600', '莱阳市');
INSERT INTO `area` VALUES ('370683', '370600', '莱州市');
INSERT INTO `area` VALUES ('370684', '370600', '蓬莱市');
INSERT INTO `area` VALUES ('370685', '370600', '招远市');
INSERT INTO `area` VALUES ('370686', '370600', '栖霞市');
INSERT INTO `area` VALUES ('370687', '370600', '海阳市');
INSERT INTO `area` VALUES ('370700', '370000', '潍坊市');
INSERT INTO `area` VALUES ('370702', '370700', '潍城区');
INSERT INTO `area` VALUES ('370703', '370700', '寒亭区');
INSERT INTO `area` VALUES ('370704', '370700', '坊子区');
INSERT INTO `area` VALUES ('370705', '370700', '奎文区');
INSERT INTO `area` VALUES ('370724', '370700', '临朐县');
INSERT INTO `area` VALUES ('370725', '370700', '昌乐县');
INSERT INTO `area` VALUES ('370781', '370700', '青州市');
INSERT INTO `area` VALUES ('370782', '370700', '诸城市');
INSERT INTO `area` VALUES ('370783', '370700', '寿光市');
INSERT INTO `area` VALUES ('370784', '370700', '安丘市');
INSERT INTO `area` VALUES ('370785', '370700', '高密市');
INSERT INTO `area` VALUES ('370786', '370700', '昌邑市');
INSERT INTO `area` VALUES ('370800', '370000', '济宁市');
INSERT INTO `area` VALUES ('370811', '370800', '任城区');
INSERT INTO `area` VALUES ('370812', '370800', '兖州区');
INSERT INTO `area` VALUES ('370826', '370800', '微山县');
INSERT INTO `area` VALUES ('370827', '370800', '鱼台县');
INSERT INTO `area` VALUES ('370828', '370800', '金乡县');
INSERT INTO `area` VALUES ('370829', '370800', '嘉祥县');
INSERT INTO `area` VALUES ('370830', '370800', '汶上县');
INSERT INTO `area` VALUES ('370831', '370800', '泗水县');
INSERT INTO `area` VALUES ('370832', '370800', '梁山县');
INSERT INTO `area` VALUES ('370881', '370800', '曲阜市');
INSERT INTO `area` VALUES ('370883', '370800', '邹城市');
INSERT INTO `area` VALUES ('370900', '370000', '泰安市');
INSERT INTO `area` VALUES ('370902', '370900', '泰山区');
INSERT INTO `area` VALUES ('370911', '370900', '岱岳区');
INSERT INTO `area` VALUES ('370921', '370900', '宁阳县');
INSERT INTO `area` VALUES ('370923', '370900', '东平县');
INSERT INTO `area` VALUES ('370982', '370900', '新泰市');
INSERT INTO `area` VALUES ('370983', '370900', '肥城市');
INSERT INTO `area` VALUES ('371000', '370000', '威海市');
INSERT INTO `area` VALUES ('371002', '371000', '环翠区');
INSERT INTO `area` VALUES ('371003', '371000', '文登区');
INSERT INTO `area` VALUES ('371082', '371000', '荣成市');
INSERT INTO `area` VALUES ('371083', '371000', '乳山市');
INSERT INTO `area` VALUES ('371100', '370000', '日照市');
INSERT INTO `area` VALUES ('371102', '371100', '东港区');
INSERT INTO `area` VALUES ('371103', '371100', '岚山区');
INSERT INTO `area` VALUES ('371121', '371100', '五莲县');
INSERT INTO `area` VALUES ('371122', '371100', '莒县');
INSERT INTO `area` VALUES ('371200', '370000', '莱芜市');
INSERT INTO `area` VALUES ('371202', '371200', '莱城区');
INSERT INTO `area` VALUES ('371203', '371200', '钢城区');
INSERT INTO `area` VALUES ('371300', '370000', '临沂市');
INSERT INTO `area` VALUES ('371302', '371300', '兰山区');
INSERT INTO `area` VALUES ('371311', '371300', '罗庄区');
INSERT INTO `area` VALUES ('371312', '371300', '河东区');
INSERT INTO `area` VALUES ('371321', '371300', '沂南县');
INSERT INTO `area` VALUES ('371322', '371300', '郯城县');
INSERT INTO `area` VALUES ('371323', '371300', '沂水县');
INSERT INTO `area` VALUES ('371324', '371300', '苍山县');
INSERT INTO `area` VALUES ('371325', '371300', '费县');
INSERT INTO `area` VALUES ('371326', '371300', '平邑县');
INSERT INTO `area` VALUES ('371327', '371300', '莒南县');
INSERT INTO `area` VALUES ('371328', '371300', '蒙阴县');
INSERT INTO `area` VALUES ('371329', '371300', '临沭县');
INSERT INTO `area` VALUES ('371400', '370000', '德州市');
INSERT INTO `area` VALUES ('371402', '371400', '德城区');
INSERT INTO `area` VALUES ('371403', '371400', '陵城区');
INSERT INTO `area` VALUES ('371422', '371400', '宁津县');
INSERT INTO `area` VALUES ('371423', '371400', '庆云县');
INSERT INTO `area` VALUES ('371424', '371400', '临邑县');
INSERT INTO `area` VALUES ('371425', '371400', '齐河县');
INSERT INTO `area` VALUES ('371426', '371400', '平原县');
INSERT INTO `area` VALUES ('371427', '371400', '夏津县');
INSERT INTO `area` VALUES ('371428', '371400', '武城县');
INSERT INTO `area` VALUES ('371481', '371400', '乐陵市');
INSERT INTO `area` VALUES ('371482', '371400', '禹城市');
INSERT INTO `area` VALUES ('371500', '370000', '聊城市');
INSERT INTO `area` VALUES ('371502', '371500', '东昌府区');
INSERT INTO `area` VALUES ('371521', '371500', '阳谷县');
INSERT INTO `area` VALUES ('371522', '371500', '莘县');
INSERT INTO `area` VALUES ('371523', '371500', '茌平县');
INSERT INTO `area` VALUES ('371524', '371500', '东阿县');
INSERT INTO `area` VALUES ('371525', '371500', '冠县');
INSERT INTO `area` VALUES ('371526', '371500', '高唐县');
INSERT INTO `area` VALUES ('371581', '371500', '临清市');
INSERT INTO `area` VALUES ('371600', '370000', '滨州市');
INSERT INTO `area` VALUES ('371602', '371600', '滨城区');
INSERT INTO `area` VALUES ('371603', '371600', '沾化区');
INSERT INTO `area` VALUES ('371621', '371600', '惠民县');
INSERT INTO `area` VALUES ('371622', '371600', '阳信县');
INSERT INTO `area` VALUES ('371623', '371600', '无棣县');
INSERT INTO `area` VALUES ('371625', '371600', '博兴县');
INSERT INTO `area` VALUES ('371626', '371600', '邹平县');
INSERT INTO `area` VALUES ('371700', '370000', '菏泽市');
INSERT INTO `area` VALUES ('371702', '371700', '牡丹区');
INSERT INTO `area` VALUES ('371721', '371700', '曹县');
INSERT INTO `area` VALUES ('371722', '371700', '单县');
INSERT INTO `area` VALUES ('371723', '371700', '成武县');
INSERT INTO `area` VALUES ('371724', '371700', '巨野县');
INSERT INTO `area` VALUES ('371725', '371700', '郓城县');
INSERT INTO `area` VALUES ('371726', '371700', '鄄城县');
INSERT INTO `area` VALUES ('371727', '371700', '定陶县');
INSERT INTO `area` VALUES ('371728', '371700', '东明县');
INSERT INTO `area` VALUES ('410000', '0', '河南省');
INSERT INTO `area` VALUES ('410100', '410000', '郑州市');
INSERT INTO `area` VALUES ('410102', '410100', '中原区');
INSERT INTO `area` VALUES ('410103', '410100', '二七区');
INSERT INTO `area` VALUES ('410104', '410100', '管城回族区');
INSERT INTO `area` VALUES ('410105', '410100', '金水区');
INSERT INTO `area` VALUES ('410106', '410100', '上街区');
INSERT INTO `area` VALUES ('410108', '410100', '惠济区');
INSERT INTO `area` VALUES ('410122', '410100', '中牟县');
INSERT INTO `area` VALUES ('410181', '410100', '巩义市');
INSERT INTO `area` VALUES ('410182', '410100', '荥阳市');
INSERT INTO `area` VALUES ('410183', '410100', '新密市');
INSERT INTO `area` VALUES ('410184', '410100', '新郑市');
INSERT INTO `area` VALUES ('410185', '410100', '登封市');
INSERT INTO `area` VALUES ('410200', '410000', '开封市');
INSERT INTO `area` VALUES ('410202', '410200', '龙亭区');
INSERT INTO `area` VALUES ('410203', '410200', '顺河回族区');
INSERT INTO `area` VALUES ('410204', '410200', '鼓楼区');
INSERT INTO `area` VALUES ('410205', '410200', '禹王台区');
INSERT INTO `area` VALUES ('410211', '410200', '金明区');
INSERT INTO `area` VALUES ('410212', '410200', '祥符区');
INSERT INTO `area` VALUES ('410221', '410200', '杞县');
INSERT INTO `area` VALUES ('410222', '410200', '通许县');
INSERT INTO `area` VALUES ('410223', '410200', '尉氏县');
INSERT INTO `area` VALUES ('410225', '410200', '兰考县');
INSERT INTO `area` VALUES ('410300', '410000', '洛阳市');
INSERT INTO `area` VALUES ('410302', '410300', '老城区');
INSERT INTO `area` VALUES ('410303', '410300', '西工区');
INSERT INTO `area` VALUES ('410304', '410300', '瀍河回族区');
INSERT INTO `area` VALUES ('410305', '410300', '涧西区');
INSERT INTO `area` VALUES ('410306', '410300', '吉利区');
INSERT INTO `area` VALUES ('410311', '410300', '洛龙区');
INSERT INTO `area` VALUES ('410322', '410300', '孟津县');
INSERT INTO `area` VALUES ('410323', '410300', '新安县');
INSERT INTO `area` VALUES ('410324', '410300', '栾川县');
INSERT INTO `area` VALUES ('410325', '410300', '嵩县');
INSERT INTO `area` VALUES ('410326', '410300', '汝阳县');
INSERT INTO `area` VALUES ('410327', '410300', '宜阳县');
INSERT INTO `area` VALUES ('410328', '410300', '洛宁县');
INSERT INTO `area` VALUES ('410329', '410300', '伊川县');
INSERT INTO `area` VALUES ('410381', '410300', '偃师市');
INSERT INTO `area` VALUES ('410400', '410000', '平顶山市');
INSERT INTO `area` VALUES ('410402', '410400', '新华区');
INSERT INTO `area` VALUES ('410403', '410400', '卫东区');
INSERT INTO `area` VALUES ('410404', '410400', '石龙区');
INSERT INTO `area` VALUES ('410411', '410400', '湛河区');
INSERT INTO `area` VALUES ('410421', '410400', '宝丰县');
INSERT INTO `area` VALUES ('410422', '410400', '叶县');
INSERT INTO `area` VALUES ('410423', '410400', '鲁山县');
INSERT INTO `area` VALUES ('410425', '410400', '郏县');
INSERT INTO `area` VALUES ('410481', '410400', '舞钢市');
INSERT INTO `area` VALUES ('410482', '410400', '汝州市');
INSERT INTO `area` VALUES ('410500', '410000', '安阳市');
INSERT INTO `area` VALUES ('410502', '410500', '文峰区');
INSERT INTO `area` VALUES ('410503', '410500', '北关区');
INSERT INTO `area` VALUES ('410505', '410500', '殷都区');
INSERT INTO `area` VALUES ('410506', '410500', '龙安区');
INSERT INTO `area` VALUES ('410522', '410500', '安阳县');
INSERT INTO `area` VALUES ('410523', '410500', '汤阴县');
INSERT INTO `area` VALUES ('410526', '410500', '滑县');
INSERT INTO `area` VALUES ('410527', '410500', '内黄县');
INSERT INTO `area` VALUES ('410581', '410500', '林州市');
INSERT INTO `area` VALUES ('410600', '410000', '鹤壁市');
INSERT INTO `area` VALUES ('410602', '410600', '鹤山区');
INSERT INTO `area` VALUES ('410603', '410600', '山城区');
INSERT INTO `area` VALUES ('410611', '410600', '淇滨区');
INSERT INTO `area` VALUES ('410621', '410600', '浚县');
INSERT INTO `area` VALUES ('410622', '410600', '淇县');
INSERT INTO `area` VALUES ('410700', '410000', '新乡市');
INSERT INTO `area` VALUES ('410702', '410700', '红旗区');
INSERT INTO `area` VALUES ('410703', '410700', '卫滨区');
INSERT INTO `area` VALUES ('410704', '410700', '凤泉区');
INSERT INTO `area` VALUES ('410711', '410700', '牧野区');
INSERT INTO `area` VALUES ('410721', '410700', '新乡县');
INSERT INTO `area` VALUES ('410724', '410700', '获嘉县');
INSERT INTO `area` VALUES ('410725', '410700', '原阳县');
INSERT INTO `area` VALUES ('410726', '410700', '延津县');
INSERT INTO `area` VALUES ('410727', '410700', '封丘县');
INSERT INTO `area` VALUES ('410728', '410700', '长垣县');
INSERT INTO `area` VALUES ('410781', '410700', '卫辉市');
INSERT INTO `area` VALUES ('410782', '410700', '辉县市');
INSERT INTO `area` VALUES ('410800', '410000', '焦作市');
INSERT INTO `area` VALUES ('410802', '410800', '解放区');
INSERT INTO `area` VALUES ('410803', '410800', '中站区');
INSERT INTO `area` VALUES ('410804', '410800', '马村区');
INSERT INTO `area` VALUES ('410811', '410800', '山阳区');
INSERT INTO `area` VALUES ('410821', '410800', '修武县');
INSERT INTO `area` VALUES ('410822', '410800', '博爱县');
INSERT INTO `area` VALUES ('410823', '410800', '武陟县');
INSERT INTO `area` VALUES ('410825', '410800', '温县');
INSERT INTO `area` VALUES ('410882', '410800', '沁阳市');
INSERT INTO `area` VALUES ('410883', '410800', '孟州市');
INSERT INTO `area` VALUES ('410900', '410000', '濮阳市');
INSERT INTO `area` VALUES ('410902', '410900', '华龙区');
INSERT INTO `area` VALUES ('410922', '410900', '清丰县');
INSERT INTO `area` VALUES ('410923', '410900', '南乐县');
INSERT INTO `area` VALUES ('410926', '410900', '范县');
INSERT INTO `area` VALUES ('410927', '410900', '台前县');
INSERT INTO `area` VALUES ('410928', '410900', '濮阳县');
INSERT INTO `area` VALUES ('411000', '410000', '许昌市');
INSERT INTO `area` VALUES ('411002', '411000', '魏都区');
INSERT INTO `area` VALUES ('411023', '411000', '许昌县');
INSERT INTO `area` VALUES ('411024', '411000', '鄢陵县');
INSERT INTO `area` VALUES ('411025', '411000', '襄城县');
INSERT INTO `area` VALUES ('411081', '411000', '禹州市');
INSERT INTO `area` VALUES ('411082', '411000', '长葛市');
INSERT INTO `area` VALUES ('411100', '410000', '漯河市');
INSERT INTO `area` VALUES ('411102', '411100', '源汇区');
INSERT INTO `area` VALUES ('411103', '411100', '郾城区');
INSERT INTO `area` VALUES ('411104', '411100', '召陵区');
INSERT INTO `area` VALUES ('411121', '411100', '舞阳县');
INSERT INTO `area` VALUES ('411122', '411100', '临颍县');
INSERT INTO `area` VALUES ('411200', '410000', '三门峡市');
INSERT INTO `area` VALUES ('411202', '411200', '湖滨区');
INSERT INTO `area` VALUES ('411221', '411200', '渑池县');
INSERT INTO `area` VALUES ('411222', '411200', '陕县');
INSERT INTO `area` VALUES ('411224', '411200', '卢氏县');
INSERT INTO `area` VALUES ('411281', '411200', '义马市');
INSERT INTO `area` VALUES ('411282', '411200', '灵宝市');
INSERT INTO `area` VALUES ('411300', '410000', '南阳市');
INSERT INTO `area` VALUES ('411302', '411300', '宛城区');
INSERT INTO `area` VALUES ('411303', '411300', '卧龙区');
INSERT INTO `area` VALUES ('411321', '411300', '南召县');
INSERT INTO `area` VALUES ('411322', '411300', '方城县');
INSERT INTO `area` VALUES ('411323', '411300', '西峡县');
INSERT INTO `area` VALUES ('411324', '411300', '镇平县');
INSERT INTO `area` VALUES ('411325', '411300', '内乡县');
INSERT INTO `area` VALUES ('411326', '411300', '淅川县');
INSERT INTO `area` VALUES ('411327', '411300', '社旗县');
INSERT INTO `area` VALUES ('411328', '411300', '唐河县');
INSERT INTO `area` VALUES ('411329', '411300', '新野县');
INSERT INTO `area` VALUES ('411330', '411300', '桐柏县');
INSERT INTO `area` VALUES ('411381', '411300', '邓州市');
INSERT INTO `area` VALUES ('411400', '410000', '商丘市');
INSERT INTO `area` VALUES ('411402', '411400', '梁园区');
INSERT INTO `area` VALUES ('411403', '411400', '睢阳区');
INSERT INTO `area` VALUES ('411421', '411400', '民权县');
INSERT INTO `area` VALUES ('411422', '411400', '睢县');
INSERT INTO `area` VALUES ('411423', '411400', '宁陵县');
INSERT INTO `area` VALUES ('411424', '411400', '柘城县');
INSERT INTO `area` VALUES ('411425', '411400', '虞城县');
INSERT INTO `area` VALUES ('411426', '411400', '夏邑县');
INSERT INTO `area` VALUES ('411481', '411400', '永城市');
INSERT INTO `area` VALUES ('411500', '410000', '信阳市');
INSERT INTO `area` VALUES ('411502', '411500', '浉河区');
INSERT INTO `area` VALUES ('411503', '411500', '平桥区');
INSERT INTO `area` VALUES ('411521', '411500', '罗山县');
INSERT INTO `area` VALUES ('411522', '411500', '光山县');
INSERT INTO `area` VALUES ('411523', '411500', '新县');
INSERT INTO `area` VALUES ('411524', '411500', '商城县');
INSERT INTO `area` VALUES ('411525', '411500', '固始县');
INSERT INTO `area` VALUES ('411526', '411500', '潢川县');
INSERT INTO `area` VALUES ('411527', '411500', '淮滨县');
INSERT INTO `area` VALUES ('411528', '411500', '息县');
INSERT INTO `area` VALUES ('411600', '410000', '周口市');
INSERT INTO `area` VALUES ('411602', '411600', '川汇区');
INSERT INTO `area` VALUES ('411621', '411600', '扶沟县');
INSERT INTO `area` VALUES ('411622', '411600', '西华县');
INSERT INTO `area` VALUES ('411623', '411600', '商水县');
INSERT INTO `area` VALUES ('411624', '411600', '沈丘县');
INSERT INTO `area` VALUES ('411625', '411600', '郸城县');
INSERT INTO `area` VALUES ('411626', '411600', '淮阳县');
INSERT INTO `area` VALUES ('411627', '411600', '太康县');
INSERT INTO `area` VALUES ('411628', '411600', '鹿邑县');
INSERT INTO `area` VALUES ('411681', '411600', '项城市');
INSERT INTO `area` VALUES ('411700', '410000', '驻马店市');
INSERT INTO `area` VALUES ('411702', '411700', '驿城区');
INSERT INTO `area` VALUES ('411721', '411700', '西平县');
INSERT INTO `area` VALUES ('411722', '411700', '上蔡县');
INSERT INTO `area` VALUES ('411723', '411700', '平舆县');
INSERT INTO `area` VALUES ('411724', '411700', '正阳县');
INSERT INTO `area` VALUES ('411725', '411700', '确山县');
INSERT INTO `area` VALUES ('411726', '411700', '泌阳县');
INSERT INTO `area` VALUES ('411727', '411700', '汝南县');
INSERT INTO `area` VALUES ('411728', '411700', '遂平县');
INSERT INTO `area` VALUES ('411729', '411700', '新蔡县');
INSERT INTO `area` VALUES ('419001', '410000', '济源市');
INSERT INTO `area` VALUES ('420000', '0', '湖北省');
INSERT INTO `area` VALUES ('420100', '420000', '武汉市');
INSERT INTO `area` VALUES ('420102', '420100', '江岸区');
INSERT INTO `area` VALUES ('420103', '420100', '江汉区');
INSERT INTO `area` VALUES ('420104', '420100', '硚口区');
INSERT INTO `area` VALUES ('420105', '420100', '汉阳区');
INSERT INTO `area` VALUES ('420106', '420100', '武昌区');
INSERT INTO `area` VALUES ('420107', '420100', '青山区');
INSERT INTO `area` VALUES ('420111', '420100', '洪山区');
INSERT INTO `area` VALUES ('420112', '420100', '东西湖区');
INSERT INTO `area` VALUES ('420113', '420100', '汉南区');
INSERT INTO `area` VALUES ('420114', '420100', '蔡甸区');
INSERT INTO `area` VALUES ('420115', '420100', '江夏区');
INSERT INTO `area` VALUES ('420116', '420100', '黄陂区');
INSERT INTO `area` VALUES ('420117', '420100', '新洲区');
INSERT INTO `area` VALUES ('420200', '420000', '黄石市');
INSERT INTO `area` VALUES ('420202', '420200', '黄石港区');
INSERT INTO `area` VALUES ('420203', '420200', '西塞山区');
INSERT INTO `area` VALUES ('420204', '420200', '下陆区');
INSERT INTO `area` VALUES ('420205', '420200', '铁山区');
INSERT INTO `area` VALUES ('420222', '420200', '阳新县');
INSERT INTO `area` VALUES ('420281', '420200', '大冶市');
INSERT INTO `area` VALUES ('420300', '420000', '十堰市');
INSERT INTO `area` VALUES ('420302', '420300', '茅箭区');
INSERT INTO `area` VALUES ('420303', '420300', '张湾区');
INSERT INTO `area` VALUES ('420304', '420300', '郧阳区');
INSERT INTO `area` VALUES ('420322', '420300', '郧西县');
INSERT INTO `area` VALUES ('420323', '420300', '竹山县');
INSERT INTO `area` VALUES ('420324', '420300', '竹溪县');
INSERT INTO `area` VALUES ('420325', '420300', '房县');
INSERT INTO `area` VALUES ('420381', '420300', '丹江口市');
INSERT INTO `area` VALUES ('420500', '420000', '宜昌市');
INSERT INTO `area` VALUES ('420502', '420500', '西陵区');
INSERT INTO `area` VALUES ('420503', '420500', '伍家岗区');
INSERT INTO `area` VALUES ('420504', '420500', '点军区');
INSERT INTO `area` VALUES ('420505', '420500', '猇亭区');
INSERT INTO `area` VALUES ('420506', '420500', '夷陵区');
INSERT INTO `area` VALUES ('420525', '420500', '远安县');
INSERT INTO `area` VALUES ('420526', '420500', '兴山县');
INSERT INTO `area` VALUES ('420527', '420500', '秭归县');
INSERT INTO `area` VALUES ('420528', '420500', '长阳土家族自治县');
INSERT INTO `area` VALUES ('420529', '420500', '五峰土家族自治县');
INSERT INTO `area` VALUES ('420581', '420500', '宜都市');
INSERT INTO `area` VALUES ('420582', '420500', '当阳市');
INSERT INTO `area` VALUES ('420583', '420500', '枝江市');
INSERT INTO `area` VALUES ('420600', '420000', '襄阳市');
INSERT INTO `area` VALUES ('420602', '420600', '襄城区');
INSERT INTO `area` VALUES ('420606', '420600', '樊城区');
INSERT INTO `area` VALUES ('420607', '420600', '襄州区');
INSERT INTO `area` VALUES ('420624', '420600', '南漳县');
INSERT INTO `area` VALUES ('420625', '420600', '谷城县');
INSERT INTO `area` VALUES ('420626', '420600', '保康县');
INSERT INTO `area` VALUES ('420682', '420600', '老河口市');
INSERT INTO `area` VALUES ('420683', '420600', '枣阳市');
INSERT INTO `area` VALUES ('420684', '420600', '宜城市');
INSERT INTO `area` VALUES ('420700', '420000', '鄂州市');
INSERT INTO `area` VALUES ('420702', '420700', '梁子湖区');
INSERT INTO `area` VALUES ('420703', '420700', '华容区');
INSERT INTO `area` VALUES ('420704', '420700', '鄂城区');
INSERT INTO `area` VALUES ('420800', '420000', '荆门市');
INSERT INTO `area` VALUES ('420802', '420800', '东宝区');
INSERT INTO `area` VALUES ('420804', '420800', '掇刀区');
INSERT INTO `area` VALUES ('420821', '420800', '京山县');
INSERT INTO `area` VALUES ('420822', '420800', '沙洋县');
INSERT INTO `area` VALUES ('420881', '420800', '钟祥市');
INSERT INTO `area` VALUES ('420900', '420000', '孝感市');
INSERT INTO `area` VALUES ('420902', '420900', '孝南区');
INSERT INTO `area` VALUES ('420921', '420900', '孝昌县');
INSERT INTO `area` VALUES ('420922', '420900', '大悟县');
INSERT INTO `area` VALUES ('420923', '420900', '云梦县');
INSERT INTO `area` VALUES ('420981', '420900', '应城市');
INSERT INTO `area` VALUES ('420982', '420900', '安陆市');
INSERT INTO `area` VALUES ('420984', '420900', '汉川市');
INSERT INTO `area` VALUES ('421000', '420000', '荆州市');
INSERT INTO `area` VALUES ('421002', '421000', '沙市区');
INSERT INTO `area` VALUES ('421003', '421000', '荆州区');
INSERT INTO `area` VALUES ('421022', '421000', '公安县');
INSERT INTO `area` VALUES ('421023', '421000', '监利县');
INSERT INTO `area` VALUES ('421024', '421000', '江陵县');
INSERT INTO `area` VALUES ('421081', '421000', '石首市');
INSERT INTO `area` VALUES ('421083', '421000', '洪湖市');
INSERT INTO `area` VALUES ('421087', '421000', '松滋市');
INSERT INTO `area` VALUES ('421100', '420000', '黄冈市');
INSERT INTO `area` VALUES ('421102', '421100', '黄州区');
INSERT INTO `area` VALUES ('421121', '421100', '团风县');
INSERT INTO `area` VALUES ('421122', '421100', '红安县');
INSERT INTO `area` VALUES ('421123', '421100', '罗田县');
INSERT INTO `area` VALUES ('421124', '421100', '英山县');
INSERT INTO `area` VALUES ('421125', '421100', '浠水县');
INSERT INTO `area` VALUES ('421126', '421100', '蕲春县');
INSERT INTO `area` VALUES ('421127', '421100', '黄梅县');
INSERT INTO `area` VALUES ('421181', '421100', '麻城市');
INSERT INTO `area` VALUES ('421182', '421100', '武穴市');
INSERT INTO `area` VALUES ('421200', '420000', '咸宁市');
INSERT INTO `area` VALUES ('421202', '421200', '咸安区');
INSERT INTO `area` VALUES ('421221', '421200', '嘉鱼县');
INSERT INTO `area` VALUES ('421222', '421200', '通城县');
INSERT INTO `area` VALUES ('421223', '421200', '崇阳县');
INSERT INTO `area` VALUES ('421224', '421200', '通山县');
INSERT INTO `area` VALUES ('421281', '421200', '赤壁市');
INSERT INTO `area` VALUES ('421300', '420000', '随州市');
INSERT INTO `area` VALUES ('421303', '421300', '曾都区');
INSERT INTO `area` VALUES ('421321', '421300', '随县');
INSERT INTO `area` VALUES ('421381', '421300', '广水市');
INSERT INTO `area` VALUES ('422800', '420000', '恩施土家族苗族自治州');
INSERT INTO `area` VALUES ('422801', '422800', '恩施市');
INSERT INTO `area` VALUES ('422802', '422800', '利川市');
INSERT INTO `area` VALUES ('422822', '422800', '建始县');
INSERT INTO `area` VALUES ('422823', '422800', '巴东县');
INSERT INTO `area` VALUES ('422825', '422800', '宣恩县');
INSERT INTO `area` VALUES ('422826', '422800', '咸丰县');
INSERT INTO `area` VALUES ('422827', '422800', '来凤县');
INSERT INTO `area` VALUES ('422828', '422800', '鹤峰县');
INSERT INTO `area` VALUES ('429004', '420000', '仙桃市');
INSERT INTO `area` VALUES ('429005', '420000', '潜江市');
INSERT INTO `area` VALUES ('429006', '420000', '天门市');
INSERT INTO `area` VALUES ('429021', '420000', '神农架林区');
INSERT INTO `area` VALUES ('430000', '0', '湖南省');
INSERT INTO `area` VALUES ('430100', '430000', '长沙市');
INSERT INTO `area` VALUES ('430102', '430100', '芙蓉区');
INSERT INTO `area` VALUES ('430103', '430100', '天心区');
INSERT INTO `area` VALUES ('430104', '430100', '岳麓区');
INSERT INTO `area` VALUES ('430105', '430100', '开福区');
INSERT INTO `area` VALUES ('430111', '430100', '雨花区');
INSERT INTO `area` VALUES ('430112', '430100', '望城区');
INSERT INTO `area` VALUES ('430121', '430100', '长沙县');
INSERT INTO `area` VALUES ('430124', '430100', '宁乡县');
INSERT INTO `area` VALUES ('430181', '430100', '浏阳市');
INSERT INTO `area` VALUES ('430200', '430000', '株洲市');
INSERT INTO `area` VALUES ('430202', '430200', '荷塘区');
INSERT INTO `area` VALUES ('430203', '430200', '芦淞区');
INSERT INTO `area` VALUES ('430204', '430200', '石峰区');
INSERT INTO `area` VALUES ('430211', '430200', '天元区');
INSERT INTO `area` VALUES ('430221', '430200', '株洲县');
INSERT INTO `area` VALUES ('430223', '430200', '攸县');
INSERT INTO `area` VALUES ('430224', '430200', '茶陵县');
INSERT INTO `area` VALUES ('430225', '430200', '炎陵县');
INSERT INTO `area` VALUES ('430281', '430200', '醴陵市');
INSERT INTO `area` VALUES ('430300', '430000', '湘潭市');
INSERT INTO `area` VALUES ('430302', '430300', '雨湖区');
INSERT INTO `area` VALUES ('430304', '430300', '岳塘区');
INSERT INTO `area` VALUES ('430321', '430300', '湘潭县');
INSERT INTO `area` VALUES ('430381', '430300', '湘乡市');
INSERT INTO `area` VALUES ('430382', '430300', '韶山市');
INSERT INTO `area` VALUES ('430400', '430000', '衡阳市');
INSERT INTO `area` VALUES ('430405', '430400', '珠晖区');
INSERT INTO `area` VALUES ('430406', '430400', '雁峰区');
INSERT INTO `area` VALUES ('430407', '430400', '石鼓区');
INSERT INTO `area` VALUES ('430408', '430400', '蒸湘区');
INSERT INTO `area` VALUES ('430412', '430400', '南岳区');
INSERT INTO `area` VALUES ('430421', '430400', '衡阳县');
INSERT INTO `area` VALUES ('430422', '430400', '衡南县');
INSERT INTO `area` VALUES ('430423', '430400', '衡山县');
INSERT INTO `area` VALUES ('430424', '430400', '衡东县');
INSERT INTO `area` VALUES ('430426', '430400', '祁东县');
INSERT INTO `area` VALUES ('430481', '430400', '耒阳市');
INSERT INTO `area` VALUES ('430482', '430400', '常宁市');
INSERT INTO `area` VALUES ('430500', '430000', '邵阳市');
INSERT INTO `area` VALUES ('430502', '430500', '双清区');
INSERT INTO `area` VALUES ('430503', '430500', '大祥区');
INSERT INTO `area` VALUES ('430511', '430500', '北塔区');
INSERT INTO `area` VALUES ('430521', '430500', '邵东县');
INSERT INTO `area` VALUES ('430522', '430500', '新邵县');
INSERT INTO `area` VALUES ('430523', '430500', '邵阳县');
INSERT INTO `area` VALUES ('430524', '430500', '隆回县');
INSERT INTO `area` VALUES ('430525', '430500', '洞口县');
INSERT INTO `area` VALUES ('430527', '430500', '绥宁县');
INSERT INTO `area` VALUES ('430528', '430500', '新宁县');
INSERT INTO `area` VALUES ('430529', '430500', '城步苗族自治县');
INSERT INTO `area` VALUES ('430581', '430500', '武冈市');
INSERT INTO `area` VALUES ('430600', '430000', '岳阳市');
INSERT INTO `area` VALUES ('430602', '430600', '岳阳楼区');
INSERT INTO `area` VALUES ('430603', '430600', '云溪区');
INSERT INTO `area` VALUES ('430611', '430600', '君山区');
INSERT INTO `area` VALUES ('430621', '430600', '岳阳县');
INSERT INTO `area` VALUES ('430623', '430600', '华容县');
INSERT INTO `area` VALUES ('430624', '430600', '湘阴县');
INSERT INTO `area` VALUES ('430626', '430600', '平江县');
INSERT INTO `area` VALUES ('430681', '430600', '汨罗市');
INSERT INTO `area` VALUES ('430682', '430600', '临湘市');
INSERT INTO `area` VALUES ('430700', '430000', '常德市');
INSERT INTO `area` VALUES ('430702', '430700', '武陵区');
INSERT INTO `area` VALUES ('430703', '430700', '鼎城区');
INSERT INTO `area` VALUES ('430721', '430700', '安乡县');
INSERT INTO `area` VALUES ('430722', '430700', '汉寿县');
INSERT INTO `area` VALUES ('430723', '430700', '澧县');
INSERT INTO `area` VALUES ('430724', '430700', '临澧县');
INSERT INTO `area` VALUES ('430725', '430700', '桃源县');
INSERT INTO `area` VALUES ('430726', '430700', '石门县');
INSERT INTO `area` VALUES ('430781', '430700', '津市市');
INSERT INTO `area` VALUES ('430800', '430000', '张家界市');
INSERT INTO `area` VALUES ('430802', '430800', '永定区');
INSERT INTO `area` VALUES ('430811', '430800', '武陵源区');
INSERT INTO `area` VALUES ('430821', '430800', '慈利县');
INSERT INTO `area` VALUES ('430822', '430800', '桑植县');
INSERT INTO `area` VALUES ('430900', '430000', '益阳市');
INSERT INTO `area` VALUES ('430902', '430900', '资阳区');
INSERT INTO `area` VALUES ('430903', '430900', '赫山区');
INSERT INTO `area` VALUES ('430921', '430900', '南县');
INSERT INTO `area` VALUES ('430922', '430900', '桃江县');
INSERT INTO `area` VALUES ('430923', '430900', '安化县');
INSERT INTO `area` VALUES ('430981', '430900', '沅江市');
INSERT INTO `area` VALUES ('431000', '430000', '郴州市');
INSERT INTO `area` VALUES ('431002', '431000', '北湖区');
INSERT INTO `area` VALUES ('431003', '431000', '苏仙区');
INSERT INTO `area` VALUES ('431021', '431000', '桂阳县');
INSERT INTO `area` VALUES ('431022', '431000', '宜章县');
INSERT INTO `area` VALUES ('431023', '431000', '永兴县');
INSERT INTO `area` VALUES ('431024', '431000', '嘉禾县');
INSERT INTO `area` VALUES ('431025', '431000', '临武县');
INSERT INTO `area` VALUES ('431026', '431000', '汝城县');
INSERT INTO `area` VALUES ('431027', '431000', '桂东县');
INSERT INTO `area` VALUES ('431028', '431000', '安仁县');
INSERT INTO `area` VALUES ('431081', '431000', '资兴市');
INSERT INTO `area` VALUES ('431100', '430000', '永州市');
INSERT INTO `area` VALUES ('431102', '431100', '零陵区');
INSERT INTO `area` VALUES ('431103', '431100', '冷水滩区');
INSERT INTO `area` VALUES ('431121', '431100', '祁阳县');
INSERT INTO `area` VALUES ('431122', '431100', '东安县');
INSERT INTO `area` VALUES ('431123', '431100', '双牌县');
INSERT INTO `area` VALUES ('431124', '431100', '道县');
INSERT INTO `area` VALUES ('431125', '431100', '江永县');
INSERT INTO `area` VALUES ('431126', '431100', '宁远县');
INSERT INTO `area` VALUES ('431127', '431100', '蓝山县');
INSERT INTO `area` VALUES ('431128', '431100', '新田县');
INSERT INTO `area` VALUES ('431129', '431100', '江华瑶族自治县');
INSERT INTO `area` VALUES ('431200', '430000', '怀化市');
INSERT INTO `area` VALUES ('431202', '431200', '鹤城区');
INSERT INTO `area` VALUES ('431221', '431200', '中方县');
INSERT INTO `area` VALUES ('431222', '431200', '沅陵县');
INSERT INTO `area` VALUES ('431223', '431200', '辰溪县');
INSERT INTO `area` VALUES ('431224', '431200', '溆浦县');
INSERT INTO `area` VALUES ('431225', '431200', '会同县');
INSERT INTO `area` VALUES ('431226', '431200', '麻阳苗族自治县');
INSERT INTO `area` VALUES ('431227', '431200', '新晃侗族自治县');
INSERT INTO `area` VALUES ('431228', '431200', '芷江侗族自治县');
INSERT INTO `area` VALUES ('431229', '431200', '靖州苗族侗族自治县');
INSERT INTO `area` VALUES ('431230', '431200', '通道侗族自治县');
INSERT INTO `area` VALUES ('431281', '431200', '洪江市');
INSERT INTO `area` VALUES ('431300', '430000', '娄底市');
INSERT INTO `area` VALUES ('431302', '431300', '娄星区');
INSERT INTO `area` VALUES ('431321', '431300', '双峰县');
INSERT INTO `area` VALUES ('431322', '431300', '新化县');
INSERT INTO `area` VALUES ('431381', '431300', '冷水江市');
INSERT INTO `area` VALUES ('431382', '431300', '涟源市');
INSERT INTO `area` VALUES ('433100', '430000', '湘西土家族苗族自治州');
INSERT INTO `area` VALUES ('433101', '433100', '吉首市');
INSERT INTO `area` VALUES ('433122', '433100', '泸溪县');
INSERT INTO `area` VALUES ('433123', '433100', '凤凰县');
INSERT INTO `area` VALUES ('433124', '433100', '花垣县');
INSERT INTO `area` VALUES ('433125', '433100', '保靖县');
INSERT INTO `area` VALUES ('433126', '433100', '古丈县');
INSERT INTO `area` VALUES ('433127', '433100', '永顺县');
INSERT INTO `area` VALUES ('433130', '433100', '龙山县');
INSERT INTO `area` VALUES ('440000', '0', '广东省');
INSERT INTO `area` VALUES ('440100', '440000', '广州市');
INSERT INTO `area` VALUES ('440103', '440100', '荔湾区');
INSERT INTO `area` VALUES ('440104', '440100', '越秀区');
INSERT INTO `area` VALUES ('440105', '440100', '海珠区');
INSERT INTO `area` VALUES ('440106', '440100', '天河区');
INSERT INTO `area` VALUES ('440111', '440100', '白云区');
INSERT INTO `area` VALUES ('440112', '440100', '黄埔区');
INSERT INTO `area` VALUES ('440113', '440100', '番禺区');
INSERT INTO `area` VALUES ('440114', '440100', '花都区');
INSERT INTO `area` VALUES ('440115', '440100', '南沙区');
INSERT INTO `area` VALUES ('440117', '440100', '从化区');
INSERT INTO `area` VALUES ('440118', '440100', '增城区');
INSERT INTO `area` VALUES ('440200', '440000', '韶关市');
INSERT INTO `area` VALUES ('440203', '440200', '武江区');
INSERT INTO `area` VALUES ('440204', '440200', '浈江区');
INSERT INTO `area` VALUES ('440205', '440200', '曲江区');
INSERT INTO `area` VALUES ('440222', '440200', '始兴县');
INSERT INTO `area` VALUES ('440224', '440200', '仁化县');
INSERT INTO `area` VALUES ('440229', '440200', '翁源县');
INSERT INTO `area` VALUES ('440232', '440200', '乳源瑶族自治县');
INSERT INTO `area` VALUES ('440233', '440200', '新丰县');
INSERT INTO `area` VALUES ('440281', '440200', '乐昌市');
INSERT INTO `area` VALUES ('440282', '440200', '南雄市');
INSERT INTO `area` VALUES ('440300', '440000', '深圳市');
INSERT INTO `area` VALUES ('440303', '440300', '罗湖区');
INSERT INTO `area` VALUES ('440304', '440300', '福田区');
INSERT INTO `area` VALUES ('440305', '440300', '南山区');
INSERT INTO `area` VALUES ('440306', '440300', '宝安区');
INSERT INTO `area` VALUES ('440307', '440300', '龙岗区');
INSERT INTO `area` VALUES ('440308', '440300', '盐田区');
INSERT INTO `area` VALUES ('440400', '440000', '珠海市');
INSERT INTO `area` VALUES ('440402', '440400', '香洲区');
INSERT INTO `area` VALUES ('440403', '440400', '斗门区');
INSERT INTO `area` VALUES ('440404', '440400', '金湾区');
INSERT INTO `area` VALUES ('440500', '440000', '汕头市');
INSERT INTO `area` VALUES ('440507', '440500', '龙湖区');
INSERT INTO `area` VALUES ('440511', '440500', '金平区');
INSERT INTO `area` VALUES ('440512', '440500', '濠江区');
INSERT INTO `area` VALUES ('440513', '440500', '潮阳区');
INSERT INTO `area` VALUES ('440514', '440500', '潮南区');
INSERT INTO `area` VALUES ('440515', '440500', '澄海区');
INSERT INTO `area` VALUES ('440523', '440500', '南澳县');
INSERT INTO `area` VALUES ('440600', '440000', '佛山市');
INSERT INTO `area` VALUES ('440604', '440600', '禅城区');
INSERT INTO `area` VALUES ('440605', '440600', '南海区');
INSERT INTO `area` VALUES ('440606', '440600', '顺德区');
INSERT INTO `area` VALUES ('440607', '440600', '三水区');
INSERT INTO `area` VALUES ('440608', '440600', '高明区');
INSERT INTO `area` VALUES ('440700', '440000', '江门市');
INSERT INTO `area` VALUES ('440703', '440700', '蓬江区');
INSERT INTO `area` VALUES ('440704', '440700', '江海区');
INSERT INTO `area` VALUES ('440705', '440700', '新会区');
INSERT INTO `area` VALUES ('440781', '440700', '台山市');
INSERT INTO `area` VALUES ('440783', '440700', '开平市');
INSERT INTO `area` VALUES ('440784', '440700', '鹤山市');
INSERT INTO `area` VALUES ('440785', '440700', '恩平市');
INSERT INTO `area` VALUES ('440800', '440000', '湛江市');
INSERT INTO `area` VALUES ('440802', '440800', '赤坎区');
INSERT INTO `area` VALUES ('440803', '440800', '霞山区');
INSERT INTO `area` VALUES ('440804', '440800', '坡头区');
INSERT INTO `area` VALUES ('440811', '440800', '麻章区');
INSERT INTO `area` VALUES ('440823', '440800', '遂溪县');
INSERT INTO `area` VALUES ('440825', '440800', '徐闻县');
INSERT INTO `area` VALUES ('440881', '440800', '廉江市');
INSERT INTO `area` VALUES ('440882', '440800', '雷州市');
INSERT INTO `area` VALUES ('440883', '440800', '吴川市');
INSERT INTO `area` VALUES ('440900', '440000', '茂名市');
INSERT INTO `area` VALUES ('440902', '440900', '茂南区');
INSERT INTO `area` VALUES ('440904', '440900', '电白区');
INSERT INTO `area` VALUES ('440981', '440900', '高州市');
INSERT INTO `area` VALUES ('440982', '440900', '化州市');
INSERT INTO `area` VALUES ('440983', '440900', '信宜市');
INSERT INTO `area` VALUES ('441200', '440000', '肇庆市');
INSERT INTO `area` VALUES ('441202', '441200', '端州区');
INSERT INTO `area` VALUES ('441203', '441200', '鼎湖区');
INSERT INTO `area` VALUES ('441204', '441200', '高要区');
INSERT INTO `area` VALUES ('441223', '441200', '广宁县');
INSERT INTO `area` VALUES ('441224', '441200', '怀集县');
INSERT INTO `area` VALUES ('441225', '441200', '封开县');
INSERT INTO `area` VALUES ('441226', '441200', '德庆县');
INSERT INTO `area` VALUES ('441284', '441200', '四会市');
INSERT INTO `area` VALUES ('441300', '440000', '惠州市');
INSERT INTO `area` VALUES ('441302', '441300', '惠城区');
INSERT INTO `area` VALUES ('441303', '441300', '惠阳区');
INSERT INTO `area` VALUES ('441322', '441300', '博罗县');
INSERT INTO `area` VALUES ('441323', '441300', '惠东县');
INSERT INTO `area` VALUES ('441324', '441300', '龙门县');
INSERT INTO `area` VALUES ('441400', '440000', '梅州市');
INSERT INTO `area` VALUES ('441402', '441400', '梅江区');
INSERT INTO `area` VALUES ('441403', '441400', '梅县区');
INSERT INTO `area` VALUES ('441422', '441400', '大埔县');
INSERT INTO `area` VALUES ('441423', '441400', '丰顺县');
INSERT INTO `area` VALUES ('441424', '441400', '五华县');
INSERT INTO `area` VALUES ('441426', '441400', '平远县');
INSERT INTO `area` VALUES ('441427', '441400', '蕉岭县');
INSERT INTO `area` VALUES ('441481', '441400', '兴宁市');
INSERT INTO `area` VALUES ('441500', '440000', '汕尾市');
INSERT INTO `area` VALUES ('441502', '441500', '城区');
INSERT INTO `area` VALUES ('441521', '441500', '海丰县');
INSERT INTO `area` VALUES ('441523', '441500', '陆河县');
INSERT INTO `area` VALUES ('441581', '441500', '陆丰市');
INSERT INTO `area` VALUES ('441600', '440000', '河源市');
INSERT INTO `area` VALUES ('441602', '441600', '源城区');
INSERT INTO `area` VALUES ('441621', '441600', '紫金县');
INSERT INTO `area` VALUES ('441622', '441600', '龙川县');
INSERT INTO `area` VALUES ('441623', '441600', '连平县');
INSERT INTO `area` VALUES ('441624', '441600', '和平县');
INSERT INTO `area` VALUES ('441625', '441600', '东源县');
INSERT INTO `area` VALUES ('441700', '440000', '阳江市');
INSERT INTO `area` VALUES ('441702', '441700', '江城区');
INSERT INTO `area` VALUES ('441704', '441700', '阳东区');
INSERT INTO `area` VALUES ('441721', '441700', '阳西县');
INSERT INTO `area` VALUES ('441781', '441700', '阳春市');
INSERT INTO `area` VALUES ('441800', '440000', '清远市');
INSERT INTO `area` VALUES ('441802', '441800', '清城区');
INSERT INTO `area` VALUES ('441803', '441800', '清新区');
INSERT INTO `area` VALUES ('441821', '441800', '佛冈县');
INSERT INTO `area` VALUES ('441823', '441800', '阳山县');
INSERT INTO `area` VALUES ('441825', '441800', '连山壮族瑶族自治县');
INSERT INTO `area` VALUES ('441826', '441800', '连南瑶族自治县');
INSERT INTO `area` VALUES ('441881', '441800', '英德市');
INSERT INTO `area` VALUES ('441882', '441800', '连州市');
INSERT INTO `area` VALUES ('441900', '440000', '东莞市');
INSERT INTO `area` VALUES ('442000', '440000', '中山市');
INSERT INTO `area` VALUES ('445100', '440000', '潮州市');
INSERT INTO `area` VALUES ('445102', '445100', '湘桥区');
INSERT INTO `area` VALUES ('445103', '445100', '潮安区');
INSERT INTO `area` VALUES ('445122', '445100', '饶平县');
INSERT INTO `area` VALUES ('445200', '440000', '揭阳市');
INSERT INTO `area` VALUES ('445202', '445200', '榕城区');
INSERT INTO `area` VALUES ('445203', '445200', '揭东区');
INSERT INTO `area` VALUES ('445222', '445200', '揭西县');
INSERT INTO `area` VALUES ('445224', '445200', '惠来县');
INSERT INTO `area` VALUES ('445281', '445200', '普宁市');
INSERT INTO `area` VALUES ('445300', '440000', '云浮市');
INSERT INTO `area` VALUES ('445302', '445300', '云城区');
INSERT INTO `area` VALUES ('445303', '445300', '云安区');
INSERT INTO `area` VALUES ('445321', '445300', '新兴县');
INSERT INTO `area` VALUES ('445322', '445300', '郁南县');
INSERT INTO `area` VALUES ('445381', '445300', '罗定市');
INSERT INTO `area` VALUES ('450000', '0', '广西');
INSERT INTO `area` VALUES ('450100', '450000', '南宁市');
INSERT INTO `area` VALUES ('450102', '450100', '兴宁区');
INSERT INTO `area` VALUES ('450103', '450100', '青秀区');
INSERT INTO `area` VALUES ('450105', '450100', '江南区');
INSERT INTO `area` VALUES ('450107', '450100', '西乡塘区');
INSERT INTO `area` VALUES ('450108', '450100', '良庆区');
INSERT INTO `area` VALUES ('450109', '450100', '邕宁区');
INSERT INTO `area` VALUES ('450110', '450100', '武鸣区');
INSERT INTO `area` VALUES ('450123', '450100', '隆安县');
INSERT INTO `area` VALUES ('450124', '450100', '马山县');
INSERT INTO `area` VALUES ('450125', '450100', '上林县');
INSERT INTO `area` VALUES ('450126', '450100', '宾阳县');
INSERT INTO `area` VALUES ('450127', '450100', '横县');
INSERT INTO `area` VALUES ('450200', '450000', '柳州市');
INSERT INTO `area` VALUES ('450202', '450200', '城中区');
INSERT INTO `area` VALUES ('450203', '450200', '鱼峰区');
INSERT INTO `area` VALUES ('450204', '450200', '柳南区');
INSERT INTO `area` VALUES ('450205', '450200', '柳北区');
INSERT INTO `area` VALUES ('450221', '450200', '柳江县');
INSERT INTO `area` VALUES ('450222', '450200', '柳城县');
INSERT INTO `area` VALUES ('450223', '450200', '鹿寨县');
INSERT INTO `area` VALUES ('450224', '450200', '融安县');
INSERT INTO `area` VALUES ('450225', '450200', '融水苗族自治县');
INSERT INTO `area` VALUES ('450226', '450200', '三江侗族自治县');
INSERT INTO `area` VALUES ('450300', '450000', '桂林市');
INSERT INTO `area` VALUES ('450302', '450300', '秀峰区');
INSERT INTO `area` VALUES ('450303', '450300', '叠彩区');
INSERT INTO `area` VALUES ('450304', '450300', '象山区');
INSERT INTO `area` VALUES ('450305', '450300', '七星区');
INSERT INTO `area` VALUES ('450311', '450300', '雁山区');
INSERT INTO `area` VALUES ('450312', '450300', '临桂区');
INSERT INTO `area` VALUES ('450321', '450300', '阳朔县');
INSERT INTO `area` VALUES ('450323', '450300', '灵川县');
INSERT INTO `area` VALUES ('450324', '450300', '全州县');
INSERT INTO `area` VALUES ('450325', '450300', '兴安县');
INSERT INTO `area` VALUES ('450326', '450300', '永福县');
INSERT INTO `area` VALUES ('450327', '450300', '灌阳县');
INSERT INTO `area` VALUES ('450328', '450300', '龙胜各族自治县');
INSERT INTO `area` VALUES ('450329', '450300', '资源县');
INSERT INTO `area` VALUES ('450330', '450300', '平乐县');
INSERT INTO `area` VALUES ('450331', '450300', '荔浦县');
INSERT INTO `area` VALUES ('450332', '450300', '恭城瑶族自治县');
INSERT INTO `area` VALUES ('450400', '450000', '梧州市');
INSERT INTO `area` VALUES ('450403', '450400', '万秀区');
INSERT INTO `area` VALUES ('450405', '450400', '长洲区');
INSERT INTO `area` VALUES ('450406', '450400', '龙圩区');
INSERT INTO `area` VALUES ('450421', '450400', '苍梧县');
INSERT INTO `area` VALUES ('450422', '450400', '藤县');
INSERT INTO `area` VALUES ('450423', '450400', '蒙山县');
INSERT INTO `area` VALUES ('450481', '450400', '岑溪市');
INSERT INTO `area` VALUES ('450500', '450000', '北海市');
INSERT INTO `area` VALUES ('450502', '450500', '海城区');
INSERT INTO `area` VALUES ('450503', '450500', '银海区');
INSERT INTO `area` VALUES ('450512', '450500', '铁山港区');
INSERT INTO `area` VALUES ('450521', '450500', '合浦县');
INSERT INTO `area` VALUES ('450600', '450000', '防城港市');
INSERT INTO `area` VALUES ('450602', '450600', '港口区');
INSERT INTO `area` VALUES ('450603', '450600', '防城区');
INSERT INTO `area` VALUES ('450621', '450600', '上思县');
INSERT INTO `area` VALUES ('450681', '450600', '东兴市');
INSERT INTO `area` VALUES ('450700', '450000', '钦州市');
INSERT INTO `area` VALUES ('450702', '450700', '钦南区');
INSERT INTO `area` VALUES ('450703', '450700', '钦北区');
INSERT INTO `area` VALUES ('450721', '450700', '灵山县');
INSERT INTO `area` VALUES ('450722', '450700', '浦北县');
INSERT INTO `area` VALUES ('450800', '450000', '贵港市');
INSERT INTO `area` VALUES ('450802', '450800', '港北区');
INSERT INTO `area` VALUES ('450803', '450800', '港南区');
INSERT INTO `area` VALUES ('450804', '450800', '覃塘区');
INSERT INTO `area` VALUES ('450821', '450800', '平南县');
INSERT INTO `area` VALUES ('450881', '450800', '桂平市');
INSERT INTO `area` VALUES ('450900', '450000', '玉林市');
INSERT INTO `area` VALUES ('450902', '450900', '玉州区');
INSERT INTO `area` VALUES ('450903', '450900', '福绵区');
INSERT INTO `area` VALUES ('450921', '450900', '容县');
INSERT INTO `area` VALUES ('450922', '450900', '陆川县');
INSERT INTO `area` VALUES ('450923', '450900', '博白县');
INSERT INTO `area` VALUES ('450924', '450900', '兴业县');
INSERT INTO `area` VALUES ('450981', '450900', '北流市');
INSERT INTO `area` VALUES ('451000', '450000', '百色市');
INSERT INTO `area` VALUES ('451002', '451000', '右江区');
INSERT INTO `area` VALUES ('451021', '451000', '田阳县');
INSERT INTO `area` VALUES ('451022', '451000', '田东县');
INSERT INTO `area` VALUES ('451023', '451000', '平果县');
INSERT INTO `area` VALUES ('451024', '451000', '德保县');
INSERT INTO `area` VALUES ('451026', '451000', '那坡县');
INSERT INTO `area` VALUES ('451027', '451000', '凌云县');
INSERT INTO `area` VALUES ('451028', '451000', '乐业县');
INSERT INTO `area` VALUES ('451029', '451000', '田林县');
INSERT INTO `area` VALUES ('451030', '451000', '西林县');
INSERT INTO `area` VALUES ('451031', '451000', '隆林各族自治县');
INSERT INTO `area` VALUES ('451081', '451000', '靖西市');
INSERT INTO `area` VALUES ('451100', '450000', '贺州市');
INSERT INTO `area` VALUES ('451102', '451100', '八步区');
INSERT INTO `area` VALUES ('451121', '451100', '昭平县');
INSERT INTO `area` VALUES ('451122', '451100', '钟山县');
INSERT INTO `area` VALUES ('451123', '451100', '富川瑶族自治县');
INSERT INTO `area` VALUES ('451200', '450000', '河池市');
INSERT INTO `area` VALUES ('451202', '451200', '金城江区');
INSERT INTO `area` VALUES ('451221', '451200', '南丹县');
INSERT INTO `area` VALUES ('451222', '451200', '天峨县');
INSERT INTO `area` VALUES ('451223', '451200', '凤山县');
INSERT INTO `area` VALUES ('451224', '451200', '东兰县');
INSERT INTO `area` VALUES ('451225', '451200', '罗城仫佬族自治县');
INSERT INTO `area` VALUES ('451226', '451200', '环江毛南族自治县');
INSERT INTO `area` VALUES ('451227', '451200', '巴马瑶族自治县');
INSERT INTO `area` VALUES ('451228', '451200', '都安瑶族自治县');
INSERT INTO `area` VALUES ('451229', '451200', '大化瑶族自治县');
INSERT INTO `area` VALUES ('451281', '451200', '宜州市');
INSERT INTO `area` VALUES ('451300', '450000', '来宾市');
INSERT INTO `area` VALUES ('451302', '451300', '兴宾区');
INSERT INTO `area` VALUES ('451321', '451300', '忻城县');
INSERT INTO `area` VALUES ('451322', '451300', '象州县');
INSERT INTO `area` VALUES ('451323', '451300', '武宣县');
INSERT INTO `area` VALUES ('451324', '451300', '金秀瑶族自治县');
INSERT INTO `area` VALUES ('451381', '451300', '合山市');
INSERT INTO `area` VALUES ('451400', '450000', '崇左市');
INSERT INTO `area` VALUES ('451402', '451400', '江州区');
INSERT INTO `area` VALUES ('451421', '451400', '扶绥县');
INSERT INTO `area` VALUES ('451422', '451400', '宁明县');
INSERT INTO `area` VALUES ('451423', '451400', '龙州县');
INSERT INTO `area` VALUES ('451424', '451400', '大新县');
INSERT INTO `area` VALUES ('451425', '451400', '天等县');
INSERT INTO `area` VALUES ('451481', '451400', '凭祥市');
INSERT INTO `area` VALUES ('460000', '0', '海南省');
INSERT INTO `area` VALUES ('460100', '460000', '海口市');
INSERT INTO `area` VALUES ('460105', '460100', '秀英区');
INSERT INTO `area` VALUES ('460106', '460100', '龙华区');
INSERT INTO `area` VALUES ('460107', '460100', '琼山区');
INSERT INTO `area` VALUES ('460108', '460100', '美兰区');
INSERT INTO `area` VALUES ('460200', '460000', '三亚市');
INSERT INTO `area` VALUES ('460202', '460200', '海棠区');
INSERT INTO `area` VALUES ('460203', '460200', '吉阳区');
INSERT INTO `area` VALUES ('460204', '460200', '天涯区');
INSERT INTO `area` VALUES ('460205', '460200', '崖州区');
INSERT INTO `area` VALUES ('460300', '460000', '三沙市');
INSERT INTO `area` VALUES ('460321', '460300', '西沙群岛');
INSERT INTO `area` VALUES ('460322', '460300', '南沙群岛');
INSERT INTO `area` VALUES ('460323', '460300', '中沙群岛的岛礁及其海域');
INSERT INTO `area` VALUES ('469001', '460000', '五指山市');
INSERT INTO `area` VALUES ('469002', '460000', '琼海市');
INSERT INTO `area` VALUES ('469003', '460000', '儋州市');
INSERT INTO `area` VALUES ('469005', '460000', '文昌市');
INSERT INTO `area` VALUES ('469006', '460000', '万宁市');
INSERT INTO `area` VALUES ('469007', '460000', '东方市');
INSERT INTO `area` VALUES ('469021', '460000', '定安县');
INSERT INTO `area` VALUES ('469022', '460000', '屯昌县');
INSERT INTO `area` VALUES ('469023', '460000', '澄迈县');
INSERT INTO `area` VALUES ('469024', '460000', '临高县');
INSERT INTO `area` VALUES ('469029', '460000', '保亭黎族苗族自治县');
INSERT INTO `area` VALUES ('469030', '460000', '白沙黎族自治县');
INSERT INTO `area` VALUES ('500000', '0', '重庆市');
INSERT INTO `area` VALUES ('500100', '500000', '重庆市');
INSERT INTO `area` VALUES ('500101', '500100', '万州区');
INSERT INTO `area` VALUES ('500102', '500100', '涪陵区');
INSERT INTO `area` VALUES ('500103', '500100', '渝中区');
INSERT INTO `area` VALUES ('500104', '500100', '大渡口区');
INSERT INTO `area` VALUES ('500105', '500100', '江北区');
INSERT INTO `area` VALUES ('500106', '500100', '沙坪坝区');
INSERT INTO `area` VALUES ('500107', '500100', '九龙坡区');
INSERT INTO `area` VALUES ('500108', '500100', '南岸区');
INSERT INTO `area` VALUES ('500109', '500100', '北碚区');
INSERT INTO `area` VALUES ('500110', '500100', '万盛区');
INSERT INTO `area` VALUES ('500111', '500100', '双桥区');
INSERT INTO `area` VALUES ('500112', '500100', '渝北区');
INSERT INTO `area` VALUES ('500113', '500100', '巴南区');
INSERT INTO `area` VALUES ('500114', '500100', '黔江区');
INSERT INTO `area` VALUES ('500115', '500100', '长寿区');
INSERT INTO `area` VALUES ('500116', '500100', '江津区');
INSERT INTO `area` VALUES ('500117', '500100', '合川区');
INSERT INTO `area` VALUES ('500118', '500100', '永川区');
INSERT INTO `area` VALUES ('500119', '500100', '南川区');
INSERT INTO `area` VALUES ('500120', '500100', '璧山区');
INSERT INTO `area` VALUES ('500151', '500100', '铜梁区');
INSERT INTO `area` VALUES ('500152', '500100', '潼南区');
INSERT INTO `area` VALUES ('500153', '500100', '荣昌区');
INSERT INTO `area` VALUES ('500228', '500100', '梁平县');
INSERT INTO `area` VALUES ('500229', '500100', '城口县');
INSERT INTO `area` VALUES ('500230', '500100', '丰都县');
INSERT INTO `area` VALUES ('500231', '500100', '垫江县');
INSERT INTO `area` VALUES ('500232', '500100', '武隆县');
INSERT INTO `area` VALUES ('500233', '500100', '忠县');
INSERT INTO `area` VALUES ('500234', '500100', '开县');
INSERT INTO `area` VALUES ('500235', '500100', '云阳县');
INSERT INTO `area` VALUES ('500236', '500100', '奉节县');
INSERT INTO `area` VALUES ('500237', '500100', '巫山县');
INSERT INTO `area` VALUES ('500238', '500100', '巫溪县');
INSERT INTO `area` VALUES ('500240', '500100', '石柱土家族自治县');
INSERT INTO `area` VALUES ('500241', '500100', '秀山土家族苗族自治县');
INSERT INTO `area` VALUES ('500242', '500100', '酉阳土家族苗族自治县');
INSERT INTO `area` VALUES ('500243', '500100', '彭水苗族土家族自治县');
INSERT INTO `area` VALUES ('510000', '0', '四川省');
INSERT INTO `area` VALUES ('510100', '510000', '成都市');
INSERT INTO `area` VALUES ('510104', '510100', '锦江区');
INSERT INTO `area` VALUES ('510105', '510100', '青羊区');
INSERT INTO `area` VALUES ('510106', '510100', '金牛区');
INSERT INTO `area` VALUES ('510107', '510100', '武侯区');
INSERT INTO `area` VALUES ('510108', '510100', '成华区');
INSERT INTO `area` VALUES ('510112', '510100', '龙泉驿区');
INSERT INTO `area` VALUES ('510113', '510100', '青白江区');
INSERT INTO `area` VALUES ('510114', '510100', '新都区');
INSERT INTO `area` VALUES ('510115', '510100', '温江区');
INSERT INTO `area` VALUES ('510121', '510100', '金堂县');
INSERT INTO `area` VALUES ('510122', '510100', '双流县');
INSERT INTO `area` VALUES ('510124', '510100', '郫县');
INSERT INTO `area` VALUES ('510129', '510100', '大邑县');
INSERT INTO `area` VALUES ('510131', '510100', '蒲江县');
INSERT INTO `area` VALUES ('510132', '510100', '新津县');
INSERT INTO `area` VALUES ('510181', '510100', '都江堰市');
INSERT INTO `area` VALUES ('510182', '510100', '彭州市');
INSERT INTO `area` VALUES ('510183', '510100', '邛崃市');
INSERT INTO `area` VALUES ('510184', '510100', '崇州市');
INSERT INTO `area` VALUES ('510300', '510000', '自贡市');
INSERT INTO `area` VALUES ('510302', '510300', '自流井区');
INSERT INTO `area` VALUES ('510303', '510300', '贡井区');
INSERT INTO `area` VALUES ('510304', '510300', '大安区');
INSERT INTO `area` VALUES ('510311', '510300', '沿滩区');
INSERT INTO `area` VALUES ('510321', '510300', '荣县');
INSERT INTO `area` VALUES ('510322', '510300', '富顺县');
INSERT INTO `area` VALUES ('510400', '510000', '攀枝花市');
INSERT INTO `area` VALUES ('510402', '510400', '东区');
INSERT INTO `area` VALUES ('510403', '510400', '西区');
INSERT INTO `area` VALUES ('510411', '510400', '仁和区');
INSERT INTO `area` VALUES ('510421', '510400', '米易县');
INSERT INTO `area` VALUES ('510422', '510400', '盐边县');
INSERT INTO `area` VALUES ('510500', '510000', '泸州市');
INSERT INTO `area` VALUES ('510502', '510500', '江阳区');
INSERT INTO `area` VALUES ('510503', '510500', '纳溪区');
INSERT INTO `area` VALUES ('510504', '510500', '龙马潭区');
INSERT INTO `area` VALUES ('510521', '510500', '泸县');
INSERT INTO `area` VALUES ('510522', '510500', '合江县');
INSERT INTO `area` VALUES ('510524', '510500', '叙永县');
INSERT INTO `area` VALUES ('510525', '510500', '古蔺县');
INSERT INTO `area` VALUES ('510600', '510000', '德阳市');
INSERT INTO `area` VALUES ('510603', '510600', '旌阳区');
INSERT INTO `area` VALUES ('510623', '510600', '中江县');
INSERT INTO `area` VALUES ('510626', '510600', '罗江县');
INSERT INTO `area` VALUES ('510681', '510600', '广汉市');
INSERT INTO `area` VALUES ('510682', '510600', '什邡市');
INSERT INTO `area` VALUES ('510683', '510600', '绵竹市');
INSERT INTO `area` VALUES ('510700', '510000', '绵阳市');
INSERT INTO `area` VALUES ('510703', '510700', '涪城区');
INSERT INTO `area` VALUES ('510704', '510700', '游仙区');
INSERT INTO `area` VALUES ('510722', '510700', '三台县');
INSERT INTO `area` VALUES ('510723', '510700', '盐亭县');
INSERT INTO `area` VALUES ('510724', '510700', '安县');
INSERT INTO `area` VALUES ('510725', '510700', '梓潼县');
INSERT INTO `area` VALUES ('510726', '510700', '北川羌族自治县');
INSERT INTO `area` VALUES ('510727', '510700', '平武县');
INSERT INTO `area` VALUES ('510781', '510700', '江油市');
INSERT INTO `area` VALUES ('510800', '510000', '广元市');
INSERT INTO `area` VALUES ('510802', '510800', '利州区');
INSERT INTO `area` VALUES ('510811', '510800', '昭化区');
INSERT INTO `area` VALUES ('510812', '510800', '朝天区');
INSERT INTO `area` VALUES ('510821', '510800', '旺苍县');
INSERT INTO `area` VALUES ('510822', '510800', '青川县');
INSERT INTO `area` VALUES ('510823', '510800', '剑阁县');
INSERT INTO `area` VALUES ('510824', '510800', '苍溪县');
INSERT INTO `area` VALUES ('510900', '510000', '遂宁市');
INSERT INTO `area` VALUES ('510903', '510900', '船山区');
INSERT INTO `area` VALUES ('510904', '510900', '安居区');
INSERT INTO `area` VALUES ('510921', '510900', '蓬溪县');
INSERT INTO `area` VALUES ('510922', '510900', '射洪县');
INSERT INTO `area` VALUES ('510923', '510900', '大英县');
INSERT INTO `area` VALUES ('511000', '510000', '内江市');
INSERT INTO `area` VALUES ('511002', '511000', '市中区');
INSERT INTO `area` VALUES ('511011', '511000', '东兴区');
INSERT INTO `area` VALUES ('511024', '511000', '威远县');
INSERT INTO `area` VALUES ('511025', '511000', '资中县');
INSERT INTO `area` VALUES ('511028', '511000', '隆昌县');
INSERT INTO `area` VALUES ('511100', '510000', '乐山市');
INSERT INTO `area` VALUES ('511102', '511100', '市中区');
INSERT INTO `area` VALUES ('511111', '511100', '沙湾区');
INSERT INTO `area` VALUES ('511112', '511100', '五通桥区');
INSERT INTO `area` VALUES ('511113', '511100', '金口河区');
INSERT INTO `area` VALUES ('511123', '511100', '犍为县');
INSERT INTO `area` VALUES ('511124', '511100', '井研县');
INSERT INTO `area` VALUES ('511126', '511100', '夹江县');
INSERT INTO `area` VALUES ('511129', '511100', '沐川县');
INSERT INTO `area` VALUES ('511132', '511100', '峨边彝族自治县');
INSERT INTO `area` VALUES ('511133', '511100', '马边彝族自治县');
INSERT INTO `area` VALUES ('511181', '511100', '峨眉山市');
INSERT INTO `area` VALUES ('511300', '510000', '南充市');
INSERT INTO `area` VALUES ('511302', '511300', '顺庆区');
INSERT INTO `area` VALUES ('511303', '511300', '高坪区');
INSERT INTO `area` VALUES ('511304', '511300', '嘉陵区');
INSERT INTO `area` VALUES ('511321', '511300', '南部县');
INSERT INTO `area` VALUES ('511322', '511300', '营山县');
INSERT INTO `area` VALUES ('511323', '511300', '蓬安县');
INSERT INTO `area` VALUES ('511324', '511300', '仪陇县');
INSERT INTO `area` VALUES ('511325', '511300', '西充县');
INSERT INTO `area` VALUES ('511381', '511300', '阆中市');
INSERT INTO `area` VALUES ('511400', '510000', '眉山市');
INSERT INTO `area` VALUES ('511402', '511400', '东坡区');
INSERT INTO `area` VALUES ('511403', '511400', '彭山区');
INSERT INTO `area` VALUES ('511421', '511400', '仁寿县');
INSERT INTO `area` VALUES ('511423', '511400', '洪雅县');
INSERT INTO `area` VALUES ('511424', '511400', '丹棱县');
INSERT INTO `area` VALUES ('511425', '511400', '青神县');
INSERT INTO `area` VALUES ('511500', '510000', '宜宾市');
INSERT INTO `area` VALUES ('511502', '511500', '翠屏区');
INSERT INTO `area` VALUES ('511503', '511500', '南溪区');
INSERT INTO `area` VALUES ('511521', '511500', '宜宾县');
INSERT INTO `area` VALUES ('511523', '511500', '江安县');
INSERT INTO `area` VALUES ('511524', '511500', '长宁县');
INSERT INTO `area` VALUES ('511525', '511500', '高县');
INSERT INTO `area` VALUES ('511526', '511500', '珙县');
INSERT INTO `area` VALUES ('511527', '511500', '筠连县');
INSERT INTO `area` VALUES ('511528', '511500', '兴文县');
INSERT INTO `area` VALUES ('511529', '511500', '屏山县');
INSERT INTO `area` VALUES ('511600', '510000', '广安市');
INSERT INTO `area` VALUES ('511602', '511600', '广安区');
INSERT INTO `area` VALUES ('511603', '511600', '前锋区');
INSERT INTO `area` VALUES ('511621', '511600', '岳池县');
INSERT INTO `area` VALUES ('511622', '511600', '武胜县');
INSERT INTO `area` VALUES ('511623', '511600', '邻水县');
INSERT INTO `area` VALUES ('511681', '511600', '华蓥市');
INSERT INTO `area` VALUES ('511700', '510000', '达州市');
INSERT INTO `area` VALUES ('511702', '511700', '通川区');
INSERT INTO `area` VALUES ('511703', '511700', '达川区');
INSERT INTO `area` VALUES ('511722', '511700', '宣汉县');
INSERT INTO `area` VALUES ('511723', '511700', '开江县');
INSERT INTO `area` VALUES ('511724', '511700', '大竹县');
INSERT INTO `area` VALUES ('511725', '511700', '渠县');
INSERT INTO `area` VALUES ('511781', '511700', '万源市');
INSERT INTO `area` VALUES ('511800', '510000', '雅安市');
INSERT INTO `area` VALUES ('511802', '511800', '雨城区');
INSERT INTO `area` VALUES ('511803', '511800', '名山区');
INSERT INTO `area` VALUES ('511822', '511800', '荥经县');
INSERT INTO `area` VALUES ('511823', '511800', '汉源县');
INSERT INTO `area` VALUES ('511824', '511800', '石棉县');
INSERT INTO `area` VALUES ('511825', '511800', '天全县');
INSERT INTO `area` VALUES ('511826', '511800', '芦山县');
INSERT INTO `area` VALUES ('511827', '511800', '宝兴县');
INSERT INTO `area` VALUES ('511900', '510000', '巴中市');
INSERT INTO `area` VALUES ('511902', '511900', '巴州区');
INSERT INTO `area` VALUES ('511903', '511900', '恩阳区');
INSERT INTO `area` VALUES ('511921', '511900', '通江县');
INSERT INTO `area` VALUES ('511922', '511900', '南江县');
INSERT INTO `area` VALUES ('511923', '511900', '平昌县');
INSERT INTO `area` VALUES ('512000', '510000', '资阳市');
INSERT INTO `area` VALUES ('512002', '512000', '雁江区');
INSERT INTO `area` VALUES ('512021', '512000', '安岳县');
INSERT INTO `area` VALUES ('512022', '512000', '乐至县');
INSERT INTO `area` VALUES ('512081', '512000', '简阳市');
INSERT INTO `area` VALUES ('513200', '510000', '阿坝藏族羌族自治州');
INSERT INTO `area` VALUES ('513221', '513200', '汶川县');
INSERT INTO `area` VALUES ('513222', '513200', '理县');
INSERT INTO `area` VALUES ('513223', '513200', '茂县');
INSERT INTO `area` VALUES ('513224', '513200', '松潘县');
INSERT INTO `area` VALUES ('513225', '513200', '九寨沟县');
INSERT INTO `area` VALUES ('513226', '513200', '金川县');
INSERT INTO `area` VALUES ('513227', '513200', '小金县');
INSERT INTO `area` VALUES ('513228', '513200', '黑水县');
INSERT INTO `area` VALUES ('513229', '513200', '马尔康县');
INSERT INTO `area` VALUES ('513230', '513200', '壤塘县');
INSERT INTO `area` VALUES ('513231', '513200', '阿坝县');
INSERT INTO `area` VALUES ('513232', '513200', '若尔盖县');
INSERT INTO `area` VALUES ('513233', '513200', '红原县');
INSERT INTO `area` VALUES ('513300', '510000', '甘孜藏族自治州');
INSERT INTO `area` VALUES ('513301', '513300', '康定市');
INSERT INTO `area` VALUES ('513322', '513300', '泸定县');
INSERT INTO `area` VALUES ('513323', '513300', '丹巴县');
INSERT INTO `area` VALUES ('513324', '513300', '九龙县');
INSERT INTO `area` VALUES ('513325', '513300', '雅江县');
INSERT INTO `area` VALUES ('513326', '513300', '道孚县');
INSERT INTO `area` VALUES ('513327', '513300', '炉霍县');
INSERT INTO `area` VALUES ('513328', '513300', '甘孜县');
INSERT INTO `area` VALUES ('513329', '513300', '新龙县');
INSERT INTO `area` VALUES ('513330', '513300', '德格县');
INSERT INTO `area` VALUES ('513331', '513300', '白玉县');
INSERT INTO `area` VALUES ('513332', '513300', '石渠县');
INSERT INTO `area` VALUES ('513333', '513300', '色达县');
INSERT INTO `area` VALUES ('513334', '513300', '理塘县');
INSERT INTO `area` VALUES ('513335', '513300', '巴塘县');
INSERT INTO `area` VALUES ('513336', '513300', '乡城县');
INSERT INTO `area` VALUES ('513337', '513300', '稻城县');
INSERT INTO `area` VALUES ('513338', '513300', '得荣县');
INSERT INTO `area` VALUES ('513400', '510000', '凉山彝族自治州');
INSERT INTO `area` VALUES ('513401', '513400', '西昌市');
INSERT INTO `area` VALUES ('513422', '513400', '木里藏族自治县');
INSERT INTO `area` VALUES ('513423', '513400', '盐源县');
INSERT INTO `area` VALUES ('513424', '513400', '德昌县');
INSERT INTO `area` VALUES ('513425', '513400', '会理县');
INSERT INTO `area` VALUES ('513426', '513400', '会东县');
INSERT INTO `area` VALUES ('513427', '513400', '宁南县');
INSERT INTO `area` VALUES ('513428', '513400', '普格县');
INSERT INTO `area` VALUES ('513429', '513400', '布拖县');
INSERT INTO `area` VALUES ('513430', '513400', '金阳县');
INSERT INTO `area` VALUES ('513431', '513400', '昭觉县');
INSERT INTO `area` VALUES ('513432', '513400', '喜德县');
INSERT INTO `area` VALUES ('513433', '513400', '冕宁县');
INSERT INTO `area` VALUES ('513434', '513400', '越西县');
INSERT INTO `area` VALUES ('513435', '513400', '甘洛县');
INSERT INTO `area` VALUES ('513436', '513400', '美姑县');
INSERT INTO `area` VALUES ('513437', '513400', '雷波县');
INSERT INTO `area` VALUES ('520000', '0', '贵州省');
INSERT INTO `area` VALUES ('520100', '520000', '贵阳市');
INSERT INTO `area` VALUES ('520102', '520100', '南明区');
INSERT INTO `area` VALUES ('520103', '520100', '云岩区');
INSERT INTO `area` VALUES ('520111', '520100', '花溪区');
INSERT INTO `area` VALUES ('520112', '520100', '乌当区');
INSERT INTO `area` VALUES ('520113', '520100', '白云区');
INSERT INTO `area` VALUES ('520115', '520100', '观山湖区');
INSERT INTO `area` VALUES ('520121', '520100', '开阳县');
INSERT INTO `area` VALUES ('520122', '520100', '息烽县');
INSERT INTO `area` VALUES ('520123', '520100', '修文县');
INSERT INTO `area` VALUES ('520181', '520100', '清镇市');
INSERT INTO `area` VALUES ('520200', '520000', '六盘水市');
INSERT INTO `area` VALUES ('520201', '520200', '钟山区');
INSERT INTO `area` VALUES ('520203', '520200', '六枝特区');
INSERT INTO `area` VALUES ('520221', '520200', '水城县');
INSERT INTO `area` VALUES ('520222', '520200', '盘县');
INSERT INTO `area` VALUES ('520300', '520000', '遵义市');
INSERT INTO `area` VALUES ('520302', '520300', '红花岗区');
INSERT INTO `area` VALUES ('520303', '520300', '汇川区');
INSERT INTO `area` VALUES ('520321', '520300', '遵义县');
INSERT INTO `area` VALUES ('520322', '520300', '桐梓县');
INSERT INTO `area` VALUES ('520323', '520300', '绥阳县');
INSERT INTO `area` VALUES ('520324', '520300', '正安县');
INSERT INTO `area` VALUES ('520325', '520300', '道真仡佬族苗族自治县');
INSERT INTO `area` VALUES ('520326', '520300', '务川仡佬族苗族自治县');
INSERT INTO `area` VALUES ('520327', '520300', '凤冈县');
INSERT INTO `area` VALUES ('520328', '520300', '湄潭县');
INSERT INTO `area` VALUES ('520329', '520300', '余庆县');
INSERT INTO `area` VALUES ('520330', '520300', '习水县');
INSERT INTO `area` VALUES ('520381', '520300', '赤水市');
INSERT INTO `area` VALUES ('520382', '520300', '仁怀市');
INSERT INTO `area` VALUES ('520400', '520000', '安顺市');
INSERT INTO `area` VALUES ('520402', '520400', '西秀区');
INSERT INTO `area` VALUES ('520403', '520400', '平坝区');
INSERT INTO `area` VALUES ('520422', '520400', '普定县');
INSERT INTO `area` VALUES ('520423', '520400', '镇宁布依族苗族自治县');
INSERT INTO `area` VALUES ('520424', '520400', '关岭布依族苗族自治县');
INSERT INTO `area` VALUES ('520425', '520400', '紫云苗族布依族自治县');
INSERT INTO `area` VALUES ('520500', '520000', '毕节市');
INSERT INTO `area` VALUES ('520502', '520500', '七星关区');
INSERT INTO `area` VALUES ('520521', '520500', '大方县');
INSERT INTO `area` VALUES ('520522', '520500', '黔西县');
INSERT INTO `area` VALUES ('520523', '520500', '金沙县');
INSERT INTO `area` VALUES ('520524', '520500', '织金县');
INSERT INTO `area` VALUES ('520525', '520500', '纳雍县');
INSERT INTO `area` VALUES ('520526', '520500', '威宁彝族回族苗族自治县');
INSERT INTO `area` VALUES ('520527', '520500', '赫章县');
INSERT INTO `area` VALUES ('520600', '520000', '铜仁市');
INSERT INTO `area` VALUES ('520602', '520600', '碧江区');
INSERT INTO `area` VALUES ('520603', '520600', '万山区');
INSERT INTO `area` VALUES ('520621', '520600', '江口县');
INSERT INTO `area` VALUES ('520622', '520600', '玉屏侗族自治县');
INSERT INTO `area` VALUES ('520623', '520600', '石阡县');
INSERT INTO `area` VALUES ('520624', '520600', '思南县');
INSERT INTO `area` VALUES ('520625', '520600', '印江土家族苗族自治县');
INSERT INTO `area` VALUES ('520626', '520600', '德江县');
INSERT INTO `area` VALUES ('520627', '520600', '沿河土家族自治县');
INSERT INTO `area` VALUES ('520628', '520600', '松桃苗族自治县');
INSERT INTO `area` VALUES ('522300', '520000', '黔西南布依族苗族自治州');
INSERT INTO `area` VALUES ('522301', '522300', '兴义市');
INSERT INTO `area` VALUES ('522322', '522300', '兴仁县');
INSERT INTO `area` VALUES ('522323', '522300', '普安县');
INSERT INTO `area` VALUES ('522324', '522300', '晴隆县');
INSERT INTO `area` VALUES ('522325', '522300', '贞丰县');
INSERT INTO `area` VALUES ('522326', '522300', '望谟县');
INSERT INTO `area` VALUES ('522327', '522300', '册亨县');
INSERT INTO `area` VALUES ('522328', '522300', '安龙县');
INSERT INTO `area` VALUES ('522600', '520000', '黔东南苗族侗族自治州');
INSERT INTO `area` VALUES ('522601', '522600', '凯里市');
INSERT INTO `area` VALUES ('522622', '522600', '黄平县');
INSERT INTO `area` VALUES ('522623', '522600', '施秉县');
INSERT INTO `area` VALUES ('522624', '522600', '三穗县');
INSERT INTO `area` VALUES ('522625', '522600', '镇远县');
INSERT INTO `area` VALUES ('522626', '522600', '岑巩县');
INSERT INTO `area` VALUES ('522627', '522600', '天柱县');
INSERT INTO `area` VALUES ('522628', '522600', '锦屏县');
INSERT INTO `area` VALUES ('522629', '522600', '剑河县');
INSERT INTO `area` VALUES ('522630', '522600', '台江县');
INSERT INTO `area` VALUES ('522631', '522600', '黎平县');
INSERT INTO `area` VALUES ('522632', '522600', '榕江县');
INSERT INTO `area` VALUES ('522633', '522600', '从江县');
INSERT INTO `area` VALUES ('522634', '522600', '雷山县');
INSERT INTO `area` VALUES ('522635', '522600', '麻江县');
INSERT INTO `area` VALUES ('522636', '522600', '丹寨县');
INSERT INTO `area` VALUES ('522700', '520000', '黔南布依族苗族自治州');
INSERT INTO `area` VALUES ('522701', '522700', '都匀市');
INSERT INTO `area` VALUES ('522702', '522700', '福泉市');
INSERT INTO `area` VALUES ('522722', '522700', '荔波县');
INSERT INTO `area` VALUES ('522723', '522700', '贵定县');
INSERT INTO `area` VALUES ('522725', '522700', '瓮安县');
INSERT INTO `area` VALUES ('522726', '522700', '独山县');
INSERT INTO `area` VALUES ('522727', '522700', '平塘县');
INSERT INTO `area` VALUES ('522728', '522700', '罗甸县');
INSERT INTO `area` VALUES ('522729', '522700', '长顺县');
INSERT INTO `area` VALUES ('522730', '522700', '龙里县');
INSERT INTO `area` VALUES ('522731', '522700', '惠水县');
INSERT INTO `area` VALUES ('522732', '522700', '三都水族自治县');
INSERT INTO `area` VALUES ('530000', '0', '云南省');
INSERT INTO `area` VALUES ('530100', '530000', '昆明市');
INSERT INTO `area` VALUES ('530102', '530100', '五华区');
INSERT INTO `area` VALUES ('530103', '530100', '盘龙区');
INSERT INTO `area` VALUES ('530111', '530100', '官渡区');
INSERT INTO `area` VALUES ('530112', '530100', '西山区');
INSERT INTO `area` VALUES ('530113', '530100', '东川区');
INSERT INTO `area` VALUES ('530114', '530100', '呈贡区');
INSERT INTO `area` VALUES ('530122', '530100', '晋宁县');
INSERT INTO `area` VALUES ('530124', '530100', '富民县');
INSERT INTO `area` VALUES ('530125', '530100', '宜良县');
INSERT INTO `area` VALUES ('530126', '530100', '石林彝族自治县');
INSERT INTO `area` VALUES ('530127', '530100', '嵩明县');
INSERT INTO `area` VALUES ('530128', '530100', '禄劝彝族苗族自治县');
INSERT INTO `area` VALUES ('530129', '530100', '寻甸回族彝族自治县');
INSERT INTO `area` VALUES ('530181', '530100', '安宁市');
INSERT INTO `area` VALUES ('530300', '530000', '曲靖市');
INSERT INTO `area` VALUES ('530302', '530300', '麒麟区');
INSERT INTO `area` VALUES ('530321', '530300', '马龙县');
INSERT INTO `area` VALUES ('530322', '530300', '陆良县');
INSERT INTO `area` VALUES ('530323', '530300', '师宗县');
INSERT INTO `area` VALUES ('530324', '530300', '罗平县');
INSERT INTO `area` VALUES ('530325', '530300', '富源县');
INSERT INTO `area` VALUES ('530326', '530300', '会泽县');
INSERT INTO `area` VALUES ('530328', '530300', '沾益县');
INSERT INTO `area` VALUES ('530381', '530300', '宣威市');
INSERT INTO `area` VALUES ('530400', '530000', '玉溪市');
INSERT INTO `area` VALUES ('530402', '530400', '红塔区');
INSERT INTO `area` VALUES ('530421', '530400', '江川县');
INSERT INTO `area` VALUES ('530422', '530400', '澄江县');
INSERT INTO `area` VALUES ('530423', '530400', '通海县');
INSERT INTO `area` VALUES ('530424', '530400', '华宁县');
INSERT INTO `area` VALUES ('530425', '530400', '易门县');
INSERT INTO `area` VALUES ('530426', '530400', '峨山彝族自治县');
INSERT INTO `area` VALUES ('530427', '530400', '新平彝族傣族自治县');
INSERT INTO `area` VALUES ('530428', '530400', '元江哈尼族彝族傣族自治县');
INSERT INTO `area` VALUES ('530500', '530000', '保山市');
INSERT INTO `area` VALUES ('530502', '530500', '隆阳区');
INSERT INTO `area` VALUES ('530521', '530500', '施甸县');
INSERT INTO `area` VALUES ('530523', '530500', '龙陵县');
INSERT INTO `area` VALUES ('530524', '530500', '昌宁县');
INSERT INTO `area` VALUES ('530581', '530500', '腾冲市');
INSERT INTO `area` VALUES ('530600', '530000', '昭通市');
INSERT INTO `area` VALUES ('530602', '530600', '昭阳区');
INSERT INTO `area` VALUES ('530621', '530600', '鲁甸县');
INSERT INTO `area` VALUES ('530622', '530600', '巧家县');
INSERT INTO `area` VALUES ('530623', '530600', '盐津县');
INSERT INTO `area` VALUES ('530624', '530600', '大关县');
INSERT INTO `area` VALUES ('530625', '530600', '永善县');
INSERT INTO `area` VALUES ('530626', '530600', '绥江县');
INSERT INTO `area` VALUES ('530627', '530600', '镇雄县');
INSERT INTO `area` VALUES ('530628', '530600', '彝良县');
INSERT INTO `area` VALUES ('530629', '530600', '威信县');
INSERT INTO `area` VALUES ('530630', '530600', '水富县');
INSERT INTO `area` VALUES ('530700', '530000', '丽江市');
INSERT INTO `area` VALUES ('530702', '530700', '古城区');
INSERT INTO `area` VALUES ('530721', '530700', '玉龙纳西族自治县');
INSERT INTO `area` VALUES ('530722', '530700', '永胜县');
INSERT INTO `area` VALUES ('530723', '530700', '华坪县');
INSERT INTO `area` VALUES ('530724', '530700', '宁蒗彝族自治县');
INSERT INTO `area` VALUES ('530800', '530000', '普洱市');
INSERT INTO `area` VALUES ('530802', '530800', '思茅区');
INSERT INTO `area` VALUES ('530821', '530800', '宁洱哈尼族彝族自治县');
INSERT INTO `area` VALUES ('530822', '530800', '墨江哈尼族自治县');
INSERT INTO `area` VALUES ('530823', '530800', '景东彝族自治县');
INSERT INTO `area` VALUES ('530824', '530800', '景谷傣族彝族自治县');
INSERT INTO `area` VALUES ('530825', '530800', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `area` VALUES ('530826', '530800', '江城哈尼族彝族自治县');
INSERT INTO `area` VALUES ('530827', '530800', '孟连傣族拉祜族佤族自治县');
INSERT INTO `area` VALUES ('530828', '530800', '澜沧拉祜族自治县');
INSERT INTO `area` VALUES ('530829', '530800', '西盟佤族自治县');
INSERT INTO `area` VALUES ('530900', '530000', '临沧市');
INSERT INTO `area` VALUES ('530902', '530900', '临翔区');
INSERT INTO `area` VALUES ('530921', '530900', '凤庆县');
INSERT INTO `area` VALUES ('530922', '530900', '云县');
INSERT INTO `area` VALUES ('530923', '530900', '永德县');
INSERT INTO `area` VALUES ('530924', '530900', '镇康县');
INSERT INTO `area` VALUES ('530925', '530900', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `area` VALUES ('530926', '530900', '耿马傣族佤族自治县');
INSERT INTO `area` VALUES ('530927', '530900', '沧源佤族自治县');
INSERT INTO `area` VALUES ('532300', '530000', '楚雄彝族自治州');
INSERT INTO `area` VALUES ('532301', '532300', '楚雄市');
INSERT INTO `area` VALUES ('532322', '532300', '双柏县');
INSERT INTO `area` VALUES ('532323', '532300', '牟定县');
INSERT INTO `area` VALUES ('532324', '532300', '南华县');
INSERT INTO `area` VALUES ('532325', '532300', '姚安县');
INSERT INTO `area` VALUES ('532326', '532300', '大姚县');
INSERT INTO `area` VALUES ('532327', '532300', '永仁县');
INSERT INTO `area` VALUES ('532328', '532300', '元谋县');
INSERT INTO `area` VALUES ('532329', '532300', '武定县');
INSERT INTO `area` VALUES ('532331', '532300', '禄丰县');
INSERT INTO `area` VALUES ('532500', '530000', '红河哈尼族彝族自治州');
INSERT INTO `area` VALUES ('532501', '532500', '个旧市');
INSERT INTO `area` VALUES ('532502', '532500', '开远市');
INSERT INTO `area` VALUES ('532503', '532500', '蒙自市');
INSERT INTO `area` VALUES ('532504', '532500', '弥勒市');
INSERT INTO `area` VALUES ('532523', '532500', '屏边苗族自治县');
INSERT INTO `area` VALUES ('532524', '532500', '建水县');
INSERT INTO `area` VALUES ('532525', '532500', '石屏县');
INSERT INTO `area` VALUES ('532527', '532500', '泸西县');
INSERT INTO `area` VALUES ('532528', '532500', '元阳县');
INSERT INTO `area` VALUES ('532529', '532500', '红河县');
INSERT INTO `area` VALUES ('532530', '532500', '金平苗族瑶族傣族自治县');
INSERT INTO `area` VALUES ('532531', '532500', '绿春县');
INSERT INTO `area` VALUES ('532532', '532500', '河口瑶族自治县');
INSERT INTO `area` VALUES ('532600', '530000', '文山壮族苗族自治州');
INSERT INTO `area` VALUES ('532601', '532600', '文山市');
INSERT INTO `area` VALUES ('532622', '532600', '砚山县');
INSERT INTO `area` VALUES ('532623', '532600', '西畴县');
INSERT INTO `area` VALUES ('532624', '532600', '麻栗坡县');
INSERT INTO `area` VALUES ('532625', '532600', '马关县');
INSERT INTO `area` VALUES ('532626', '532600', '丘北县');
INSERT INTO `area` VALUES ('532627', '532600', '广南县');
INSERT INTO `area` VALUES ('532628', '532600', '富宁县');
INSERT INTO `area` VALUES ('532800', '530000', '西双版纳傣族自治州');
INSERT INTO `area` VALUES ('532801', '532800', '景洪市');
INSERT INTO `area` VALUES ('532822', '532800', '勐海县');
INSERT INTO `area` VALUES ('532823', '532800', '勐腊县');
INSERT INTO `area` VALUES ('532900', '530000', '大理白族自治州');
INSERT INTO `area` VALUES ('532901', '532900', '大理市');
INSERT INTO `area` VALUES ('532922', '532900', '漾濞彝族自治县');
INSERT INTO `area` VALUES ('532923', '532900', '祥云县');
INSERT INTO `area` VALUES ('532924', '532900', '宾川县');
INSERT INTO `area` VALUES ('532925', '532900', '弥渡县');
INSERT INTO `area` VALUES ('532926', '532900', '南涧彝族自治县');
INSERT INTO `area` VALUES ('532927', '532900', '巍山彝族回族自治县');
INSERT INTO `area` VALUES ('532928', '532900', '永平县');
INSERT INTO `area` VALUES ('532929', '532900', '云龙县');
INSERT INTO `area` VALUES ('532930', '532900', '洱源县');
INSERT INTO `area` VALUES ('532931', '532900', '剑川县');
INSERT INTO `area` VALUES ('532932', '532900', '鹤庆县');
INSERT INTO `area` VALUES ('533100', '530000', '德宏傣族景颇族自治州');
INSERT INTO `area` VALUES ('533102', '533100', '瑞丽市');
INSERT INTO `area` VALUES ('533103', '533100', '芒市');
INSERT INTO `area` VALUES ('533122', '533100', '梁河县');
INSERT INTO `area` VALUES ('533123', '533100', '盈江县');
INSERT INTO `area` VALUES ('533124', '533100', '陇川县');
INSERT INTO `area` VALUES ('533300', '530000', '怒江傈僳族自治州');
INSERT INTO `area` VALUES ('533321', '533300', '泸水县');
INSERT INTO `area` VALUES ('533323', '533300', '福贡县');
INSERT INTO `area` VALUES ('533324', '533300', '贡山独龙族怒族自治县');
INSERT INTO `area` VALUES ('533325', '533300', '兰坪白族普米族自治县');
INSERT INTO `area` VALUES ('533400', '530000', '迪庆藏族自治州');
INSERT INTO `area` VALUES ('533401', '533400', '香格里拉市');
INSERT INTO `area` VALUES ('533422', '533400', '德钦县');
INSERT INTO `area` VALUES ('533423', '533400', '维西傈僳族自治县');
INSERT INTO `area` VALUES ('540000', '0', '西藏');
INSERT INTO `area` VALUES ('540100', '540000', '拉萨市');
INSERT INTO `area` VALUES ('540102', '540100', '城关区');
INSERT INTO `area` VALUES ('540121', '540100', '林周县');
INSERT INTO `area` VALUES ('540122', '540100', '当雄县');
INSERT INTO `area` VALUES ('540123', '540100', '尼木县');
INSERT INTO `area` VALUES ('540124', '540100', '曲水县');
INSERT INTO `area` VALUES ('540125', '540100', '堆龙德庆县');
INSERT INTO `area` VALUES ('540126', '540100', '达孜县');
INSERT INTO `area` VALUES ('540127', '540100', '墨竹工卡县');
INSERT INTO `area` VALUES ('540200', '540000', '日喀则市');
INSERT INTO `area` VALUES ('540202', '540200', '桑珠孜区');
INSERT INTO `area` VALUES ('540221', '540200', '南木林县');
INSERT INTO `area` VALUES ('540222', '540200', '江孜县');
INSERT INTO `area` VALUES ('540223', '540200', '定日县');
INSERT INTO `area` VALUES ('540224', '540200', '萨迦县');
INSERT INTO `area` VALUES ('540225', '540200', '拉孜县');
INSERT INTO `area` VALUES ('540226', '540200', '昂仁县');
INSERT INTO `area` VALUES ('540227', '540200', '谢通门县');
INSERT INTO `area` VALUES ('540228', '540200', '白朗县');
INSERT INTO `area` VALUES ('540229', '540200', '仁布县');
INSERT INTO `area` VALUES ('540230', '540200', '康马县');
INSERT INTO `area` VALUES ('540231', '540200', '定结县');
INSERT INTO `area` VALUES ('540232', '540200', '仲巴县');
INSERT INTO `area` VALUES ('540233', '540200', '亚东县');
INSERT INTO `area` VALUES ('540234', '540200', '吉隆县');
INSERT INTO `area` VALUES ('540235', '540200', '聂拉木县');
INSERT INTO `area` VALUES ('540236', '540200', '萨嘎县');
INSERT INTO `area` VALUES ('540237', '540200', '岗巴县');
INSERT INTO `area` VALUES ('540300', '540000', '昌都市');
INSERT INTO `area` VALUES ('540302', '540300', '卡若区');
INSERT INTO `area` VALUES ('540321', '540300', '江达县');
INSERT INTO `area` VALUES ('540322', '540300', '贡觉县');
INSERT INTO `area` VALUES ('540323', '540300', '类乌齐县');
INSERT INTO `area` VALUES ('540324', '540300', '丁青县');
INSERT INTO `area` VALUES ('540325', '540300', '察雅县');
INSERT INTO `area` VALUES ('540326', '540300', '八宿县');
INSERT INTO `area` VALUES ('540327', '540300', '左贡县');
INSERT INTO `area` VALUES ('540328', '540300', '芒康县');
INSERT INTO `area` VALUES ('540329', '540300', '洛隆县');
INSERT INTO `area` VALUES ('540330', '540300', '边坝县');
INSERT INTO `area` VALUES ('540400', '540000', '林芝市');
INSERT INTO `area` VALUES ('540402', '540400', '巴宜区');
INSERT INTO `area` VALUES ('540421', '540400', '工布江达县');
INSERT INTO `area` VALUES ('540422', '540400', '米林县');
INSERT INTO `area` VALUES ('540423', '540400', '墨脱县');
INSERT INTO `area` VALUES ('540424', '540400', '波密县');
INSERT INTO `area` VALUES ('540425', '540400', '察隅县');
INSERT INTO `area` VALUES ('540426', '540400', '朗县');
INSERT INTO `area` VALUES ('542200', '540000', '山南地区');
INSERT INTO `area` VALUES ('542221', '542200', '乃东县');
INSERT INTO `area` VALUES ('542222', '542200', '扎囊县');
INSERT INTO `area` VALUES ('542223', '542200', '贡嘎县');
INSERT INTO `area` VALUES ('542224', '542200', '桑日县');
INSERT INTO `area` VALUES ('542225', '542200', '琼结县');
INSERT INTO `area` VALUES ('542226', '542200', '曲松县');
INSERT INTO `area` VALUES ('542227', '542200', '措美县');
INSERT INTO `area` VALUES ('542228', '542200', '洛扎县');
INSERT INTO `area` VALUES ('542229', '542200', '加查县');
INSERT INTO `area` VALUES ('542231', '542200', '隆子县');
INSERT INTO `area` VALUES ('542232', '542200', '错那县');
INSERT INTO `area` VALUES ('542233', '542200', '浪卡子县');
INSERT INTO `area` VALUES ('542400', '540000', '那曲地区');
INSERT INTO `area` VALUES ('542421', '542400', '那曲县');
INSERT INTO `area` VALUES ('542422', '542400', '嘉黎县');
INSERT INTO `area` VALUES ('542423', '542400', '比如县');
INSERT INTO `area` VALUES ('542424', '542400', '聂荣县');
INSERT INTO `area` VALUES ('542425', '542400', '安多县');
INSERT INTO `area` VALUES ('542426', '542400', '申扎县');
INSERT INTO `area` VALUES ('542427', '542400', '索县');
INSERT INTO `area` VALUES ('542428', '542400', '班戈县');
INSERT INTO `area` VALUES ('542429', '542400', '巴青县');
INSERT INTO `area` VALUES ('542430', '542400', '尼玛县');
INSERT INTO `area` VALUES ('542431', '542400', '其它区');
INSERT INTO `area` VALUES ('542500', '540000', '阿里地区');
INSERT INTO `area` VALUES ('542521', '542500', '普兰县');
INSERT INTO `area` VALUES ('542522', '542500', '札达县');
INSERT INTO `area` VALUES ('542523', '542500', '噶尔县');
INSERT INTO `area` VALUES ('542524', '542500', '日土县');
INSERT INTO `area` VALUES ('542525', '542500', '革吉县');
INSERT INTO `area` VALUES ('542526', '542500', '改则县');
INSERT INTO `area` VALUES ('542527', '542500', '措勤县');
INSERT INTO `area` VALUES ('610000', '0', '陕西省');
INSERT INTO `area` VALUES ('610100', '610000', '西安市');
INSERT INTO `area` VALUES ('610102', '610100', '新城区');
INSERT INTO `area` VALUES ('610103', '610100', '碑林区');
INSERT INTO `area` VALUES ('610104', '610100', '莲湖区');
INSERT INTO `area` VALUES ('610111', '610100', '灞桥区');
INSERT INTO `area` VALUES ('610112', '610100', '未央区');
INSERT INTO `area` VALUES ('610113', '610100', '雁塔区');
INSERT INTO `area` VALUES ('610114', '610100', '阎良区');
INSERT INTO `area` VALUES ('610115', '610100', '临潼区');
INSERT INTO `area` VALUES ('610116', '610100', '长安区');
INSERT INTO `area` VALUES ('610117', '610100', '高陵区');
INSERT INTO `area` VALUES ('610122', '610100', '蓝田县');
INSERT INTO `area` VALUES ('610124', '610100', '周至县');
INSERT INTO `area` VALUES ('610125', '610100', '户县');
INSERT INTO `area` VALUES ('610200', '610000', '铜川市');
INSERT INTO `area` VALUES ('610202', '610200', '王益区');
INSERT INTO `area` VALUES ('610203', '610200', '印台区');
INSERT INTO `area` VALUES ('610204', '610200', '耀州区');
INSERT INTO `area` VALUES ('610222', '610200', '宜君县');
INSERT INTO `area` VALUES ('610300', '610000', '宝鸡市');
INSERT INTO `area` VALUES ('610302', '610300', '渭滨区');
INSERT INTO `area` VALUES ('610303', '610300', '金台区');
INSERT INTO `area` VALUES ('610304', '610300', '陈仓区');
INSERT INTO `area` VALUES ('610322', '610300', '凤翔县');
INSERT INTO `area` VALUES ('610323', '610300', '岐山县');
INSERT INTO `area` VALUES ('610324', '610300', '扶风县');
INSERT INTO `area` VALUES ('610326', '610300', '眉县');
INSERT INTO `area` VALUES ('610327', '610300', '陇县');
INSERT INTO `area` VALUES ('610328', '610300', '千阳县');
INSERT INTO `area` VALUES ('610329', '610300', '麟游县');
INSERT INTO `area` VALUES ('610330', '610300', '凤县');
INSERT INTO `area` VALUES ('610331', '610300', '太白县');
INSERT INTO `area` VALUES ('610400', '610000', '咸阳市');
INSERT INTO `area` VALUES ('610402', '610400', '秦都区');
INSERT INTO `area` VALUES ('610403', '610400', '杨陵区');
INSERT INTO `area` VALUES ('610404', '610400', '渭城区');
INSERT INTO `area` VALUES ('610422', '610400', '三原县');
INSERT INTO `area` VALUES ('610423', '610400', '泾阳县');
INSERT INTO `area` VALUES ('610424', '610400', '乾县');
INSERT INTO `area` VALUES ('610425', '610400', '礼泉县');
INSERT INTO `area` VALUES ('610426', '610400', '永寿县');
INSERT INTO `area` VALUES ('610427', '610400', '彬县');
INSERT INTO `area` VALUES ('610428', '610400', '长武县');
INSERT INTO `area` VALUES ('610429', '610400', '旬邑县');
INSERT INTO `area` VALUES ('610430', '610400', '淳化县');
INSERT INTO `area` VALUES ('610431', '610400', '武功县');
INSERT INTO `area` VALUES ('610481', '610400', '兴平市');
INSERT INTO `area` VALUES ('610500', '610000', '渭南市');
INSERT INTO `area` VALUES ('610502', '610500', '临渭区');
INSERT INTO `area` VALUES ('610521', '610500', '华县');
INSERT INTO `area` VALUES ('610522', '610500', '潼关县');
INSERT INTO `area` VALUES ('610523', '610500', '大荔县');
INSERT INTO `area` VALUES ('610524', '610500', '合阳县');
INSERT INTO `area` VALUES ('610525', '610500', '澄城县');
INSERT INTO `area` VALUES ('610526', '610500', '蒲城县');
INSERT INTO `area` VALUES ('610527', '610500', '白水县');
INSERT INTO `area` VALUES ('610528', '610500', '富平县');
INSERT INTO `area` VALUES ('610581', '610500', '韩城市');
INSERT INTO `area` VALUES ('610582', '610500', '华阴市');
INSERT INTO `area` VALUES ('610600', '610000', '延安市');
INSERT INTO `area` VALUES ('610602', '610600', '宝塔区');
INSERT INTO `area` VALUES ('610621', '610600', '延长县');
INSERT INTO `area` VALUES ('610622', '610600', '延川县');
INSERT INTO `area` VALUES ('610623', '610600', '子长县');
INSERT INTO `area` VALUES ('610624', '610600', '安塞县');
INSERT INTO `area` VALUES ('610625', '610600', '志丹县');
INSERT INTO `area` VALUES ('610626', '610600', '吴起县');
INSERT INTO `area` VALUES ('610627', '610600', '甘泉县');
INSERT INTO `area` VALUES ('610628', '610600', '富县');
INSERT INTO `area` VALUES ('610629', '610600', '洛川县');
INSERT INTO `area` VALUES ('610630', '610600', '宜川县');
INSERT INTO `area` VALUES ('610631', '610600', '黄龙县');
INSERT INTO `area` VALUES ('610632', '610600', '黄陵县');
INSERT INTO `area` VALUES ('610700', '610000', '汉中市');
INSERT INTO `area` VALUES ('610702', '610700', '汉台区');
INSERT INTO `area` VALUES ('610721', '610700', '南郑县');
INSERT INTO `area` VALUES ('610722', '610700', '城固县');
INSERT INTO `area` VALUES ('610723', '610700', '洋县');
INSERT INTO `area` VALUES ('610724', '610700', '西乡县');
INSERT INTO `area` VALUES ('610725', '610700', '勉县');
INSERT INTO `area` VALUES ('610726', '610700', '宁强县');
INSERT INTO `area` VALUES ('610727', '610700', '略阳县');
INSERT INTO `area` VALUES ('610728', '610700', '镇巴县');
INSERT INTO `area` VALUES ('610729', '610700', '留坝县');
INSERT INTO `area` VALUES ('610730', '610700', '佛坪县');
INSERT INTO `area` VALUES ('610800', '610000', '榆林市');
INSERT INTO `area` VALUES ('610802', '610800', '榆阳区');
INSERT INTO `area` VALUES ('610821', '610800', '神木县');
INSERT INTO `area` VALUES ('610822', '610800', '府谷县');
INSERT INTO `area` VALUES ('610823', '610800', '横山县');
INSERT INTO `area` VALUES ('610824', '610800', '靖边县');
INSERT INTO `area` VALUES ('610825', '610800', '定边县');
INSERT INTO `area` VALUES ('610826', '610800', '绥德县');
INSERT INTO `area` VALUES ('610827', '610800', '米脂县');
INSERT INTO `area` VALUES ('610828', '610800', '佳县');
INSERT INTO `area` VALUES ('610829', '610800', '吴堡县');
INSERT INTO `area` VALUES ('610830', '610800', '清涧县');
INSERT INTO `area` VALUES ('610831', '610800', '子洲县');
INSERT INTO `area` VALUES ('610900', '610000', '安康市');
INSERT INTO `area` VALUES ('610902', '610900', '汉滨区');
INSERT INTO `area` VALUES ('610921', '610900', '汉阴县');
INSERT INTO `area` VALUES ('610922', '610900', '石泉县');
INSERT INTO `area` VALUES ('610923', '610900', '宁陕县');
INSERT INTO `area` VALUES ('610924', '610900', '紫阳县');
INSERT INTO `area` VALUES ('610925', '610900', '岚皋县');
INSERT INTO `area` VALUES ('610926', '610900', '平利县');
INSERT INTO `area` VALUES ('610927', '610900', '镇坪县');
INSERT INTO `area` VALUES ('610928', '610900', '旬阳县');
INSERT INTO `area` VALUES ('610929', '610900', '白河县');
INSERT INTO `area` VALUES ('611000', '610000', '商洛市');
INSERT INTO `area` VALUES ('611002', '611000', '商州区');
INSERT INTO `area` VALUES ('611021', '611000', '洛南县');
INSERT INTO `area` VALUES ('611022', '611000', '丹凤县');
INSERT INTO `area` VALUES ('611023', '611000', '商南县');
INSERT INTO `area` VALUES ('611024', '611000', '山阳县');
INSERT INTO `area` VALUES ('611025', '611000', '镇安县');
INSERT INTO `area` VALUES ('611026', '611000', '柞水县');
INSERT INTO `area` VALUES ('620000', '0', '甘肃省');
INSERT INTO `area` VALUES ('620100', '620000', '兰州市');
INSERT INTO `area` VALUES ('620102', '620100', '城关区');
INSERT INTO `area` VALUES ('620103', '620100', '七里河区');
INSERT INTO `area` VALUES ('620104', '620100', '西固区');
INSERT INTO `area` VALUES ('620105', '620100', '安宁区');
INSERT INTO `area` VALUES ('620111', '620100', '红古区');
INSERT INTO `area` VALUES ('620121', '620100', '永登县');
INSERT INTO `area` VALUES ('620122', '620100', '皋兰县');
INSERT INTO `area` VALUES ('620123', '620100', '榆中县');
INSERT INTO `area` VALUES ('620200', '620000', '嘉峪关市');
INSERT INTO `area` VALUES ('620300', '620000', '金昌市');
INSERT INTO `area` VALUES ('620302', '620300', '金川区');
INSERT INTO `area` VALUES ('620321', '620300', '永昌县');
INSERT INTO `area` VALUES ('620400', '620000', '白银市');
INSERT INTO `area` VALUES ('620402', '620400', '白银区');
INSERT INTO `area` VALUES ('620403', '620400', '平川区');
INSERT INTO `area` VALUES ('620421', '620400', '靖远县');
INSERT INTO `area` VALUES ('620422', '620400', '会宁县');
INSERT INTO `area` VALUES ('620423', '620400', '景泰县');
INSERT INTO `area` VALUES ('620500', '620000', '天水市');
INSERT INTO `area` VALUES ('620502', '620500', '秦州区');
INSERT INTO `area` VALUES ('620503', '620500', '麦积区');
INSERT INTO `area` VALUES ('620521', '620500', '清水县');
INSERT INTO `area` VALUES ('620522', '620500', '秦安县');
INSERT INTO `area` VALUES ('620523', '620500', '甘谷县');
INSERT INTO `area` VALUES ('620524', '620500', '武山县');
INSERT INTO `area` VALUES ('620525', '620500', '张家川回族自治县');
INSERT INTO `area` VALUES ('620600', '620000', '武威市');
INSERT INTO `area` VALUES ('620602', '620600', '凉州区');
INSERT INTO `area` VALUES ('620621', '620600', '民勤县');
INSERT INTO `area` VALUES ('620622', '620600', '古浪县');
INSERT INTO `area` VALUES ('620623', '620600', '天祝藏族自治县');
INSERT INTO `area` VALUES ('620700', '620000', '张掖市');
INSERT INTO `area` VALUES ('620702', '620700', '甘州区');
INSERT INTO `area` VALUES ('620721', '620700', '肃南裕固族自治县');
INSERT INTO `area` VALUES ('620722', '620700', '民乐县');
INSERT INTO `area` VALUES ('620723', '620700', '临泽县');
INSERT INTO `area` VALUES ('620724', '620700', '高台县');
INSERT INTO `area` VALUES ('620725', '620700', '山丹县');
INSERT INTO `area` VALUES ('620800', '620000', '平凉市');
INSERT INTO `area` VALUES ('620802', '620800', '崆峒区');
INSERT INTO `area` VALUES ('620821', '620800', '泾川县');
INSERT INTO `area` VALUES ('620822', '620800', '灵台县');
INSERT INTO `area` VALUES ('620823', '620800', '崇信县');
INSERT INTO `area` VALUES ('620824', '620800', '华亭县');
INSERT INTO `area` VALUES ('620825', '620800', '庄浪县');
INSERT INTO `area` VALUES ('620826', '620800', '静宁县');
INSERT INTO `area` VALUES ('620900', '620000', '酒泉市');
INSERT INTO `area` VALUES ('620902', '620900', '肃州区');
INSERT INTO `area` VALUES ('620921', '620900', '金塔县');
INSERT INTO `area` VALUES ('620922', '620900', '瓜州县');
INSERT INTO `area` VALUES ('620923', '620900', '肃北蒙古族自治县');
INSERT INTO `area` VALUES ('620924', '620900', '阿克塞哈萨克族自治县');
INSERT INTO `area` VALUES ('620981', '620900', '玉门市');
INSERT INTO `area` VALUES ('620982', '620900', '敦煌市');
INSERT INTO `area` VALUES ('621000', '620000', '庆阳市');
INSERT INTO `area` VALUES ('621002', '621000', '西峰区');
INSERT INTO `area` VALUES ('621021', '621000', '庆城县');
INSERT INTO `area` VALUES ('621022', '621000', '环县');
INSERT INTO `area` VALUES ('621023', '621000', '华池县');
INSERT INTO `area` VALUES ('621024', '621000', '合水县');
INSERT INTO `area` VALUES ('621025', '621000', '正宁县');
INSERT INTO `area` VALUES ('621026', '621000', '宁县');
INSERT INTO `area` VALUES ('621027', '621000', '镇原县');
INSERT INTO `area` VALUES ('621100', '620000', '定西市');
INSERT INTO `area` VALUES ('621102', '621100', '安定区');
INSERT INTO `area` VALUES ('621121', '621100', '通渭县');
INSERT INTO `area` VALUES ('621122', '621100', '陇西县');
INSERT INTO `area` VALUES ('621123', '621100', '渭源县');
INSERT INTO `area` VALUES ('621124', '621100', '临洮县');
INSERT INTO `area` VALUES ('621125', '621100', '漳县');
INSERT INTO `area` VALUES ('621126', '621100', '岷县');
INSERT INTO `area` VALUES ('621200', '620000', '陇南市');
INSERT INTO `area` VALUES ('621202', '621200', '武都区');
INSERT INTO `area` VALUES ('621221', '621200', '成县');
INSERT INTO `area` VALUES ('621222', '621200', '文县');
INSERT INTO `area` VALUES ('621223', '621200', '宕昌县');
INSERT INTO `area` VALUES ('621224', '621200', '康县');
INSERT INTO `area` VALUES ('621225', '621200', '西和县');
INSERT INTO `area` VALUES ('621226', '621200', '礼县');
INSERT INTO `area` VALUES ('621227', '621200', '徽县');
INSERT INTO `area` VALUES ('621228', '621200', '两当县');
INSERT INTO `area` VALUES ('622900', '620000', '临夏回族自治州');
INSERT INTO `area` VALUES ('622901', '622900', '临夏市');
INSERT INTO `area` VALUES ('622921', '622900', '临夏县');
INSERT INTO `area` VALUES ('622922', '622900', '康乐县');
INSERT INTO `area` VALUES ('622923', '622900', '永靖县');
INSERT INTO `area` VALUES ('622924', '622900', '广河县');
INSERT INTO `area` VALUES ('622925', '622900', '和政县');
INSERT INTO `area` VALUES ('622926', '622900', '东乡族自治县');
INSERT INTO `area` VALUES ('622927', '622900', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `area` VALUES ('623000', '620000', '甘南藏族自治州');
INSERT INTO `area` VALUES ('623001', '623000', '合作市');
INSERT INTO `area` VALUES ('623021', '623000', '临潭县');
INSERT INTO `area` VALUES ('623022', '623000', '卓尼县');
INSERT INTO `area` VALUES ('623023', '623000', '舟曲县');
INSERT INTO `area` VALUES ('623024', '623000', '迭部县');
INSERT INTO `area` VALUES ('623025', '623000', '玛曲县');
INSERT INTO `area` VALUES ('623026', '623000', '碌曲县');
INSERT INTO `area` VALUES ('623027', '623000', '夏河县');
INSERT INTO `area` VALUES ('630000', '0', '青海省');
INSERT INTO `area` VALUES ('630100', '630000', '西宁市');
INSERT INTO `area` VALUES ('630102', '630100', '城东区');
INSERT INTO `area` VALUES ('630103', '630100', '城中区');
INSERT INTO `area` VALUES ('630104', '630100', '城西区');
INSERT INTO `area` VALUES ('630105', '630100', '城北区');
INSERT INTO `area` VALUES ('630121', '630100', '大通回族土族自治县');
INSERT INTO `area` VALUES ('630122', '630100', '湟中县');
INSERT INTO `area` VALUES ('630123', '630100', '湟源县');
INSERT INTO `area` VALUES ('630200', '630000', '海东市');
INSERT INTO `area` VALUES ('630202', '630200', '乐都区');
INSERT INTO `area` VALUES ('630203', '630200', '平安区');
INSERT INTO `area` VALUES ('630222', '630200', '民和回族土族自治县');
INSERT INTO `area` VALUES ('630223', '630200', '互助土族自治县');
INSERT INTO `area` VALUES ('630224', '630200', '化隆回族自治县');
INSERT INTO `area` VALUES ('630225', '630200', '循化撒拉族自治县');
INSERT INTO `area` VALUES ('632200', '630000', '海北藏族自治州');
INSERT INTO `area` VALUES ('632221', '632200', '门源回族自治县');
INSERT INTO `area` VALUES ('632222', '632200', '祁连县');
INSERT INTO `area` VALUES ('632223', '632200', '海晏县');
INSERT INTO `area` VALUES ('632224', '632200', '刚察县');
INSERT INTO `area` VALUES ('632300', '630000', '黄南藏族自治州');
INSERT INTO `area` VALUES ('632321', '632300', '同仁县');
INSERT INTO `area` VALUES ('632322', '632300', '尖扎县');
INSERT INTO `area` VALUES ('632323', '632300', '泽库县');
INSERT INTO `area` VALUES ('632324', '632300', '河南蒙古族自治县');
INSERT INTO `area` VALUES ('632500', '630000', '海南藏族自治州');
INSERT INTO `area` VALUES ('632521', '632500', '共和县');
INSERT INTO `area` VALUES ('632522', '632500', '同德县');
INSERT INTO `area` VALUES ('632523', '632500', '贵德县');
INSERT INTO `area` VALUES ('632524', '632500', '兴海县');
INSERT INTO `area` VALUES ('632525', '632500', '贵南县');
INSERT INTO `area` VALUES ('632600', '630000', '果洛藏族自治州');
INSERT INTO `area` VALUES ('632621', '632600', '玛沁县');
INSERT INTO `area` VALUES ('632622', '632600', '班玛县');
INSERT INTO `area` VALUES ('632623', '632600', '甘德县');
INSERT INTO `area` VALUES ('632624', '632600', '达日县');
INSERT INTO `area` VALUES ('632625', '632600', '久治县');
INSERT INTO `area` VALUES ('632626', '632600', '玛多县');
INSERT INTO `area` VALUES ('632700', '630000', '玉树藏族自治州');
INSERT INTO `area` VALUES ('632701', '632700', '玉树市');
INSERT INTO `area` VALUES ('632722', '632700', '杂多县');
INSERT INTO `area` VALUES ('632723', '632700', '称多县');
INSERT INTO `area` VALUES ('632724', '632700', '治多县');
INSERT INTO `area` VALUES ('632725', '632700', '囊谦县');
INSERT INTO `area` VALUES ('632726', '632700', '曲麻莱县');
INSERT INTO `area` VALUES ('632800', '630000', '海西蒙古族藏族自治州');
INSERT INTO `area` VALUES ('632801', '632800', '格尔木市');
INSERT INTO `area` VALUES ('632802', '632800', '德令哈市');
INSERT INTO `area` VALUES ('632821', '632800', '乌兰县');
INSERT INTO `area` VALUES ('632822', '632800', '都兰县');
INSERT INTO `area` VALUES ('632823', '632800', '天峻县');
INSERT INTO `area` VALUES ('640000', '0', '宁夏');
INSERT INTO `area` VALUES ('640100', '640000', '银川市');
INSERT INTO `area` VALUES ('640104', '640100', '兴庆区');
INSERT INTO `area` VALUES ('640105', '640100', '西夏区');
INSERT INTO `area` VALUES ('640106', '640100', '金凤区');
INSERT INTO `area` VALUES ('640121', '640100', '永宁县');
INSERT INTO `area` VALUES ('640122', '640100', '贺兰县');
INSERT INTO `area` VALUES ('640181', '640100', '灵武市');
INSERT INTO `area` VALUES ('640200', '640000', '石嘴山市');
INSERT INTO `area` VALUES ('640202', '640200', '大武口区');
INSERT INTO `area` VALUES ('640205', '640200', '惠农区');
INSERT INTO `area` VALUES ('640221', '640200', '平罗县');
INSERT INTO `area` VALUES ('640300', '640000', '吴忠市');
INSERT INTO `area` VALUES ('640302', '640300', '利通区');
INSERT INTO `area` VALUES ('640303', '640300', '红寺堡区');
INSERT INTO `area` VALUES ('640323', '640300', '盐池县');
INSERT INTO `area` VALUES ('640324', '640300', '同心县');
INSERT INTO `area` VALUES ('640381', '640300', '青铜峡市');
INSERT INTO `area` VALUES ('640400', '640000', '固原市');
INSERT INTO `area` VALUES ('640402', '640400', '原州区');
INSERT INTO `area` VALUES ('640422', '640400', '西吉县');
INSERT INTO `area` VALUES ('640423', '640400', '隆德县');
INSERT INTO `area` VALUES ('640424', '640400', '泾源县');
INSERT INTO `area` VALUES ('640425', '640400', '彭阳县');
INSERT INTO `area` VALUES ('640500', '640000', '中卫市');
INSERT INTO `area` VALUES ('640502', '640500', '沙坡头区');
INSERT INTO `area` VALUES ('640521', '640500', '中宁县');
INSERT INTO `area` VALUES ('640522', '640500', '海原县');
INSERT INTO `area` VALUES ('650000', '0', '新疆');
INSERT INTO `area` VALUES ('650100', '650000', '乌鲁木齐市');
INSERT INTO `area` VALUES ('650102', '650100', '天山区');
INSERT INTO `area` VALUES ('650103', '650100', '沙依巴克区');
INSERT INTO `area` VALUES ('650104', '650100', '新市区');
INSERT INTO `area` VALUES ('650105', '650100', '水磨沟区');
INSERT INTO `area` VALUES ('650106', '650100', '头屯河区');
INSERT INTO `area` VALUES ('650107', '650100', '达坂城区');
INSERT INTO `area` VALUES ('650109', '650100', '米东区');
INSERT INTO `area` VALUES ('650121', '650100', '乌鲁木齐县');
INSERT INTO `area` VALUES ('650200', '650000', '克拉玛依市');
INSERT INTO `area` VALUES ('650202', '650200', '独山子区');
INSERT INTO `area` VALUES ('650203', '650200', '克拉玛依区');
INSERT INTO `area` VALUES ('650204', '650200', '白碱滩区');
INSERT INTO `area` VALUES ('650205', '650200', '乌尔禾区');
INSERT INTO `area` VALUES ('650400', '650000', '吐鲁番市');
INSERT INTO `area` VALUES ('650402', '650400', '高昌区');
INSERT INTO `area` VALUES ('650421', '650400', '鄯善县');
INSERT INTO `area` VALUES ('650422', '650400', '托克逊县');
INSERT INTO `area` VALUES ('652200', '650000', '哈密地区');
INSERT INTO `area` VALUES ('652201', '652200', '哈密市');
INSERT INTO `area` VALUES ('652222', '652200', '巴里坤哈萨克自治县');
INSERT INTO `area` VALUES ('652223', '652200', '伊吾县');
INSERT INTO `area` VALUES ('652300', '650000', '昌吉回族自治州');
INSERT INTO `area` VALUES ('652301', '652300', '昌吉市');
INSERT INTO `area` VALUES ('652302', '652300', '阜康市');
INSERT INTO `area` VALUES ('652323', '652300', '呼图壁县');
INSERT INTO `area` VALUES ('652324', '652300', '玛纳斯县');
INSERT INTO `area` VALUES ('652325', '652300', '奇台县');
INSERT INTO `area` VALUES ('652327', '652300', '吉木萨尔县');
INSERT INTO `area` VALUES ('652328', '652300', '木垒哈萨克自治县');
INSERT INTO `area` VALUES ('652700', '650000', '博尔塔拉蒙古自治州');
INSERT INTO `area` VALUES ('652701', '652700', '博乐市');
INSERT INTO `area` VALUES ('652702', '652700', '阿拉山口市');
INSERT INTO `area` VALUES ('652722', '652700', '精河县');
INSERT INTO `area` VALUES ('652723', '652700', '温泉县');
INSERT INTO `area` VALUES ('652800', '650000', '巴音郭楞蒙古自治州');
INSERT INTO `area` VALUES ('652801', '652800', '库尔勒市');
INSERT INTO `area` VALUES ('652822', '652800', '轮台县');
INSERT INTO `area` VALUES ('652823', '652800', '尉犁县');
INSERT INTO `area` VALUES ('652824', '652800', '若羌县');
INSERT INTO `area` VALUES ('652825', '652800', '且末县');
INSERT INTO `area` VALUES ('652826', '652800', '焉耆回族自治县');
INSERT INTO `area` VALUES ('652827', '652800', '和静县');
INSERT INTO `area` VALUES ('652828', '652800', '和硕县');
INSERT INTO `area` VALUES ('652829', '652800', '博湖县');
INSERT INTO `area` VALUES ('652900', '650000', '阿克苏地区');
INSERT INTO `area` VALUES ('652901', '652900', '阿克苏市');
INSERT INTO `area` VALUES ('652922', '652900', '温宿县');
INSERT INTO `area` VALUES ('652923', '652900', '库车县');
INSERT INTO `area` VALUES ('652924', '652900', '沙雅县');
INSERT INTO `area` VALUES ('652925', '652900', '新和县');
INSERT INTO `area` VALUES ('652926', '652900', '拜城县');
INSERT INTO `area` VALUES ('652927', '652900', '乌什县');
INSERT INTO `area` VALUES ('652928', '652900', '阿瓦提县');
INSERT INTO `area` VALUES ('652929', '652900', '柯坪县');
INSERT INTO `area` VALUES ('653000', '650000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `area` VALUES ('653001', '653000', '阿图什市');
INSERT INTO `area` VALUES ('653022', '653000', '阿克陶县');
INSERT INTO `area` VALUES ('653023', '653000', '阿合奇县');
INSERT INTO `area` VALUES ('653024', '653000', '乌恰县');
INSERT INTO `area` VALUES ('653100', '650000', '喀什地区');
INSERT INTO `area` VALUES ('653101', '653100', '喀什市');
INSERT INTO `area` VALUES ('653121', '653100', '疏附县');
INSERT INTO `area` VALUES ('653122', '653100', '疏勒县');
INSERT INTO `area` VALUES ('653123', '653100', '英吉沙县');
INSERT INTO `area` VALUES ('653124', '653100', '泽普县');
INSERT INTO `area` VALUES ('653125', '653100', '莎车县');
INSERT INTO `area` VALUES ('653126', '653100', '叶城县');
INSERT INTO `area` VALUES ('653127', '653100', '麦盖提县');
INSERT INTO `area` VALUES ('653128', '653100', '岳普湖县');
INSERT INTO `area` VALUES ('653129', '653100', '伽师县');
INSERT INTO `area` VALUES ('653130', '653100', '巴楚县');
INSERT INTO `area` VALUES ('653131', '653100', '塔什库尔干塔吉克自治县');
INSERT INTO `area` VALUES ('653200', '650000', '和田地区');
INSERT INTO `area` VALUES ('653201', '653200', '和田市');
INSERT INTO `area` VALUES ('653221', '653200', '和田县');
INSERT INTO `area` VALUES ('653222', '653200', '墨玉县');
INSERT INTO `area` VALUES ('653223', '653200', '皮山县');
INSERT INTO `area` VALUES ('653224', '653200', '洛浦县');
INSERT INTO `area` VALUES ('653225', '653200', '策勒县');
INSERT INTO `area` VALUES ('653226', '653200', '于田县');
INSERT INTO `area` VALUES ('653227', '653200', '民丰县');
INSERT INTO `area` VALUES ('654000', '650000', '伊犁哈萨克自治州');
INSERT INTO `area` VALUES ('654002', '654000', '伊宁市');
INSERT INTO `area` VALUES ('654003', '654000', '奎屯市');
INSERT INTO `area` VALUES ('654004', '654000', '霍尔果斯市');
INSERT INTO `area` VALUES ('654021', '654000', '伊宁县');
INSERT INTO `area` VALUES ('654022', '654000', '察布查尔锡伯自治县');
INSERT INTO `area` VALUES ('654023', '654000', '霍城县');
INSERT INTO `area` VALUES ('654024', '654000', '巩留县');
INSERT INTO `area` VALUES ('654025', '654000', '新源县');
INSERT INTO `area` VALUES ('654026', '654000', '昭苏县');
INSERT INTO `area` VALUES ('654027', '654000', '特克斯县');
INSERT INTO `area` VALUES ('654028', '654000', '尼勒克县');
INSERT INTO `area` VALUES ('654200', '650000', '塔城地区');
INSERT INTO `area` VALUES ('654201', '654200', '塔城市');
INSERT INTO `area` VALUES ('654202', '654200', '乌苏市');
INSERT INTO `area` VALUES ('654221', '654200', '额敏县');
INSERT INTO `area` VALUES ('654223', '654200', '沙湾县');
INSERT INTO `area` VALUES ('654224', '654200', '托里县');
INSERT INTO `area` VALUES ('654225', '654200', '裕民县');
INSERT INTO `area` VALUES ('654226', '654200', '和布克赛尔蒙古自治县');
INSERT INTO `area` VALUES ('654300', '650000', '阿勒泰地区');
INSERT INTO `area` VALUES ('654301', '654300', '阿勒泰市');
INSERT INTO `area` VALUES ('654321', '654300', '布尔津县');
INSERT INTO `area` VALUES ('654322', '654300', '富蕴县');
INSERT INTO `area` VALUES ('654323', '654300', '福海县');
INSERT INTO `area` VALUES ('654324', '654300', '哈巴河县');
INSERT INTO `area` VALUES ('654325', '654300', '青河县');
INSERT INTO `area` VALUES ('654326', '654300', '吉木乃县');
INSERT INTO `area` VALUES ('659001', '650000', '石河子市');
INSERT INTO `area` VALUES ('659002', '650000', '阿拉尔市');
INSERT INTO `area` VALUES ('659003', '650000', '图木舒克市');
INSERT INTO `area` VALUES ('659004', '650000', '五家渠市');
INSERT INTO `area` VALUES ('710000', '0', '台湾');
INSERT INTO `area` VALUES ('810000', '0', '香港');
INSERT INTO `area` VALUES ('820000', '0', '澳门');
INSERT INTO `area` VALUES ('990001', '110100', '市级');
INSERT INTO `area` VALUES ('990020', '120100', '市级');
INSERT INTO `area` VALUES ('990040', '310100', '市级');
INSERT INTO `area` VALUES ('990061', '500100', '市级');
INSERT INTO `area` VALUES ('990102', '130100', '市级');
INSERT INTO `area` VALUES ('990126', '130200', '市级');
INSERT INTO `area` VALUES ('990141', '130300', '市级');
INSERT INTO `area` VALUES ('990150', '130400', '市级');
INSERT INTO `area` VALUES ('990170', '130500', '市级');
INSERT INTO `area` VALUES ('990190', '130600', '市级');
INSERT INTO `area` VALUES ('990217', '130700', '市级');
INSERT INTO `area` VALUES ('990235', '130800', '市级');
INSERT INTO `area` VALUES ('990247', '130900', '市级');
INSERT INTO `area` VALUES ('990264', '131000', '市级');
INSERT INTO `area` VALUES ('990277', '131100', '市级');
INSERT INTO `area` VALUES ('990289', '140100', '市级');
INSERT INTO `area` VALUES ('990300', '140200', '市级');
INSERT INTO `area` VALUES ('990312', '140300', '市级');
INSERT INTO `area` VALUES ('990318', '140400', '市级');
INSERT INTO `area` VALUES ('990333', '140500', '市级');
INSERT INTO `area` VALUES ('990340', '140600', '市级');
INSERT INTO `area` VALUES ('990347', '140700', '市级');
INSERT INTO `area` VALUES ('990359', '140800', '市级');
INSERT INTO `area` VALUES ('990373', '140900', '市级');
INSERT INTO `area` VALUES ('990388', '141000', '市级');
INSERT INTO `area` VALUES ('990406', '141100', '市级');
INSERT INTO `area` VALUES ('990420', '150100', '市级');
INSERT INTO `area` VALUES ('990430', '150200', '市级');
INSERT INTO `area` VALUES ('990440', '150300', '市级');
INSERT INTO `area` VALUES ('990444', '150400', '市级');
INSERT INTO `area` VALUES ('990457', '150500', '市级');
INSERT INTO `area` VALUES ('990466', '150600', '市级');
INSERT INTO `area` VALUES ('990475', '150700', '市级');
INSERT INTO `area` VALUES ('990490', '150800', '市级');
INSERT INTO `area` VALUES ('990498', '150900', '市级');
INSERT INTO `area` VALUES ('990510', '152200', '市级');
INSERT INTO `area` VALUES ('990517', '152500', '市级');
INSERT INTO `area` VALUES ('990530', '152900', '市级');
INSERT INTO `area` VALUES ('990534', '210100', '市级');
INSERT INTO `area` VALUES ('990551', '210200', '市级');
INSERT INTO `area` VALUES ('990564', '210300', '市级');
INSERT INTO `area` VALUES ('990573', '210400', '市级');
INSERT INTO `area` VALUES ('990581', '210500', '市级');
INSERT INTO `area` VALUES ('990588', '210600', '市级');
INSERT INTO `area` VALUES ('990595', '210700', '市级');
INSERT INTO `area` VALUES ('990603', '210800', '市级');
INSERT INTO `area` VALUES ('990610', '210900', '市级');
INSERT INTO `area` VALUES ('990618', '211000', '市级');
INSERT INTO `area` VALUES ('990626', '211100', '市级');
INSERT INTO `area` VALUES ('990631', '211200', '市级');
INSERT INTO `area` VALUES ('990639', '211300', '市级');
INSERT INTO `area` VALUES ('990647', '211400', '市级');
INSERT INTO `area` VALUES ('990654', '220100', '市级');
INSERT INTO `area` VALUES ('990669', '220200', '市级');
INSERT INTO `area` VALUES ('990679', '220300', '市级');
INSERT INTO `area` VALUES ('990686', '220400', '市级');
INSERT INTO `area` VALUES ('990691', '220500', '市级');
INSERT INTO `area` VALUES ('990699', '220600', '市级');
INSERT INTO `area` VALUES ('990706', '220700', '市级');
INSERT INTO `area` VALUES ('990712', '220800', '市级');
INSERT INTO `area` VALUES ('990718', '222400', '市级');
INSERT INTO `area` VALUES ('990727', '230100', '市级');
INSERT INTO `area` VALUES ('990748', '230200', '市级');
INSERT INTO `area` VALUES ('990765', '230300', '市级');
INSERT INTO `area` VALUES ('990775', '230400', '市级');
INSERT INTO `area` VALUES ('990784', '230500', '市级');
INSERT INTO `area` VALUES ('990793', '230600', '市级');
INSERT INTO `area` VALUES ('990803', '230700', '市级');
INSERT INTO `area` VALUES ('990821', '230800', '市级');
INSERT INTO `area` VALUES ('990833', '230900', '市级');
INSERT INTO `area` VALUES ('990838', '231000', '市级');
INSERT INTO `area` VALUES ('990849', '231100', '市级');
INSERT INTO `area` VALUES ('990856', '231200', '市级');
INSERT INTO `area` VALUES ('990867', '232700', '市级');
INSERT INTO `area` VALUES ('990875', '320100', '市级');
INSERT INTO `area` VALUES ('990889', '320200', '市级');
INSERT INTO `area` VALUES ('990899', '320300', '市级');
INSERT INTO `area` VALUES ('990911', '320400', '市级');
INSERT INTO `area` VALUES ('990919', '320500', '市级');
INSERT INTO `area` VALUES ('990934', '320600', '市级');
INSERT INTO `area` VALUES ('990945', '320700', '市级');
INSERT INTO `area` VALUES ('990953', '320800', '市级');
INSERT INTO `area` VALUES ('990962', '320900', '市级');
INSERT INTO `area` VALUES ('990972', '321000', '市级');
INSERT INTO `area` VALUES ('990981', '321100', '市级');
INSERT INTO `area` VALUES ('990988', '321200', '市级');
INSERT INTO `area` VALUES ('990995', '321300', '市级');
INSERT INTO `area` VALUES ('991001', '330100', '市级');
INSERT INTO `area` VALUES ('991015', '330200', '市级');
INSERT INTO `area` VALUES ('991027', '330300', '市级');
INSERT INTO `area` VALUES ('991039', '330400', '市级');
INSERT INTO `area` VALUES ('991047', '330500', '市级');
INSERT INTO `area` VALUES ('991053', '330600', '市级');
INSERT INTO `area` VALUES ('991060', '330700', '市级');
INSERT INTO `area` VALUES ('991070', '330800', '市级');
INSERT INTO `area` VALUES ('991077', '330900', '市级');
INSERT INTO `area` VALUES ('991082', '331000', '市级');
INSERT INTO `area` VALUES ('991092', '331100', '市级');
INSERT INTO `area` VALUES ('991102', '340100', '市级');
INSERT INTO `area` VALUES ('991115', '340200', '市级');
INSERT INTO `area` VALUES ('991124', '340300', '市级');
INSERT INTO `area` VALUES ('991132', '340400', '市级');
INSERT INTO `area` VALUES ('991139', '340500', '市级');
INSERT INTO `area` VALUES ('991147', '340600', '市级');
INSERT INTO `area` VALUES ('991152', '340700', '市级');
INSERT INTO `area` VALUES ('991157', '340800', '市级');
INSERT INTO `area` VALUES ('991169', '341000', '市级');
INSERT INTO `area` VALUES ('991177', '341100', '市级');
INSERT INTO `area` VALUES ('991186', '341200', '市级');
INSERT INTO `area` VALUES ('991195', '341300', '市级');
INSERT INTO `area` VALUES ('991201', '341500', '市级');
INSERT INTO `area` VALUES ('991209', '341600', '市级');
INSERT INTO `area` VALUES ('991214', '341700', '市级');
INSERT INTO `area` VALUES ('991219', '341800', '市级');
INSERT INTO `area` VALUES ('991227', '350100', '市级');
INSERT INTO `area` VALUES ('991241', '350200', '市级');
INSERT INTO `area` VALUES ('991248', '350300', '市级');
INSERT INTO `area` VALUES ('991254', '350400', '市级');
INSERT INTO `area` VALUES ('991267', '350500', '市级');
INSERT INTO `area` VALUES ('991280', '350600', '市级');
INSERT INTO `area` VALUES ('991292', '350700', '市级');
INSERT INTO `area` VALUES ('991303', '350800', '市级');
INSERT INTO `area` VALUES ('991311', '350900', '市级');
INSERT INTO `area` VALUES ('991321', '360100', '市级');
INSERT INTO `area` VALUES ('991334', '360200', '市级');
INSERT INTO `area` VALUES ('991339', '360300', '市级');
INSERT INTO `area` VALUES ('991345', '360400', '市级');
INSERT INTO `area` VALUES ('991359', '360500', '市级');
INSERT INTO `area` VALUES ('991362', '360600', '市级');
INSERT INTO `area` VALUES ('991366', '360700', '市级');
INSERT INTO `area` VALUES ('991386', '360800', '市级');
INSERT INTO `area` VALUES ('991400', '360900', '市级');
INSERT INTO `area` VALUES ('991411', '361000', '市级');
INSERT INTO `area` VALUES ('991423', '361100', '市级');
INSERT INTO `area` VALUES ('991436', '370100', '市级');
INSERT INTO `area` VALUES ('991447', '370200', '市级');
INSERT INTO `area` VALUES ('991461', '370300', '市级');
INSERT INTO `area` VALUES ('991470', '370400', '市级');
INSERT INTO `area` VALUES ('991477', '370500', '市级');
INSERT INTO `area` VALUES ('991485', '370600', '市级');
INSERT INTO `area` VALUES ('991498', '370700', '市级');
INSERT INTO `area` VALUES ('991512', '370800', '市级');
INSERT INTO `area` VALUES ('991525', '370900', '市级');
INSERT INTO `area` VALUES ('991532', '371000', '市级');
INSERT INTO `area` VALUES ('991537', '371100', '市级');
INSERT INTO `area` VALUES ('991542', '371200', '市级');
INSERT INTO `area` VALUES ('991545', '371300', '市级');
INSERT INTO `area` VALUES ('991558', '371400', '市级');
INSERT INTO `area` VALUES ('991571', '371500', '市级');
INSERT INTO `area` VALUES ('991580', '371600', '市级');
INSERT INTO `area` VALUES ('991588', '371700', '市级');
INSERT INTO `area` VALUES ('991598', '410100', '市级');
INSERT INTO `area` VALUES ('991613', '410200', '市级');
INSERT INTO `area` VALUES ('991624', '410300', '市级');
INSERT INTO `area` VALUES ('991641', '410400', '市级');
INSERT INTO `area` VALUES ('991652', '410500', '市级');
INSERT INTO `area` VALUES ('991662', '410600', '市级');
INSERT INTO `area` VALUES ('991668', '410700', '市级');
INSERT INTO `area` VALUES ('991681', '410800', '市级');
INSERT INTO `area` VALUES ('991692', '410900', '市级');
INSERT INTO `area` VALUES ('991699', '411000', '市级');
INSERT INTO `area` VALUES ('991706', '411100', '市级');
INSERT INTO `area` VALUES ('991712', '411200', '市级');
INSERT INTO `area` VALUES ('991719', '411300', '市级');
INSERT INTO `area` VALUES ('991733', '411400', '市级');
INSERT INTO `area` VALUES ('991743', '411500', '市级');
INSERT INTO `area` VALUES ('991754', '411600', '市级');
INSERT INTO `area` VALUES ('991765', '411700', '市级');
INSERT INTO `area` VALUES ('991776', '420100', '市级');
INSERT INTO `area` VALUES ('991790', '420200', '市级');
INSERT INTO `area` VALUES ('991797', '420300', '市级');
INSERT INTO `area` VALUES ('991807', '420500', '市级');
INSERT INTO `area` VALUES ('991823', '420600', '市级');
INSERT INTO `area` VALUES ('991833', '420700', '市级');
INSERT INTO `area` VALUES ('991837', '420800', '市级');
INSERT INTO `area` VALUES ('991843', '420900', '市级');
INSERT INTO `area` VALUES ('991851', '421000', '市级');
INSERT INTO `area` VALUES ('991860', '421100', '市级');
INSERT INTO `area` VALUES ('991871', '421200', '市级');
INSERT INTO `area` VALUES ('991879', '421300', '市级');
INSERT INTO `area` VALUES ('991883', '422800', '市级');
INSERT INTO `area` VALUES ('991892', '430100', '市级');
INSERT INTO `area` VALUES ('991902', '430200', '市级');
INSERT INTO `area` VALUES ('991912', '430300', '市级');
INSERT INTO `area` VALUES ('991918', '430400', '市级');
INSERT INTO `area` VALUES ('991931', '430500', '市级');
INSERT INTO `area` VALUES ('991944', '430600', '市级');
INSERT INTO `area` VALUES ('991954', '430700', '市级');
INSERT INTO `area` VALUES ('991964', '430800', '市级');
INSERT INTO `area` VALUES ('991969', '430900', '市级');
INSERT INTO `area` VALUES ('991976', '431000', '市级');
INSERT INTO `area` VALUES ('991988', '431100', '市级');
INSERT INTO `area` VALUES ('992000', '431200', '市级');
INSERT INTO `area` VALUES ('992013', '431300', '市级');
INSERT INTO `area` VALUES ('992019', '433100', '市级');
INSERT INTO `area` VALUES ('992028', '440100', '市级');
INSERT INTO `area` VALUES ('992042', '440200', '市级');
INSERT INTO `area` VALUES ('992053', '440300', '市级');
INSERT INTO `area` VALUES ('992064', '440400', '市级');
INSERT INTO `area` VALUES ('992070', '440500', '市级');
INSERT INTO `area` VALUES ('992078', '440600', '市级');
INSERT INTO `area` VALUES ('992084', '440700', '市级');
INSERT INTO `area` VALUES ('992092', '440800', '市级');
INSERT INTO `area` VALUES ('992102', '440900', '市级');
INSERT INTO `area` VALUES ('992109', '441200', '市级');
INSERT INTO `area` VALUES ('992118', '441300', '市级');
INSERT INTO `area` VALUES ('992124', '441400', '市级');
INSERT INTO `area` VALUES ('992133', '441500', '市级');
INSERT INTO `area` VALUES ('992138', '441600', '市级');
INSERT INTO `area` VALUES ('992145', '441700', '市级');
INSERT INTO `area` VALUES ('992150', '441800', '市级');
INSERT INTO `area` VALUES ('992159', '445100', '市级');
INSERT INTO `area` VALUES ('992164', '445200', '市级');
INSERT INTO `area` VALUES ('992171', '445300', '市级');
INSERT INTO `area` VALUES ('992177', '450100', '市级');
INSERT INTO `area` VALUES ('992190', '450200', '市级');
INSERT INTO `area` VALUES ('992201', '450300', '市级');
INSERT INTO `area` VALUES ('992219', '450400', '市级');
INSERT INTO `area` VALUES ('992228', '450500', '市级');
INSERT INTO `area` VALUES ('992233', '450600', '市级');
INSERT INTO `area` VALUES ('992238', '450700', '市级');
INSERT INTO `area` VALUES ('992243', '450800', '市级');
INSERT INTO `area` VALUES ('992249', '450900', '市级');
INSERT INTO `area` VALUES ('992257', '451000', '市级');
INSERT INTO `area` VALUES ('992270', '451100', '市级');
INSERT INTO `area` VALUES ('992276', '451200', '市级');
INSERT INTO `area` VALUES ('992288', '451300', '市级');
INSERT INTO `area` VALUES ('992295', '451400', '市级');
INSERT INTO `area` VALUES ('992303', '460100', '市级');
INSERT INTO `area` VALUES ('992308', '460300', '市级');
INSERT INTO `area` VALUES ('992319', '510100', '市级');
INSERT INTO `area` VALUES ('992339', '510300', '市级');
INSERT INTO `area` VALUES ('992346', '510400', '市级');
INSERT INTO `area` VALUES ('992352', '510500', '市级');
INSERT INTO `area` VALUES ('992360', '510600', '市级');
INSERT INTO `area` VALUES ('992367', '510700', '市级');
INSERT INTO `area` VALUES ('992378', '510800', '市级');
INSERT INTO `area` VALUES ('992386', '510900', '市级');
INSERT INTO `area` VALUES ('992392', '511000', '市级');
INSERT INTO `area` VALUES ('992398', '511100', '市级');
INSERT INTO `area` VALUES ('992410', '511300', '市级');
INSERT INTO `area` VALUES ('992420', '511400', '市级');
INSERT INTO `area` VALUES ('992427', '511500', '市级');
INSERT INTO `area` VALUES ('992438', '511600', '市级');
INSERT INTO `area` VALUES ('992446', '511700', '市级');
INSERT INTO `area` VALUES ('992454', '511800', '市级');
INSERT INTO `area` VALUES ('992463', '511900', '市级');
INSERT INTO `area` VALUES ('992469', '512000', '市级');
INSERT INTO `area` VALUES ('992474', '513200', '市级');
INSERT INTO `area` VALUES ('992488', '513300', '市级');
INSERT INTO `area` VALUES ('992507', '513400', '市级');
INSERT INTO `area` VALUES ('992525', '520100', '市级');
INSERT INTO `area` VALUES ('992537', '520200', '市级');
INSERT INTO `area` VALUES ('992542', '520300', '市级');
INSERT INTO `area` VALUES ('992557', '520400', '市级');
INSERT INTO `area` VALUES ('992575', '522300', '市级');
INSERT INTO `area` VALUES ('992593', '522600', '市级');
INSERT INTO `area` VALUES ('992610', '522700', '市级');
INSERT INTO `area` VALUES ('992623', '530100', '市级');
INSERT INTO `area` VALUES ('992638', '530300', '市级');
INSERT INTO `area` VALUES ('992648', '530400', '市级');
INSERT INTO `area` VALUES ('992658', '530500', '市级');
INSERT INTO `area` VALUES ('992664', '530600', '市级');
INSERT INTO `area` VALUES ('992676', '530700', '市级');
INSERT INTO `area` VALUES ('992682', '530800', '市级');
INSERT INTO `area` VALUES ('992693', '530900', '市级');
INSERT INTO `area` VALUES ('992702', '532300', '市级');
INSERT INTO `area` VALUES ('992713', '532500', '市级');
INSERT INTO `area` VALUES ('992727', '532600', '市级');
INSERT INTO `area` VALUES ('992736', '532800', '市级');
INSERT INTO `area` VALUES ('992740', '532900', '市级');
INSERT INTO `area` VALUES ('992753', '533100', '市级');
INSERT INTO `area` VALUES ('992759', '533300', '市级');
INSERT INTO `area` VALUES ('992764', '533400', '市级');
INSERT INTO `area` VALUES ('992768', '540100', '市级');
INSERT INTO `area` VALUES ('992789', '542200', '市级');
INSERT INTO `area` VALUES ('992821', '542400', '市级');
INSERT INTO `area` VALUES ('992833', '542500', '市级');
INSERT INTO `area` VALUES ('992849', '610100', '市级');
INSERT INTO `area` VALUES ('992863', '610200', '市级');
INSERT INTO `area` VALUES ('992868', '610300', '市级');
INSERT INTO `area` VALUES ('992881', '610400', '市级');
INSERT INTO `area` VALUES ('992896', '610500', '市级');
INSERT INTO `area` VALUES ('992908', '610600', '市级');
INSERT INTO `area` VALUES ('992922', '610700', '市级');
INSERT INTO `area` VALUES ('992934', '610800', '市级');
INSERT INTO `area` VALUES ('992947', '610900', '市级');
INSERT INTO `area` VALUES ('992958', '611000', '市级');
INSERT INTO `area` VALUES ('992966', '620100', '市级');
INSERT INTO `area` VALUES ('992975', '620300', '市级');
INSERT INTO `area` VALUES ('992978', '620400', '市级');
INSERT INTO `area` VALUES ('992984', '620500', '市级');
INSERT INTO `area` VALUES ('992992', '620600', '市级');
INSERT INTO `area` VALUES ('992997', '620700', '市级');
INSERT INTO `area` VALUES ('993004', '620800', '市级');
INSERT INTO `area` VALUES ('993012', '620900', '市级');
INSERT INTO `area` VALUES ('993020', '621000', '市级');
INSERT INTO `area` VALUES ('993029', '621100', '市级');
INSERT INTO `area` VALUES ('993037', '621200', '市级');
INSERT INTO `area` VALUES ('993047', '622900', '市级');
INSERT INTO `area` VALUES ('993056', '623000', '市级');
INSERT INTO `area` VALUES ('993065', '630100', '市级');
INSERT INTO `area` VALUES ('993080', '632200', '市级');
INSERT INTO `area` VALUES ('993085', '632300', '市级');
INSERT INTO `area` VALUES ('993090', '632500', '市级');
INSERT INTO `area` VALUES ('993096', '632600', '市级');
INSERT INTO `area` VALUES ('993103', '632700', '市级');
INSERT INTO `area` VALUES ('993110', '632800', '市级');
INSERT INTO `area` VALUES ('993116', '640100', '市级');
INSERT INTO `area` VALUES ('993123', '640200', '市级');
INSERT INTO `area` VALUES ('993127', '640300', '市级');
INSERT INTO `area` VALUES ('993133', '640400', '市级');
INSERT INTO `area` VALUES ('993139', '640500', '市级');
INSERT INTO `area` VALUES ('993143', '650100', '市级');
INSERT INTO `area` VALUES ('993153', '650200', '市级');
INSERT INTO `area` VALUES ('993162', '652200', '市级');
INSERT INTO `area` VALUES ('993166', '652300', '市级');
INSERT INTO `area` VALUES ('993175', '652700', '市级');
INSERT INTO `area` VALUES ('993180', '652800', '市级');
INSERT INTO `area` VALUES ('993190', '652900', '市级');
INSERT INTO `area` VALUES ('993200', '653000', '市级');
INSERT INTO `area` VALUES ('993205', '653100', '市级');
INSERT INTO `area` VALUES ('993218', '653200', '市级');
INSERT INTO `area` VALUES ('993227', '654000', '市级');
INSERT INTO `area` VALUES ('993238', '654200', '市级');
INSERT INTO `area` VALUES ('993246', '654300', '市级');
INSERT INTO `area` VALUES ('993650', '441900', '市级');
INSERT INTO `area` VALUES ('993682', '442000', '市级');
INSERT INTO `area` VALUES ('993722', '429004', '市级');
INSERT INTO `area` VALUES ('993749', '429005', '市级');
INSERT INTO `area` VALUES ('993782', '429006', '市级');
INSERT INTO `area` VALUES ('993810', '429021', '市级');
INSERT INTO `area` VALUES ('993834', '460200', '市级');
INSERT INTO `area` VALUES ('993846', '469001', '市级');
INSERT INTO `area` VALUES ('993854', '469002', '市级');
INSERT INTO `area` VALUES ('993870', '469003', '市级');
INSERT INTO `area` VALUES ('993893', '469005', '市级');
INSERT INTO `area` VALUES ('993913', '469006', '市级');
INSERT INTO `area` VALUES ('993930', '469007', '市级');
INSERT INTO `area` VALUES ('993942', '469021', '市级');
INSERT INTO `area` VALUES ('993956', '469022', '市级');
INSERT INTO `area` VALUES ('993967', '469023', '市级');
INSERT INTO `area` VALUES ('993983', '469024', '市级');
INSERT INTO `area` VALUES ('993997', '469030', '市级');
INSERT INTO `area` VALUES ('994012', '620200', '市级');
INSERT INTO `area` VALUES ('994018', '659001', '市级');
INSERT INTO `area` VALUES ('994026', '659002', '市级');
INSERT INTO `area` VALUES ('994045', '659003', '市级');
INSERT INTO `area` VALUES ('994055', '659004', '市级');
INSERT INTO `area` VALUES ('994056', '520500', '市级');
INSERT INTO `area` VALUES ('994057', '520600', '市级');
INSERT INTO `area` VALUES ('994058', '540200', '市级');
INSERT INTO `area` VALUES ('994059', '540300', '市级');
INSERT INTO `area` VALUES ('994060', '540400', '市级');
INSERT INTO `area` VALUES ('994061', '630200', '市级');
INSERT INTO `area` VALUES ('994062', '650400', '市级');
INSERT INTO `area` VALUES ('441900003000', '441900', '东城区');
INSERT INTO `area` VALUES ('441900004000', '441900', '南城区');
INSERT INTO `area` VALUES ('441900005000', '441900', '万江区');
INSERT INTO `area` VALUES ('441900006000', '441900', '莞城区');
INSERT INTO `area` VALUES ('441900101000', '441900', '石碣镇');
INSERT INTO `area` VALUES ('441900102000', '441900', '石龙镇');
INSERT INTO `area` VALUES ('441900103000', '441900', '茶山镇');
INSERT INTO `area` VALUES ('441900104000', '441900', '石排镇');
INSERT INTO `area` VALUES ('441900105000', '441900', '企石镇');
INSERT INTO `area` VALUES ('441900106000', '441900', '横沥镇');
INSERT INTO `area` VALUES ('441900107000', '441900', '桥头镇');
INSERT INTO `area` VALUES ('441900108000', '441900', '谢岗镇');
INSERT INTO `area` VALUES ('441900109000', '441900', '东坑镇');
INSERT INTO `area` VALUES ('441900110000', '441900', '常平镇');
INSERT INTO `area` VALUES ('441900111000', '441900', '寮步镇');
INSERT INTO `area` VALUES ('441900112000', '441900', '樟木头镇');
INSERT INTO `area` VALUES ('441900113000', '441900', '大朗镇');
INSERT INTO `area` VALUES ('441900114000', '441900', '黄江镇');
INSERT INTO `area` VALUES ('441900115000', '441900', '清溪镇');
INSERT INTO `area` VALUES ('441900116000', '441900', '塘厦镇');
INSERT INTO `area` VALUES ('441900117000', '441900', '凤岗镇');
INSERT INTO `area` VALUES ('441900118000', '441900', '大岭山镇');
INSERT INTO `area` VALUES ('441900119000', '441900', '长安镇');
INSERT INTO `area` VALUES ('441900121000', '441900', '虎门镇');
INSERT INTO `area` VALUES ('441900122000', '441900', '厚街镇');
INSERT INTO `area` VALUES ('441900123000', '441900', '沙田镇');
INSERT INTO `area` VALUES ('441900124000', '441900', '道滘镇');
INSERT INTO `area` VALUES ('441900125000', '441900', '洪梅镇');
INSERT INTO `area` VALUES ('441900126000', '441900', '麻涌镇');
INSERT INTO `area` VALUES ('441900127000', '441900', '望牛墩镇');
INSERT INTO `area` VALUES ('441900128000', '441900', '中堂镇');
INSERT INTO `area` VALUES ('441900129000', '441900', '高埗镇');
INSERT INTO `area` VALUES ('442000001000', '442000', '石岐区');
INSERT INTO `area` VALUES ('442000002000', '442000', '东区');
INSERT INTO `area` VALUES ('442000003000', '442000', '火炬区');
INSERT INTO `area` VALUES ('442000004000', '442000', '西区');
INSERT INTO `area` VALUES ('442000005000', '442000', '南区');
INSERT INTO `area` VALUES ('442000006000', '442000', '五桂山');
INSERT INTO `area` VALUES ('442000100000', '442000', '小榄镇');
INSERT INTO `area` VALUES ('442000101000', '442000', '黄圃镇');
INSERT INTO `area` VALUES ('442000102000', '442000', '民众镇');
INSERT INTO `area` VALUES ('442000103000', '442000', '东凤镇');
INSERT INTO `area` VALUES ('442000104000', '442000', '东升镇');
INSERT INTO `area` VALUES ('442000105000', '442000', '古镇镇');
INSERT INTO `area` VALUES ('442000106000', '442000', '沙溪镇');
INSERT INTO `area` VALUES ('442000107000', '442000', '坦洲镇');
INSERT INTO `area` VALUES ('442000108000', '442000', '港口镇');
INSERT INTO `area` VALUES ('442000109000', '442000', '三角镇');
INSERT INTO `area` VALUES ('442000110000', '442000', '横栏镇');
INSERT INTO `area` VALUES ('442000111000', '442000', '南头镇');
INSERT INTO `area` VALUES ('442000112000', '442000', '阜沙镇');
INSERT INTO `area` VALUES ('442000113000', '442000', '南朗镇');
INSERT INTO `area` VALUES ('442000114000', '442000', '三乡镇');
INSERT INTO `area` VALUES ('442000115000', '442000', '板芙镇');
INSERT INTO `area` VALUES ('442000116000', '442000', '大涌镇');
INSERT INTO `area` VALUES ('442000117000', '442000', '神湾镇');

-- ----------------------------
-- Table structure for bao_ad
-- ----------------------------
DROP TABLE IF EXISTS `bao_ad`;
CREATE TABLE `bao_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` smallint(6) DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `code` varchar(1024) DEFAULT NULL,
  `bg_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ad
-- ----------------------------

-- ----------------------------
-- Table structure for bao_admin
-- ----------------------------
DROP TABLE IF EXISTS `bao_admin`;
CREATE TABLE `bao_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `role_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_admin
-- ----------------------------

-- ----------------------------
-- Table structure for bao_advert_parameter
-- ----------------------------
DROP TABLE IF EXISTS `bao_advert_parameter`;
CREATE TABLE `bao_advert_parameter` (
  `time` tinyint(4) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `eachPay` decimal(11,3) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentRate` int(11) DEFAULT NULL,
  `cashRate` int(11) DEFAULT NULL,
  `inviteRate` int(11) DEFAULT NULL,
  `sincerityRate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_parameter
-- ----------------------------
INSERT INTO `bao_advert_parameter` VALUES ('48', '50', '0.100', '1', '10', '10', '10', '10');

-- ----------------------------
-- Table structure for bao_advert_red
-- ----------------------------
DROP TABLE IF EXISTS `bao_advert_red`;
CREATE TABLE `bao_advert_red` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertId` bigint(20) DEFAULT NULL,
  `redCount` int(11) DEFAULT NULL,
  `leftRedCount` int(11) DEFAULT NULL,
  `sum` varchar(255) DEFAULT NULL,
  `receiveTarget` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_red
-- ----------------------------
INSERT INTO `bao_advert_red` VALUES ('32', '39', '3', '0', '0.060', 'ALL', '广告红包', '0.000', '2017-05-17 14:21:15', '7236', '0', '2017-05-17 14:21:15', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('33', '40', '3', '2', '0.090', 'ALL', '广告红包', '0.030', '2017-05-17 14:41:09', '7226', '0', '2017-05-17 14:41:09', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('34', '42', '3', '0', '0.090', 'ALL', '广告红包', '0.000', '2017-05-17 14:42:32', '7226', '0', '2017-05-17 14:42:32', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('35', '41', '3', '0', '0.090', 'ALL', '广告红包', '0.000', '2017-05-17 14:42:32', '7226', '0', '2017-05-17 14:42:32', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('36', '43', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-05-17 16:04:13', '7226', '0', '2017-05-17 16:04:13', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('37', '44', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-05-17 23:42:25', '7237', '0', '2017-05-17 23:42:25', '7237', null);
INSERT INTO `bao_advert_red` VALUES ('38', '45', '4', '4', '0.090', 'ALL', '广告红包', '0.090', '2017-05-18 09:45:10', '7236', '0', '2017-05-18 09:45:10', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('39', '46', '2', '2', '0.060', 'ALL', '广告红包', '0.060', '2017-05-18 09:46:49', '7236', '0', '2017-05-18 09:46:49', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('40', '47', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 09:59:03', '7236', '0', '2017-05-18 09:59:03', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('41', '48', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 09:59:26', '7236', '0', '2017-05-18 09:59:26', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('42', '49', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 09:59:29', '7236', '0', '2017-05-18 09:59:29', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('43', '50', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 09:59:30', '7236', '0', '2017-05-18 09:59:30', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('44', '51', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:12:25', '7226', '0', '2017-05-18 11:12:25', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('45', '52', '3', '3', '0.090', 'ALL', '广告红包', '0.090', '2017-05-18 11:16:50', '7226', '0', '2017-05-18 11:16:50', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('46', '53', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:16:51', '7226', '0', '2017-05-18 11:16:51', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('47', '55', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:18:30', '7226', '0', '2017-05-18 11:18:30', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('48', '54', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:18:30', '7226', '0', '2017-05-18 11:18:30', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('49', '56', '3', '3', '0.090', 'ALL', '广告红包', '0.090', '2017-05-18 11:18:30', '7226', '0', '2017-05-18 11:18:30', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('50', '57', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:23:46', '7226', '0', '2017-05-18 11:23:46', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('51', '59', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:24:39', '7226', '0', '2017-05-18 11:24:39', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('52', '58', '3', '1', '0.090', 'ALL', '广告红包', '0.020', '2017-05-18 11:24:39', '7226', '0', '2017-05-18 11:24:39', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('53', '60', '3', '3', '0.090', 'ALL', '广告红包', '0.090', '2017-05-18 11:35:43', '7226', '0', '2017-05-18 11:35:43', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('54', '62', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:36:37', '7226', '0', '2017-05-18 11:36:37', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('55', '61', '3', '1', '0.090', 'ALL', '广告红包', '0.030', '2017-05-18 11:36:37', '7226', '0', '2017-05-18 11:36:37', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('56', '63', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:43:49', '7226', '0', '2017-05-18 11:43:49', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('57', '65', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:43:49', '7226', '0', '2017-05-18 11:43:49', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('58', '64', '3', '2', '0.090', 'ALL', '广告红包', '0.040', '2017-05-18 11:43:49', '7226', '0', '2017-05-18 11:43:49', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('59', '66', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 11:46:19', '7226', '0', '2017-05-18 11:46:19', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('60', '67', '2', '1', '0.060', 'ALL', '广告红包', '0.020', '2017-05-18 11:53:12', '7236', '0', '2017-05-18 11:53:12', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('61', '68', '2', '1', '0.030', 'ALL', '广告红包', '0.020', '2017-05-18 11:54:29', '7236', '0', '2017-05-18 11:54:29', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('62', '69', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-05-18 11:57:02', '7226', '0', '2017-05-18 11:57:02', '7226', null);
INSERT INTO `bao_advert_red` VALUES ('63', '70', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-05-18 12:22:31', '7236', '0', '2017-05-18 12:22:31', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('64', '71', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 12:22:31', '7236', '0', '2017-05-18 12:22:31', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('65', '72', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-05-18 12:24:40', '7236', '0', '2017-05-18 12:24:40', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('66', '74', '1', '1', '0.030', 'ALL', '广告红包', '0.030', '2017-05-18 12:24:40', '7236', '0', '2017-05-18 12:24:40', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('67', '73', '3', '2', '0.090', 'ALL', '广告红包', '0.080', '2017-05-18 12:24:40', '7236', '0', '2017-05-18 12:24:40', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('68', '83', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-05-18 21:23:13', '7243', '0', '2017-05-18 21:23:13', '7243', null);
INSERT INTO `bao_advert_red` VALUES ('69', '84', '2', '2', '0.030', 'ALL', '广告红包', '0.030', '2017-06-06 11:16:52', '7236', '0', '2017-06-06 11:16:52', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('70', '85', '2', '1', '0.030', 'ALL', '广告红包', '0.020', '2017-06-06 11:19:53', '7236', '0', '2017-06-06 11:19:53', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('71', '86', '2', '1', '0.030', 'ALL', '广告红包', '0.010', '2017-06-06 11:20:53', '7236', '0', '2017-06-06 11:20:53', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('72', '87', '2', '1', '0.030', 'ALL', '广告红包', '0.020', '2017-06-06 11:21:03', '7236', '0', '2017-06-06 11:21:03', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('73', '88', '2', '1', '0.030', 'ALL', '广告红包', '0.010', '2017-06-06 11:21:14', '7236', '0', '2017-06-06 11:21:14', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('74', '89', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-06-06 11:25:50', '7236', '0', '2017-06-06 11:25:50', '7236', null);
INSERT INTO `bao_advert_red` VALUES ('75', '90', '1', '0', '0.030', 'ALL', '广告红包', '0.000', '2017-06-06 11:27:13', '7236', '0', '2017-06-06 11:27:13', '7236', null);

-- ----------------------------
-- Table structure for bao_advert_red_click
-- ----------------------------
DROP TABLE IF EXISTS `bao_advert_red_click`;
CREATE TABLE `bao_advert_red_click` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `best` tinyint(4) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `userAccount` varchar(255) DEFAULT NULL,
  `advertRedId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_red_click
-- ----------------------------
INSERT INTO `bao_advert_red_click` VALUES ('40', '0.03', '0.060', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.03', '35', '2017-05-17 14:49:13', '7226', '0', '2017-05-17 14:49:13', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('41', '0.01', '0.050', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.01', '35', '2017-05-17 14:49:32', '7226', '0', '2017-05-17 14:49:32', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('42', '0.05', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.05', '35', '2017-05-17 14:50:35', '7226', '0', '2017-05-17 14:50:35', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('43', '0.02', '0.070', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.02', '34', '2017-05-17 14:52:51', '7226', '0', '2017-05-17 14:52:51', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('44', '0.06', '0.030', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.06', '33', '2017-05-17 14:53:10', '7226', '0', '2017-05-17 14:53:10', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('45', '0.03', '0.030', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.03', '32', '2017-05-17 14:53:17', '7226', '0', '2017-05-17 14:53:17', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('46', '0.01', '0.020', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.01', '32', '2017-05-17 14:53:53', '7226', '0', '2017-05-17 14:53:53', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('47', '0.02', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.02', '32', '2017-05-17 14:54:13', '7226', '0', '2017-05-17 14:54:13', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('48', '0.06', '0.010', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.06', '34', '2017-05-17 14:55:28', '7226', '0', '2017-05-17 14:55:28', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('49', '0.01', '0.000', '0', '哈哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.01', '34', '2017-05-17 15:02:07', '7236', '0', '2017-05-17 15:02:07', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('50', '0.03', '0.000', '0', '哈哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.03', '36', '2017-05-17 16:17:02', '7236', '0', '2017-05-17 16:17:02', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('51', '0.03', '0.060', '0', '哈哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.03', '52', '2017-05-18 11:25:33', '7236', '0', '2017-05-18 11:25:33', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('52', '0.01', '0.020', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.01', '61', '2017-05-18 11:57:28', '7226', '0', '2017-05-18 11:57:28', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('53', '0.04', '0.020', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.04', '60', '2017-05-18 11:57:31', '7226', '0', '2017-05-18 11:57:31', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('54', '0.01', '0.080', '0', '哈哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.01', '67', '2017-05-18 14:54:19', '7236', '0', '2017-05-18 14:54:19', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('55', '0.03', '0.000', '0', '哈哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.03', '62', '2017-05-19 18:54:23', '7236', '0', '2017-05-19 18:54:23', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('56', '0.05', '0.040', '0', '嘻嘻', 'http://oez2a4f3v.bkt.clouddn.com/FqHspSYV-U-SN86Hv3Xnk8KV6z__', '0.05', '58', '2017-05-24 07:23:03', '7237', '0', '2017-05-24 07:23:03', '7237');
INSERT INTO `bao_advert_red_click` VALUES ('57', '0.01', '0.080', '0', '嘻嘻', 'http://oez2a4f3v.bkt.clouddn.com/FqHspSYV-U-SN86Hv3Xnk8KV6z__', '0.01', '55', '2017-05-24 07:23:05', '7237', '0', '2017-05-24 07:23:05', '7237');
INSERT INTO `bao_advert_red_click` VALUES ('58', '0.04', '0.020', '0', '嘻嘻', 'http://oez2a4f3v.bkt.clouddn.com/FqHspSYV-U-SN86Hv3Xnk8KV6z__', '0.04', '52', '2017-05-24 07:23:07', '7237', '0', '2017-05-24 07:23:07', '7237');
INSERT INTO `bao_advert_red_click` VALUES ('59', '0.03', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.03', '65', '2017-05-25 10:38:46', '7226', '0', '2017-05-25 10:38:46', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('60', '0.03', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.03', '63', '2017-05-25 10:43:51', '7226', '0', '2017-05-25 10:43:51', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('61', '0.05', '0.030', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.05', '55', '2017-05-31 09:08:27', '7226', '0', '2017-05-31 09:08:27', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('64', '0.01', '0.020', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.01', '70', '2017-06-06 11:20:36', '7226', '0', '2017-06-06 11:20:36', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('65', '0.02', '0.010', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.02', '71', '2017-06-06 11:20:57', '7226', '0', '2017-06-06 11:20:57', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('66', '0.01', '0.020', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.01', '72', '2017-06-06 11:21:07', '7226', '0', '2017-06-06 11:21:07', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('67', '0.02', '0.010', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.02', '73', '2017-06-06 11:21:26', '7226', '0', '2017-06-06 11:21:26', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('68', '0.03', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.03', '74', '2017-06-06 11:26:06', '7226', '0', '2017-06-06 11:26:06', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('69', '0.03', '0.000', '0', '不死鸟', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', '0.03', '75', '2017-06-06 11:27:17', '7226', '0', '2017-06-06 11:27:17', '7226');

-- ----------------------------
-- Table structure for bao_adviertisement
-- ----------------------------
DROP TABLE IF EXISTS `bao_adviertisement`;
CREATE TABLE `bao_adviertisement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `receive` varchar(255) DEFAULT NULL,
  `receiveGroup` varchar(255) DEFAULT NULL,
  `image` text,
  `redMoney` decimal(11,2) DEFAULT NULL,
  `hasGetMoney` decimal(11,2) DEFAULT NULL,
  `readNum` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `pay` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_adviertisement
-- ----------------------------
INSERT INTO `bao_adviertisement` VALUES ('47', '7236', '好友群发', '好友群发', '1', '7226,null,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.00', '0', '1', '2017-05-18 09:59:03', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('48', '7236', '好友群发', '好友群发', '1', '7226,null,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.00', '0', '1', '2017-05-18 09:59:26', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('49', '7236', '好友群发', '好友群发', '1', '7226,null,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.00', '0', '1', '2017-05-18 09:59:29', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('50', '7236', '好友群发', '好友群发', '1', '7226,null,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.00', '0', '1', '2017-05-18 09:59:30', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('51', '7226', 'IOS ', 'IOS 测试', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495077120.png,', '0.03', '0.00', '0', '1', '2017-05-18 11:12:25', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('52', '7226', 'IOS ', '啦啦啦', '2', '7226,7236,7237,', null, '', '0.09', '0.00', '0', '1', '2017-05-18 11:16:50', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('53', '7226', 'IOS ', 'IOS 测试', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495077387.png,', '0.03', '0.00', '0', '1', '2017-05-18 11:16:51', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('54', '7226', 'IOS ', 'IOS 测试', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495077486.png,', '0.03', '0.00', '0', '1', '2017-05-18 11:18:30', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('55', '7226', '测试好友群发iOS ', 'IOS ', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:18:30', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('56', '7226', 'IOS ', '啦啦啦', '2', '7226,7236,7237,', null, '', '0.09', '0.00', '0', '1', '2017-05-18 11:18:30', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('57', '7226', '好友测试', '好友测试', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:23:46', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('58', '7226', '其他群发', '其他', '2', '7226,7236,7237,', null, '', '0.09', '0.07', '2', '1', '2017-05-18 11:24:39', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('59', '7226', '好友测试', '好友测试', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:24:39', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('60', '7226', '1', '1', '2', '7226,7236,7237,', null, '', '0.09', '0.00', '0', '1', '2017-05-18 11:35:41', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('61', '7226', '1', '1', '2', '7226,7236,7237,', null, '', '0.09', '0.06', '3', '1', '2017-05-18 11:36:37', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('62', '7226', '2', '2', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:36:37', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('63', '7226', '3', '3', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:43:49', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('64', '7226', '1', '1', '2', '7226,7236,7237,', null, '', '0.09', '0.05', '1', '1', '2017-05-18 11:43:49', '0.18');
INSERT INTO `bao_adviertisement` VALUES ('65', '7226', '2', '2', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:43:49', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('66', '7226', '4', '4', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 11:46:19', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('67', '7236', '其他群发22222', '其他群发22222', '2', '7226,7237,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.06', '0.06', '3', '1', '2017-05-18 11:53:12', '0.12');
INSERT INTO `bao_adviertisement` VALUES ('68', '7236', '好友群发1111111', '好友群发111111', '1', '7226,null,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.01', '2', '1', '2017-05-18 11:54:29', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('69', '7226', '555', '42', '1', '7236,', null, '', '0.03', '0.03', '1', '1', '2017-05-18 11:57:02', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('70', '7236', 'hhhh', 'Hhhh', '1', '7226,', null, '', '0.03', '0.03', '1', '1', '2017-05-18 12:22:31', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('71', '7236', 'gggg', 'Ggg', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 12:22:31', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('72', '7236', 'hhhh', 'Hhhh', '1', '7226,', null, '', '0.03', '0.03', '4', '1', '2017-05-18 12:24:40', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('74', '7236', 'gggg', 'Ggg', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 12:24:40', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('75', '7226', '哈哈', '哈哈', '1', '7236,', null, '', '0.03', '0.00', '0', '1', '2017-05-18 21:23:13', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('76', '7237', '日狗？？', '日狗吗', '1', '7236,', null, 'FqekOIjCvVBKBe0iJtXzvfBwZIGh,', '0.03', '0.00', '0', '1', '2017-05-29 01:16:52', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('77', '7226', 'abc', 'Kafka', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496069824.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496069824.png,', '0.03', '0.00', '0', '1', '2017-05-29 22:57:29', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('78', '7226', 'aa', 'Aa', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496070348.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496070348.png,', '0.03', '0.00', '0', '1', '2017-05-29 23:06:13', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('79', '7226', '5.29', '5.29', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496070429.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496070429.png,', '0.03', '0.00', '0', '1', '2017-05-29 23:07:34', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('80', '7226', 'aa', 'Aa', '1', '7236,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496070429.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496070429.png,', '0.03', '0.00', '0', '1', '2017-05-29 23:07:34', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('81', '7243', 'abc', 'LCD的', '1', '7244,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496071348.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496071348.png,', '0.03', '0.00', '0', '1', '2017-05-29 23:22:52', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('82', '7243', 'chi', '哦hh', '1', '7244,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496071460.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_3_1496071460.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1496071460.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_4_1496071460.png,', '0.03', '0.00', '0', '1', '2017-05-29 23:24:45', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('83', '7243', 'ios', 'Sss', '1', '7244,', null, 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1496191390.png,', '0.03', '0.06', '3', '0', '2017-06-30 11:00:25', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('84', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.00', '0', '1', '2017-06-06 11:16:50', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('85', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.01', '3', '1', '2017-06-06 11:19:49', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('86', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.02', '2', '1', '2017-06-06 11:20:53', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('87', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.01', '3', '1', '2017-06-06 11:21:03', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('88', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.02', '3', '1', '2017-06-06 11:21:14', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('89', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.03', '3', '1', '2017-06-06 11:25:50', '0.06');
INSERT INTO `bao_adviertisement` VALUES ('90', '7236', '好友群发', '好友群发', '1', '7226,', null, 'Fk7wzHe_lbqhBajsEsRWoA3tMbvk,', '0.03', '0.03', '2', '1', '2017-06-06 11:27:13', '0.06');

-- ----------------------------
-- Table structure for bao_ad_site
-- ----------------------------
DROP TABLE IF EXISTS `bao_ad_site`;
CREATE TABLE `bao_ad_site` (
  `site_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(32) DEFAULT NULL,
  `site_name` varchar(64) DEFAULT NULL,
  `site_type` tinyint(1) DEFAULT NULL,
  `site_place` smallint(5) DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ad_site
-- ----------------------------

-- ----------------------------
-- Table structure for bao_appusers
-- ----------------------------
DROP TABLE IF EXISTS `bao_appusers`;
CREATE TABLE `bao_appusers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `qrCode` varchar(255) DEFAULT NULL,
  `districtId` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `thermalSignatrue` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `loginFailedCount` int(11) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `paypassword` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `backAvatar` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `iscy` tinyint(4) DEFAULT '0',
  `isvip` tinyint(4) unsigned zerofill DEFAULT '0000',
  `isbang` varchar(4) DEFAULT '0',
  `age` tinyint(4) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `spreadQrCode` varchar(255) DEFAULT NULL COMMENT '推广二维码',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_appusers
-- ----------------------------
INSERT INTO `bao_appusers` VALUES ('1', null, null, null, 'images/1493125179342.png', '山东省 济南市 历下区', '0', '帅气十足', '18263826828', null, '0', '2017-04-24 18:18:25', null, '0', '2017-06-01 11:19:44', '7226', '0', null, '96e79218965eb72c92a549dd5a330112', null, null, '7226', '6f252320329ba0eaf716f44dc320d882', '0', '0000', '0', '23', null, '泡妞', null, null);
INSERT INTO `bao_appusers` VALUES ('3', null, null, '1', 'images/1493125431158.png', null, null, null, '18575618939', null, '0', '2017-04-25 22:20:03', null, '0', '2017-04-25 22:20:03', null, '0', null, null, null, null, '7235', 'bc351630a69b8b33b5706a91adb0b4a3', '0', '0000', null, null, null, null, null, null);
INSERT INTO `bao_appusers` VALUES ('4', null, null, '2', 'images/1493125431158.png', '内蒙古自治区 呼和浩特市 赛罕区', '1', null, '14763766689', null, '0', '2017-04-25 22:21:09', null, '0', '2017-05-17 13:45:13', '7236', '0', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, '7236', 'b9d48cefa8893be1667ca1d200bc3074', '0', '0000', null, '17', null, '睡觉', null, null);
INSERT INTO `bao_appusers` VALUES ('5', null, null, '3', 'images/1493125431158.png', '北京市 海淀区', '0', null, '18572651299', null, '0', '2017-04-25 22:21:42', null, '0', '2017-05-09 23:25:52', '7237', '0', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, '7237', '47a4776755fb4e7f6fc42d91d52426ce', '0', '0000', null, '21', '摸金校尉', '日狗', null, null);
INSERT INTO `bao_appusers` VALUES ('7', null, null, '4', 'images/1493125431158.png', '山东省 济宁市 兖州市', '0', null, '18657217617', null, '0', '2017-05-05 23:32:12', null, '0', '2017-05-06 00:02:39', '7240', '0', null, null, null, null, '7240', '1f024064f228229f149243483441c891', '0', '0000', null, null, null, null, 'spreadImages/1493998335689spread.png', null);
INSERT INTO `bao_appusers` VALUES ('8', null, null, '5', 'images/1493125431158.png', '福建省 宁德市 鼓楼区', null, '乐观 向上', '18254215546', null, '0', '2017-05-17 15:21:52', null, '0', '2017-05-31 11:09:54', '7243', '0', null, '96e79218965eb72c92a549dd5a330112', null, null, '7243', '0d8207b0dc7ed4ece23e067b0ea4cd3e', '0', '0000', null, '12', '医生', '篮球', 'spreadImages/1495005716986spread.png', null);
INSERT INTO `bao_appusers` VALUES ('9', null, null, '6', 'images/1493125431158.png', '青海省 黄南藏族自治州 尖扎县', '0', '啃了咯哦哦哦哦哦', '18153254126', null, '0', '2017-05-22 13:47:08', null, '0', '2017-05-29 13:06:16', '7244', '0', null, null, null, null, '7244', '23a0ca49b15fd7a7940b9005e05a0a38', '0', '0000', null, '33', '教师', 'ice 啦啦啦', 'spreadImages/1495432029242spread.png', null);
INSERT INTO `bao_appusers` VALUES ('10', null, null, '7', 'images/1493125179342.png', null, null, null, '18510829664', null, '0', '2017-06-05 16:12:10', null, '0', '2017-06-05 16:12:10', '7246', '0', null, null, null, null, null, 'e4d4c37aef8486e2f12b1d5269b99527', '0', '0000', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for bao_app_citys
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_citys`;
CREATE TABLE `bao_app_citys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pinyin` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_citys
-- ----------------------------

-- ----------------------------
-- Table structure for bao_app_code
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_code`;
CREATE TABLE `bao_app_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_code
-- ----------------------------
INSERT INTO `bao_app_code` VALUES ('1', '203924', '18575618939', '2017-04-24 17:42:29', null, '0', '2017-04-24 17:42:29', null);
INSERT INTO `bao_app_code` VALUES ('2', '225993', '18575618939', '2017-04-24 17:42:31', null, '0', '2017-04-24 17:42:31', null);
INSERT INTO `bao_app_code` VALUES ('3', '519762', '18575618939', '2017-04-24 17:43:14', null, '0', '2017-04-24 17:43:14', null);
INSERT INTO `bao_app_code` VALUES ('4', '483287', '18575618939', '2017-04-24 17:43:23', null, '0', '2017-04-24 17:43:23', null);
INSERT INTO `bao_app_code` VALUES ('5', '931052', '18575618939', '2017-04-24 17:43:30', null, '0', '2017-04-24 17:43:30', null);
INSERT INTO `bao_app_code` VALUES ('6', '933802', '18575618939', '2017-04-24 17:44:10', null, '0', '2017-04-24 17:44:10', null);
INSERT INTO `bao_app_code` VALUES ('7', '380056', '18575618939', '2017-04-24 17:45:39', null, '0', '2017-04-24 17:45:39', null);
INSERT INTO `bao_app_code` VALUES ('8', '264964', '18575618939', '2017-04-24 17:45:39', null, '0', '2017-04-24 17:45:39', null);
INSERT INTO `bao_app_code` VALUES ('9', '242707', '18575618939', '2017-04-24 17:45:54', null, '0', '2017-04-24 17:45:54', null);
INSERT INTO `bao_app_code` VALUES ('10', '187963', '18575618939', '2017-04-24 17:45:56', null, '0', '2017-04-24 17:45:56', null);
INSERT INTO `bao_app_code` VALUES ('11', '735818', '18575618939', '2017-04-24 17:45:57', null, '0', '2017-04-24 17:45:57', null);
INSERT INTO `bao_app_code` VALUES ('12', '430222', '18575618939', '2017-04-24 17:45:58', null, '0', '2017-04-24 17:45:58', null);
INSERT INTO `bao_app_code` VALUES ('13', '214509', '18263826828', '2017-04-24 18:17:16', null, '0', '2017-04-24 18:17:16', null);
INSERT INTO `bao_app_code` VALUES ('14', '212935', '18575618939', '2017-04-24 21:49:27', null, '0', '2017-04-24 21:49:27', null);
INSERT INTO `bao_app_code` VALUES ('15', '404709', '18575618939', '2017-04-25 13:33:32', null, '0', '2017-04-25 13:33:32', null);
INSERT INTO `bao_app_code` VALUES ('16', '435660', '18263826828', '2017-04-25 13:51:25', null, '0', '2017-04-25 13:51:25', null);
INSERT INTO `bao_app_code` VALUES ('17', '350408', '18263826828', '2017-04-25 13:52:37', null, '0', '2017-04-25 13:52:37', null);
INSERT INTO `bao_app_code` VALUES ('18', '292382', '18263826828', '2017-04-25 14:00:01', null, '0', '2017-04-25 14:00:01', null);
INSERT INTO `bao_app_code` VALUES ('19', '474499', '18263826828', '2017-04-25 14:03:33', null, '0', '2017-04-25 14:03:33', null);
INSERT INTO `bao_app_code` VALUES ('20', '174859', '14763766689', '2017-04-25 14:30:34', null, '0', '2017-04-25 14:30:34', null);
INSERT INTO `bao_app_code` VALUES ('21', '239419', '14763766689', '2017-04-25 19:59:04', null, '0', '2017-04-25 19:59:04', null);
INSERT INTO `bao_app_code` VALUES ('22', '324729', '14763766689', '2017-04-25 20:02:50', null, '0', '2017-04-25 20:02:50', null);
INSERT INTO `bao_app_code` VALUES ('23', '859686', '14763766689', '2017-04-25 20:14:42', null, '0', '2017-04-25 20:14:42', null);
INSERT INTO `bao_app_code` VALUES ('24', '155172', '18657217617', '2017-04-25 20:17:55', null, '0', '2017-04-25 20:17:55', null);
INSERT INTO `bao_app_code` VALUES ('25', '472827', '14763766689', '2017-04-25 20:29:33', null, '0', '2017-04-25 20:29:33', null);
INSERT INTO `bao_app_code` VALUES ('26', '560894', '14763766689', '2017-04-25 20:29:50', null, '0', '2017-04-25 20:29:50', null);
INSERT INTO `bao_app_code` VALUES ('27', '142509', '18572651299', '2017-04-25 20:33:37', null, '0', '2017-04-25 20:33:37', null);
INSERT INTO `bao_app_code` VALUES ('28', '512806', '14763766689', '2017-04-25 20:34:25', null, '0', '2017-04-25 20:34:25', null);
INSERT INTO `bao_app_code` VALUES ('29', '809330', '14763766689', '2017-04-25 20:37:39', null, '0', '2017-04-25 20:37:39', null);
INSERT INTO `bao_app_code` VALUES ('30', '016806', '14763766689', '2017-04-25 21:54:35', null, '0', '2017-04-25 21:54:35', null);
INSERT INTO `bao_app_code` VALUES ('31', '826492', '14763766689', '2017-04-25 22:00:14', null, '0', '2017-04-25 22:00:14', null);
INSERT INTO `bao_app_code` VALUES ('32', '022251', '14763766689', '2017-04-25 22:02:47', null, '0', '2017-04-25 22:02:47', null);
INSERT INTO `bao_app_code` VALUES ('33', '656216', '14763766689', '2017-04-25 22:07:28', null, '0', '2017-04-25 22:07:28', null);
INSERT INTO `bao_app_code` VALUES ('34', '823486', '18575618939', '2017-04-25 22:19:19', null, '0', '2017-04-25 22:19:19', null);
INSERT INTO `bao_app_code` VALUES ('35', '167922', '14763766689', '2017-04-25 22:20:42', null, '0', '2017-04-25 22:20:42', null);
INSERT INTO `bao_app_code` VALUES ('36', '649007', '18572651299', '2017-04-25 22:21:24', null, '0', '2017-04-25 22:21:24', null);
INSERT INTO `bao_app_code` VALUES ('37', '763945', '14763766688', '2017-04-29 16:12:46', null, '0', '2017-04-29 16:12:46', null);
INSERT INTO `bao_app_code` VALUES ('38', '183241', '13645474009', '2017-04-29 16:14:19', null, '0', '2017-04-29 16:14:19', null);
INSERT INTO `bao_app_code` VALUES ('39', '621655', '13645474009', '2017-04-29 16:15:00', null, '0', '2017-04-29 16:15:00', null);
INSERT INTO `bao_app_code` VALUES ('40', '690213', '18572651299', '2017-05-01 19:13:56', null, '0', '2017-05-01 19:13:56', null);
INSERT INTO `bao_app_code` VALUES ('41', '146820', '18572651299', '2017-05-01 19:20:32', null, '0', '2017-05-01 19:20:32', null);
INSERT INTO `bao_app_code` VALUES ('42', '552290', '18575618939', '2017-05-02 18:19:09', null, '0', '2017-05-02 18:19:09', null);
INSERT INTO `bao_app_code` VALUES ('43', '872155', '15701245157', '2017-05-05 12:40:46', null, '0', '2017-05-05 12:40:46', null);
INSERT INTO `bao_app_code` VALUES ('44', '302802', '15701245157', '2017-05-05 15:05:31', null, '0', '2017-05-05 15:05:31', null);
INSERT INTO `bao_app_code` VALUES ('45', '826743', '18575618939', '2017-05-05 17:51:17', null, '0', '2017-05-05 17:51:17', null);
INSERT INTO `bao_app_code` VALUES ('46', '254955', '18575618939', '2017-05-05 21:32:54', null, '0', '2017-05-05 21:32:54', null);
INSERT INTO `bao_app_code` VALUES ('47', '940046', '14763766689', '2017-05-05 23:27:25', null, '0', '2017-05-05 23:27:25', null);
INSERT INTO `bao_app_code` VALUES ('48', '792196', '18657217617', '2017-05-05 23:31:20', null, '0', '2017-05-05 23:31:20', null);
INSERT INTO `bao_app_code` VALUES ('49', '951018', '18572651299', '2017-05-07 21:58:35', null, '0', '2017-05-07 21:58:35', null);
INSERT INTO `bao_app_code` VALUES ('50', '409257', '18572651299', '2017-05-07 22:01:41', null, '0', '2017-05-07 22:01:41', null);
INSERT INTO `bao_app_code` VALUES ('51', '003181', '18263826828', '2017-05-08 12:28:57', null, '0', '2017-05-08 12:28:57', null);
INSERT INTO `bao_app_code` VALUES ('52', '340976', '18263826828', '2017-05-08 12:38:19', null, '0', '2017-05-08 12:38:19', null);
INSERT INTO `bao_app_code` VALUES ('53', '312453', '18263826828', '2017-05-08 12:43:15', null, '0', '2017-05-08 12:43:15', null);
INSERT INTO `bao_app_code` VALUES ('54', '297744', '18575618939', '2017-05-14 14:11:17', null, '0', '2017-05-14 14:11:17', null);
INSERT INTO `bao_app_code` VALUES ('55', '283726', '18575618939', '2017-05-14 14:11:17', null, '0', '2017-05-14 14:11:17', null);
INSERT INTO `bao_app_code` VALUES ('56', '360115', '14763766689', '2017-05-16 15:39:03', null, '0', '2017-05-16 15:39:03', null);
INSERT INTO `bao_app_code` VALUES ('57', '034776', '17753766471', '2017-05-16 15:42:35', null, '0', '2017-05-16 15:42:35', null);
INSERT INTO `bao_app_code` VALUES ('58', '921561', '18634097877', '2017-05-16 15:44:09', null, '0', '2017-05-16 15:44:09', null);
INSERT INTO `bao_app_code` VALUES ('59', '667726', '18263826828', '2017-05-17 09:49:50', null, '0', '2017-05-17 09:49:50', null);
INSERT INTO `bao_app_code` VALUES ('60', '329247', '18254215546', '2017-05-17 15:20:08', null, '0', '2017-05-17 15:20:08', null);
INSERT INTO `bao_app_code` VALUES ('61', '025839', '18263826828', '2017-05-17 20:48:56', null, '0', '2017-05-17 20:48:56', null);
INSERT INTO `bao_app_code` VALUES ('62', '920276', '18575618939', '2017-05-20 12:21:35', null, '0', '2017-05-20 12:21:35', null);
INSERT INTO `bao_app_code` VALUES ('63', '037196', '18575618939', '2017-05-20 12:23:34', null, '0', '2017-05-20 12:23:34', null);
INSERT INTO `bao_app_code` VALUES ('64', '133105', '18575618939', '2017-05-20 12:26:20', null, '0', '2017-05-20 12:26:20', null);
INSERT INTO `bao_app_code` VALUES ('65', '176318', '18153254126', '2017-05-22 13:46:39', null, '0', '2017-05-22 13:46:39', null);
INSERT INTO `bao_app_code` VALUES ('66', '840647', '18575618939', '2017-06-05 15:12:08', null, '0', '2017-06-05 15:12:08', null);

-- ----------------------------
-- Table structure for bao_app_district
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_district`;
CREATE TABLE `bao_app_district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gameurl` varchar(255) DEFAULT NULL,
  `shopurl` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_district
-- ----------------------------

-- ----------------------------
-- Table structure for bao_app_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_evaluate`;
CREATE TABLE `bao_app_evaluate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `objectId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `orderBy` bigint(20) DEFAULT NULL,
  `likeOn` tinyint(4) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_evaluate
-- ----------------------------
INSERT INTO `bao_app_evaluate` VALUES ('1', '1', null, null, '0', '高原:哈哈', '2017-04-27 11:35:53', '7236', '0', '2017-04-27 11:35:53', '7236', '0');
INSERT INTO `bao_app_evaluate` VALUES ('2', '1', null, null, '0', '高原:哦哦哦', '2017-04-27 11:36:03', '7236', '0', '2017-04-27 11:36:03', '7236', '0');
INSERT INTO `bao_app_evaluate` VALUES ('3', '1', null, null, '0', '????:哦牛批', '2017-04-27 21:06:49', '7237', '0', '2017-04-27 21:06:49', '7237', '0');
INSERT INTO `bao_app_evaluate` VALUES ('4', '1', null, null, '0', '高原:为什么是？？？？', '2017-04-27 21:07:38', '7236', '0', '2017-04-27 21:07:38', '7236', '0');
INSERT INTO `bao_app_evaluate` VALUES ('5', '2', null, null, '0', '我不做大哥好多年:啊啊啊？', '2017-04-28 13:55:53', '7237', '0', '2017-04-28 13:55:53', '7237', '0');
INSERT INTO `bao_app_evaluate` VALUES ('6', '3', null, null, '0', '总有刁民想害朕:Lll', '2017-05-01 17:56:14', '7226', '0', '2017-05-01 17:56:14', '7226', '0');

-- ----------------------------
-- Table structure for bao_app_experience
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_experience`;
CREATE TABLE `bao_app_experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `reminds` varchar(255) DEFAULT NULL,
  `districtId` varchar(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_experience
-- ----------------------------
INSERT INTO `bao_app_experience` VALUES ('26', 'Lalal', null, null, '2017-05-25 21:48:42', '7226', '0', '2017-05-25 21:48:42', '7226');
INSERT INTO `bao_app_experience` VALUES ('27', 'Hahios', null, null, '2017-05-25 22:35:53', '7226', '0', '2017-05-25 22:35:53', '7226');
INSERT INTO `bao_app_experience` VALUES ('28', 'Lal', null, null, '2017-05-25 22:41:01', '7226', '0', '2017-05-25 22:41:01', '7226');
INSERT INTO `bao_app_experience` VALUES ('29', 'Lalalallala eee', null, null, '2017-05-25 22:41:26', '7226', '0', '2017-05-25 22:41:26', '7226');

-- ----------------------------
-- Table structure for bao_app_lable
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_lable`;
CREATE TABLE `bao_app_lable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `friendId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_lable
-- ----------------------------
INSERT INTO `bao_app_lable` VALUES ('1', '7236', '123123', '7237', '2017-05-23 08:48:11', '7226', '0', '2017-05-23 08:48:11', '7226');
INSERT INTO `bao_app_lable` VALUES ('2', '7236', '111', '7226', '2017-05-24 23:11:15', null, '0', '2017-05-24 23:11:15', null);

-- ----------------------------
-- Table structure for bao_app_lable_member
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_lable_member`;
CREATE TABLE `bao_app_lable_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `friendId` bigint(20) DEFAULT NULL,
  `lableId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_lable_member
-- ----------------------------
INSERT INTO `bao_app_lable_member` VALUES ('1', '8', '1', '哈哈哈', '7236', null, '2017-05-23 08:48:11', '7226', '0', '2017-05-23 08:48:11', '7226');
INSERT INTO `bao_app_lable_member` VALUES ('2', '8', '1', '哈哈哈', '7236', null, '2017-05-23 13:46:44', '7226', '0', '2017-05-23 13:46:44', '7226');
INSERT INTO `bao_app_lable_member` VALUES ('3', '8', '1', '哈哈哈', '7236', null, '2017-05-23 13:47:18', '7226', '0', '2017-05-23 13:47:18', '7226');

-- ----------------------------
-- Table structure for bao_app_news
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_news`;
CREATE TABLE `bao_app_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '新闻内容',
  `browseVolume` varchar(255) DEFAULT NULL COMMENT '新闻浏览量',
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_news
-- ----------------------------

-- ----------------------------
-- Table structure for bao_app_order
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_order`;
CREATE TABLE `bao_app_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `rechargeStatus` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `actualamount` varchar(255) DEFAULT NULL,
  `buinessname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_order
-- ----------------------------
INSERT INTO `bao_app_order` VALUES ('1', '1928262706', '2017-05-16 19:28:27', '7226', '0', '2017-05-16 19:28:27', '7226', null, '2', '0.01', null, null, null);
INSERT INTO `bao_app_order` VALUES ('2', '1930024281', '2017-05-16 19:30:03', '7226', '0', '2017-05-16 19:30:03', '7226', null, '2', '0.01', null, null, null);
INSERT INTO `bao_app_order` VALUES ('3', '1956471488', '2017-05-16 19:56:48', '7226', '0', '2017-05-16 19:56:48', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('4', '1958554142', '2017-05-16 19:58:55', '7226', '0', '2017-05-16 19:58:55', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('5', '1959136388', '2017-05-16 19:59:14', '7226', '0', '2017-05-16 19:59:14', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('6', '2029239922', '2017-05-16 20:29:24', '7226', '0', '2017-05-16 20:29:24', '7226', null, '2', '2.00', '2.00', null, null);
INSERT INTO `bao_app_order` VALUES ('7', '2030571841', '2017-05-16 20:30:58', '7226', '0', '2017-05-16 20:30:58', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('8', '2030573702', '2017-05-16 20:30:58', '7226', '0', '2017-05-16 20:30:58', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('9', '2045148159', '2017-05-16 20:45:15', '7226', '0', '2017-05-16 20:45:15', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('10', '2047521523', '2017-05-16 20:47:53', '7226', '0', '2017-05-16 20:47:53', '7226', null, '2', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('11', '', '2017-05-16 22:12:57', '7226', '0', '2017-05-16 22:12:57', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('12', '', '2017-05-16 22:15:32', '7226', '0', '2017-05-16 22:15:32', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('13', '2237066667', '2017-05-16 22:37:15', '7226', '0', '2017-05-16 22:37:15', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('14', '2237081919', '2017-05-16 22:37:15', '7226', '0', '2017-05-16 22:37:15', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('15', '', '2017-05-16 23:38:45', '7226', '0', '2017-05-16 23:38:45', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('16', '', '2017-05-16 23:57:03', '7226', '0', '2017-05-16 23:57:03', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('17', '', '2017-05-17 00:06:56', '7226', '0', '2017-05-17 00:06:56', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('18', '0945318064', '2017-05-17 09:45:46', '7226', '0', '2017-05-17 09:45:46', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('19', '0950259849', '2017-05-17 09:50:33', '7226', '0', '2017-05-17 09:50:33', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('20', '0950407976', '2017-05-17 09:50:43', '7236', '0', '2017-05-17 09:50:43', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('21', '0950448398', '2017-05-17 09:50:46', '7236', '0', '2017-05-17 09:50:46', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('22', '0952124004', '2017-05-17 09:52:16', '7236', '0', '2017-05-17 09:52:16', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('23', '0954513646', '2017-05-17 09:54:55', '7236', '0', '2017-05-17 09:54:55', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('24', '0954574382', '2017-05-17 09:54:58', '7236', '0', '2017-05-17 09:54:58', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('25', '0954599569', '2017-05-17 09:55:00', '7236', '0', '2017-05-17 09:55:00', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('26', '0954596495', '2017-05-17 09:55:02', '7236', '0', '2017-05-17 09:55:02', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('27', '0954598242', '2017-05-17 09:55:02', '7236', '0', '2017-05-17 09:55:02', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('28', '0954591398', '2017-05-17 09:55:03', '7236', '0', '2017-05-17 09:55:03', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('29', '0956089533', '2017-05-17 09:56:12', '7236', '0', '2017-05-17 09:56:12', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('30', '1001161905', '2017-05-17 10:01:19', '7236', '0', '2017-05-17 10:01:19', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('31', '1001271910', '2017-05-17 10:01:30', '7236', '0', '2017-05-17 10:01:30', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('32', '1010539712', '2017-05-17 10:10:56', '7240', '0', '2017-05-17 10:10:56', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('33', '1010524190', '2017-05-17 10:10:56', '7240', '0', '2017-05-17 10:10:56', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('34', '1011012170', '2017-05-17 10:11:03', '7240', '0', '2017-05-17 10:11:03', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('35', '1011259556', '2017-05-17 10:11:28', '7236', '0', '2017-05-17 10:11:28', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('36', '1011496996', '2017-05-17 10:11:51', '7236', '0', '2017-05-17 10:11:51', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('37', '1019408235', '2017-05-17 10:19:44', '7226', '0', '2017-05-17 10:19:44', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('38', '1025006787', '2017-05-17 10:25:04', '7240', '0', '2017-05-17 10:25:04', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('39', '1025076938', '2017-05-17 10:25:08', '7240', '0', '2017-05-17 10:25:08', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('40', '', '2017-05-17 11:14:06', '7236', '0', '2017-05-17 11:14:06', '7236', null, '1', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('41', '', '2017-05-17 11:19:53', '7236', '0', '2017-05-17 11:19:53', '7236', null, '1', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('42', '', '2017-05-17 11:19:54', '7236', '0', '2017-05-17 11:19:54', '7236', null, '4', '0.01', null, null, null);
INSERT INTO `bao_app_order` VALUES ('43', '', '2017-05-17 11:31:46', '7236', '0', '2017-05-17 11:31:46', '7236', null, '1', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('44', '', '2017-05-17 11:47:41', '7236', '0', '2017-05-17 11:47:41', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('45', '', '2017-05-17 11:59:04', '7236', '0', '2017-05-17 11:59:04', '7236', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('46', '', '2017-05-17 12:10:14', '7236', '0', '2017-05-17 12:10:14', '7236', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('47', '', '2017-05-17 12:15:34', '7236', '0', '2017-05-17 12:15:34', '7236', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('48', '', '2017-05-17 12:45:24', '7236', '0', '2017-05-17 12:45:24', '7236', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('49', '', '2017-05-17 13:54:46', '7236', '0', '2017-05-17 13:54:46', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('50', '', '2017-05-17 13:56:15', '7236', '0', '2017-05-17 13:56:15', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('51', '', '2017-05-17 14:08:03', '7236', '0', '2017-05-17 14:08:03', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('52', '', '2017-05-17 14:17:08', '7236', '0', '2017-05-17 14:17:08', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('53', '', '2017-05-17 14:21:13', '7236', '0', '2017-05-17 14:21:13', '7236', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('54', '', '2017-05-17 14:31:47', '7226', '0', '2017-05-17 14:31:47', '7226', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('55', '', '2017-05-17 14:36:49', '7226', '0', '2017-05-17 14:36:49', '7226', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('56', '', '2017-05-17 14:41:08', '7226', '0', '2017-05-17 14:41:08', '7226', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('57', '', '2017-05-17 14:42:31', '7226', '0', '2017-05-17 14:42:31', '7226', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('58', '', '2017-05-17 16:04:12', '7226', '0', '2017-05-17 16:04:12', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('59', '2248009831', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('60', '2247596471', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('61', '2248007215', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('62', '2247531285', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('63', '2248021769', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('64', '2248001343', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('65', '2247589528', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('66', '2248031793', '2017-05-17 22:48:04', '7226', '0', '2017-05-17 22:48:04', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('67', '2247512474', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('68', '2247578190', '2017-05-17 22:48:03', '7226', '0', '2017-05-17 22:48:03', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('69', '2248052337', '2017-05-17 22:48:08', '7226', '0', '2017-05-17 22:48:08', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('70', '2248075851', '2017-05-17 22:48:09', '7226', '0', '2017-05-17 22:48:09', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('71', '2248066938', '2017-05-17 22:48:09', '7226', '0', '2017-05-17 22:48:09', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('72', '2248067156', '2017-05-17 22:48:09', '7226', '0', '2017-05-17 22:48:09', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('73', '2248062121', '2017-05-17 22:48:09', '7226', '0', '2017-05-17 22:48:09', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('74', '2248077644', '2017-05-17 22:48:10', '7226', '0', '2017-05-17 22:48:10', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('75', '2248076671', '2017-05-17 22:48:10', '7226', '0', '2017-05-17 22:48:10', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('76', '2248085213', '2017-05-17 22:48:10', '7226', '0', '2017-05-17 22:48:10', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('77', '2248089335', '2017-05-17 22:48:10', '7226', '0', '2017-05-17 22:48:10', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('78', '2248081028', '2017-05-17 22:48:10', '7226', '0', '2017-05-17 22:48:10', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('79', '2248093259', '2017-05-17 22:48:11', '7226', '0', '2017-05-17 22:48:11', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('80', '2248072309', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('81', '2248088868', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('82', '2248106084', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('83', '2248083526', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('84', '2248106452', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('85', '2248103098', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('86', '2248081378', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('87', '2248073717', '2017-05-17 22:48:12', '7226', '0', '2017-05-17 22:48:12', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('88', '2248087271', '2017-05-17 22:48:13', '7226', '0', '2017-05-17 22:48:13', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('89', '2248071830', '2017-05-17 22:48:13', '7226', '0', '2017-05-17 22:48:13', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('90', '', '2017-05-17 23:42:22', '7237', '0', '2017-05-17 23:42:22', '7237', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('91', '', '2017-05-18 09:45:06', '7236', '0', '2017-05-18 09:45:06', '7236', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('92', '', '2017-05-18 09:46:47', '7236', '0', '2017-05-18 09:46:47', '7236', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('93', '', '2017-05-18 09:59:02', '7236', '0', '2017-05-18 09:59:02', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('94', '', '2017-05-18 11:12:23', '7226', '0', '2017-05-18 11:12:23', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('95', '', '2017-05-18 11:16:49', '7226', '0', '2017-05-18 11:16:49', '7226', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('96', '', '2017-05-18 11:18:29', '7226', '0', '2017-05-18 11:18:29', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('97', '', '2017-05-18 11:23:45', '7226', '0', '2017-05-18 11:23:45', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('98', '', '2017-05-18 11:24:38', '7226', '0', '2017-05-18 11:24:38', '7226', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('99', '', '2017-05-18 11:35:31', '7226', '0', '2017-05-18 11:35:31', '7226', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('100', '', '2017-05-18 11:36:16', '7226', '0', '2017-05-18 11:36:16', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('101', '', '2017-05-18 11:43:31', '7226', '0', '2017-05-18 11:43:31', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('102', '', '2017-05-18 11:46:11', '7226', '0', '2017-05-18 11:46:11', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('103', '', '2017-05-18 11:53:11', '7236', '0', '2017-05-18 11:53:11', '7236', null, '2', '0.12', '0.12', null, null);
INSERT INTO `bao_app_order` VALUES ('104', '', '2017-05-18 11:54:28', '7236', '0', '2017-05-18 11:54:28', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('105', '', '2017-05-18 11:57:01', '7226', '0', '2017-05-18 11:57:01', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('106', '', '2017-05-18 12:22:30', '7236', '0', '2017-05-18 12:22:30', '7236', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('107', '', '2017-05-18 12:24:39', '7236', '0', '2017-05-18 12:24:39', '7236', null, '2', '0.18', '0.18', null, null);
INSERT INTO `bao_app_order` VALUES ('108', '1312376600', '2017-05-18 13:12:53', '7240', '0', '2017-05-18 13:12:53', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('109', '1312521359', '2017-05-18 13:12:56', '7240', '0', '2017-05-18 13:12:56', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('110', '1312513764', '2017-05-18 13:12:58', '7240', '0', '2017-05-18 13:12:58', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('111', '1312521962', '2017-05-18 13:12:58', '7240', '0', '2017-05-18 13:12:58', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('112', '1312526052', '2017-05-18 13:12:58', '7240', '0', '2017-05-18 13:12:58', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('113', '1312534289', '2017-05-18 13:12:58', '7240', '0', '2017-05-18 13:12:58', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('114', '1312537946', '2017-05-18 13:12:58', '7240', '0', '2017-05-18 13:12:58', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('115', '1312539910', '2017-05-18 13:12:59', '7240', '0', '2017-05-18 13:12:59', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('116', '1312528962', '2017-05-18 13:12:59', '7240', '0', '2017-05-18 13:12:59', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('117', '1312532563', '2017-05-18 13:13:00', '7240', '0', '2017-05-18 13:13:00', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('118', '1312546395', '2017-05-18 13:13:00', '7240', '0', '2017-05-18 13:13:00', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('119', '1313021393', '2017-05-18 13:13:04', '7240', '0', '2017-05-18 13:13:04', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('120', '1313041776', '2017-05-18 13:13:05', '7240', '0', '2017-05-18 13:13:05', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('121', '1313045628', '2017-05-18 13:13:05', '7240', '0', '2017-05-18 13:13:05', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('122', '1313051791', '2017-05-18 13:13:06', '7240', '0', '2017-05-18 13:13:06', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('123', '1313045869', '2017-05-18 13:13:07', '7240', '0', '2017-05-18 13:13:07', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('124', '1313045802', '2017-05-18 13:13:07', '7240', '0', '2017-05-18 13:13:07', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('125', '1313048162', '2017-05-18 13:13:07', '7240', '0', '2017-05-18 13:13:07', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('126', '2052041250', '2017-05-18 20:52:07', '7226', '0', '2017-05-18 20:52:07', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('127', '2114329439', '2017-05-18 21:14:36', '7226', '0', '2017-05-18 21:14:36', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('128', '2121217673', '2017-05-18 21:21:24', '7226', '0', '2017-05-18 21:21:24', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('129', '2121293009', '2017-05-18 21:21:31', '7240', '0', '2017-05-18 21:21:31', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('130', '2122351444', '2017-05-18 21:22:39', '7226', '0', '2017-05-18 21:22:39', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('131', '2122587215', '2017-05-18 21:23:01', '7226', '0', '2017-05-18 21:23:01', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('132', '1034178923', '2017-05-19 10:34:32', '7240', '0', '2017-05-19 10:34:32', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('133', '1034399600', '2017-05-19 10:34:42', '7240', '0', '2017-05-19 10:34:42', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('134', '1034399889', '2017-05-19 10:34:42', '7240', '0', '2017-05-19 10:34:42', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('135', '1034466216', '2017-05-19 10:34:47', '7240', '0', '2017-05-19 10:34:47', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('136', '1041284742', '2017-05-19 10:41:31', '7240', '0', '2017-05-19 10:41:31', '7240', null, '6', '0.01', '0.01', null, '18657217617');
INSERT INTO `bao_app_order` VALUES ('137', '1048236791', '2017-05-19 10:48:26', '7226', '0', '2017-05-19 10:48:26', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('138', '1054162293', '2017-05-19 10:54:20', '7226', '0', '2017-05-19 10:54:20', '7226', null, '6', '0.01', '0.01', null, null);
INSERT INTO `bao_app_order` VALUES ('139', '1059375682', '2017-05-19 10:59:40', '7236', '0', '2017-05-19 10:59:40', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('140', '1114546489', '2017-05-19 11:14:58', '7236', '0', '2017-05-19 11:14:58', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('141', '1326339211', '2017-05-19 13:26:36', '7236', '0', '2017-05-19 13:26:36', '7236', null, '6', '0.01', '0.01', null, '14763766689');
INSERT INTO `bao_app_order` VALUES ('142', '0856297262', '2017-06-01 08:56:29', '7226', '0', '2017-06-01 08:56:29', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('143', '0857234672', '2017-06-01 08:57:45', '7226', '0', '2017-06-01 08:57:45', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('144', '1123065942', '2017-06-01 11:23:06', '7226', '0', '2017-06-01 11:23:06', '7226', null, '2', '0.06', '0.06', null, null);
INSERT INTO `bao_app_order` VALUES ('145', '', '2017-06-15 14:35:15', '7236', '0', '2017-06-15 14:35:15', '7236', null, '4', '0.005', null, null, null);
INSERT INTO `bao_app_order` VALUES ('146', '', '2017-06-15 14:54:24', '7236', '0', '2017-06-15 14:54:24', '7236', null, '4', '4.8500', null, null, null);
INSERT INTO `bao_app_order` VALUES ('147', '', '2017-06-15 22:02:26', '7236', '0', '2017-06-15 22:02:26', '7236', null, '4', '4.8500', null, null, null);
INSERT INTO `bao_app_order` VALUES ('148', '', '2017-06-15 22:03:08', '7236', '0', '2017-06-15 22:03:08', '7236', null, '4', '4.8500', null, null, null);
INSERT INTO `bao_app_order` VALUES ('149', '', '2017-06-15 22:03:59', '7236', '0', '2017-06-15 22:03:59', '7236', null, '4', '4.8500', null, null, null);
INSERT INTO `bao_app_order` VALUES ('150', '', '2017-06-15 22:37:42', '7236', '0', '2017-06-15 22:37:42', '7236', null, '18', '5.00', null, null, null);
INSERT INTO `bao_app_order` VALUES ('151', '', '2017-06-15 22:39:00', '7236', '0', '2017-06-15 22:39:00', '7236', null, '18', '5.00', null, null, null);
INSERT INTO `bao_app_order` VALUES ('152', '', '2017-06-15 22:39:17', '7236', '0', '2017-06-15 22:39:17', '7236', null, '18', '5.00', null, null, null);
INSERT INTO `bao_app_order` VALUES ('153', '', '2017-06-15 22:39:18', '7236', '0', '2017-06-15 22:39:18', '7236', null, '18', '5.00', null, null, null);
INSERT INTO `bao_app_order` VALUES ('154', '', '2017-06-15 22:39:18', '7236', '0', '2017-06-15 22:39:18', '7236', null, '18', '5.00', null, null, null);
INSERT INTO `bao_app_order` VALUES ('155', '', '2017-06-15 22:39:30', '7236', '0', '2017-06-15 22:39:30', '7236', null, '18', '5.00', null, null, null);

-- ----------------------------
-- Table structure for bao_app_payment
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_payment`;
CREATE TABLE `bao_app_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(255) DEFAULT NULL,
  `cardType` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `oneOuota` varchar(255) DEFAULT NULL,
  `dayusername` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_payment
-- ----------------------------
INSERT INTO `bao_app_payment` VALUES ('1', '3701888888888888888', null, null, '亮亮', '5000', '5000', '2017-05-17 13:23:09', '7226', '0', '2017-05-17 13:23:09', '7226', '37018888888888888888', '建行');
INSERT INTO `bao_app_payment` VALUES ('2', '62284813265056943494', null, null, '高原', '5000', '5000', '2017-05-17 15:41:39', '7236', '0', '2017-05-17 15:41:39', '7236', '230227199816959679', '工商银行');
INSERT INTO `bao_app_payment` VALUES ('3', '123123', null, null, '123123', '5000', '5000', '2017-06-05 15:32:22', '7243', '0', '2017-06-05 15:32:22', '7243', '123123123', '123123');

-- ----------------------------
-- Table structure for bao_app_privilegeclass
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_privilegeclass`;
CREATE TABLE `bao_app_privilegeclass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experienceId` bigint(20) DEFAULT NULL,
  `visibleType` varchar(255) DEFAULT NULL,
  `users` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_privilegeclass
-- ----------------------------

-- ----------------------------
-- Table structure for bao_app_transferaccount
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_transferaccount`;
CREATE TABLE `bao_app_transferaccount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT NULL,
  `zfbaoAccount` varchar(255) DEFAULT NULL,
  `weixinAccount` varchar(255) DEFAULT NULL,
  `toUser` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_transferaccount
-- ----------------------------
INSERT INTO `bao_app_transferaccount` VALUES ('1', '1', null, null, '7236', '2017-05-31 13:12:23', '7226', '0', '2017-05-31 13:12:23', '7226', '1.01');
INSERT INTO `bao_app_transferaccount` VALUES ('2', '1', null, null, '7236', '2017-05-31 13:13:09', '7226', '0', '2017-05-31 13:13:09', '7226', '0.01');

-- ----------------------------
-- Table structure for bao_app_userlable
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_userlable`;
CREATE TABLE `bao_app_userlable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_userlable
-- ----------------------------
INSERT INTO `bao_app_userlable` VALUES ('1', '帅哥');
INSERT INTO `bao_app_userlable` VALUES ('2', '酒量好');
INSERT INTO `bao_app_userlable` VALUES ('3', '帅气');
INSERT INTO `bao_app_userlable` VALUES ('4', '大方');
INSERT INTO `bao_app_userlable` VALUES ('5', '呆萌');
INSERT INTO `bao_app_userlable` VALUES ('6', '脾气好');

-- ----------------------------
-- Table structure for bao_area
-- ----------------------------
DROP TABLE IF EXISTS `bao_area`;
CREATE TABLE `bao_area` (
  `area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT '0',
  `area_name` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_area
-- ----------------------------

-- ----------------------------
-- Table structure for bao_business
-- ----------------------------
DROP TABLE IF EXISTS `bao_business`;
CREATE TABLE `bao_business` (
  `business_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(32) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`business_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_business
-- ----------------------------

-- ----------------------------
-- Table structure for bao_city
-- ----------------------------
DROP TABLE IF EXISTS `bao_city`;
CREATE TABLE `bao_city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `pinyin` varchar(32) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `theme` varchar(32) DEFAULT 'default',
  `orderby` tinyint(3) DEFAULT '100',
  `first_letter` char(1) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_city
-- ----------------------------

-- ----------------------------
-- Table structure for bao_customer_service
-- ----------------------------
DROP TABLE IF EXISTS `bao_customer_service`;
CREATE TABLE `bao_customer_service` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `phoneNumber` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '关于',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0 申请 1通过',
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bao_customer_service
-- ----------------------------

-- ----------------------------
-- Table structure for bao_express
-- ----------------------------
DROP TABLE IF EXISTS `bao_express`;
CREATE TABLE `bao_express` (
  `express_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `city_id` int(10) DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `from_name` varchar(32) DEFAULT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `from_mobile` varchar(11) DEFAULT NULL,
  `to_name` varchar(32) DEFAULT NULL,
  `to_addr` varchar(255) DEFAULT NULL,
  `to_mobile` varchar(11) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未处理，1已接单，2已完成，-1已拒收',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`express_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_express
-- ----------------------------

-- ----------------------------
-- Table structure for bao_image
-- ----------------------------
DROP TABLE IF EXISTS `bao_image`;
CREATE TABLE `bao_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `objectId` bigint(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `url` text,
  `orderBy` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_image
-- ----------------------------
INSERT INTO `bao_image` VALUES ('24', '26', 'EXPERIENCE', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495720094.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_3_1495720094.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1495720094.png', '10', '2017-05-25 21:48:42', '7226', '0', '2017-05-25 21:48:42', '7226', null, null);
INSERT INTO `bao_image` VALUES ('25', '27', 'EXPERIENCE', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495722928.png', '10', '2017-05-25 22:35:53', '7226', '0', '2017-05-25 22:35:53', '7226', null, null);
INSERT INTO `bao_image` VALUES ('26', '28', 'EXPERIENCE', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495723224.png', '10', '2017-05-25 22:41:01', '7226', '0', '2017-05-25 22:41:01', '7226', null, null);
INSERT INTO `bao_image` VALUES ('27', '29', 'EXPERIENCE', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495723261.png', '10', '2017-05-25 22:41:26', '7226', '0', '2017-05-25 22:41:26', '7226', null, null);

-- ----------------------------
-- Table structure for bao_im_app_red
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_app_red`;
CREATE TABLE `bao_im_app_red` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) DEFAULT NULL,
  `redCount` int(11) DEFAULT NULL,
  `leftRedCount` int(11) DEFAULT NULL,
  `sum` varchar(255) DEFAULT NULL,
  `receiveTarget` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_app_red
-- ----------------------------

-- ----------------------------
-- Table structure for bao_im_app_red_click
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_app_red_click`;
CREATE TABLE `bao_im_app_red_click` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `best` tinyint(4) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `userAccount` varchar(255) DEFAULT NULL,
  `yxinRedId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_app_red_click
-- ----------------------------

-- ----------------------------
-- Table structure for bao_im_friend
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_friend`;
CREATE TABLE `bao_im_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `friendId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `lableId` bigint(20) DEFAULT NULL,
  `phoneNumberId` bigint(20) DEFAULT NULL,
  `describ` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_friend
-- ----------------------------

-- ----------------------------
-- Table structure for bao_im_group
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_group`;
CREATE TABLE `bao_im_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `memberCount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `chatGroupId` varchar(255) DEFAULT NULL,
  `groupNumber` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `messageNo` varchar(255) DEFAULT NULL,
  `topmessage` varchar(255) DEFAULT NULL,
  `saveMail` varchar(255) DEFAULT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL COMMENT '面对面建群组',
  `isbang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group
-- ----------------------------
INSERT INTO `bao_im_group` VALUES ('18', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671458', '2101', '2017-05-17 00:00:00', '7226', '0', '2017-05-17 00:00:00', '7226', 'images/1495011753957.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('19', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671459', '2102', '2017-05-17 00:00:00', '7226', '0', '2017-05-17 00:00:00', '7226', 'images/1495011983629.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('20', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671460', '2103', '2017-05-17 00:00:00', '7226', '0', '2017-05-17 00:00:00', '7226', 'images/1495012175727.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('21', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671461', '2104', '2017-05-17 00:00:00', '7226', '0', '2017-05-17 00:00:00', '7226', 'images/1495012247762.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('22', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671462', '2105', '2017-05-17 00:00:00', '7226', '0', '2017-05-17 00:00:00', '7226', 'images/1495012941290.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('23', '未命名', '未设置', '1', 'ACTIVE', null, '500', 'gg80179671463', '2106', '2017-05-19 00:00:00', '7226', '0', '2017-05-19 00:00:00', '7226', 'images/1495171862475.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('24', '未命名', '未设置', '2', 'ACTIVE', null, '500', 'gg80179671464', '2107', '2017-05-19 00:00:00', '7226', '0', '2017-05-19 00:00:00', '7226', 'images/1495171874360.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('25', '未命名', '未设置', '2', 'ACTIVE', null, '500', 'gg80179671465', '2108', '2017-05-19 00:00:00', '7226', '0', '2017-05-19 00:00:00', '7226', 'images/1495171946655.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('26', '未命名', '未设置', '2', 'ACTIVE', null, '500', 'gg80179671466', '2109', '2017-05-19 00:00:00', '7226', '0', '2017-05-19 00:00:00', '7226', 'images/1495172441677.png', '1', '0', '1', '1', null, null);
INSERT INTO `bao_im_group` VALUES ('27', '未命名', '未设置', '2', 'ACTIVE', null, '500', 'gg80179671467', '2110', '2017-05-19 00:00:00', '7226', '0', '2017-05-19 00:00:00', '7226', 'images/1495172717875.png', '1', '0', '1', '1', null, null);

-- ----------------------------
-- Table structure for bao_im_group_grade
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_group_grade`;
CREATE TABLE `bao_im_group_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group_grade
-- ----------------------------
INSERT INTO `bao_im_group_grade` VALUES ('52', '群主', '18', 'A', '2017-05-17 17:02:34', '7226', '0', '2017-05-17 17:02:34', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('53', '管理员', '18', 'B', '2017-05-17 17:02:34', '7226', '0', '2017-05-17 17:02:34', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('54', '普通人', '18', 'C', '2017-05-17 17:02:34', '7226', '0', '2017-05-17 17:02:34', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('55', '群主', '19', 'A', '2017-05-17 17:06:24', '7226', '0', '2017-05-17 17:06:24', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('56', '管理员', '19', 'B', '2017-05-17 17:06:24', '7226', '0', '2017-05-17 17:06:24', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('57', '普通人', '19', 'C', '2017-05-17 17:06:24', '7226', '0', '2017-05-17 17:06:24', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('58', '群主', '20', 'A', '2017-05-17 17:09:36', '7226', '0', '2017-05-17 17:09:36', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('59', '管理员', '20', 'B', '2017-05-17 17:09:36', '7226', '0', '2017-05-17 17:09:36', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('60', '普通人', '20', 'C', '2017-05-17 17:09:36', '7226', '0', '2017-05-17 17:09:36', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('61', '群主', '21', 'A', '2017-05-17 17:10:48', '7226', '0', '2017-05-17 17:10:48', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('62', '管理员', '21', 'B', '2017-05-17 17:10:48', '7226', '0', '2017-05-17 17:10:48', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('63', '普通人', '21', 'C', '2017-05-17 17:10:48', '7226', '0', '2017-05-17 17:10:48', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('64', '群主', '22', 'A', '2017-05-17 17:22:21', '7226', '0', '2017-05-17 17:22:21', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('65', '管理员', '22', 'B', '2017-05-17 17:22:21', '7226', '0', '2017-05-17 17:22:21', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('66', '普通人', '22', 'C', '2017-05-17 17:22:21', '7226', '0', '2017-05-17 17:22:21', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('67', '群主', '24', 'A', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('68', '管理员', '24', 'B', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('69', '普通人', '24', 'C', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('70', '群主', '23', 'A', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('71', '管理员', '23', 'B', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('72', '普通人', '23', 'C', '2017-05-19 13:31:15', '7226', '0', '2017-05-19 13:31:15', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('73', '群主', '25', 'A', '2017-05-19 13:32:28', '7226', '0', '2017-05-19 13:32:28', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('74', '管理员', '25', 'B', '2017-05-19 13:32:28', '7226', '0', '2017-05-19 13:32:28', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('75', '普通人', '25', 'C', '2017-05-19 13:32:28', '7226', '0', '2017-05-19 13:32:28', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('76', '群主', '26', 'A', '2017-05-19 13:40:43', '7226', '0', '2017-05-19 13:40:43', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('77', '管理员', '26', 'B', '2017-05-19 13:40:43', '7226', '0', '2017-05-19 13:40:43', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('78', '普通人', '26', 'C', '2017-05-19 13:40:43', '7226', '0', '2017-05-19 13:40:43', '7226', '2');
INSERT INTO `bao_im_group_grade` VALUES ('79', '群主', '27', 'A', '2017-05-19 13:45:18', '7226', '0', '2017-05-19 13:45:18', '7226', '0');
INSERT INTO `bao_im_group_grade` VALUES ('80', '管理员', '27', 'B', '2017-05-19 13:45:18', '7226', '0', '2017-05-19 13:45:18', '7226', '1');
INSERT INTO `bao_im_group_grade` VALUES ('81', '普通人', '27', 'C', '2017-05-19 13:45:18', '7226', '0', '2017-05-19 13:45:18', '7226', '2');

-- ----------------------------
-- Table structure for bao_im_group_member
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_group_member`;
CREATE TABLE `bao_im_group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `groupGradeId` bigint(20) DEFAULT NULL,
  `isEnabled` tinyint(4) DEFAULT NULL,
  `nameInGroup` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imNumber` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group_member
-- ----------------------------
INSERT INTO `bao_im_group_member` VALUES ('48', '7226', '18', 'OWNER', '52', null, '不死鸟', '群主', null, '2017-05-17 00:00:00', null, '1', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('51', '7226', '19', 'OWNER', '55', null, '不死鸟', '群主', null, '2017-05-17 00:00:00', null, '1', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('54', '7226', '20', 'OWNER', '58', null, '不死鸟', '群主', null, '2017-05-17 00:00:00', null, '1', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('57', '7226', '21', 'OWNER', '61', null, '不死鸟', '群主', null, '2017-05-17 00:00:00', null, '1', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('60', '7226', '22', 'OWNER', '64', null, '不死鸟', '群主', null, '2017-05-17 00:00:00', null, '1', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('63', '7236', '22', 'USER', '66', null, '哈哈哈', '普通人', null, '2017-05-17 00:00:00', null, '0', '2017-05-17 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('64', '7226', '23', 'OWNER', '70', null, '不死鸟', '群主', null, '2017-05-19 00:00:00', null, '1', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('65', '7236', '23', 'USER', '72', null, '哈哈哈', '普通人', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('67', '7226', '24', 'OWNER', '67', null, '不死鸟', '群主', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('68', '7236', '24', 'USER', '69', null, '哈哈哈', '普通人', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('70', '7226', '25', 'OWNER', '73', null, '不死鸟', '群主', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('71', '7236', '25', 'USER', '75', null, '哈哈哈', '普通人', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('73', '7226', '26', 'OWNER', '76', null, '不死鸟', '群主', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('74', '7236', '26', 'USER', '78', null, '哈哈哈', '普通人', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('76', '7226', '27', 'OWNER', '79', null, '不死鸟', '群主', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);
INSERT INTO `bao_im_group_member` VALUES ('77', '7236', '27', 'USER', '81', null, '哈哈哈', '普通人', null, '2017-05-19 00:00:00', null, '0', '2017-05-19 00:00:00', null);

-- ----------------------------
-- Table structure for bao_im_request
-- ----------------------------
DROP TABLE IF EXISTS `bao_im_request`;
CREATE TABLE `bao_im_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `targetId` bigint(20) DEFAULT NULL,
  `requestType` varchar(255) DEFAULT NULL,
  `auditedBy` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `pay` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_request
-- ----------------------------
INSERT INTO `bao_im_request` VALUES ('15', 'EXPIRED', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 21:29:29', '7236', '0', '2017-06-15 21:29:29', '7236', null);
INSERT INTO `bao_im_request` VALUES ('16', 'EXPIRED', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 21:30:40', '7236', '0', '2017-06-15 21:30:40', '7236', null);
INSERT INTO `bao_im_request` VALUES ('17', 'EXPIRED', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 21:35:39', '7236', '0', '2017-06-15 21:35:39', '7236', null);
INSERT INTO `bao_im_request` VALUES ('18', 'EXPIRED', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 21:50:16', '7236', '0', '2017-06-15 21:50:16', '7236', null);
INSERT INTO `bao_im_request` VALUES ('19', 'EXPIRED', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 22:39:18', '7236', '0', '2017-06-15 22:39:18', '7236', null);
INSERT INTO `bao_im_request` VALUES ('20', 'PAY_ADD', '诚意金添加好友', '7226', 'FRIEND_APPLY', '7226', null, '2017-06-15 22:39:30', '7236', '0', '2017-06-15 22:39:30', '7236', '5.00');

-- ----------------------------
-- Table structure for bao_integral_exchange
-- ----------------------------
DROP TABLE IF EXISTS `bao_integral_exchange`;
CREATE TABLE `bao_integral_exchange` (
  `exchange_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `addr_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0' COMMENT '1代表后台已经确认了那么发货是前台发货还是什么流程',
  PRIMARY KEY (`exchange_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_integral_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for bao_integral_goods
-- ----------------------------
DROP TABLE IF EXISTS `bao_integral_goods`;
CREATE TABLE `bao_integral_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `face_pic` varchar(64) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT '0' COMMENT '1代表只能是本店的VIP 才能兑换该物品',
  `integral` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `limit_num` int(11) DEFAULT '0',
  `exchange_num` int(11) DEFAULT '0',
  `details` text,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(255) DEFAULT NULL,
  `audit` tinyint(4) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0' COMMENT '1代表已经下架',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_integral_goods
-- ----------------------------

-- ----------------------------
-- Table structure for bao_invite
-- ----------------------------
DROP TABLE IF EXISTS `bao_invite`;
CREATE TABLE `bao_invite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `inviteMoney` varchar(64) DEFAULT NULL,
  `inviteUsers` varchar(255) DEFAULT NULL,
  `inviteAddress` varchar(255) DEFAULT NULL,
  `longitud` varchar(64) DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `invateTime` datetime DEFAULT NULL,
  `applyTime` varchar(64) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `userNum` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `drawTime` datetime DEFAULT NULL,
  `otherMoney` varchar(64) DEFAULT NULL,
  `totalMoney` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_invite
-- ----------------------------
INSERT INTO `bao_invite` VALUES ('46', '7236', '哈哈哈', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 15:31:00', '2017-05-19 16:31', '2017-05-19 13:31:52', '3', null, null, '2017-05-19 15:32:01', '1', '1');
INSERT INTO `bao_invite` VALUES ('47', '7226', '啦啦啦', '111', null, '啦啦', '36.684168', '117.084757', '2', '2017-05-21 13:48:00', '2017-05-21 15:48', '2017-05-19 13:50:58', '2', null, '2017-05-19 15:56:30', null, null, null);
INSERT INTO `bao_invite` VALUES ('48', '7236', '鹅鹅鹅', '3', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 14:57:00', '2017-05-19 15:57', '2017-05-19 13:57:44', '3', null, null, '2017-06-15 17:19:48', '1', '1');
INSERT INTO `bao_invite` VALUES ('49', '7236', '呃呃呃', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 16:44:00', '2017-05-19 18:44', '2017-05-19 15:44:22', '1', null, null, '2017-05-19 16:45:00', '1', '1');
INSERT INTO `bao_invite` VALUES ('50', '7226', '啦啦', '0', null, '啦啦', '36.684087', '117.084431', '4', '2017-05-22 16:13:00', '2017-05-31 16:13', '2017-05-19 16:14:12', '1', null, null, '2017-06-15 17:20:56', '1', '1');
INSERT INTO `bao_invite` VALUES ('51', '7236', '哈比', '1', null, '中国山东省济宁市金乡县', '116.216633', '35.056044', '4', '2017-05-19 17:18:00', '2017-05-19 18:18', '2017-05-19 16:18:43', '1', null, null, '2017-06-15 17:21:00', '0', '1');
INSERT INTO `bao_invite` VALUES ('52', '7236', '测试', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 17:31:00', '2017-05-19 18:31', '2017-05-19 16:31:39', '2', null, null, '2017-05-19 17:32:00', '1', '1');
INSERT INTO `bao_invite` VALUES ('53', '7236', '测试', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 17:31:00', '2017-05-19 18:31', '2017-05-19 16:31:40', '2', null, null, '2017-05-19 17:32:00', '1', '1');
INSERT INTO `bao_invite` VALUES ('54', '7236', '测试', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 17:31:00', '2017-05-19 18:31', '2017-05-19 16:33:38', '2', null, null, '2017-05-19 17:32:01', '1', '1');
INSERT INTO `bao_invite` VALUES ('55', '7236', '测试', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 17:31:00', '2017-05-19 18:31', '2017-05-19 16:33:48', '2', null, null, '2017-05-19 17:32:01', '1', '1');
INSERT INTO `bao_invite` VALUES ('56', '7236', '哈巴', '1', null, '中国山东省济宁市金乡县', '116.216559', '35.056115', '4', '2017-05-19 22:55:00', '1', '2017-05-19 21:55:33', '1', null, null, '2017-05-19 22:56:00', '1', '1');
INSERT INTO `bao_invite` VALUES ('57', '7226', 'IOS ', '0', null, '啦啦啦', '36.680235', '117.065183', '4', '2017-05-21 22:15:00', '2017-05-21 23:15', '2017-05-19 22:15:58', '1', null, null, '2017-05-21 22:16:00', '1', '1');
INSERT INTO `bao_invite` VALUES ('58', '7236', '哈哈', '1', null, '中国山东省济宁市金乡县', '116.216604', '35.056122', '4', '2017-05-20 18:46:00', '2', '2017-05-20 17:46:32', '2', null, null, '2017-05-20 18:47:00', '1', null);

-- ----------------------------
-- Table structure for bao_invite_record
-- ----------------------------
DROP TABLE IF EXISTS `bao_invite_record`;
CREATE TABLE `bao_invite_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `inviteId` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ifPay` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_invite_record
-- ----------------------------
INSERT INTO `bao_invite_record` VALUES ('1', '7240', '46', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('2', '7226', '46', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('3', '7236', '47', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('4', '7237', '48', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('5', '7226', '48', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('6', '7240', '48', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('7', '7240', '49', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('8', '7236', '50', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('9', '7226', '51', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('10', '7226', '52', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('11', '7240', '52', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('12', '7226', '53', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('13', '7240', '53', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('14', '7226', '54', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('15', '7240', '54', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('16', '7226', '55', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('17', '7240', '55', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('18', '7226', '56', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('19', '7236', '57', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('20', '7240', '58', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('21', '7226', '58', '0', '0');

-- ----------------------------
-- Table structure for bao_islike
-- ----------------------------
DROP TABLE IF EXISTS `bao_islike`;
CREATE TABLE `bao_islike` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isLike` tinyint(4) DEFAULT NULL,
  `exprienceId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_islike
-- ----------------------------
INSERT INTO `bao_islike` VALUES ('1', '1', '1', '2017-04-27 11:36:07', '7236', '0', '2017-04-27 11:36:07', '7236');
INSERT INTO `bao_islike` VALUES ('2', '0', '1', '2017-04-27 00:00:00', '7237', '0', '2017-04-27 21:08:27', '7237');
INSERT INTO `bao_islike` VALUES ('3', '1', '3', '2017-05-01 17:56:17', '7226', '0', '2017-05-01 17:56:17', '7226');

-- ----------------------------
-- Table structure for bao_lock
-- ----------------------------
DROP TABLE IF EXISTS `bao_lock`;
CREATE TABLE `bao_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `t` char(8) DEFAULT '0' COMMENT 'UID 操作分钟级别锁',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_lock
-- ----------------------------

-- ----------------------------
-- Table structure for bao_menu
-- ----------------------------
DROP TABLE IF EXISTS `bao_menu`;
CREATE TABLE `bao_menu` (
  `menu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) DEFAULT NULL,
  `menu_action` varchar(64) DEFAULT NULL,
  `parent_id` smallint(5) DEFAULT '0',
  `orderby` tinyint(3) unsigned DEFAULT '100' COMMENT '1排序第一',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '0代表不直接显示',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_menu
-- ----------------------------

-- ----------------------------
-- Table structure for bao_mobile_user
-- ----------------------------
DROP TABLE IF EXISTS `bao_mobile_user`;
CREATE TABLE `bao_mobile_user` (
  `mu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mu_u_id` bigint(20) DEFAULT NULL,
  `mu_longitud` double(10,6) DEFAULT NULL,
  `mu_latitude` double(10,6) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`mu_id`),
  UNIQUE KEY `creator` (`creator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_mobile_user
-- ----------------------------

-- ----------------------------
-- Table structure for bao_order
-- ----------------------------
DROP TABLE IF EXISTS `bao_order`;
CREATE TABLE `bao_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addr_id` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT '0',
  `use_integral` int(11) DEFAULT '0' COMMENT '订单使用积分数',
  `can_use_integral` int(11) DEFAULT '0' COMMENT '用户可以使用的积分',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0.0.0.0',
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1代表已经付款  2代表正在配送  3客户已经确认',
  `is_daofu` tinyint(1) DEFAULT '0',
  `is_shop` tinyint(1) DEFAULT '0' COMMENT '1 代表商家发货',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=655 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_order
-- ----------------------------
INSERT INTO `bao_order` VALUES ('293', '0', '0', '7236', '2', '0', '0', '0', '1493995591', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('294', '0', '0', '7236', '2', '0', '0', '0', '1494081266', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('295', '0', '0', '7236', '2', '0', '0', '0', '1494081281', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('296', '0', '0', '7237', '2', '0', '0', '0', '1494137298', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('297', '0', '0', '7236', '1', '0', '0', '0', '1494152335', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('298', '0', '0', '7236', '1', '0', '0', '0', '1494152859', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('299', '0', '0', '7237', '0', '0', '0', '0', '1494163124', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('300', '0', '0', '7237', '0', '0', '0', '0', '1494163234', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('301', '0', '0', '7236', '1', '0', '0', '0', '1494173128', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('302', '0', '0', '7236', '0', '0', '0', '0', '1494173139', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('303', '0', '0', '7236', '0', '0', '0', '0', '1494173146', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('304', '0', '0', '7236', '2', '0', '0', '0', '1494173154', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('305', '0', '0', '7236', '2', '0', '0', '0', '1494173158', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('306', '0', '0', '7236', '2', '0', '0', '0', '1494173165', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('307', '0', '0', '7236', '2', '0', '0', '0', '1494173178', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('308', '0', '0', '7236', '1', '0', '0', '0', '1494252921', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('309', '0', '0', '7236', '1', '0', '0', '0', '1494253068', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('310', '0', '0', '7237', '2', '0', '0', '0', '1494344443', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('311', '0', '0', '7226', '2', '0', '0', '0', '1494401396', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('312', '0', '0', '7237', '2', '0', '0', '0', '1494428778', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('313', '0', '0', '7226', '0', '0', '0', '0', '1494487343', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('314', '0', '0', '7226', '0', '0', '0', '0', '1494487343', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('315', '0', '0', '7226', '0', '0', '0', '0', '1494487344', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('316', '0', '0', '7226', '0', '0', '0', '0', '1494487344', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('317', '0', '0', '7226', '0', '0', '0', '0', '1494487346', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('318', '0', '0', '7226', '0', '0', '0', '0', '1494487346', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('319', '0', '0', '7226', '0', '0', '0', '0', '1494487350', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('320', '0', '0', '7226', '0', '0', '0', '0', '1494487373', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('321', '0', '0', '7226', '0', '0', '0', '0', '1494487375', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('322', '0', '0', '7226', '0', '0', '0', '0', '1494487385', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('323', '0', '0', '7226', '0', '0', '0', '0', '1494487432', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('324', '0', '0', '7226', '0', '0', '0', '0', '1494487470', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('325', '0', '0', '7226', '0', '0', '0', '0', '1494487699', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('326', '0', '0', '7226', '0', '0', '0', '0', '1494493837', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('327', '0', '0', '7237', '200', '0', '0', '0', '1494512883', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('328', '0', '0', '7236', '2', '0', '0', '0', '1494514507', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('329', '0', '0', '7236', '2', '0', '0', '0', '1494516942', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('330', '0', '0', '7236', '11', '0', '0', '0', '1494560355', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('331', '0', '0', '7226', '0', '0', '0', '0', '1494574378', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('332', '0', '0', '7237', '2', '0', '0', '0', '1494657195', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('333', '0', '0', '7237', '2', '0', '0', '0', '1494657196', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('334', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('335', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('336', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('337', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('338', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('339', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('340', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('341', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('342', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('343', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('344', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('345', '0', '0', '7236', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('346', '0', '0', '7237', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('347', '0', '0', '7237', '200', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('348', '0', '0', '7226', '0', '0', '0', '0', '1494742320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('349', '0', '0', '7237', '2', '0', '0', '0', '1494755905', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('350', '0', '0', '7237', '2', '0', '0', '0', '1494755906', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('351', '0', '0', '7236', '3', '0', '0', '0', '1494758072', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('352', '0', '0', '7236', '3', '0', '0', '0', '1494758280', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('353', '0', '0', '7236', '1', '0', '0', '0', '1494758302', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('354', '0', '0', '7236', '1', '0', '0', '0', '1494758717', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('355', '0', '0', '7236', '1', '0', '0', '0', '1494758725', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('356', '0', '0', '7236', '1', '0', '0', '0', '1494758744', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('357', '0', '0', '7236', '1', '0', '0', '0', '1494758825', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('358', '0', '0', '7236', '1', '0', '0', '0', '1494761986', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('359', '0', '0', '7236', '1', '0', '0', '0', '1494762061', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('360', '0', '0', '7236', '1', '0', '0', '0', '1494762357', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('361', '0', '0', '7237', '2', '0', '0', '0', '1494762935', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('362', '0', '0', '7237', '2', '0', '0', '0', '1494765555', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('363', '0', '0', '7237', '2', '0', '0', '0', '1494765600', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('364', '0', '0', '7236', '1', '0', '0', '0', '1494769320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('365', '0', '0', '7236', '1', '0', '0', '0', '1494769862', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('366', '0', '0', '7237', '2', '0', '0', '0', '1494777540', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('367', '0', '0', '7237', '2', '0', '0', '0', '1494777540', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('368', '0', '0', '7236', '1', '0', '0', '0', '1494848400', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('369', '0', '0', '7236', '1', '0', '0', '0', '1494848400', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('370', '0', '0', '7236', '1', '0', '0', '0', '1494848401', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('371', '0', '0', '7237', '2', '0', '0', '0', '1494860180', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('372', '0', '0', '7226', '0', '0', '0', '0', '1494919260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('373', '0', '0', '7237', '0', '0', '0', '0', '1494919260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('374', '0', '0', '7226', '0', '0', '0', '0', '1494919260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('375', '0', '0', '7236', '0', '0', '0', '0', '1494919260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('376', '0', '0', '7237', '0', '0', '0', '0', '1494919260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('377', '0', '0', '7226', '0', '0', '0', '0', '1494934107', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('378', '0', '0', '7226', '0', '0', '0', '0', '1494934203', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('379', '0', '0', '7226', '0', '0', '0', '0', '1494935808', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('380', '0', '0', '7226', '0', '0', '0', '0', '1494935935', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('381', '0', '0', '7226', '0', '0', '0', '0', '1494935954', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('382', '0', '0', '7226', '2', '0', '0', '0', '1494937764', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('383', '0', '0', '7226', '0', '0', '0', '0', '1494937857', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('384', '0', '0', '7226', '0', '0', '0', '0', '1494937857', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('385', '0', '0', '7226', '0', '0', '0', '0', '1494938714', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('386', '0', '0', '7226', '0', '0', '0', '0', '1494938872', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('387', '0', '0', '7237', '2', '0', '0', '0', '1494943220', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('388', '0', '0', '7237', '2', '0', '0', '0', '1494943260', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('389', '0', '0', '7236', '1', '0', '0', '0', '1494943622', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('390', '0', '0', '7226', '0', '0', '0', '0', '1494943723', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('391', '0', '0', '7226', '0', '0', '0', '0', '1494943740', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('392', '0', '0', '7236', '1', '0', '0', '0', '1494943860', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('393', '0', '0', '7236', '0', '0', '0', '0', '1494944005', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('394', '0', '0', '7236', '0', '0', '0', '0', '1494944019', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('395', '0', '0', '7236', '0', '0', '0', '0', '1494944020', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('396', '0', '0', '7236', '0', '0', '0', '0', '1494944031', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('397', '0', '0', '7236', '0', '0', '0', '0', '1494944039', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('398', '0', '0', '7236', '0', '0', '0', '0', '1494944088', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('399', '0', '0', '7226', '0', '0', '0', '0', '1494945434', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('400', '0', '0', '7226', '0', '0', '0', '0', '1494945434', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('401', '0', '0', '7237', '2', '0', '0', '0', '1494945457', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('402', '0', '0', '7236', '0', '0', '0', '0', '1494945586', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('403', '0', '0', '7237', '0', '0', '0', '0', '1494946179', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('404', '0', '0', '7237', '0', '0', '0', '0', '1494946350', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('405', '0', '0', '7237', '0', '0', '0', '0', '1494946567', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('406', '0', '0', '7237', '0', '0', '0', '0', '1494946711', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('407', '0', '0', '7236', '1', '0', '0', '0', '1494947508', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('408', '0', '0', '7236', '1', '0', '0', '0', '1494947564', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('409', '0', '0', '7236', '0', '0', '0', '0', '1494949151', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('410', '0', '0', '7236', '0', '0', '0', '0', '1494950967', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('411', '0', '0', '7236', '0', '0', '0', '0', '1494950970', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('412', '0', '0', '7226', '0', '0', '0', '0', '1494985547', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('413', '0', '0', '7226', '0', '0', '0', '0', '1494985833', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('414', '0', '0', '7236', '0', '0', '0', '0', '1494985843', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('415', '0', '0', '7236', '0', '0', '0', '0', '1494985845', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('416', '0', '0', '7236', '0', '0', '0', '0', '1494985936', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('417', '0', '0', '7236', '0', '0', '0', '0', '1494986095', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('418', '0', '0', '7236', '0', '0', '0', '0', '1494986098', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('419', '0', '0', '7236', '0', '0', '0', '0', '1494986100', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('420', '0', '0', '7236', '0', '0', '0', '0', '1494986102', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('421', '0', '0', '7236', '0', '0', '0', '0', '1494986102', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('422', '0', '0', '7236', '0', '0', '0', '0', '1494986102', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('423', '0', '0', '7236', '0', '0', '0', '0', '1494986171', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('424', '0', '0', '7236', '0', '0', '0', '0', '1494986479', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('425', '0', '0', '7236', '0', '0', '0', '0', '1494986489', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('426', '0', '0', '7240', '0', '0', '0', '0', '1494987055', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('427', '0', '0', '7240', '0', '0', '0', '0', '1494987055', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('428', '0', '0', '7240', '0', '0', '0', '0', '1494987062', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('429', '0', '0', '7236', '0', '0', '0', '0', '1494987088', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('430', '0', '0', '7236', '0', '0', '0', '0', '1494987111', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('431', '0', '0', '7226', '0', '0', '0', '0', '1494987583', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('432', '0', '0', '7240', '0', '0', '0', '0', '1494987903', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('433', '0', '0', '7240', '0', '0', '0', '0', '1494987908', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('434', '0', '0', '7236', '0', '0', '0', '0', '1494994298', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('435', '0', '0', '7236', '0', '0', '0', '0', '1494994762', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('436', '0', '0', '7236', '0', '0', '0', '0', '1494994779', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('437', '0', '0', '7236', '0', '0', '0', '0', '1494994784', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('438', '0', '0', '7236', '0', '0', '0', '0', '1494994788', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('439', '0', '0', '7236', '0', '0', '0', '0', '1494994792', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('440', '0', '0', '7236', '0', '0', '0', '0', '1494995879', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('441', '0', '0', '7236', '0', '0', '0', '0', '1494995882', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('442', '0', '0', '7236', '0', '0', '0', '0', '1494996338', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('443', '0', '0', '7236', '0', '0', '0', '0', '1494996341', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('444', '0', '0', '7236', '0', '0', '0', '0', '1495001223', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('445', '0', '0', '7236', '0', '0', '0', '0', '1495001463', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('446', '0', '0', '7226', '0', '0', '0', '0', '1495003753', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('447', '0', '0', '7226', '0', '0', '0', '0', '1495003771', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('448', '0', '0', '7226', '0', '0', '0', '0', '1495003834', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('449', '0', '0', '7226', '0', '0', '0', '0', '1495003970', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('450', '0', '0', '7226', '0', '0', '0', '0', '1495003990', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('451', '0', '0', '7226', '0', '0', '0', '0', '1495003998', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('452', '0', '0', '7226', '0', '0', '0', '0', '1495004034', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('453', '0', '0', '7226', '0', '0', '0', '0', '1495004054', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('454', '0', '0', '7226', '0', '0', '0', '0', '1495004128', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('455', '0', '0', '7236', '0', '0', '0', '0', '1495004527', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('456', '0', '0', '7226', '1', '0', '0', '0', '1495004572', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('457', '0', '0', '7226', '1', '0', '0', '0', '1495006012', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('458', '0', '0', '7226', '1', '0', '0', '0', '1495006231', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('459', '0', '0', '7236', '0', '0', '0', '0', '1495009022', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('460', '0', '0', '7236', '1', '0', '0', '0', '1495017960', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('461', '0', '0', '7226', '0', '0', '0', '0', '1495030140', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('462', '0', '0', '7236', '0', '0', '0', '0', '1495030140', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('463', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('464', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('465', '0', '0', '7226', '0', '0', '0', '0', '1495032485', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('466', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('467', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('468', '0', '0', '7226', '0', '0', '0', '0', '1495032485', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('469', '0', '0', '7226', '0', '0', '0', '0', '1495032485', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('470', '0', '0', '7226', '0', '0', '0', '0', '1495032486', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('471', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('472', '0', '0', '7226', '0', '0', '0', '0', '1495032484', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('473', '0', '0', '7226', '0', '0', '0', '0', '1495032487', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('474', '0', '0', '7226', '0', '0', '0', '0', '1495032488', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('475', '0', '0', '7226', '0', '0', '0', '0', '1495032489', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('476', '0', '0', '7226', '0', '0', '0', '0', '1495032489', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('477', '0', '0', '7226', '0', '0', '0', '0', '1495032488', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('478', '0', '0', '7226', '0', '0', '0', '0', '1495032489', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('479', '0', '0', '7226', '0', '0', '0', '0', '1495032490', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('480', '0', '0', '7226', '0', '0', '0', '0', '1495032490', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('481', '0', '0', '7226', '0', '0', '0', '0', '1495032490', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('482', '0', '0', '7226', '0', '0', '0', '0', '1495032490', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('483', '0', '0', '7226', '0', '0', '0', '0', '1495032489', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('484', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('485', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('486', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('487', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('488', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('489', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('490', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('491', '0', '0', '7226', '0', '0', '0', '0', '1495032491', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('492', '0', '0', '7226', '0', '0', '0', '0', '1495032492', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('493', '0', '0', '7226', '0', '0', '0', '0', '1495032492', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('494', '0', '0', '7226', '1', '0', '0', '0', '1495033055', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('495', '0', '0', '7237', '1', '0', '0', '0', '1495033075', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('496', '0', '0', '7237', '2', '0', '0', '0', '1495034488', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('497', '0', '0', '7237', '2', '0', '0', '0', '1495034520', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('498', '0', '0', '7237', '200', '0', '0', '0', '1495034808', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('499', '0', '0', '7237', '200', '0', '0', '0', '1495034820', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('500', '0', '0', '7237', '2', '0', '0', '0', '1495035083', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('501', '0', '0', '7237', '2', '0', '0', '0', '1495035120', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('502', '0', '0', '7237', '2', '0', '0', '0', '1495035239', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('503', '0', '0', '7237', '2', '0', '0', '0', '1495035240', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('504', '0', '0', '7237', '3', '0', '0', '0', '1495035284', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('505', '0', '0', '7237', '3', '0', '0', '0', '1495035300', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('506', '0', '0', '7237', '2', '0', '0', '0', '1495035553', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('507', '0', '0', '7237', '2', '0', '0', '0', '1495035600', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('508', '0', '0', '7237', '200', '0', '0', '0', '1495035601', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('509', '0', '0', '7237', '200', '0', '0', '0', '1495035660', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('510', '0', '0', '7236', '1', '0', '0', '0', '1495073404', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('511', '0', '0', '7236', '1', '0', '0', '0', '1495073952', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('512', '0', '0', '7236', '0', '0', '0', '0', '1495077932', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('513', '0', '0', '7226', '0', '0', '0', '0', '1495079847', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('514', '0', '0', '7226', '0', '0', '0', '0', '1495079851', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('515', '0', '0', '7240', '0', '0', '0', '0', '1495084372', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('516', '0', '0', '7240', '0', '0', '0', '0', '1495084375', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('517', '0', '0', '7240', '0', '0', '0', '0', '1495084378', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('518', '0', '0', '7240', '0', '0', '0', '0', '1495084378', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('519', '0', '0', '7240', '0', '0', '0', '0', '1495084379', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('520', '0', '0', '7240', '0', '0', '0', '0', '1495084379', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('521', '0', '0', '7240', '0', '0', '0', '0', '1495084379', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('522', '0', '0', '7240', '0', '0', '0', '0', '1495084379', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('523', '0', '0', '7240', '0', '0', '0', '0', '1495084379', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('524', '0', '0', '7240', '0', '0', '0', '0', '1495084380', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('525', '0', '0', '7240', '0', '0', '0', '0', '1495084380', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('526', '0', '0', '7240', '0', '0', '0', '0', '1495084384', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('527', '0', '0', '7240', '0', '0', '0', '0', '1495084385', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('528', '0', '0', '7240', '0', '0', '0', '0', '1495084385', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('529', '0', '0', '7240', '0', '0', '0', '0', '1495084386', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('530', '0', '0', '7240', '0', '0', '0', '0', '1495084387', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('531', '0', '0', '7240', '0', '0', '0', '0', '1495084387', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('532', '0', '0', '7240', '0', '0', '0', '0', '1495084387', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('533', '0', '0', '7236', '0', '0', '0', '0', '1495090460', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('534', '0', '0', '7226', '0', '0', '0', '0', '1495111927', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('535', '0', '0', '7226', '0', '0', '0', '0', '1495113275', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('536', '0', '0', '7226', '0', '0', '0', '0', '1495113684', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('537', '0', '0', '7240', '0', '0', '0', '0', '1495113690', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('538', '0', '0', '7226', '0', '0', '0', '0', '1495113759', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('539', '0', '0', '7226', '0', '0', '0', '0', '1495113781', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('540', '0', '0', '7240', '0', '0', '0', '0', '1495161271', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('541', '0', '0', '7240', '0', '0', '0', '0', '1495161282', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('542', '0', '0', '7240', '0', '0', '0', '0', '1495161282', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('543', '0', '0', '7240', '0', '0', '0', '0', '1495161287', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('544', '0', '0', '7240', '0', '0', '0', '0', '1495161691', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('545', '0', '0', '7226', '0', '0', '0', '0', '1495162106', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('546', '0', '0', '7226', '0', '0', '0', '0', '1495162459', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('547', '0', '0', '7236', '0', '0', '0', '0', '1495162779', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('548', '0', '0', '7236', '0', '0', '0', '0', '1495163697', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('549', '0', '0', '7236', '0', '0', '0', '0', '1495171596', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('550', '0', '0', '7236', '1', '0', '0', '0', '1495171914', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('551', '0', '0', '7226', '111', '0', '0', '0', '1495173059', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('552', '0', '0', '7236', '3', '0', '0', '0', '1495173463', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('553', '0', '0', '7236', '3', '0', '0', '0', '1495177080', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('554', '0', '0', '7236', '1', '0', '0', '0', '1495179120', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('555', '0', '0', '7236', '111', '0', '0', '0', '1495179327', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('556', '0', '0', '7236', '1', '0', '0', '0', '1495179861', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('557', '0', '0', '7226', '0', '0', '0', '0', '1495181651', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('558', '0', '0', '7236', '0', '0', '0', '0', '1495181686', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('559', '0', '0', '7236', '1', '0', '0', '0', '1495181924', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('560', '0', '0', '7226', '1', '0', '0', '0', '1495182469', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('561', '0', '0', '7236', '1', '0', '0', '0', '1495182699', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('562', '0', '0', '7236', '1', '0', '0', '0', '1495182701', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('563', '0', '0', '7236', '1', '0', '0', '0', '1495182818', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('564', '0', '0', '7236', '1', '0', '0', '0', '1495182827', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('565', '0', '0', '7236', '1', '0', '0', '0', '1495183500', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('566', '0', '0', '7226', '1', '0', '0', '0', '1495183504', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('567', '0', '0', '7226', '1', '0', '0', '0', '1495183511', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('568', '0', '0', '7226', '1', '0', '0', '0', '1495183535', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('569', '0', '0', '7226', '111', '0', '0', '0', '1495184190', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('570', '0', '0', '7236', '1', '0', '0', '0', '1495185540', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('571', '0', '0', '7226', '1', '0', '0', '0', '1495185540', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('572', '0', '0', '7236', '1', '0', '0', '0', '1495186320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('573', '0', '0', '7226', '1', '0', '0', '0', '1495186320', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('574', '0', '0', '7236', '1', '0', '0', '0', '1495186321', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('575', '0', '0', '7226', '1', '0', '0', '0', '1495186321', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('576', '0', '0', '7236', '1', '0', '0', '0', '1495186321', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('577', '0', '0', '7226', '1', '0', '0', '0', '1495186321', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('578', '0', '0', '7236', '1', '0', '0', '0', '1495186322', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('579', '0', '0', '7236', '0', '0', '0', '0', '1495191262', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('580', '0', '0', '7236', '1', '0', '0', '0', '1495202133', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('581', '0', '0', '7226', '0', '0', '0', '0', '1495203358', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('582', '0', '0', '7236', '1', '0', '0', '0', '1495205760', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('583', '0', '0', '7236', '0', '0', '0', '0', '1495245600', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('584', '0', '0', '7236', '0', '0', '0', '0', '1495245601', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('585', '0', '0', '7236', '0', '0', '0', '0', '1495245601', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('586', '0', '0', '7236', '0', '0', '0', '0', '1495245602', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('587', '0', '0', '7226', '0', '0', '0', '0', '1495253104', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('588', '0', '0', '7226', '0', '0', '0', '0', '1495253104', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('589', '0', '0', '7226', '0', '0', '0', '0', '1495253105', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('590', '0', '0', '7226', '0', '0', '0', '0', '1495253105', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('591', '0', '0', '7226', '0', '0', '0', '0', '1495253106', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('592', '0', '0', '7226', '0', '0', '0', '0', '1495253106', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('593', '0', '0', '7226', '0', '0', '0', '0', '1495253106', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('594', '0', '0', '7226', '0', '0', '0', '0', '1495253107', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('595', '0', '0', '7226', '0', '0', '0', '0', '1495253107', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('596', '0', '0', '7226', '0', '0', '0', '0', '1495253108', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('597', '0', '0', '7226', '0', '0', '0', '0', '1495253109', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('598', '0', '0', '7226', '0', '0', '0', '0', '1495253109', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('599', '0', '0', '7226', '0', '0', '0', '0', '1495253110', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('600', '0', '0', '7226', '0', '0', '0', '0', '1495253111', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('601', '0', '0', '7226', '0', '0', '0', '0', '1495253112', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('602', '0', '0', '7226', '0', '0', '0', '0', '1495253113', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('603', '0', '0', '7236', '0', '0', '0', '0', '1495253113', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('604', '0', '0', '7236', '0', '0', '0', '0', '1495253113', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('605', '0', '0', '7226', '0', '0', '0', '0', '1495253113', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('606', '0', '0', '7236', '0', '0', '0', '0', '1495254180', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('607', '0', '0', '7236', '0', '0', '0', '0', '1495254180', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('608', '0', '0', '7236', '0', '0', '0', '0', '1495254300', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('609', '0', '0', '7236', '0', '0', '0', '0', '1495254300', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('610', '0', '0', '7236', '1', '0', '0', '0', '1495273592', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('611', '0', '0', '7236', '1', '0', '0', '0', '1495277220', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('612', '0', '0', '7226', '0', '0', '0', '0', '1495286640', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('613', '0', '0', '7226', '0', '0', '0', '0', '1495376160', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('614', '0', '0', '7226', '0', '0', '0', '0', '1495440840', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('615', '0', '0', '7236', '0', '0', '0', '0', '1495440840', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('616', '0', '0', '7237', '0', '0', '0', '0', '1495581783', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('617', '0', '0', '7237', '0', '0', '0', '0', '1495581785', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('618', '0', '0', '7237', '0', '0', '0', '0', '1495581787', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('619', '0', '0', '7226', '0', '0', '0', '0', '1495679927', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('620', '0', '0', '7226', '0', '0', '0', '0', '1495680233', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('621', '0', '0', '7226', '0', '0', '0', '0', '1496192907', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('622', '0', '0', '7236', '20', '0', '0', '0', '1496207661', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('623', '0', '0', '7236', '21', '0', '0', '0', '1496207668', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('624', '0', '0', '7226', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('625', '0', '0', '7226', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('626', '0', '0', '7226', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('627', '0', '0', '7226', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('628', '0', '0', '7243', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('629', '0', '0', '7243', '0', '0', '0', '0', '1496278560', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('630', '0', '0', '7226', '0', '0', '0', '0', '1496278589', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('631', '0', '0', '7226', '0', '0', '0', '0', '1496278668', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('632', '0', '0', '7226', '0', '0', '0', '0', '1496287386', null, '0', null, '2', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('633', '0', '0', '7243', '0', '0', '0', '0', '1496364240', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('634', '0', '0', '7244', '0', '0', '0', '0', '1496718221', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('635', '0', '0', '7244', '0', '0', '0', '0', '1496718283', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('636', '0', '0', '7226', '0', '0', '0', '0', '1496719236', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('637', '0', '0', '7226', '0', '0', '0', '0', '1496719257', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('638', '0', '0', '7226', '0', '0', '0', '0', '1496719267', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('639', '0', '0', '7226', '0', '0', '0', '0', '1496719286', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('640', '0', '0', '7226', '0', '0', '0', '0', '1496719566', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('641', '0', '0', '7226', '0', '0', '0', '0', '1496719637', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('642', '0', '0', '7236', '34445', '0', '0', '0', '1496736852', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('643', '0', '0', '7236', '34444', '0', '0', '0', '1496737157', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('644', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('645', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('646', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('647', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('648', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('649', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('650', '0', '0', '7236', '0', '0', '0', '0', '1496907720', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('651', '0', '0', '7236', '0', '0', '0', '0', '1497518453', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('652', '0', '0', '7226', '1', '0', '0', '0', '1497518457', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('653', '0', '0', '7226', '1', '0', '0', '0', '1497518460', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('654', '0', '0', '7236', '0', '0', '0', '0', '1497518460', null, '0', null, '11', '0', '0', '0');

-- ----------------------------
-- Table structure for bao_payment
-- ----------------------------
DROP TABLE IF EXISTS `bao_payment`;
CREATE TABLE `bao_payment` (
  `payment_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `logo` varchar(32) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `mobile_logo` varchar(32) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `setting` text,
  `is_mobile_only` tinyint(1) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_payment
-- ----------------------------

-- ----------------------------
-- Table structure for bao_payment_logs
-- ----------------------------
DROP TABLE IF EXISTS `bao_payment_logs`;
CREATE TABLE `bao_payment_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` enum('tuan','gold','money','ele','ding','fzmoney','breaks','goods') DEFAULT 'tuan',
  `order_id` int(11) DEFAULT '0',
  `order_ids` text COMMENT '如果该支付方式支持多个订单（合并付款）',
  `code` varchar(32) DEFAULT NULL,
  `need_pay` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `pay_ip` varchar(15) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2629 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_payment_logs
-- ----------------------------

-- ----------------------------
-- Table structure for bao_platform_menu
-- ----------------------------
DROP TABLE IF EXISTS `bao_platform_menu`;
CREATE TABLE `bao_platform_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authName` varchar(255) DEFAULT NULL,
  `authPath` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `authDescription` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(6) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_platform_menu
-- ----------------------------
INSERT INTO `bao_platform_menu` VALUES ('1', '平台管理系统', null, '-1', null, 'closed', 'icon-home', '2017-02-06 21:01:05', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('2', '系统配置', '', '1', '', 'closed', 'icon-permission', '2017-02-06 00:00:00', null, '0', '2017-05-16 10:15:50', null);
INSERT INTO `bao_platform_menu` VALUES ('3', '用户管理', 'userManage.do', '2', null, 'open', 'icon-userManage', '2017-02-06 21:02:16', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('4', '角色管理', 'rolesManage.do', '2', null, 'open', 'icon-roleManage', '2017-02-06 21:03:25', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('5', '菜单管理', 'menusManage.do', '2', null, 'open', 'icon-modifyPassword', '2017-02-06 21:04:13', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('6', '修改密码', null, '1', null, 'open', 'icon-exit', '2017-02-06 21:04:47', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('7', '安全退出', null, '1', null, null, 'icon-exit', null, null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('9', '广告管理', 'advertManage2.do', '1', '', 'open', 'icon-item', '2017-03-30 00:00:00', '1', '0', '2017-03-30 00:00:00', '1');
INSERT INTO `bao_platform_menu` VALUES ('10', '城市信息管理', 'getCitys.do', '1', '城市信息管理', 'open', 'icon-item', '2017-03-31 00:00:00', '1', '0', '2017-03-31 00:00:00', '1');
INSERT INTO `bao_platform_menu` VALUES ('11', '会员管理', 'appuserManage.do', '1', 'app用户管理', 'open', 'icon-item', '2017-04-01 00:00:00', '3', '0', '2017-04-01 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('13', '客服管理', 'customerServiceManage.do', '1', '', 'open', 'icon-item', '2017-04-14 00:00:00', '3', '0', '2017-04-14 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('19', '统计管理', '', '1', '注册人数统计、资金流水统计', 'closed', 'icon-item', '2017-04-27 22:47:12', '1', '0', '2017-04-27 22:47:12', '1');
INSERT INTO `bao_platform_menu` VALUES ('20', '系统参数配置', 'advertManage.do', '1', '', 'open', 'icon-item', '2017-05-04 00:00:00', '3', '0', '2017-05-04 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('21', '提现管理', 'userCash.do', '1', '', 'open', 'icon-item', '2017-05-04 00:00:00', '3', '0', '2017-05-04 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('22', '邀请管理', 'inviteManage.do', '1', '', 'open', 'icon-item', '2017-05-11 00:00:00', '3', '0', '2017-05-11 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('23', '好友关系管理', 'userRelationManage.do', '1', '', 'open', 'icon-item', '2017-05-11 00:00:00', '3', '0', '2017-05-11 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('24', '会员统计', 'appuserCountManage.do', '19', '', 'open', 'icon-item', '2017-05-15 09:37:02', '1', '0', '2017-05-15 09:37:02', '1');
INSERT INTO `bao_platform_menu` VALUES ('25', '会员充值统计', 'appuserCashCountManage.do', '19', '', 'open', 'icon-item', '2017-05-15 09:37:31', '1', '0', '2017-05-15 09:37:31', '1');
INSERT INTO `bao_platform_menu` VALUES ('26', '广告统计', 'advertCountManage.do', '19', '', 'open', 'icon-item', '2017-05-15 09:43:10', '3', '0', '2017-05-15 09:43:10', '3');
INSERT INTO `bao_platform_menu` VALUES ('27', '广告费用统计', 'advertFeeCountManage.do', '19', '', 'open', 'icon-item', '2017-05-15 09:43:26', '3', '0', '2017-05-15 09:43:26', '3');
INSERT INTO `bao_platform_menu` VALUES ('28', '邀请统计', 'inviteCountManage.do', '19', '', 'open', 'icon-item', '2017-05-15 09:44:07', '3', '0', '2017-05-15 09:44:07', '3');
INSERT INTO `bao_platform_menu` VALUES ('29', '充值统计', 'rechargeRecordCount.do', '19', '', 'open', 'icon-item', '2017-05-15 00:00:00', '3', '0', '2017-05-15 00:00:00', '3');
INSERT INTO `bao_platform_menu` VALUES ('30', '标签管理', 'sysLabelManage.do', '1', '', 'open', 'icon-item', '2017-05-16 15:19:57', '3', '0', '2017-05-16 15:19:57', '3');
INSERT INTO `bao_platform_menu` VALUES ('100', '个人信息', null, '100', null, 'open', 'icon-userManage', '2017-05-16 15:19:57', null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('101', '地区用户', 'agentUserListManage.do', '100', null, 'open', 'icon-item', null, null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('102', '地区统计', 'agentDisCountManage.do', '100', null, 'open', 'icon-item', null, null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('103', '修改密码', null, '100', null, 'open', 'icon-modifyPassword', null, null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('104', '安全退出', null, '100', null, 'open', 'icon-exit', null, null, '0', null, null);
INSERT INTO `bao_platform_menu` VALUES ('105', '平台利润总额', 'sysOrder.do', '19', '', 'open', 'icon-item', '2017-06-15 13:43:13', '3', '0', '2017-06-15 13:43:13', '3');
INSERT INTO `bao_platform_menu` VALUES ('106', '充值流水', 'rechargeRecordManage.do', '1', '', 'open', 'icon-item', '2017-06-15 22:51:28', '3', '0', '2017-06-15 22:51:28', '3');
INSERT INTO `bao_platform_menu` VALUES ('107', '诚意金统计', 'sincerityManage.do', '19', '', 'open', 'icon-item', '2017-06-16 00:39:59', '3', '0', '2017-06-16 00:39:59', '3');

-- ----------------------------
-- Table structure for bao_platform_role
-- ----------------------------
DROP TABLE IF EXISTS `bao_platform_role`;
CREATE TABLE `bao_platform_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `authIds` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `roleDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_platform_role
-- ----------------------------
INSERT INTO `bao_platform_role` VALUES ('1', '超级管理员', '1,2,3,4,5,6,7,9,10,11,13,19,24,25,26,27,28,29,105,107,20,21,22,23,30,106', '2017-02-06 21:09:02', null, '0', null, null, null);
INSERT INTO `bao_platform_role` VALUES ('2', '客服', '1,6,7,9,10,11,13,19,24,25,26,27,28,29,20,21,22,23', '2017-05-16 13:13:40', null, '0', '2017-05-16 13:13:40', null, '');
INSERT INTO `bao_platform_role` VALUES ('3', '代理商', null, '2017-05-26 08:43:01', null, '0', '2017-05-26 08:43:01', null, '');

-- ----------------------------
-- Table structure for bao_platform_user
-- ----------------------------
DROP TABLE IF EXISTS `bao_platform_user`;
CREATE TABLE `bao_platform_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `shield` tinyint(4) DEFAULT NULL,
  `userType` tinyint(4) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `userDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_platform_user
-- ----------------------------
INSERT INTO `bao_platform_user` VALUES ('1', 'admin', '4297f44b13955235245b2497399d7a93', '1', '18510829662', '0@0.com', null, null, '2017-04-01 00:00:00', null, '0', '2017-04-01 00:00:00', null, '0', '1', '1', '超级管理员');
INSERT INTO `bao_platform_user` VALUES ('3', 'root', '4297f44b13955235245b2497399d7a93', '1', '18510829661', '0@0.com', null, null, '2017-04-01 00:00:00', null, '0', '2017-04-01 00:00:00', null, '0', '1', '1', '超级管理员1');
INSERT INTO `bao_platform_user` VALUES ('4', 'test', '4297f44b13955235245b2497399d7a93', '1', '123123', '123123', null, null, '2017-04-28 00:00:00', null, '0', '2017-04-28 00:00:00', null, '0', '1', '2', '123123');
INSERT INTO `bao_platform_user` VALUES ('5', '123123', '4297f44b13955235245b2497399d7a93', '0', '18575618939', '123123', null, null, '2017-05-26 00:00:00', null, '0', '2017-05-26 00:00:00', null, '0', '2', '3', '');

-- ----------------------------
-- Table structure for bao_push_history
-- ----------------------------
DROP TABLE IF EXISTS `bao_push_history`;
CREATE TABLE `bao_push_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sendtype` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '0单发消息,1群发消息',
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uid` int(10) unsigned DEFAULT '0',
  `contents` varchar(1024) NOT NULL,
  `type` enum('android','ios','all') NOT NULL DEFAULT 'android' COMMENT '发送平台',
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_push_history
-- ----------------------------

-- ----------------------------
-- Table structure for bao_qrcode_census
-- ----------------------------
DROP TABLE IF EXISTS `bao_qrcode_census`;
CREATE TABLE `bao_qrcode_census` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `year` smallint(5) DEFAULT '0',
  `month` tinyint(2) DEFAULT '0',
  `day` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_qrcode_census
-- ----------------------------

-- ----------------------------
-- Table structure for bao_quanming
-- ----------------------------
DROP TABLE IF EXISTS `bao_quanming`;
CREATE TABLE `bao_quanming` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '获得佣金的用户ID',
  `buy_uid` int(11) DEFAULT '0' COMMENT '购买的用户ID',
  `rank` tinyint(4) DEFAULT '0' COMMENT '第几级会员产生的收益',
  `price` int(11) DEFAULT '0' COMMENT '对方消费多少',
  `commission` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_quanming
-- ----------------------------

-- ----------------------------
-- Table structure for bao_receipt_address
-- ----------------------------
DROP TABLE IF EXISTS `bao_receipt_address`;
CREATE TABLE `bao_receipt_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goodsReceipt` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `detailedAddress` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_receipt_address
-- ----------------------------

-- ----------------------------
-- Table structure for bao_recharge_card
-- ----------------------------
DROP TABLE IF EXISTS `bao_recharge_card`;
CREATE TABLE `bao_recharge_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '0',
  `card_key` char(32) DEFAULT '0',
  `value` int(10) DEFAULT '0',
  `end_date` date DEFAULT '0000-00-00',
  `is_used` tinyint(3) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `used_time` int(11) DEFAULT '0',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_recharge_card
-- ----------------------------

-- ----------------------------
-- Table structure for bao_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `bao_recharge_record`;
CREATE TABLE `bao_recharge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `bankcard` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL COMMENT '金额明细相关的用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_recharge_record
-- ----------------------------
INSERT INTO `bao_recharge_record` VALUES ('1', null, '12', '1', '12', null, null, null, '0', null, null, '1');
INSERT INTO `bao_recharge_record` VALUES ('2', null, '32', '4', '12', null, null, null, null, null, null, '1');
INSERT INTO `bao_recharge_record` VALUES ('3', null, '12', '1', '123', null, null, null, null, null, null, '1');
INSERT INTO `bao_recharge_record` VALUES ('4', null, '42.1', '4', '123', null, null, null, null, null, null, '1');
INSERT INTO `bao_recharge_record` VALUES ('5', null, null, '1', '12', null, null, null, null, null, null, null);
INSERT INTO `bao_recharge_record` VALUES ('6', null, '2.00', '8', null, null, '2017-05-05 22:46:32', '7236', '0', '2017-05-05 22:46:32', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('7', null, '2.00', '8', null, null, '2017-05-06 22:34:26', '7236', '0', '2017-05-06 22:34:26', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('8', null, '2.00', '8', null, null, '2017-05-06 22:34:41', '7236', '0', '2017-05-06 22:34:41', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('9', null, '2.00', '8', null, null, '2017-05-07 14:08:18', '7237', '0', '2017-05-07 14:08:18', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('10', null, '1.00', '8', null, null, '2017-05-07 18:18:55', '7236', '0', '2017-05-07 18:18:55', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('11', null, '1.00', '8', null, null, '2017-05-07 18:27:40', '7236', '0', '2017-05-07 18:27:40', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('12', null, '0.08', '8', null, null, '2017-05-07 21:18:44', '7237', '0', '2017-05-07 21:18:44', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('13', null, '0.04', '8', null, null, '2017-05-07 21:20:35', '7237', '0', '2017-05-07 21:20:35', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('14', null, '0.71', '8', null, null, '2017-05-08 00:05:29', '7236', '0', '2017-05-08 00:05:29', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('15', null, '0.15', '8', null, null, '2017-05-08 00:05:39', '7236', '0', '2017-05-08 00:05:39', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('16', null, '0.02', '8', null, null, '2017-05-08 00:05:47', '7236', '0', '2017-05-08 00:05:47', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('17', null, '2.00', '8', null, null, '2017-05-08 00:05:55', '7236', '0', '2017-05-08 00:05:55', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('18', null, '2.00', '8', null, null, '2017-05-08 00:05:58', '7236', '0', '2017-05-08 00:05:58', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('19', null, '2.00', '8', null, null, '2017-05-08 00:06:05', '7236', '0', '2017-05-08 00:06:05', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('20', null, '2.00', '8', null, null, '2017-05-08 00:06:18', '7236', '0', '2017-05-08 00:06:18', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('21', null, '0.99', '8', null, null, '2017-05-08 22:15:21', '7236', '0', '2017-05-08 22:15:21', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('22', null, '1.01', '8', null, null, '2017-05-08 22:17:49', '7236', '0', '2017-05-08 22:17:49', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('23', null, '2', '9', null, null, '2017-05-09 23:40:43', '7237', '0', '2017-05-09 23:40:43', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('24', null, '2.00', '8', null, null, '2017-05-10 15:29:56', '7226', '0', '2017-05-10 15:29:56', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('25', null, '2', '9', null, null, '2017-05-10 23:06:18', '7237', '0', '2017-05-10 23:06:18', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('26', null, '0', '9', null, null, '2017-05-11 15:22:23', '7226', '0', '2017-05-11 15:22:23', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('27', null, '0', '9', null, null, '2017-05-11 15:22:24', '7226', '0', '2017-05-11 15:22:24', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('28', null, '0', '9', null, null, '2017-05-11 15:22:24', '7226', '0', '2017-05-11 15:22:24', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('29', null, '0', '9', null, null, '2017-05-11 15:22:25', '7226', '0', '2017-05-11 15:22:25', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('30', null, '0', '9', null, null, '2017-05-11 15:22:27', '7226', '0', '2017-05-11 15:22:27', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('31', null, '0', '9', null, null, '2017-05-11 15:22:27', '7226', '0', '2017-05-11 15:22:27', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('32', null, '0', '9', null, null, '2017-05-11 15:22:31', '7226', '0', '2017-05-11 15:22:31', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('33', null, '0', '9', null, null, '2017-05-11 15:22:54', '7226', '0', '2017-05-11 15:22:54', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('34', null, '0', '9', null, null, '2017-05-11 15:22:55', '7226', '0', '2017-05-11 15:22:55', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('35', null, '0', '9', null, null, '2017-05-11 15:23:06', '7226', '0', '2017-05-11 15:23:06', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('36', null, '0', '9', null, null, '2017-05-11 15:23:53', '7226', '0', '2017-05-11 15:23:53', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('37', null, '0', '9', null, null, '2017-05-11 15:24:31', '7226', '0', '2017-05-11 15:24:31', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('38', null, '0', '9', null, null, '2017-05-11 15:28:20', '7226', '0', '2017-05-11 15:28:20', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('39', null, '0', '9', null, null, '2017-05-11 17:10:37', '7226', '0', '2017-05-11 17:10:37', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('40', null, '200', '9', null, null, '2017-05-11 22:28:04', '7237', '0', '2017-05-11 22:28:04', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('41', null, '2', '9', null, null, '2017-05-11 22:55:08', '7236', '0', '2017-05-11 22:55:08', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('42', null, '2', '9', null, null, '2017-05-11 23:35:43', '7236', '0', '2017-05-11 23:35:43', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('43', null, '11', '9', null, null, '2017-05-12 11:39:15', '7236', '0', '2017-05-12 11:39:15', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('44', null, '0', '9', null, null, '2017-05-12 15:32:59', '7226', '0', '2017-05-12 15:32:59', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('45', null, '2', '9', null, null, '2017-05-13 14:33:15', '7237', '0', '2017-05-13 14:33:15', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('46', null, '2', '9', null, null, '2017-05-13 14:33:16', '7237', '0', '2017-05-13 14:33:16', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('47', null, '0', '11', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('48', null, '0', '11', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('49', null, '0', '11', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('50', null, '0', '5', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('51', null, '0', '11', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('52', null, '0', '5', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('53', null, '0', '10', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('54', null, '0', '11', null, null, '2017-05-14 14:12:00', '7226', '0', '2017-05-14 14:12:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('55', null, '0', '10', null, null, '2017-05-14 14:12:01', '7226', '0', '2017-05-14 14:12:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('56', null, '0', '11', null, null, '2017-05-14 14:12:01', '7226', '0', '2017-05-14 14:12:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('57', null, '0', '11', null, null, '2017-05-14 14:12:01', '7226', '0', '2017-05-14 14:12:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('58', null, '0', '11', null, null, '2017-05-14 14:12:01', '7236', '0', '2017-05-14 14:12:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('59', null, '0', '10', null, null, '2017-05-14 14:12:01', '7237', '0', '2017-05-14 14:12:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('60', null, '200', '3', null, null, '2017-05-14 14:12:01', '7237', '0', '2017-05-14 14:12:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('61', null, '0', '11', null, null, '2017-05-14 14:12:01', '7226', '0', '2017-05-14 14:12:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('62', null, '2', '9', null, null, '2017-05-14 17:58:26', '7237', '0', '2017-05-14 17:58:26', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('63', null, '2', '9', null, null, '2017-05-14 17:58:26', '7237', '0', '2017-05-14 17:58:26', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('64', null, '3', '9', null, null, '2017-05-14 18:34:32', '7236', '0', '2017-05-14 18:34:32', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('65', null, '3', '11', null, null, '2017-05-14 18:38:00', '7236', '0', '2017-05-14 18:38:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('66', null, '1', '9', null, null, '2017-05-14 18:38:23', '7236', '0', '2017-05-14 18:38:23', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('67', null, '1', '9', null, null, '2017-05-14 18:45:18', '7236', '0', '2017-05-14 18:45:18', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('68', null, '1', '9', null, null, '2017-05-14 18:45:25', '7236', '0', '2017-05-14 18:45:25', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('69', null, '1', '9', null, null, '2017-05-14 18:45:44', '7236', '0', '2017-05-14 18:45:44', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('70', null, '1', '9', null, null, '2017-05-14 18:47:06', '7236', '0', '2017-05-14 18:47:06', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('71', null, '1', '9', null, null, '2017-05-14 19:39:46', '7236', '0', '2017-05-14 19:39:46', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('72', null, '1', '9', null, null, '2017-05-14 19:41:01', '7236', '0', '2017-05-14 19:41:01', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('73', null, '1', '9', null, null, '2017-05-14 19:45:58', '7236', '0', '2017-05-14 19:45:58', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('74', null, '2', '10', null, null, '2017-05-14 19:55:35', '7237', '0', '2017-05-14 19:55:35', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('75', null, '2', '9', null, null, '2017-05-14 20:39:15', '7237', '0', '2017-05-14 20:39:15', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('76', null, '2', '3', null, null, '2017-05-14 20:40:00', '7237', '0', '2017-05-14 20:40:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('77', null, '1', '11', null, null, '2017-05-14 21:42:00', '7236', '0', '2017-05-14 21:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('78', null, '1', '9', null, null, '2017-05-14 21:51:02', '7236', '0', '2017-05-14 21:51:02', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('79', null, '2', '11', null, null, '2017-05-14 23:59:00', '7237', '0', '2017-05-14 23:59:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('80', null, '2', '11', null, null, '2017-05-14 23:59:00', '7237', '0', '2017-05-14 23:59:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('81', null, '1', '5', null, null, '2017-05-15 19:40:00', '7236', '0', '2017-05-15 19:40:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('82', null, '1', '5', null, null, '2017-05-15 19:40:00', '7236', '0', '2017-05-15 19:40:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('83', null, '1', '11', null, null, '2017-05-15 19:40:01', '7236', '0', '2017-05-15 19:40:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('84', null, '2', '10', null, null, '2017-05-15 22:56:21', '7237', '0', '2017-05-15 22:56:21', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('85', null, '0', '5', null, null, '2017-05-16 15:21:00', '7226', '0', '2017-05-16 15:21:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('86', null, '0', '11', null, null, '2017-05-16 15:21:00', '7237', '0', '2017-05-16 15:21:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('87', null, '0', '11', null, null, '2017-05-16 15:21:00', '7226', '0', '2017-05-16 15:21:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('88', null, '0', '11', null, null, '2017-05-16 15:21:00', '7236', '0', '2017-05-16 15:21:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('89', null, '0', '11', null, null, '2017-05-16 15:21:00', '7237', '0', '2017-05-16 15:21:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('90', '1956471488', '0.01', '2', null, null, '2017-05-16 19:56:58', null, '0', '2017-05-16 19:56:58', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('91', '1959136388', '0.01', '2', null, null, '2017-05-16 19:59:21', null, '0', '2017-05-16 19:59:21', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('92', '2030571841', '0.01', '2', null, null, '2017-05-16 20:31:05', null, '0', '2017-05-16 20:31:05', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('93', '2045148159', '0.01', '2', null, null, '2017-05-16 20:45:22', null, '0', '2017-05-16 20:45:22', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('94', '2047521523', '0.01', '2', null, null, '2017-05-16 20:48:00', null, '0', '2017-05-16 20:48:00', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('95', null, '2', '9', null, null, '2017-05-16 22:00:21', '7237', '0', '2017-05-16 22:00:21', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('96', null, '2', '11', null, null, '2017-05-16 22:01:00', '7237', '0', '2017-05-16 22:01:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('97', null, '1', '9', null, null, '2017-05-16 22:07:02', '7236', '0', '2017-05-16 22:07:02', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('98', null, '0', '9', null, null, '2017-05-16 22:08:43', '7226', '0', '2017-05-16 22:08:43', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('99', null, '0', '11', null, null, '2017-05-16 22:09:00', '7226', '0', '2017-05-16 22:09:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('100', null, '1', '11', null, null, '2017-05-16 22:11:00', '7236', '0', '2017-05-16 22:11:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('101', '', '0.06', '2', null, null, '2017-05-16 22:12:57', null, '0', '2017-05-16 22:12:57', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('102', null, '0', '9', null, null, '2017-05-16 22:13:25', '7236', '0', '2017-05-16 22:13:25', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('103', null, '0', '9', null, null, '2017-05-16 22:13:39', '7236', '0', '2017-05-16 22:13:39', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('104', null, '0', '9', null, null, '2017-05-16 22:13:41', '7236', '0', '2017-05-16 22:13:41', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('105', null, '0', '9', null, null, '2017-05-16 22:13:51', '7236', '0', '2017-05-16 22:13:51', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('106', null, '0', '9', null, null, '2017-05-16 22:14:00', '7236', '0', '2017-05-16 22:14:00', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('107', null, '0', '9', null, null, '2017-05-16 22:14:49', '7236', '0', '2017-05-16 22:14:49', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('108', '', '0.06', '2', null, null, '2017-05-16 22:15:32', null, '0', '2017-05-16 22:15:32', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('109', '2237081919', '0.01', '6', null, null, '2017-05-16 22:37:30', null, '0', '2017-05-16 22:37:30', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('110', null, '1.85', '8', null, null, '2017-05-16 22:37:37', '7237', '0', '2017-05-16 22:37:37', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('111', null, '0.15', '8', null, null, '2017-05-16 22:39:47', '7236', '0', '2017-05-16 22:39:47', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('112', null, '0.01', '8', null, null, '2017-05-16 22:49:39', '7237', '0', '2017-05-16 22:49:39', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('113', null, '0.00', '8', null, null, '2017-05-16 22:52:30', '7237', '0', '2017-05-16 22:52:30', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('114', null, '0.01', '8', null, null, '2017-05-16 22:56:07', '7237', '0', '2017-05-16 22:56:07', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('115', null, '0.01', '8', null, null, '2017-05-16 22:58:31', '7237', '0', '2017-05-16 22:58:31', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('116', null, '1', '9', null, null, '2017-05-16 23:11:49', '7236', '0', '2017-05-16 23:11:49', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('117', null, '1', '9', null, null, '2017-05-16 23:12:44', '7236', '0', '2017-05-16 23:12:44', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('118', '', '0.06', '2', null, null, '2017-05-16 23:38:45', null, '0', '2017-05-16 23:38:45', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('119', null, '0.03', '8', null, null, '2017-05-16 23:39:11', '7236', '0', '2017-05-16 23:39:11', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('120', '', '0.06', '2', null, null, '2017-05-16 23:57:03', null, '0', '2017-05-16 23:57:03', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('121', '', '0.06', '2', null, null, '2017-05-17 00:06:56', null, '0', '2017-05-17 00:06:56', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('122', null, '0.03', '8', null, null, '2017-05-17 00:09:28', '7236', '0', '2017-05-17 00:09:28', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('123', null, '0.03', '8', null, null, '2017-05-17 00:09:31', '7236', '0', '2017-05-17 00:09:31', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('124', '', '0.01', '3', null, null, '2017-05-17 11:14:07', null, '0', '2017-05-17 11:14:07', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('125', '', '0.01', '3', null, null, '2017-05-17 11:19:53', null, '0', '2017-05-17 11:19:53', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('126', '', '0.01', '4', null, null, '2017-05-17 11:19:54', null, '0', '2017-05-17 11:19:54', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('127', '', '0.06', '1', null, null, '2017-05-17 11:31:47', null, '0', '2017-05-17 11:31:47', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('128', '', '0.06', '2', null, null, '2017-05-17 11:47:41', null, '0', '2017-05-17 11:47:41', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('129', '', '0.18', '2', null, null, '2017-05-17 11:59:04', null, '0', '2017-05-17 11:59:04', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('130', '', '0.18', '2', null, null, '2017-05-17 12:10:14', null, '0', '2017-05-17 12:10:14', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('131', null, '0.01', '8', null, null, '2017-05-17 12:11:38', '7236', '0', '2017-05-17 12:11:38', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('132', '', '0.18', '2', null, null, '2017-05-17 12:15:34', null, '0', '2017-05-17 12:15:34', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('133', null, '0.01', '8', null, null, '2017-05-17 12:19:23', '7236', '0', '2017-05-17 12:19:23', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('134', null, '0.00', '8', null, null, '2017-05-17 12:19:40', '7236', '0', '2017-05-17 12:19:40', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('135', null, '0.01', '8', null, null, '2017-05-17 12:19:45', '7236', '0', '2017-05-17 12:19:45', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('136', null, '0.01', '8', null, null, '2017-05-17 12:19:48', '7236', '0', '2017-05-17 12:19:48', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('137', null, '0.00', '8', null, null, '2017-05-17 12:19:52', '7236', '0', '2017-05-17 12:19:52', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('138', null, '0.01', '8', null, null, '2017-05-17 12:38:00', '7236', '0', '2017-05-17 12:38:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('139', null, '0.01', '8', null, null, '2017-05-17 12:38:02', '7236', '0', '2017-05-17 12:38:02', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('140', '', '0.12', '2', null, null, '2017-05-17 12:45:24', null, '0', '2017-05-17 12:45:24', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('141', null, '0.03', '8', null, null, '2017-05-17 12:45:39', '7236', '0', '2017-05-17 12:45:39', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('142', null, '0.01', '8', null, null, '2017-05-17 12:45:42', '7236', '0', '2017-05-17 12:45:42', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('143', '', '0.06', '2', null, null, '2017-05-17 13:54:46', null, '0', '2017-05-17 13:54:46', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('144', '', '0.06', '2', null, null, '2017-05-17 13:56:15', null, '0', '2017-05-17 13:56:15', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('145', null, '0.02', '8', null, null, '2017-05-17 14:07:03', '7236', '0', '2017-05-17 14:07:03', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('146', '', '0.06', '2', null, null, '2017-05-17 14:08:03', null, '0', '2017-05-17 14:08:03', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('147', null, '0.01', '8', null, null, '2017-05-17 14:11:03', '7236', '0', '2017-05-17 14:11:03', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('148', '', '0.06', '2', null, null, '2017-05-17 14:17:08', null, '0', '2017-05-17 14:17:08', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('149', '', '0.12', '2', null, null, '2017-05-17 14:21:13', null, '0', '2017-05-17 14:21:13', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('150', '', '0.12', '2', null, null, '2017-05-17 14:31:47', null, '0', '2017-05-17 14:31:47', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('151', '', '0.12', '2', null, null, '2017-05-17 14:36:49', null, '0', '2017-05-17 14:36:49', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('152', '', '0.18', '2', null, null, '2017-05-17 14:41:08', null, '0', '2017-05-17 14:41:08', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('153', '', '0.18', '2', null, null, '2017-05-17 14:42:31', null, '0', '2017-05-17 14:42:31', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('154', null, '0.03', '8', null, null, '2017-05-17 14:49:14', '7226', '0', '2017-05-17 14:49:14', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('155', null, '0.01', '8', null, null, '2017-05-17 14:49:32', '7226', '0', '2017-05-17 14:49:32', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('156', null, '0.05', '8', null, null, '2017-05-17 14:50:35', '7226', '0', '2017-05-17 14:50:35', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('157', null, '0.02', '8', null, null, '2017-05-17 14:52:51', '7226', '0', '2017-05-17 14:52:51', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('158', null, '0.06', '8', null, null, '2017-05-17 14:53:11', '7226', '0', '2017-05-17 14:53:11', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('159', null, '0.03', '8', null, null, '2017-05-17 14:53:18', '7226', '0', '2017-05-17 14:53:18', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('160', null, '0.01', '8', null, null, '2017-05-17 14:53:54', '7226', '0', '2017-05-17 14:53:54', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('161', null, '0.02', '8', null, null, '2017-05-17 14:54:14', '7226', '0', '2017-05-17 14:54:14', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('162', null, '0.06', '8', null, null, '2017-05-17 14:55:28', '7226', '0', '2017-05-17 14:55:28', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('163', null, '0.01', '8', null, null, '2017-05-17 15:02:07', '7236', '0', '2017-05-17 15:02:07', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('164', null, '1', '9', null, null, '2017-05-17 15:02:53', '7226', '0', '2017-05-17 15:02:53', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('165', null, '1', '9', null, null, '2017-05-17 15:26:52', '7226', '0', '2017-05-17 15:26:52', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('166', null, '1', '9', null, null, '2017-05-17 15:30:32', '7226', '0', '2017-05-17 15:30:32', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('167', '', '0.06', '2', null, null, '2017-05-17 16:04:12', null, '0', '2017-05-17 16:04:12', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('168', null, '0.03', '8', null, null, '2017-05-17 16:17:02', '7236', '0', '2017-05-17 16:17:02', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('169', null, '1', '11', null, null, '2017-05-17 18:46:00', '7236', '0', '2017-05-17 18:46:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('170', null, '0', '11', null, null, '2017-05-17 22:09:01', '7226', '0', '2017-05-17 22:09:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('171', null, '0', '11', null, null, '2017-05-17 22:09:01', '7236', '0', '2017-05-17 22:09:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('172', '2248081028', '0.01', '6', null, null, '2017-05-17 22:48:35', null, '0', '2017-05-17 22:48:35', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('173', '2248081028', '0.01', '6', null, null, '2017-05-17 22:48:43', null, '0', '2017-05-17 22:48:43', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('174', '2248081028', '0.01', '6', null, null, '2017-05-17 22:49:04', null, '0', '2017-05-17 22:49:04', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('175', '2248081028', '18', '6', null, null, '2017-05-17 22:49:40', null, '0', '2017-05-17 22:49:40', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('176', '2248081028', '0.01', '6', null, null, '2017-05-17 22:52:47', null, '0', '2017-05-17 22:52:47', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('177', null, '1', '9', null, null, '2017-05-17 22:57:35', '7226', '0', '2017-05-17 22:57:35', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('178', null, '1', '9', null, null, '2017-05-17 22:57:55', '7237', '0', '2017-05-17 22:57:55', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('179', null, '2', '9', null, null, '2017-05-17 23:21:28', '7237', '0', '2017-05-17 23:21:28', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('180', null, '2', '11', null, null, '2017-05-17 23:22:01', '7237', '0', '2017-05-17 23:22:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('181', '2248081028', '0.01', '6', null, null, '2017-05-17 23:22:53', null, '0', '2017-05-17 23:22:53', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('182', null, '200', '9', null, null, '2017-05-17 23:26:48', '7237', '0', '2017-05-17 23:26:48', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('183', null, '200', '11', null, null, '2017-05-17 23:27:00', '7237', '0', '2017-05-17 23:27:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('184', null, '2', '9', null, null, '2017-05-17 23:31:24', '7237', '0', '2017-05-17 23:31:24', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('185', null, '2', '11', null, null, '2017-05-17 23:32:01', '7237', '0', '2017-05-17 23:32:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('186', null, '2', '9', null, null, '2017-05-17 23:33:59', '7237', '0', '2017-05-17 23:33:59', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('187', null, '2', '9', null, null, '2017-05-17 23:34:00', '7237', '0', '2017-05-17 23:34:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('188', null, '3', '9', null, null, '2017-05-17 23:34:45', '7237', '0', '2017-05-17 23:34:45', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('189', null, '3', '9', null, null, '2017-05-17 23:35:00', '7237', '0', '2017-05-17 23:35:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('190', null, '2', '9', null, null, '2017-05-17 23:39:14', '7237', '0', '2017-05-17 23:39:14', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('191', null, '2', '11', null, null, '2017-05-17 23:40:01', '7237', '0', '2017-05-17 23:40:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('192', null, '200', '9', null, null, '2017-05-17 23:40:02', '7237', '0', '2017-05-17 23:40:02', '7237', null);
INSERT INTO `bao_recharge_record` VALUES ('193', null, '200', '9', null, null, '2017-05-17 23:41:01', '7237', '0', '2017-05-17 23:41:01', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('194', '', '0.06', '2', null, null, '2017-05-17 23:42:22', null, '0', '2017-05-17 23:42:22', null, '7237');
INSERT INTO `bao_recharge_record` VALUES ('195', '2248081028', '0.01', '6', null, null, '2017-05-17 23:52:58', null, '0', '2017-05-17 23:52:58', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('196', '2248081028', '0.01', '6', null, null, '2017-05-18 00:23:04', null, '0', '2017-05-18 00:23:04', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('197', '2248081028', '0.01', '6', null, null, '2017-05-18 00:53:07', null, '0', '2017-05-18 00:53:07', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('198', '', '0.18', '2', null, null, '2017-05-18 09:45:06', null, '0', '2017-05-18 09:45:06', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('199', '', '0.12', '2', null, null, '2017-05-18 09:46:47', null, '0', '2017-05-18 09:46:47', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('200', '', '0.06', '2', null, null, '2017-05-18 09:59:02', null, '0', '2017-05-18 09:59:02', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('201', null, '1', '9', null, null, '2017-05-18 10:10:04', '7236', '0', '2017-05-18 10:10:04', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('202', null, '1', '9', null, null, '2017-05-18 10:19:13', '7236', '0', '2017-05-18 10:19:13', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('203', '', '0.06', '2', null, null, '2017-05-18 11:12:23', null, '0', '2017-05-18 11:12:23', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('204', '', '0.18', '2', null, null, '2017-05-18 11:16:49', null, '0', '2017-05-18 11:16:49', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('205', '', '0.06', '2', null, null, '2017-05-18 11:18:29', null, '0', '2017-05-18 11:18:29', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('206', '', '0.06', '2', null, null, '2017-05-18 11:23:45', null, '0', '2017-05-18 11:23:45', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('207', '', '0.18', '2', null, null, '2017-05-18 11:24:38', null, '0', '2017-05-18 11:24:38', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('208', null, '0.03', '8', null, null, '2017-05-18 11:25:34', '7236', '0', '2017-05-18 11:25:34', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('209', '', '0.18', '2', null, null, '2017-05-18 11:35:31', null, '0', '2017-05-18 11:35:31', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('210', '', '0.06', '2', null, null, '2017-05-18 11:36:16', null, '0', '2017-05-18 11:36:16', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('211', '', '0.06', '2', null, null, '2017-05-18 11:43:31', null, '0', '2017-05-18 11:43:31', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('212', '', '0.06', '2', null, null, '2017-05-18 11:46:11', null, '0', '2017-05-18 11:46:11', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('213', '', '0.12', '2', null, null, '2017-05-18 11:53:11', null, '0', '2017-05-18 11:53:11', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('214', '', '0.06', '2', null, null, '2017-05-18 11:54:28', null, '0', '2017-05-18 11:54:28', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('215', '', '0.06', '2', null, null, '2017-05-18 11:57:01', null, '0', '2017-05-18 11:57:01', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('216', null, '0.01', '8', null, null, '2017-05-18 11:57:28', '7226', '0', '2017-05-18 11:57:28', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('217', null, '0.04', '8', null, null, '2017-05-18 11:57:32', '7226', '0', '2017-05-18 11:57:32', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('218', '', '0.06', '2', null, null, '2017-05-18 12:22:30', null, '0', '2017-05-18 12:22:30', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('219', '', '0.18', '2', null, null, '2017-05-18 12:24:39', null, '0', '2017-05-18 12:24:39', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('220', null, '0.01', '8', null, null, '2017-05-18 14:54:20', '7236', '0', '2017-05-18 14:54:20', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('221', '2122587215', '0.01', '6', null, null, '2017-05-18 21:23:23', null, '0', '2017-05-18 21:23:23', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('222', '2122587215', '0.01', '6', null, null, '2017-05-18 21:23:34', null, '0', '2017-05-18 21:23:34', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('223', null, '1', '9', null, null, '2017-05-19 13:31:55', '7236', '0', '2017-05-19 13:31:55', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('224', null, '111', '9', null, null, '2017-05-19 13:50:59', '7226', '0', '2017-05-19 13:50:59', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('225', null, '3', '9', null, null, '2017-05-19 13:57:44', '7236', '0', '2017-05-19 13:57:44', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('226', null, '3', '11', null, null, '2017-05-19 14:58:00', '7236', '0', '2017-05-19 14:58:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('227', null, '1', '9', null, null, '2017-05-19 15:32:01', '7236', '0', '2017-05-19 15:32:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('228', null, '111', '9', null, null, '2017-05-19 15:35:28', '7236', '0', '2017-05-19 15:35:28', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('229', null, '1', '9', null, null, '2017-05-19 15:44:22', '7236', '0', '2017-05-19 15:44:22', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('230', null, '0', '9', null, null, '2017-05-19 16:14:12', '7226', '0', '2017-05-19 16:14:12', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('231', null, '0', '9', null, null, '2017-05-19 16:14:47', '7236', '0', '2017-05-19 16:14:47', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('232', null, '1', '9', null, null, '2017-05-19 16:18:44', '7236', '0', '2017-05-19 16:18:44', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('233', null, '1', '9', null, null, '2017-05-19 16:27:50', '7226', '0', '2017-05-19 16:27:50', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('234', null, '1', '9', null, null, '2017-05-19 16:31:39', '7236', '0', '2017-05-19 16:31:39', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('235', null, '1', '9', null, null, '2017-05-19 16:31:41', '7236', '0', '2017-05-19 16:31:41', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('236', null, '1', '9', null, null, '2017-05-19 16:33:38', '7236', '0', '2017-05-19 16:33:38', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('237', null, '1', '9', null, null, '2017-05-19 16:33:48', '7236', '0', '2017-05-19 16:33:48', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('238', null, '1', '11', null, null, '2017-05-19 16:45:00', '7236', '0', '2017-05-19 16:45:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('239', null, '1', '9', null, null, '2017-05-19 16:45:04', '7226', '0', '2017-05-19 16:45:04', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('240', null, '1', '9', null, null, '2017-05-19 16:45:12', '7226', '0', '2017-05-19 16:45:12', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('241', null, '1', '9', null, null, '2017-05-19 16:45:35', '7226', '0', '2017-05-19 16:45:35', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('242', null, '111', '10', null, null, '2017-05-19 16:56:31', '7226', '0', '2017-05-19 16:56:31', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('243', null, '1', '11', null, null, '2017-05-19 17:19:01', '7236', '0', '2017-05-19 17:19:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('244', null, '1', '11', null, null, '2017-05-19 17:19:01', '7226', '0', '2017-05-19 17:19:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('245', null, '1', '11', null, null, '2017-05-19 17:32:00', '7236', '0', '2017-05-19 17:32:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('246', null, '1', '11', null, null, '2017-05-19 17:32:00', '7226', '0', '2017-05-19 17:32:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('247', null, '1', '11', null, null, '2017-05-19 17:32:01', '7236', '0', '2017-05-19 17:32:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('248', null, '1', '11', null, null, '2017-05-19 17:32:01', '7226', '0', '2017-05-19 17:32:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('249', null, '1', '11', null, null, '2017-05-19 17:32:01', '7236', '0', '2017-05-19 17:32:01', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('250', null, '1', '11', null, null, '2017-05-19 17:32:01', '7226', '0', '2017-05-19 17:32:01', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('251', null, '1', '11', null, null, '2017-05-19 17:32:02', '7236', '0', '2017-05-19 17:32:02', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('252', null, '0.03', '8', null, null, '2017-05-19 18:54:23', '7236', '0', '2017-05-19 18:54:23', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('253', null, '1', '9', null, null, '2017-05-19 21:55:33', '7236', '0', '2017-05-19 21:55:33', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('254', null, '0', '9', null, null, '2017-05-19 22:15:58', '7226', '0', '2017-05-19 22:15:58', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('255', null, '1', '11', null, null, '2017-05-19 22:56:00', '7236', '0', '2017-05-19 22:56:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('256', null, '0.03', '14', null, null, '2017-05-20 10:00:00', '7236', '0', '2017-05-20 10:00:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('257', null, '0.03', '14', null, null, '2017-05-20 10:00:02', '7236', '0', '2017-05-20 10:00:02', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('258', null, '0.03', '14', null, null, '2017-05-20 10:00:02', '7236', '0', '2017-05-20 10:00:02', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('259', null, '0.03', '14', null, null, '2017-05-20 10:00:03', '7236', '0', '2017-05-20 10:00:03', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('260', null, '0.03', '14', null, null, '2017-05-20 12:05:04', '7226', '0', '2017-05-20 12:05:04', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('261', null, '0.09', '14', null, null, '2017-05-20 12:05:04', '7226', '0', '2017-05-20 12:05:04', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('262', null, '0.03', '14', null, null, '2017-05-20 12:05:05', '7226', '0', '2017-05-20 12:05:05', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('263', null, '0.03', '14', null, null, '2017-05-20 12:05:05', '7226', '0', '2017-05-20 12:05:05', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('264', null, '0.03', '14', null, null, '2017-05-20 12:05:06', '7226', '0', '2017-05-20 12:05:06', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('265', null, '0.09', '14', null, null, '2017-05-20 12:05:06', '7226', '0', '2017-05-20 12:05:06', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('266', null, '0.03', '14', null, null, '2017-05-20 12:05:06', '7226', '0', '2017-05-20 12:05:06', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('267', null, '0.06', '14', null, null, '2017-05-20 12:05:07', '7226', '0', '2017-05-20 12:05:07', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('268', null, '0.03', '14', null, null, '2017-05-20 12:05:07', '7226', '0', '2017-05-20 12:05:07', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('269', null, '0.09', '14', null, null, '2017-05-20 12:05:08', '7226', '0', '2017-05-20 12:05:08', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('270', null, '0.09', '14', null, null, '2017-05-20 12:05:09', '7226', '0', '2017-05-20 12:05:09', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('271', null, '0.03', '14', null, null, '2017-05-20 12:05:09', '7226', '0', '2017-05-20 12:05:09', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('272', null, '0.03', '14', null, null, '2017-05-20 12:05:10', '7226', '0', '2017-05-20 12:05:10', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('273', null, '0.09', '14', null, null, '2017-05-20 12:05:11', '7226', '0', '2017-05-20 12:05:11', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('274', null, '0.03', '14', null, null, '2017-05-20 12:05:12', '7226', '0', '2017-05-20 12:05:12', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('275', null, '0.03', '14', null, null, '2017-05-20 12:05:13', '7226', '0', '2017-05-20 12:05:13', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('276', null, '0.02', '14', null, null, '2017-05-20 12:05:13', '7236', '0', '2017-05-20 12:05:13', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('277', null, '0.02', '14', null, null, '2017-05-20 12:05:13', '7236', '0', '2017-05-20 12:05:13', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('278', null, '0.00', '14', null, null, '2017-05-20 12:05:13', '7226', '0', '2017-05-20 12:05:13', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('279', null, '0.03', '14', null, null, '2017-05-20 12:23:00', '7236', '0', '2017-05-20 12:23:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('280', null, '0.03', '14', null, null, '2017-05-20 12:23:00', '7236', '0', '2017-05-20 12:23:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('281', null, '0.03', '14', null, null, '2017-05-20 12:25:00', '7236', '0', '2017-05-20 12:25:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('282', null, '0.03', '14', null, null, '2017-05-20 12:25:00', '7236', '0', '2017-05-20 12:25:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('283', null, '1', '9', null, null, '2017-05-20 17:46:32', '7236', '0', '2017-05-20 17:46:32', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('284', null, '1', '3', null, null, '2017-05-20 18:47:00', '7236', '0', '2017-05-20 18:47:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('285', null, '0.03', '14', null, null, '2017-05-20 21:24:00', '7226', '0', '2017-05-20 21:24:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('286', null, '0', '11', null, null, '2017-05-21 22:16:00', '7226', '0', '2017-05-21 22:16:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('287', null, '0', '11', null, null, '2017-05-22 16:14:00', '7226', '0', '2017-05-22 16:14:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('288', null, '0', '11', null, null, '2017-05-22 16:14:00', '7236', '0', '2017-05-22 16:14:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('289', null, '0.05', '8', null, null, '2017-05-24 07:23:03', '7237', '0', '2017-05-24 07:23:03', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('290', null, '0.01', '8', null, null, '2017-05-24 07:23:05', '7237', '0', '2017-05-24 07:23:05', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('291', null, '0.04', '8', null, null, '2017-05-24 07:23:07', '7237', '0', '2017-05-24 07:23:07', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('292', null, '0.03', '8', null, null, '2017-05-25 10:38:47', '7226', '0', '2017-05-25 10:38:47', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('293', null, '0.03', '8', null, null, '2017-05-25 10:43:53', '7226', '0', '2017-05-25 10:43:53', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('294', null, '100', '12', null, null, '2017-05-25 11:19:02', null, '0', '2017-05-25 11:19:02', null, '7243');
INSERT INTO `bao_recharge_record` VALUES ('295', null, '0.05', '8', null, null, '2017-05-31 09:08:27', '7226', '0', '2017-05-31 09:08:27', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('296', null, '1.01', '15', null, null, '2017-05-31 13:12:28', '7226', '0', '2017-05-31 13:12:28', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('297', null, '0.01', '15', null, null, '2017-05-31 13:13:09', '7226', '0', '2017-05-31 13:13:09', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('298', null, '0.01', '16', null, null, '2017-05-31 13:14:21', '7236', '0', '2017-05-31 13:14:21', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('299', null, '1.01', '16', null, null, '2017-05-31 13:14:28', '7236', '0', '2017-05-31 13:14:28', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('300', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7226', '0', '2017-06-01 08:56:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('301', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7226', '0', '2017-06-01 08:56:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('302', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7226', '0', '2017-06-01 08:56:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('303', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7226', '0', '2017-06-01 08:56:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('304', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7243', '0', '2017-06-01 08:56:00', '7243', '7243');
INSERT INTO `bao_recharge_record` VALUES ('305', null, '0.03', '14', null, null, '2017-06-01 08:56:00', '7243', '0', '2017-06-01 08:56:00', '7243', '7243');
INSERT INTO `bao_recharge_record` VALUES ('306', null, '0.03', '14', null, null, '2017-06-02 08:44:00', '7243', '0', '2017-06-02 08:44:00', '7243', '7243');
INSERT INTO `bao_recharge_record` VALUES ('307', null, '0.03', '8', null, null, '2017-06-06 11:03:41', '7244', '0', '2017-06-06 11:03:41', '7244', '7244');
INSERT INTO `bao_recharge_record` VALUES ('308', null, '0.03', '8', null, null, '2017-06-06 11:04:43', '7244', '0', '2017-06-06 11:04:43', '7244', '7244');
INSERT INTO `bao_recharge_record` VALUES ('309', null, '0.01', '8', null, null, '2017-06-06 11:20:36', '7226', '0', '2017-06-06 11:20:36', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('310', null, '0.02', '8', null, null, '2017-06-06 11:20:57', '7226', '0', '2017-06-06 11:20:57', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('311', null, '0.01', '8', null, null, '2017-06-06 11:21:07', '7226', '0', '2017-06-06 11:21:07', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('312', null, '0.02', '8', null, null, '2017-06-06 11:21:26', '7226', '0', '2017-06-06 11:21:26', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('313', null, '0.03', '8', null, null, '2017-06-06 11:26:06', '7226', '0', '2017-06-06 11:26:06', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('314', null, '0.03', '8', null, null, '2017-06-06 11:27:17', '7226', '0', '2017-06-06 11:27:17', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('315', null, '34444.780', '7', null, null, '2017-06-06 16:14:12', '7236', '0', '2017-06-06 16:14:12', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('316', null, '34443.750', '7', null, null, '2017-06-06 16:19:17', '7236', '0', '2017-06-06 16:19:17', '7236', null);
INSERT INTO `bao_recharge_record` VALUES ('317', null, '0.03', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('318', null, '0.02', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('319', null, '0.01', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('320', null, '0.02', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('321', null, '0.01', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('322', null, '0.00', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('323', null, '0.00', '14', null, null, '2017-06-08 15:42:00', '7236', '0', '2017-06-08 15:42:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('324', '', '0.005', '4', null, null, '2017-06-15 14:35:15', null, '0', '2017-06-15 14:35:15', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('325', '', '4.8500', '4', null, null, '2017-06-15 14:54:26', null, '0', '2017-06-15 14:54:25', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('326', null, '0', '10', null, null, '2017-06-15 17:20:55', '7236', '0', '2017-06-15 17:20:55', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('327', null, '1', '11', null, null, '2017-06-15 17:20:59', '7226', '0', '2017-06-15 17:20:59', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('328', null, '1', '10', null, null, '2017-06-15 17:21:00', '7226', '0', '2017-06-15 17:21:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('329', null, '0', '11', null, null, '2017-06-15 17:21:00', '7236', '0', '2017-06-15 17:21:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('330', '', '4.8500', '4', null, null, '2017-06-15 22:02:27', null, '0', '2017-06-15 22:02:26', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('331', '', '4.8500', '4', null, null, '2017-06-15 22:03:11', null, '0', '2017-06-15 22:03:10', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('332', '', '4.8500', '4', null, null, '2017-06-15 22:03:59', null, '0', '2017-06-15 22:03:59', null, '7226');
INSERT INTO `bao_recharge_record` VALUES ('333', '', '5.00', '18', null, null, '2017-06-15 22:37:44', null, '0', '2017-06-15 22:37:44', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('334', '', '5.00', '18', null, null, '2017-06-15 22:39:02', null, '0', '2017-06-15 22:39:01', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('335', '', '5.00', '18', null, null, '2017-06-15 22:39:17', null, '0', '2017-06-15 22:39:17', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('336', '', '5.00', '18', null, null, '2017-06-15 22:39:18', null, '0', '2017-06-15 22:39:18', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('337', '', '5.00', '18', null, null, '2017-06-15 22:39:18', null, '0', '2017-06-15 22:39:18', null, '7236');
INSERT INTO `bao_recharge_record` VALUES ('338', '', '5.00', '18', null, null, '2017-06-15 22:39:30', null, '0', '2017-06-15 22:39:30', null, '7236');

-- ----------------------------
-- Table structure for bao_role
-- ----------------------------
DROP TABLE IF EXISTS `bao_role`;
CREATE TABLE `bao_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_role
-- ----------------------------

-- ----------------------------
-- Table structure for bao_role_maps
-- ----------------------------
DROP TABLE IF EXISTS `bao_role_maps`;
CREATE TABLE `bao_role_maps` (
  `role_id` smallint(5) DEFAULT NULL,
  `menu_id` smallint(5) DEFAULT NULL,
  UNIQUE KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_role_maps
-- ----------------------------

-- ----------------------------
-- Table structure for bao_sensitive_words
-- ----------------------------
DROP TABLE IF EXISTS `bao_sensitive_words`;
CREATE TABLE `bao_sensitive_words` (
  `words_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `words` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`words_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_sensitive_words
-- ----------------------------

-- ----------------------------
-- Table structure for bao_seo
-- ----------------------------
DROP TABLE IF EXISTS `bao_seo`;
CREATE TABLE `bao_seo` (
  `seo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seo_key` varchar(32) DEFAULT NULL,
  `seo_explain` varchar(1024) DEFAULT NULL,
  `seo_title` varchar(1024) DEFAULT NULL,
  `seo_keywords` varchar(1024) DEFAULT NULL,
  `seo_desc` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`seo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_seo
-- ----------------------------

-- ----------------------------
-- Table structure for bao_service
-- ----------------------------
DROP TABLE IF EXISTS `bao_service`;
CREATE TABLE `bao_service` (
  `service_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  `intro` text,
  `orderby` tinyint(3) DEFAULT '100',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_service
-- ----------------------------

-- ----------------------------
-- Table structure for bao_session
-- ----------------------------
DROP TABLE IF EXISTS `bao_session`;
CREATE TABLE `bao_session` (
  `session_id` char(32) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bao_session
-- ----------------------------

-- ----------------------------
-- Table structure for bao_set
-- ----------------------------
DROP TABLE IF EXISTS `bao_set`;
CREATE TABLE `bao_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '考虑到之前表不确定能不能修正，故新添加一个配置表-武昊',
  `flag` varchar(10) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_set
-- ----------------------------
INSERT INTO `bao_set` VALUES ('1', 'showSelf', '种鱼App');

-- ----------------------------
-- Table structure for bao_setting
-- ----------------------------
DROP TABLE IF EXISTS `bao_setting`;
CREATE TABLE `bao_setting` (
  `k` varchar(255) DEFAULT NULL,
  `v` text,
  UNIQUE KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_setting
-- ----------------------------

-- ----------------------------
-- Table structure for bao_set_expression
-- ----------------------------
DROP TABLE IF EXISTS `bao_set_expression`;
CREATE TABLE `bao_set_expression` (
  `u_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '表情关联表',
  `img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_set_expression
-- ----------------------------

-- ----------------------------
-- Table structure for bao_set_param
-- ----------------------------
DROP TABLE IF EXISTS `bao_set_param`;
CREATE TABLE `bao_set_param` (
  `u_id` bigint(20) NOT NULL COMMENT '自定义设定表',
  `addFriendFlag` varchar(2) DEFAULT NULL,
  `pushPhoneBook` varchar(2) DEFAULT NULL,
  `allowTenPhoto` varchar(2) DEFAULT NULL,
  `phoneFind` varchar(2) DEFAULT NULL,
  `weixinFind` varchar(2) DEFAULT NULL,
  `groupChatAdd` varchar(2) DEFAULT NULL,
  `qqFind` varchar(2) DEFAULT NULL,
  `erweiAdd` varchar(2) DEFAULT NULL,
  `cardAdd` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_set_param
-- ----------------------------

-- ----------------------------
-- Table structure for bao_set_user_show
-- ----------------------------
DROP TABLE IF EXISTS `bao_set_user_show`;
CREATE TABLE `bao_set_user_show` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `u_id` bigint(20) DEFAULT NULL,
  `c_u_id` bigint(20) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_set_user_show
-- ----------------------------

-- ----------------------------
-- Table structure for bao_sms
-- ----------------------------
DROP TABLE IF EXISTS `bao_sms`;
CREATE TABLE `bao_sms` (
  `sms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sms_key` varchar(32) DEFAULT NULL,
  `sms_explain` varchar(1024) DEFAULT NULL,
  `sms_tmpl` varchar(2048) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`sms_id`),
  UNIQUE KEY `sms_key` (`sms_key`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_sms
-- ----------------------------

-- ----------------------------
-- Table structure for bao_sys_order
-- ----------------------------
DROP TABLE IF EXISTS `bao_sys_order`;
CREATE TABLE `bao_sys_order` (
  `userId` int(11) DEFAULT NULL,
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `allPay` varchar(200) DEFAULT NULL,
  `rateMoney` varchar(200) DEFAULT NULL,
  `rate` tinyint(3) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_sys_order
-- ----------------------------
INSERT INTO `bao_sys_order` VALUES ('12', '1', '100', '3', '3', 'c123', '12', '2017-06-15 13:44:08');
INSERT INTO `bao_sys_order` VALUES ('7236', '2', '0.01', '0.005', '3', '被添加好友', '7236', '2017-06-15 14:35:15');
INSERT INTO `bao_sys_order` VALUES ('7236', '3', '5.00', '0.1500', '3', '被添加好友', '7236', '2017-06-15 14:54:26');
INSERT INTO `bao_sys_order` VALUES ('7236', '4', '5.00', '0.1500', '3', '被添加好友', '7236', '2017-06-15 22:02:27');
INSERT INTO `bao_sys_order` VALUES ('7236', '5', '5.00', '0.1500', '3', '被添加好友', '7236', '2017-06-15 22:03:12');
INSERT INTO `bao_sys_order` VALUES ('7236', '6', '5.00', '0.1500', '3', '被添加好友', '7236', '2017-06-15 22:03:59');

-- ----------------------------
-- Table structure for bao_template_setting
-- ----------------------------
DROP TABLE IF EXISTS `bao_template_setting`;
CREATE TABLE `bao_template_setting` (
  `theme` varchar(32) DEFAULT NULL,
  `setting` text,
  UNIQUE KEY `theme` (`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_template_setting
-- ----------------------------

-- ----------------------------
-- Table structure for bao_tui
-- ----------------------------
DROP TABLE IF EXISTS `bao_tui`;
CREATE TABLE `bao_tui` (
  `tui_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tui_name` varchar(64) DEFAULT NULL,
  `tui_link` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tui
-- ----------------------------

-- ----------------------------
-- Table structure for bao_users
-- ----------------------------
DROP TABLE IF EXISTS `bao_users`;
CREATE TABLE `bao_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL COMMENT '邮件或者手机',
  `password` char(32) DEFAULT NULL,
  `face` varchar(128) DEFAULT NULL,
  `ext0` varchar(15) DEFAULT NULL COMMENT '为了兼容DISCUZ 设立的用户名存储的字段',
  `nickname` varchar(32) DEFAULT NULL,
  `integral` int(11) DEFAULT '0',
  `prestige` int(11) DEFAULT '0' COMMENT '声望，影响等级的',
  `money` varchar(11) DEFAULT '0' COMMENT '账户余额',
  `rank_id` tinyint(4) DEFAULT '1' COMMENT '等级ID',
  `gold` int(11) DEFAULT '0',
  `reg_time` datetime DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0' COMMENT '-1代表需要激活   0 代表正常  1 代表删除',
  `uc_id` int(11) DEFAULT '0',
  `email` varchar(64) DEFAULT NULL COMMENT '认证的邮件',
  `mobile` varchar(11) DEFAULT NULL COMMENT '认证的手机号码',
  `ping_num` int(11) DEFAULT '0',
  `post_num` int(11) DEFAULT '0',
  `invite1` int(11) DEFAULT NULL,
  `invite2` int(11) DEFAULT NULL,
  `invite3` int(11) DEFAULT NULL,
  `invite4` int(11) DEFAULT NULL,
  `invite5` int(11) DEFAULT NULL,
  `invite6` int(11) DEFAULT '0',
  `token` char(32) DEFAULT '0',
  `bshop` int(11) DEFAULT '0' COMMENT '商家id',
  `audit` int(11) DEFAULT '0' COMMENT '和绑定商家相关的',
  `customerServiceStatus` tinyint(4) DEFAULT NULL COMMENT '是否客服0否 1是',
  `spreadMan` varchar(255) DEFAULT NULL COMMENT '推广人',
  `addPay` decimal(11,2) DEFAULT NULL COMMENT '添加好友费用',
  `lockStatus` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users
-- ----------------------------
INSERT INTO `bao_users` VALUES ('7226', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1495531439.png', null, '不死鸟', '0', '0', '89829.3500', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '18263826828', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', '0', '5.00', '0');
INSERT INTO `bao_users` VALUES ('7236', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', null, '哈哈哈', '0', '0', '34480.900', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '14763766689', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', '0', null, '0');
INSERT INTO `bao_users` VALUES ('7235', null, '4297f44b13955235245b2497399d7a93', 'images/default.jpg', null, '未填写', '0', '0', '90000', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '18575618939', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', null, null, '0');
INSERT INTO `bao_users` VALUES ('7237', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/FqHspSYV-U-SN86Hv3Xnk8KV6z__', null, '嘻嘻', '0', '0', '10002.03', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '18572651299', '0', '0', null, null, null, null, null, '0', '0', '0', '1', null, '0', '5.00', '0');
INSERT INTO `bao_users` VALUES ('7238', null, 'e10adc3949ba59abbe56e057f20f883e', 'images/default.jpg', null, '未填写', '0', '0', '90000', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '13645474009', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '0', null, null, '0');
INSERT INTO `bao_users` VALUES ('7240', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/Fisv14RRoy-FaAcXO7KCY1UIdSZP', null, '高原2号', '0', '0', '89988', '1', '0', '2017-05-14 17:31:29', null, null, null, '0', '0', null, '18657217617', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0.00', '0');
INSERT INTO `bao_users` VALUES ('7243', null, 'e10adc3949ba59abbe56e057f20f883e', 'images/default.jpg', null, '哈哈呵呵', '0', '0', '71.89', '1', '0', '2017-05-17 15:21:52', null, null, null, '0', '0', null, '18254215546', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0.00', '0');
INSERT INTO `bao_users` VALUES ('7244', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/FuDYN947O_1G0bRsa-xDHYBLPOj1', null, 'lalal', '0', '0', '1200.06', '1', '0', '2017-05-22 13:47:08', null, null, null, '0', '0', null, '18153254126', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0.00', '0');
INSERT INTO `bao_users` VALUES ('7246', null, 'e10adc3949ba59abbe56e057f20f883e', 'images/default.jpg', null, 'asdasd', '0', '0', '0', '1', '0', '2017-06-05 16:11:38', null, null, null, '0', '0', null, '18510829664', '0', '0', null, null, null, null, null, '0', '0', '0', '0', null, null, null, '0');

-- ----------------------------
-- Table structure for bao_users_cash
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_cash`;
CREATE TABLE `bao_users_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `money` decimal(11,2) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未审核1通过2拒绝',
  `reason` varchar(128) DEFAULT NULL,
  `account` varchar(64) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `bank_num` varchar(32) DEFAULT NULL,
  `bank_branch` varchar(128) DEFAULT NULL,
  `bank_realname` varchar(64) DEFAULT NULL,
  `weixin_account` varchar(128) DEFAULT NULL,
  `zfb_account` varchar(128) DEFAULT NULL,
  `withdraw_type` varchar(255) DEFAULT '' COMMENT '提现方式 withdraw_urgent快速提现 withdraw_slow 次日达',
  `rate` int(11) DEFAULT '0' COMMENT '手续费率',
  `poundage` decimal(10,2) DEFAULT '0.00' COMMENT '手续费',
  `reality` decimal(10,2) DEFAULT NULL COMMENT '实到',
  `realmoney` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`cash_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_cash
-- ----------------------------
INSERT INTO `bao_users_cash` VALUES ('1341', '7237', '0.00', '2017-05-04 14:05:55', '1', null, null, null, null, null, null, null, '18572651299', '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1342', '7226', '1.00', '2017-05-17 11:49:03', '0', null, null, null, null, null, null, '111', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1343', '7226', '1.00', '2017-05-17 14:43:48', '0', null, null, null, null, null, null, null, '222', '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1344', '7226', '100.00', '2017-05-17 14:47:50', '0', null, null, null, null, null, null, '222', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1345', '7236', '10000.00', '2017-05-17 15:54:29', '0', null, null, null, null, null, null, '14763766689', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1346', '7236', '10000.00', '2017-05-17 16:04:50', '0', null, null, null, null, null, null, '14763766689', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1347', '7236', '100.00', '2017-05-17 16:10:25', '0', null, null, null, null, null, null, '14763766688', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1348', '7226', '100.00', '2017-05-17 22:55:27', '1', null, null, null, null, null, null, '222', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1349', '7226', '100.00', '2017-05-18 09:08:48', '0', null, null, null, null, null, null, '333', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1350', '7236', '800.00', '2017-05-18 10:25:38', '0', null, null, null, null, null, null, '14763766689', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1351', '7226', '1.00', '2017-05-18 21:45:59', '0', null, null, null, null, null, null, '2222', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1352', '7226', '0.01', '2017-05-18 22:34:24', '0', null, null, null, null, null, null, '222', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1353', '7226', '0.01', '2017-05-18 22:37:29', '0', null, null, null, null, null, null, '11', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1354', '7236', '100.00', '2017-05-20 17:46:09', '1', null, null, null, null, null, null, '14763766689', null, '', '0', '0.00', null, null);
INSERT INTO `bao_users_cash` VALUES ('1355', '7236', '1.00', '2017-06-06 16:14:12', '0', null, null, null, null, null, null, '222', null, '', '0', '0.00', null, '34445.78');
INSERT INTO `bao_users_cash` VALUES ('1356', '7236', '1.00', '2017-06-06 16:19:10', '2', null, null, null, null, null, null, '222', null, '', '0', '0.00', null, '0.03');

-- ----------------------------
-- Table structure for bao_user_app
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_app`;
CREATE TABLE `bao_user_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qrCode` varchar(255) DEFAULT NULL,
  `districtId` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `thermalSignatrue` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `loginFailedCount` int(11) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `paypassword` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `backAvatar` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_app
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_card
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_card`;
CREATE TABLE `bao_user_card` (
  `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_num` (`card_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_card
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_gold_logs
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_gold_logs`;
CREATE TABLE `bao_user_gold_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_gold_logs
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_integral_logs
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_integral_logs`;
CREATE TABLE `bao_user_integral_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5973 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_integral_logs
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_message
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_message`;
CREATE TABLE `bao_user_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0' COMMENT '接收用户id',
  `from_id` int(10) DEFAULT '0' COMMENT '发送人id',
  `content` text COMMENT '消息内容',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '0未读，1已读',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_money_logs
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_money_logs`;
CREATE TABLE `bao_user_money_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30822 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_money_logs
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_rank
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_rank`;
CREATE TABLE `bao_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(32) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `icon1` varchar(64) DEFAULT NULL,
  `prestige` int(11) DEFAULT '0' COMMENT '需要的积分数',
  `rebate` int(10) DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_rank
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_relation`;
CREATE TABLE `bao_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `beUserId` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `otherReason` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_relation
-- ----------------------------
INSERT INTO `bao_user_relation` VALUES ('1', '7236', '7240', '2', null, null, null, '1', '2017-05-08 19:51:14');
INSERT INTO `bao_user_relation` VALUES ('2', '7226', '7236', '1', null, '威胁邀请', 'lol\n', '1', '2017-05-16 10:44:35');
INSERT INTO `bao_user_relation` VALUES ('3', '7226', '7236', '1', null, '威胁邀请', 'lol\n', null, '2017-05-16 10:44:35');
INSERT INTO `bao_user_relation` VALUES ('4', '7236', '7226', '1', 'FoGrnPjbfyvm6lnkEf7nMzSVSYp7,,', '????', '哈哈', '1', '2017-05-17 10:34:06');
INSERT INTO `bao_user_relation` VALUES ('6', '7226', '7236', '1', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495088641.png', '????', '啦啦啦', null, '2017-05-18 14:24:03');
INSERT INTO `bao_user_relation` VALUES ('7', '7226', '7236', '1', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495088952.png', '????', '啦啦', null, '2017-05-18 14:29:14');
INSERT INTO `bao_user_relation` VALUES ('9', '7226', '7236', '1', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495089232.png', '????', '啦啦', null, '2017-05-18 14:33:54');
INSERT INTO `bao_user_relation` VALUES ('10', '7243', '7244', '2', 'http://oez2a4f3v.bkt.clouddn.com/yxin/photos_2_1495531032.png,http://oez2a4f3v.bkt.clouddn.com/yxin/photos_1_1495531032.png', '????', '寂寞', '1', '2017-05-23 17:17:38');

-- ----------------------------
-- Table structure for bao_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_sign`;
CREATE TABLE `bao_user_sign` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `day` int(11) DEFAULT '0',
  `is_first` tinyint(4) DEFAULT '1',
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_sign
-- ----------------------------

-- ----------------------------
-- Table structure for bao_user_weixin
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_weixin`;
CREATE TABLE `bao_user_weixin` (
  `wx_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `unionid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`wx_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_weixin
-- ----------------------------

-- ----------------------------
-- Table structure for ms_area_agent
-- ----------------------------
DROP TABLE IF EXISTS `ms_area_agent`;
CREATE TABLE `ms_area_agent` (
  `id` int(6) NOT NULL AUTO_INCREMENT COMMENT '区域代理设置',
  `area_id` bigint(1) DEFAULT NULL COMMENT '区域ID，包括市级和区级，为主键',
  `area_type` int(1) DEFAULT NULL COMMENT '区域类型 0区 1市 2省',
  `agent_integral` varchar(200) DEFAULT NULL COMMENT '代理资格积分',
  `area_status` varchar(200) DEFAULT NULL COMMENT '区域状态,本字段选扩展用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `modify_time` datetime DEFAULT NULL COMMENT '更改时间',
  `modify_by` varchar(255) DEFAULT NULL COMMENT '更改人',
  PRIMARY KEY (`id`),
  KEY `index_area_id` (`area_id`),
  KEY `index_area_status` (`area_status`)
) ENGINE=InnoDB AUTO_INCREMENT=60392 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_area_agent
-- ----------------------------
INSERT INTO `ms_area_agent` VALUES ('56760', '110000', null, '5', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56761', '110100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56762', '110101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56763', '110102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56764', '110105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56765', '110106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56766', '110107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56767', '110108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56768', '110109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56769', '110111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56770', '110112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56771', '110113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56772', '110114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56773', '110115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56774', '110116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56775', '110117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56776', '110228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56777', '110229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56778', '120000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56779', '120100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56780', '120101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56781', '120102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56782', '120103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56783', '120104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56784', '120105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56785', '120106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56786', '120110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56787', '120111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56788', '120112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56789', '120113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56790', '120114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56791', '120115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56792', '120116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56793', '120117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56794', '120118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56795', '120225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56796', '130000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56797', '130100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56798', '130102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56799', '130104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56800', '130105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56801', '130107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56802', '130108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56803', '130109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56804', '130110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56805', '130111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56806', '130121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56807', '130123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56808', '130125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56809', '130126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56810', '130127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56811', '130128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56812', '130129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56813', '130130', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56814', '130131', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56815', '130132', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56816', '130133', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56817', '130183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56818', '130184', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56819', '130200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56820', '130202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56821', '130203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56822', '130204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56823', '130205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56824', '130207', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56825', '130208', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56826', '130209', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56827', '130223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56828', '130224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56829', '130225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56830', '130227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56831', '130229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56832', '130281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56833', '130283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56834', '130300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56835', '130302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56836', '130303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56837', '130304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56838', '130306', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56839', '130321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56840', '130322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56841', '130324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56842', '130400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56843', '130402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56844', '130403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56845', '130404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56846', '130406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56847', '130421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56848', '130423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56849', '130424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56850', '130425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56851', '130426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56852', '130427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56853', '130428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56854', '130429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56855', '130430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56856', '130431', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56857', '130432', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56858', '130433', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56859', '130434', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56860', '130435', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56861', '130481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56862', '130500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56863', '130502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56864', '130503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56865', '130521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56866', '130522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56867', '130523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56868', '130524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56869', '130525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56870', '130526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56871', '130527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56872', '130528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56873', '130529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56874', '130530', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56875', '130531', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56876', '130532', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56877', '130533', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56878', '130534', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56879', '130535', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56880', '130581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56881', '130582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56882', '130600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56883', '130602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56884', '130606', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56885', '130607', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56886', '130608', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56887', '130609', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56888', '130623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56889', '130624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56890', '130626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56891', '130627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56892', '130628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56893', '130629', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56894', '130630', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56895', '130631', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56896', '130632', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56897', '130633', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56898', '130634', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56899', '130635', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56900', '130636', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56901', '130637', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56902', '130638', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56903', '130681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56904', '130683', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56905', '130684', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56906', '130700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56907', '130702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56908', '130703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56909', '130705', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56910', '130706', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56911', '130721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56912', '130722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56913', '130723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56914', '130724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56915', '130725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56916', '130726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56917', '130727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56918', '130728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56919', '130729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56920', '130730', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56921', '130731', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56922', '130732', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56923', '130733', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56924', '130800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56925', '130802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56926', '130803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56927', '130804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56928', '130821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56929', '130822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56930', '130823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56931', '130824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56932', '130825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56933', '130826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56934', '130827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56935', '130828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56936', '130900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56937', '130902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56938', '130903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56939', '130921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56940', '130922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56941', '130923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56942', '130924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56943', '130925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56944', '130926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56945', '130927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56946', '130928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56947', '130929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56948', '130930', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56949', '130981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56950', '130982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56951', '130983', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56952', '130984', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56953', '131000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56954', '131002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56955', '131003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56956', '131022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56957', '131023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56958', '131024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56959', '131025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56960', '131026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56961', '131028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56962', '131081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56963', '131082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56964', '131100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56965', '131102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56966', '131121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56967', '131122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56968', '131123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56969', '131124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56970', '131125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56971', '131126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56972', '131127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56973', '131128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56974', '131181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56975', '131182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56976', '139001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56977', '139002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56978', '140000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56979', '140100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56980', '140105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56981', '140106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56982', '140107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56983', '140108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56984', '140109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56985', '140110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56986', '140121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56987', '140122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56988', '140123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56989', '140181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56990', '140200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56991', '140202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56992', '140203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56993', '140211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56994', '140212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56995', '140221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56996', '140222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56997', '140223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56998', '140224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('56999', '140225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57000', '140226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57001', '140227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57002', '140300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57003', '140302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57004', '140303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57005', '140311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57006', '140321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57007', '140322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57008', '140400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57009', '140402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57010', '140411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57011', '140421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57012', '140423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57013', '140424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57014', '140425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57015', '140426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57016', '140427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57017', '140428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57018', '140429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57019', '140430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57020', '140431', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57021', '140481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57022', '140500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57023', '140502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57024', '140521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57025', '140522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57026', '140524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57027', '140525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57028', '140581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57029', '140600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57030', '140602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57031', '140603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57032', '140621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57033', '140622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57034', '140623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57035', '140624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57036', '140700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57037', '140702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57038', '140721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57039', '140722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57040', '140723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57041', '140724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57042', '140725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57043', '140726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57044', '140727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57045', '140728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57046', '140729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57047', '140781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57048', '140800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57049', '140802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57050', '140821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57051', '140822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57052', '140823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57053', '140824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57054', '140825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57055', '140826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57056', '140827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57057', '140828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57058', '140829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57059', '140830', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57060', '140881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57061', '140882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57062', '140900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57063', '140902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57064', '140921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57065', '140922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57066', '140923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57067', '140924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57068', '140925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57069', '140926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57070', '140927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57071', '140928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57072', '140929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57073', '140930', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57074', '140931', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57075', '140932', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57076', '140981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57077', '141000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57078', '141002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57079', '141021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57080', '141022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57081', '141023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57082', '141024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57083', '141025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57084', '141026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57085', '141027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57086', '141028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57087', '141029', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57088', '141030', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57089', '141031', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57090', '141032', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57091', '141033', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57092', '141034', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57093', '141081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57094', '141082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57095', '141100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57096', '141102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57097', '141121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57098', '141122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57099', '141123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57100', '141124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57101', '141125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57102', '141126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57103', '141127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57104', '141128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57105', '141129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57106', '141130', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57107', '141181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57108', '141182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57109', '150000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57110', '150100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57111', '150102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57112', '150103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57113', '150104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57114', '150105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57115', '150121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57116', '150122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57117', '150123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57118', '150124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57119', '150125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57120', '150200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57121', '150202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57122', '150203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57123', '150204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57124', '150205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57125', '150206', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57126', '150207', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57127', '150221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57128', '150222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57129', '150223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57130', '150300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57131', '150302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57132', '150303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57133', '150304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57134', '150400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57135', '150402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57136', '150403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57137', '150404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57138', '150421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57139', '150422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57140', '150423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57141', '150424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57142', '150425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57143', '150426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57144', '150428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57145', '150429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57146', '150430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57147', '150500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57148', '150502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57149', '150521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57150', '150522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57151', '150523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57152', '150524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57153', '150525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57154', '150526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57155', '150581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57156', '150600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57157', '150602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57158', '150621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57159', '150622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57160', '150623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57161', '150624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57162', '150625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57163', '150626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57164', '150627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57165', '150700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57166', '150702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57167', '150703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57168', '150721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57169', '150722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57170', '150723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57171', '150724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57172', '150725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57173', '150726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57174', '150727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57175', '150781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57176', '150782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57177', '150783', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57178', '150784', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57179', '150785', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57180', '150800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57181', '150802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57182', '150821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57183', '150822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57184', '150823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57185', '150824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57186', '150825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57187', '150826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57188', '150900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57189', '150902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57190', '150921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57191', '150922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57192', '150923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57193', '150924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57194', '150925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57195', '150926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57196', '150927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57197', '150928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57198', '150929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57199', '150981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57200', '152200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57201', '152201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57202', '152202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57203', '152221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57204', '152222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57205', '152223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57206', '152224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57207', '152500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57208', '152501', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57209', '152502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57210', '152522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57211', '152523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57212', '152524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57213', '152525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57214', '152526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57215', '152527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57216', '152528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57217', '152529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57218', '152530', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57219', '152531', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57220', '152900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57221', '152921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57222', '152922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57223', '152923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57224', '210000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57225', '210100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57226', '210102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57227', '210103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57228', '210104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57229', '210105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57230', '210106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57231', '210111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57232', '210112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57233', '210113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57234', '210114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57235', '210122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57236', '210123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57237', '210124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57238', '210181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57239', '210200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57240', '210202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57241', '210203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57242', '210204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57243', '210211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57244', '210212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57245', '210213', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57246', '210224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57247', '210281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57248', '210282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57249', '210283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57250', '210300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57251', '210302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57252', '210303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57253', '210304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57254', '210311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57255', '210321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57256', '210323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57257', '210381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57258', '210400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57259', '210402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57260', '210403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57261', '210404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57262', '210411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57263', '210421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57264', '210422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57265', '210423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57266', '210500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57267', '210502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57268', '210503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57269', '210504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57270', '210505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57271', '210521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57272', '210522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57273', '210600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57274', '210602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57275', '210603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57276', '210604', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57277', '210624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57278', '210681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57279', '210682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57280', '210700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57281', '210702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57282', '210703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57283', '210711', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57284', '210726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57285', '210727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57286', '210781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57287', '210782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57288', '210800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57289', '210802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57290', '210803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57291', '210804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57292', '210811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57293', '210881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57294', '210882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57295', '210900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57296', '210902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57297', '210903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57298', '210904', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57299', '210905', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57300', '210911', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57301', '210921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57302', '210922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57303', '211000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57304', '211002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57305', '211003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57306', '211004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57307', '211005', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57308', '211011', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57309', '211021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57310', '211081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57311', '211100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57312', '211102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57313', '211103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57314', '211121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57315', '211122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57316', '211200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57317', '211202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57318', '211204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57319', '211221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57320', '211223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57321', '211224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57322', '211281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57323', '211282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57324', '211300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57325', '211302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57326', '211303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57327', '211321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57328', '211322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57329', '211324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57330', '211381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57331', '211382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57332', '211400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57333', '211402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57334', '211403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57335', '211404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57336', '211421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57337', '211422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57338', '211481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57339', '220000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57340', '220100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57341', '220102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57342', '220103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57343', '220104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57344', '220105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57345', '220106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57346', '220112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57347', '220113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57348', '220122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57349', '220182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57350', '220183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57351', '220200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57352', '220202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57353', '220203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57354', '220204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57355', '220211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57356', '220221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57357', '220281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57358', '220282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57359', '220283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57360', '220284', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57361', '220300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57362', '220302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57363', '220303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57364', '220322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57365', '220323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57366', '220381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57367', '220382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57368', '220400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57369', '220402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57370', '220403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57371', '220421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57372', '220422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57373', '220500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57374', '220502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57375', '220503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57376', '220521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57377', '220523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57378', '220524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57379', '220581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57380', '220582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57381', '220600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57382', '220602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57383', '220605', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57384', '220621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57385', '220622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57386', '220623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57387', '220681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57388', '220700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57389', '220702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57390', '220721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57391', '220722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57392', '220723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57393', '220781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57394', '220800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57395', '220802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57396', '220821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57397', '220822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57398', '220881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57399', '220882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57400', '222400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57401', '222401', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57402', '222402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57403', '222403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57404', '222404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57405', '222405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57406', '222406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57407', '222424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57408', '222426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57409', '230000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57410', '230100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57411', '230102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57412', '230103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57413', '230104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57414', '230108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57415', '230109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57416', '230110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57417', '230111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57418', '230112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57419', '230113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57420', '230123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57421', '230124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57422', '230125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57423', '230126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57424', '230127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57425', '230128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57426', '230129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57427', '230183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57428', '230184', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57429', '230200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57430', '230202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57431', '230203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57432', '230204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57433', '230205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57434', '230206', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57435', '230207', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57436', '230208', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57437', '230221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57438', '230223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57439', '230224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57440', '230225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57441', '230227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57442', '230229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57443', '230230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57444', '230231', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57445', '230281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57446', '230300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57447', '230302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57448', '230303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57449', '230304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57450', '230305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57451', '230306', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57452', '230307', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57453', '230321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57454', '230381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57455', '230382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57456', '230400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57457', '230402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57458', '230403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57459', '230404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57460', '230405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57461', '230406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57462', '230407', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57463', '230421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57464', '230422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57465', '230500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57466', '230502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57467', '230503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57468', '230505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57469', '230506', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57470', '230521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57471', '230522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57472', '230523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57473', '230524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57474', '230600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57475', '230602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57476', '230603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57477', '230604', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57478', '230605', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57479', '230606', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57480', '230621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57481', '230622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57482', '230623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57483', '230624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57484', '230700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57485', '230702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57486', '230703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57487', '230704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57488', '230705', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57489', '230706', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57490', '230707', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57491', '230708', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57492', '230709', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57493', '230710', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57494', '230711', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57495', '230712', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57496', '230713', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57497', '230714', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57498', '230715', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57499', '230716', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57500', '230722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57501', '230781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57502', '230800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57503', '230803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57504', '230804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57505', '230805', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57506', '230811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57507', '230822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57508', '230826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57509', '230828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57510', '230833', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57511', '230881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57512', '230882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57513', '230900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57514', '230902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57515', '230903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57516', '230904', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57517', '230921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57518', '231000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57519', '231002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57520', '231003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57521', '231004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57522', '231005', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57523', '231024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57524', '231025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57525', '231081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57526', '231083', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57527', '231084', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57528', '231085', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57529', '231100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57530', '231102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57531', '231121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57532', '231123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57533', '231124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57534', '231181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57535', '231182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57536', '231200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57537', '231202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57538', '231221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57539', '231222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57540', '231223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57541', '231224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57542', '231225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57543', '231226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57544', '231281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57545', '231282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57546', '231283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57547', '232700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57548', '232721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57549', '232722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57550', '232723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57551', '310000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57552', '310100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57553', '310101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57554', '310104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57555', '310105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57556', '310106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57557', '310107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57558', '310108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57559', '310109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57560', '310110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57561', '310112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57562', '310113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57563', '310114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57564', '310115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57565', '310116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57566', '310117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57567', '310118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57568', '310120', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57569', '310230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57570', '320000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57571', '320100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57572', '320102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57573', '320104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57574', '320105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57575', '320106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57576', '320111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57577', '320113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57578', '320114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57579', '320115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57580', '320116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57581', '320117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57582', '320118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57583', '320200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57584', '320202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57585', '320203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57586', '320204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57587', '320205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57588', '320206', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57589', '320211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57590', '320281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57591', '320282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57592', '320300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57593', '320302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57594', '320303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57595', '320305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57596', '320311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57597', '320312', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57598', '320321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57599', '320322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57600', '320324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57601', '320381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57602', '320382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57603', '320400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57604', '320402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57605', '320404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57606', '320411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57607', '320412', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57608', '320413', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57609', '320481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57610', '320500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57611', '320505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57612', '320506', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57613', '320507', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57614', '320508', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57615', '320509', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57616', '320581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57617', '320582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57618', '320583', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57619', '320585', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57620', '320600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57621', '320602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57622', '320611', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57623', '320612', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57624', '320621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57625', '320623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57626', '320681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57627', '320682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57628', '320684', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57629', '320700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57630', '320703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57631', '320706', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57632', '320707', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57633', '320722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57634', '320723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57635', '320724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57636', '320800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57637', '320802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57638', '320803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57639', '320804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57640', '320811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57641', '320826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57642', '320829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57643', '320830', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57644', '320831', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57645', '320900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57646', '320902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57647', '320903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57648', '320904', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57649', '320921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57650', '320922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57651', '320923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57652', '320924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57653', '320925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57654', '320981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57655', '321000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57656', '321002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57657', '321003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57658', '321012', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57659', '321023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57660', '321081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57661', '321084', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57662', '321100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57663', '321102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57664', '321111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57665', '321112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57666', '321181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57667', '321182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57668', '321183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57669', '321200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57670', '321202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57671', '321203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57672', '321204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57673', '321281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57674', '321282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57675', '321283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57676', '321300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57677', '321302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57678', '321311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57679', '321322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57680', '321323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57681', '321324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57682', '330000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57683', '330100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57684', '330102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57685', '330103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57686', '330104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57687', '330105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57688', '330106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57689', '330108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57690', '330109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57691', '330110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57692', '330111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57693', '330122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57694', '330127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57695', '330182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57696', '330185', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57697', '330200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57698', '330203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57699', '330204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57700', '330205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57701', '330206', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57702', '330211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57703', '330212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57704', '330225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57705', '330226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57706', '330281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57707', '330282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57708', '330283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57709', '330300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57710', '330302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57711', '330303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57712', '330304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57713', '330305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57714', '330324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57715', '330326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57716', '330327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57717', '330328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57718', '330329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57719', '330381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57720', '330382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57721', '330400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57722', '330402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57723', '330411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57724', '330421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57725', '330424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57726', '330481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57727', '330482', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57728', '330483', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57729', '330500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57730', '330502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57731', '330503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57732', '330521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57733', '330522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57734', '330523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57735', '330600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57736', '330602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57737', '330603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57738', '330604', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57739', '330624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57740', '330681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57741', '330683', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57742', '330700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57743', '330702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57744', '330703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57745', '330723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57746', '330726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57747', '330727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57748', '330781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57749', '330782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57750', '330783', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57751', '330784', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57752', '330800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57753', '330802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57754', '330803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57755', '330822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57756', '330824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57757', '330825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57758', '330881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57759', '330900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57760', '330902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57761', '330903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57762', '330921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57763', '330922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57764', '331000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57765', '331002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57766', '331003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57767', '331004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57768', '331021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57769', '331022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57770', '331023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57771', '331024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57772', '331081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57773', '331082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57774', '331100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57775', '331102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57776', '331121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57777', '331122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57778', '331123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57779', '331124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57780', '331125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57781', '331126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57782', '331127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57783', '331181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57784', '340000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57785', '340100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57786', '340102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57787', '340103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57788', '340104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57789', '340111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57790', '340121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57791', '340122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57792', '340123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57793', '340124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57794', '340181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57795', '340200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57796', '340202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57797', '340203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57798', '340207', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57799', '340208', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57800', '340221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57801', '340222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57802', '340223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57803', '340225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57804', '340300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57805', '340302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57806', '340303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57807', '340304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57808', '340311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57809', '340321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57810', '340322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57811', '340323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57812', '340400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57813', '340402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57814', '340403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57815', '340404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57816', '340405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57817', '340406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57818', '340421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57819', '340500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57820', '340503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57821', '340504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57822', '340506', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57823', '340521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57824', '340522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57825', '340523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57826', '340600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57827', '340602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57828', '340603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57829', '340604', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57830', '340621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57831', '340700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57832', '340702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57833', '340703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57834', '340711', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57835', '340721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57836', '340800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57837', '340802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57838', '340803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57839', '340811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57840', '340822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57841', '340823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57842', '340824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57843', '340825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57844', '340826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57845', '340827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57846', '340828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57847', '340881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57848', '341000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57849', '341002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57850', '341003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57851', '341004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57852', '341021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57853', '341022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57854', '341023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57855', '341024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57856', '341100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57857', '341102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57858', '341103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57859', '341122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57860', '341124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57861', '341125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57862', '341126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57863', '341181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57864', '341182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57865', '341200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57866', '341202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57867', '341203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57868', '341204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57869', '341221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57870', '341222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57871', '341225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57872', '341226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57873', '341282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57874', '341300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57875', '341302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57876', '341321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57877', '341322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57878', '341323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57879', '341324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57880', '341500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57881', '341502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57882', '341503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57883', '341521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57884', '341522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57885', '341523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57886', '341524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57887', '341525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57888', '341600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57889', '341602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57890', '341621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57891', '341622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57892', '341623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57893', '341700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57894', '341702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57895', '341721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57896', '341722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57897', '341723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57898', '341800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57899', '341802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57900', '341821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57901', '341822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57902', '341823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57903', '341824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57904', '341825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57905', '341881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57906', '350000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57907', '350100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57908', '350102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57909', '350103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57910', '350104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57911', '350105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57912', '350111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57913', '350121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57914', '350122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57915', '350123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57916', '350124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57917', '350125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57918', '350128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57919', '350181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57920', '350182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57921', '350200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57922', '350203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57923', '350205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57924', '350206', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57925', '350211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57926', '350212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57927', '350213', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57928', '350300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57929', '350302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57930', '350303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57931', '350304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57932', '350305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57933', '350322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57934', '350400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57935', '350402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57936', '350403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57937', '350421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57938', '350423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57939', '350424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57940', '350425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57941', '350426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57942', '350427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57943', '350428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57944', '350429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57945', '350430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57946', '350481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57947', '350500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57948', '350502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57949', '350503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57950', '350504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57951', '350505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57952', '350521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57953', '350524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57954', '350525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57955', '350526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57956', '350527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57957', '350581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57958', '350582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57959', '350583', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57960', '350600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57961', '350602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57962', '350603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57963', '350622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57964', '350623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57965', '350624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57966', '350625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57967', '350626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57968', '350627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57969', '350628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57970', '350629', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57971', '350681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57972', '350700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57973', '350702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57974', '350703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57975', '350721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57976', '350722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57977', '350723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57978', '350724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57979', '350725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57980', '350781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57981', '350782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57982', '350783', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57983', '350800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57984', '350802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57985', '350803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57986', '350821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57987', '350823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57988', '350824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57989', '350825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57990', '350881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57991', '350900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57992', '350902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57993', '350921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57994', '350922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57995', '350923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57996', '350924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57997', '350925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57998', '350926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('57999', '350981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58000', '350982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58001', '360000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58002', '360100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58003', '360102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58004', '360103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58005', '360104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58006', '360105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58007', '360111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58008', '360112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58009', '360121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58010', '360123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58011', '360124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58012', '360200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58013', '360202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58014', '360203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58015', '360222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58016', '360281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58017', '360300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58018', '360302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58019', '360313', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58020', '360321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58021', '360322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58022', '360323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58023', '360400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58024', '360402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58025', '360403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58026', '360421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58027', '360423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58028', '360424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58029', '360425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58030', '360426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58031', '360427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58032', '360428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58033', '360429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58034', '360430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58035', '360481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58036', '360482', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58037', '360500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58038', '360502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58039', '360521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58040', '360600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58041', '360602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58042', '360622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58043', '360681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58044', '360700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58045', '360702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58046', '360703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58047', '360721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58048', '360722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58049', '360723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58050', '360724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58051', '360725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58052', '360726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58053', '360727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58054', '360728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58055', '360729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58056', '360730', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58057', '360731', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58058', '360732', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58059', '360733', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58060', '360734', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58061', '360735', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58062', '360781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58063', '360800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58064', '360802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58065', '360803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58066', '360821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58067', '360822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58068', '360823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58069', '360824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58070', '360825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58071', '360826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58072', '360827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58073', '360828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58074', '360829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58075', '360830', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58076', '360881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58077', '360900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58078', '360902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58079', '360921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58080', '360922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58081', '360923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58082', '360924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58083', '360925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58084', '360926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58085', '360981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58086', '360982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58087', '360983', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58088', '361000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58089', '361002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58090', '361021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58091', '361022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58092', '361023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58093', '361024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58094', '361025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58095', '361026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58096', '361027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58097', '361028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58098', '361029', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58099', '361030', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58100', '361100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58101', '361102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58102', '361103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58103', '361121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58104', '361123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58105', '361124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58106', '361125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58107', '361126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58108', '361127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58109', '361128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58110', '361129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58111', '361130', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58112', '361181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58113', '370000', null, '5', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58114', '370100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58115', '370102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58116', '370103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58117', '370104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58118', '370105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58119', '370112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58120', '370113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58121', '370124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58122', '370125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58123', '370126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58124', '370181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58125', '370200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58126', '370202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58127', '370203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58128', '370211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58129', '370212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58130', '370213', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58131', '370214', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58132', '370281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58133', '370282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58134', '370283', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58135', '370285', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58136', '370300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58137', '370302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58138', '370303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58139', '370304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58140', '370305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58141', '370306', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58142', '370321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58143', '370322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58144', '370323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58145', '370400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58146', '370402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58147', '370403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58148', '370404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58149', '370405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58150', '370406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58151', '370481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58152', '370500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58153', '370502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58154', '370503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58155', '370521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58156', '370522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58157', '370523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58158', '370600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58159', '370602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58160', '370611', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58161', '370612', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58162', '370613', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58163', '370634', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58164', '370681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58165', '370682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58166', '370683', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58167', '370684', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58168', '370685', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58169', '370686', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58170', '370687', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58171', '370700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58172', '370702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58173', '370703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58174', '370704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58175', '370705', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58176', '370724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58177', '370725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58178', '370781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58179', '370782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58180', '370783', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58181', '370784', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58182', '370785', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58183', '370786', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58184', '370800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58185', '370811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58186', '370812', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58187', '370826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58188', '370827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58189', '370828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58190', '370829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58191', '370830', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58192', '370831', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58193', '370832', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58194', '370881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58195', '370883', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58196', '370900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58197', '370902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58198', '370911', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58199', '370921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58200', '370923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58201', '370982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58202', '370983', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58203', '371000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58204', '371002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58205', '371003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58206', '371082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58207', '371083', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58208', '371100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58209', '371102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58210', '371103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58211', '371121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58212', '371122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58213', '371200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58214', '371202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58215', '371203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58216', '371300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58217', '371302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58218', '371311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58219', '371312', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58220', '371321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58221', '371322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58222', '371323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58223', '371324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58224', '371325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58225', '371326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58226', '371327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58227', '371328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58228', '371329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58229', '371400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58230', '371402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58231', '371403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58232', '371422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58233', '371423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58234', '371424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58235', '371425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58236', '371426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58237', '371427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58238', '371428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58239', '371481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58240', '371482', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58241', '371500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58242', '371502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58243', '371521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58244', '371522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58245', '371523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58246', '371524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58247', '371525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58248', '371526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58249', '371581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58250', '371600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58251', '371602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58252', '371603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58253', '371621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58254', '371622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58255', '371623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58256', '371625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58257', '371626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58258', '371700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58259', '371702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58260', '371721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58261', '371722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58262', '371723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58263', '371724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58264', '371725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58265', '371726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58266', '371727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58267', '371728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58268', '410000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58269', '410100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58270', '410102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58271', '410103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58272', '410104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58273', '410105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58274', '410106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58275', '410108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58276', '410122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58277', '410181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58278', '410182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58279', '410183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58280', '410184', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58281', '410185', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58282', '410200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58283', '410202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58284', '410203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58285', '410204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58286', '410205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58287', '410211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58288', '410212', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58289', '410221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58290', '410222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58291', '410223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58292', '410225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58293', '410300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58294', '410302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58295', '410303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58296', '410304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58297', '410305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58298', '410306', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58299', '410311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58300', '410322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58301', '410323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58302', '410324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58303', '410325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58304', '410326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58305', '410327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58306', '410328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58307', '410329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58308', '410381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58309', '410400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58310', '410402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58311', '410403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58312', '410404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58313', '410411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58314', '410421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58315', '410422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58316', '410423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58317', '410425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58318', '410481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58319', '410482', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58320', '410500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58321', '410502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58322', '410503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58323', '410505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58324', '410506', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58325', '410522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58326', '410523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58327', '410526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58328', '410527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58329', '410581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58330', '410600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58331', '410602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58332', '410603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58333', '410611', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58334', '410621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58335', '410622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58336', '410700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58337', '410702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58338', '410703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58339', '410704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58340', '410711', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58341', '410721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58342', '410724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58343', '410725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58344', '410726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58345', '410727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58346', '410728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58347', '410781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58348', '410782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58349', '410800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58350', '410802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58351', '410803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58352', '410804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58353', '410811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58354', '410821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58355', '410822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58356', '410823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58357', '410825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58358', '410882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58359', '410883', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58360', '410900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58361', '410902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58362', '410922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58363', '410923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58364', '410926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58365', '410927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58366', '410928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58367', '411000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58368', '411002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58369', '411023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58370', '411024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58371', '411025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58372', '411081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58373', '411082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58374', '411100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58375', '411102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58376', '411103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58377', '411104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58378', '411121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58379', '411122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58380', '411200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58381', '411202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58382', '411221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58383', '411222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58384', '411224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58385', '411281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58386', '411282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58387', '411300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58388', '411302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58389', '411303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58390', '411321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58391', '411322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58392', '411323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58393', '411324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58394', '411325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58395', '411326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58396', '411327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58397', '411328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58398', '411329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58399', '411330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58400', '411381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58401', '411400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58402', '411402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58403', '411403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58404', '411421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58405', '411422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58406', '411423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58407', '411424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58408', '411425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58409', '411426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58410', '411481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58411', '411500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58412', '411502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58413', '411503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58414', '411521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58415', '411522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58416', '411523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58417', '411524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58418', '411525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58419', '411526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58420', '411527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58421', '411528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58422', '411600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58423', '411602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58424', '411621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58425', '411622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58426', '411623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58427', '411624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58428', '411625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58429', '411626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58430', '411627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58431', '411628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58432', '411681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58433', '411700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58434', '411702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58435', '411721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58436', '411722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58437', '411723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58438', '411724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58439', '411725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58440', '411726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58441', '411727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58442', '411728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58443', '411729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58444', '419001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58445', '420000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58446', '420100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58447', '420102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58448', '420103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58449', '420104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58450', '420105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58451', '420106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58452', '420107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58453', '420111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58454', '420112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58455', '420113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58456', '420114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58457', '420115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58458', '420116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58459', '420117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58460', '420200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58461', '420202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58462', '420203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58463', '420204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58464', '420205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58465', '420222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58466', '420281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58467', '420300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58468', '420302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58469', '420303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58470', '420304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58471', '420322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58472', '420323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58473', '420324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58474', '420325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58475', '420381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58476', '420500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58477', '420502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58478', '420503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58479', '420504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58480', '420505', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58481', '420506', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58482', '420525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58483', '420526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58484', '420527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58485', '420528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58486', '420529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58487', '420581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58488', '420582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58489', '420583', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58490', '420600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58491', '420602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58492', '420606', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58493', '420607', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58494', '420624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58495', '420625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58496', '420626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58497', '420682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58498', '420683', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58499', '420684', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58500', '420700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58501', '420702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58502', '420703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58503', '420704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58504', '420800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58505', '420802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58506', '420804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58507', '420821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58508', '420822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58509', '420881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58510', '420900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58511', '420902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58512', '420921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58513', '420922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58514', '420923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58515', '420981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58516', '420982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58517', '420984', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58518', '421000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58519', '421002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58520', '421003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58521', '421022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58522', '421023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58523', '421024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58524', '421081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58525', '421083', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58526', '421087', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58527', '421100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58528', '421102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58529', '421121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58530', '421122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58531', '421123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58532', '421124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58533', '421125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58534', '421126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58535', '421127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58536', '421181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58537', '421182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58538', '421200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58539', '421202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58540', '421221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58541', '421222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58542', '421223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58543', '421224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58544', '421281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58545', '421300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58546', '421303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58547', '421321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58548', '421381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58549', '422800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58550', '422801', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58551', '422802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58552', '422822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58553', '422823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58554', '422825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58555', '422826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58556', '422827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58557', '422828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58558', '429004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58559', '429005', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58560', '429006', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58561', '429021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58562', '430000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58563', '430100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58564', '430102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58565', '430103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58566', '430104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58567', '430105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58568', '430111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58569', '430112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58570', '430121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58571', '430124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58572', '430181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58573', '430200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58574', '430202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58575', '430203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58576', '430204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58577', '430211', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58578', '430221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58579', '430223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58580', '430224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58581', '430225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58582', '430281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58583', '430300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58584', '430302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58585', '430304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58586', '430321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58587', '430381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58588', '430382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58589', '430400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58590', '430405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58591', '430406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58592', '430407', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58593', '430408', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58594', '430412', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58595', '430421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58596', '430422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58597', '430423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58598', '430424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58599', '430426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58600', '430481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58601', '430482', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58602', '430500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58603', '430502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58604', '430503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58605', '430511', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58606', '430521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58607', '430522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58608', '430523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58609', '430524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58610', '430525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58611', '430527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58612', '430528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58613', '430529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58614', '430581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58615', '430600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58616', '430602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58617', '430603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58618', '430611', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58619', '430621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58620', '430623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58621', '430624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58622', '430626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58623', '430681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58624', '430682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58625', '430700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58626', '430702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58627', '430703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58628', '430721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58629', '430722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58630', '430723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58631', '430724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58632', '430725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58633', '430726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58634', '430781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58635', '430800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58636', '430802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58637', '430811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58638', '430821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58639', '430822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58640', '430900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58641', '430902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58642', '430903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58643', '430921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58644', '430922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58645', '430923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58646', '430981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58647', '431000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58648', '431002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58649', '431003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58650', '431021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58651', '431022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58652', '431023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58653', '431024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58654', '431025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58655', '431026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58656', '431027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58657', '431028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58658', '431081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58659', '431100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58660', '431102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58661', '431103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58662', '431121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58663', '431122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58664', '431123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58665', '431124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58666', '431125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58667', '431126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58668', '431127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58669', '431128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58670', '431129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58671', '431200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58672', '431202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58673', '431221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58674', '431222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58675', '431223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58676', '431224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58677', '431225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58678', '431226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58679', '431227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58680', '431228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58681', '431229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58682', '431230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58683', '431281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58684', '431300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58685', '431302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58686', '431321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58687', '431322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58688', '431381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58689', '431382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58690', '433100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58691', '433101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58692', '433122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58693', '433123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58694', '433124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58695', '433125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58696', '433126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58697', '433127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58698', '433130', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58699', '440000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58700', '440100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58701', '440103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58702', '440104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58703', '440105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58704', '440106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58705', '440111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58706', '440112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58707', '440113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58708', '440114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58709', '440115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58710', '440117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58711', '440118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58712', '440200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58713', '440203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58714', '440204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58715', '440205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58716', '440222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58717', '440224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58718', '440229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58719', '440232', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58720', '440233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58721', '440281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58722', '440282', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58723', '440300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58724', '440303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58725', '440304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58726', '440305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58727', '440306', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58728', '440307', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58729', '440308', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58730', '440400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58731', '440402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58732', '440403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58733', '440404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58734', '440500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58735', '440507', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58736', '440511', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58737', '440512', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58738', '440513', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58739', '440514', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58740', '440515', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58741', '440523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58742', '440600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58743', '440604', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58744', '440605', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58745', '440606', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58746', '440607', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58747', '440608', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58748', '440700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58749', '440703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58750', '440704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58751', '440705', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58752', '440781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58753', '440783', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58754', '440784', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58755', '440785', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58756', '440800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58757', '440802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58758', '440803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58759', '440804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58760', '440811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58761', '440823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58762', '440825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58763', '440881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58764', '440882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58765', '440883', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58766', '440900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58767', '440902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58768', '440904', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58769', '440981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58770', '440982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58771', '440983', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58772', '441200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58773', '441202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58774', '441203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58775', '441204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58776', '441223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58777', '441224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58778', '441225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58779', '441226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58780', '441284', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58781', '441300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58782', '441302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58783', '441303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58784', '441322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58785', '441323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58786', '441324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58787', '441400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58788', '441402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58789', '441403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58790', '441422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58791', '441423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58792', '441424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58793', '441426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58794', '441427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58795', '441481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58796', '441500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58797', '441502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58798', '441521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58799', '441523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58800', '441581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58801', '441600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58802', '441602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58803', '441621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58804', '441622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58805', '441623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58806', '441624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58807', '441625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58808', '441700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58809', '441702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58810', '441704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58811', '441721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58812', '441781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58813', '441800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58814', '441802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58815', '441803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58816', '441821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58817', '441823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58818', '441825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58819', '441826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58820', '441881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58821', '441882', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58822', '441900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58823', '442000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58824', '445100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58825', '445102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58826', '445103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58827', '445122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58828', '445200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58829', '445202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58830', '445203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58831', '445222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58832', '445224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58833', '445281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58834', '445300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58835', '445302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58836', '445303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58837', '445321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58838', '445322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58839', '445381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58840', '450000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58841', '450100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58842', '450102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58843', '450103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58844', '450105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58845', '450107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58846', '450108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58847', '450109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58848', '450110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58849', '450123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58850', '450124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58851', '450125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58852', '450126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58853', '450127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58854', '450200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58855', '450202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58856', '450203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58857', '450204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58858', '450205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58859', '450221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58860', '450222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58861', '450223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58862', '450224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58863', '450225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58864', '450226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58865', '450300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58866', '450302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58867', '450303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58868', '450304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58869', '450305', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58870', '450311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58871', '450312', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58872', '450321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58873', '450323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58874', '450324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58875', '450325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58876', '450326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58877', '450327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58878', '450328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58879', '450329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58880', '450330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58881', '450331', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58882', '450332', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58883', '450400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58884', '450403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58885', '450405', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58886', '450406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58887', '450421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58888', '450422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58889', '450423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58890', '450481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58891', '450500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58892', '450502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58893', '450503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58894', '450512', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58895', '450521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58896', '450600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58897', '450602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58898', '450603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58899', '450621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58900', '450681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58901', '450700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58902', '450702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58903', '450703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58904', '450721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58905', '450722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58906', '450800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58907', '450802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58908', '450803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58909', '450804', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58910', '450821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58911', '450881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58912', '450900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58913', '450902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58914', '450903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58915', '450921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58916', '450922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58917', '450923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58918', '450924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58919', '450981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58920', '451000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58921', '451002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58922', '451021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58923', '451022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58924', '451023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58925', '451024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58926', '451026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58927', '451027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58928', '451028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58929', '451029', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58930', '451030', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58931', '451031', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58932', '451081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58933', '451100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58934', '451102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58935', '451121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58936', '451122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58937', '451123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58938', '451200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58939', '451202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58940', '451221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58941', '451222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58942', '451223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58943', '451224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58944', '451225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58945', '451226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58946', '451227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58947', '451228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58948', '451229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58949', '451281', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58950', '451300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58951', '451302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58952', '451321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58953', '451322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58954', '451323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58955', '451324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58956', '451381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58957', '451400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58958', '451402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58959', '451421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58960', '451422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58961', '451423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58962', '451424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58963', '451425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58964', '451481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58965', '460000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58966', '460100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58967', '460105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58968', '460106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58969', '460107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58970', '460108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58971', '460200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58972', '460202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58973', '460203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58974', '460204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58975', '460205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58976', '460300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58977', '460321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58978', '460322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58979', '460323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58980', '469001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58981', '469002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58982', '469003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58983', '469005', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58984', '469006', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58985', '469007', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58986', '469021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58987', '469022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58988', '469023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58989', '469024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58990', '469029', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58991', '469030', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58992', '500000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58993', '500100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58994', '500101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58995', '500102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58996', '500103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58997', '500104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58998', '500105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('58999', '500106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59000', '500107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59001', '500108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59002', '500109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59003', '500110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59004', '500111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59005', '500112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59006', '500113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59007', '500114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59008', '500115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59009', '500116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59010', '500117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59011', '500118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59012', '500119', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59013', '500120', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59014', '500151', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59015', '500152', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59016', '500153', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59017', '500228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59018', '500229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59019', '500230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59020', '500231', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59021', '500232', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59022', '500233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59023', '500234', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59024', '500235', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59025', '500236', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59026', '500237', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59027', '500238', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59028', '500240', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59029', '500241', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59030', '500242', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59031', '500243', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59032', '510000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59033', '510100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59034', '510104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59035', '510105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59036', '510106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59037', '510107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59038', '510108', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59039', '510112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59040', '510113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59041', '510114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59042', '510115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59043', '510121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59044', '510122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59045', '510124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59046', '510129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59047', '510131', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59048', '510132', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59049', '510181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59050', '510182', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59051', '510183', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59052', '510184', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59053', '510300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59054', '510302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59055', '510303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59056', '510304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59057', '510311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59058', '510321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59059', '510322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59060', '510400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59061', '510402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59062', '510403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59063', '510411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59064', '510421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59065', '510422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59066', '510500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59067', '510502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59068', '510503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59069', '510504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59070', '510521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59071', '510522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59072', '510524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59073', '510525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59074', '510600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59075', '510603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59076', '510623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59077', '510626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59078', '510681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59079', '510682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59080', '510683', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59081', '510700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59082', '510703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59083', '510704', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59084', '510722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59085', '510723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59086', '510724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59087', '510725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59088', '510726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59089', '510727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59090', '510781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59091', '510800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59092', '510802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59093', '510811', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59094', '510812', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59095', '510821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59096', '510822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59097', '510823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59098', '510824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59099', '510900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59100', '510903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59101', '510904', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59102', '510921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59103', '510922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59104', '510923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59105', '511000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59106', '511002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59107', '511011', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59108', '511024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59109', '511025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59110', '511028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59111', '511100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59112', '511102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59113', '511111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59114', '511112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59115', '511113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59116', '511123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59117', '511124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59118', '511126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59119', '511129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59120', '511132', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59121', '511133', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59122', '511181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59123', '511300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59124', '511302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59125', '511303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59126', '511304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59127', '511321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59128', '511322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59129', '511323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59130', '511324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59131', '511325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59132', '511381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59133', '511400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59134', '511402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59135', '511403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59136', '511421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59137', '511423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59138', '511424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59139', '511425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59140', '511500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59141', '511502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59142', '511503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59143', '511521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59144', '511523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59145', '511524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59146', '511525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59147', '511526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59148', '511527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59149', '511528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59150', '511529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59151', '511600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59152', '511602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59153', '511603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59154', '511621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59155', '511622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59156', '511623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59157', '511681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59158', '511700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59159', '511702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59160', '511703', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59161', '511722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59162', '511723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59163', '511724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59164', '511725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59165', '511781', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59166', '511800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59167', '511802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59168', '511803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59169', '511822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59170', '511823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59171', '511824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59172', '511825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59173', '511826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59174', '511827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59175', '511900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59176', '511902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59177', '511903', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59178', '511921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59179', '511922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59180', '511923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59181', '512000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59182', '512002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59183', '512021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59184', '512022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59185', '512081', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59186', '513200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59187', '513221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59188', '513222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59189', '513223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59190', '513224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59191', '513225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59192', '513226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59193', '513227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59194', '513228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59195', '513229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59196', '513230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59197', '513231', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59198', '513232', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59199', '513233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59200', '513300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59201', '513301', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59202', '513322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59203', '513323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59204', '513324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59205', '513325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59206', '513326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59207', '513327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59208', '513328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59209', '513329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59210', '513330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59211', '513331', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59212', '513332', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59213', '513333', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59214', '513334', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59215', '513335', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59216', '513336', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59217', '513337', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59218', '513338', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59219', '513400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59220', '513401', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59221', '513422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59222', '513423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59223', '513424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59224', '513425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59225', '513426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59226', '513427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59227', '513428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59228', '513429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59229', '513430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59230', '513431', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59231', '513432', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59232', '513433', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59233', '513434', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59234', '513435', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59235', '513436', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59236', '513437', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59237', '520000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59238', '520100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59239', '520102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59240', '520103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59241', '520111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59242', '520112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59243', '520113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59244', '520115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59245', '520121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59246', '520122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59247', '520123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59248', '520181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59249', '520200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59250', '520201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59251', '520203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59252', '520221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59253', '520222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59254', '520300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59255', '520302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59256', '520303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59257', '520321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59258', '520322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59259', '520323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59260', '520324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59261', '520325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59262', '520326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59263', '520327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59264', '520328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59265', '520329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59266', '520330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59267', '520381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59268', '520382', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59269', '520400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59270', '520402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59271', '520403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59272', '520422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59273', '520423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59274', '520424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59275', '520425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59276', '520500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59277', '520502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59278', '520521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59279', '520522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59280', '520523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59281', '520524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59282', '520525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59283', '520526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59284', '520527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59285', '520600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59286', '520602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59287', '520603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59288', '520621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59289', '520622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59290', '520623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59291', '520624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59292', '520625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59293', '520626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59294', '520627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59295', '520628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59296', '522300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59297', '522301', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59298', '522322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59299', '522323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59300', '522324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59301', '522325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59302', '522326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59303', '522327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59304', '522328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59305', '522600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59306', '522601', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59307', '522622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59308', '522623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59309', '522624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59310', '522625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59311', '522626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59312', '522627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59313', '522628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59314', '522629', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59315', '522630', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59316', '522631', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59317', '522632', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59318', '522633', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59319', '522634', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59320', '522635', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59321', '522636', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59322', '522700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59323', '522701', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59324', '522702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59325', '522722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59326', '522723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59327', '522725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59328', '522726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59329', '522727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59330', '522728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59331', '522729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59332', '522730', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59333', '522731', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59334', '522732', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59335', '530000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59336', '530100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59337', '530102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59338', '530103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59339', '530111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59340', '530112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59341', '530113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59342', '530114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59343', '530122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59344', '530124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59345', '530125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59346', '530126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59347', '530127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59348', '530128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59349', '530129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59350', '530181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59351', '530300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59352', '530302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59353', '530321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59354', '530322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59355', '530323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59356', '530324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59357', '530325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59358', '530326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59359', '530328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59360', '530381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59361', '530400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59362', '530402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59363', '530421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59364', '530422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59365', '530423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59366', '530424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59367', '530425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59368', '530426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59369', '530427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59370', '530428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59371', '530500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59372', '530502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59373', '530521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59374', '530523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59375', '530524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59376', '530581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59377', '530600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59378', '530602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59379', '530621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59380', '530622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59381', '530623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59382', '530624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59383', '530625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59384', '530626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59385', '530627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59386', '530628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59387', '530629', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59388', '530630', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59389', '530700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59390', '530702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59391', '530721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59392', '530722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59393', '530723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59394', '530724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59395', '530800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59396', '530802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59397', '530821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59398', '530822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59399', '530823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59400', '530824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59401', '530825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59402', '530826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59403', '530827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59404', '530828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59405', '530829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59406', '530900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59407', '530902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59408', '530921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59409', '530922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59410', '530923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59411', '530924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59412', '530925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59413', '530926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59414', '530927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59415', '532300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59416', '532301', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59417', '532322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59418', '532323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59419', '532324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59420', '532325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59421', '532326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59422', '532327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59423', '532328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59424', '532329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59425', '532331', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59426', '532500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59427', '532501', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59428', '532502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59429', '532503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59430', '532504', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59431', '532523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59432', '532524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59433', '532525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59434', '532527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59435', '532528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59436', '532529', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59437', '532530', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59438', '532531', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59439', '532532', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59440', '532600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59441', '532601', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59442', '532622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59443', '532623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59444', '532624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59445', '532625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59446', '532626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59447', '532627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59448', '532628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59449', '532800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59450', '532801', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59451', '532822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59452', '532823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59453', '532900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59454', '532901', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59455', '532922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59456', '532923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59457', '532924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59458', '532925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59459', '532926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59460', '532927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59461', '532928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59462', '532929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59463', '532930', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59464', '532931', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59465', '532932', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59466', '533100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59467', '533102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59468', '533103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59469', '533122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59470', '533123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59471', '533124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59472', '533300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59473', '533321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59474', '533323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59475', '533324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59476', '533325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59477', '533400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59478', '533401', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59479', '533422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59480', '533423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59481', '540000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59482', '540100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59483', '540102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59484', '540121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59485', '540122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59486', '540123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59487', '540124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59488', '540125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59489', '540126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59490', '540127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59491', '540200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59492', '540202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59493', '540221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59494', '540222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59495', '540223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59496', '540224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59497', '540225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59498', '540226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59499', '540227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59500', '540228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59501', '540229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59502', '540230', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59503', '540231', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59504', '540232', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59505', '540233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59506', '540234', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59507', '540235', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59508', '540236', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59509', '540237', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59510', '540300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59511', '540302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59512', '540321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59513', '540322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59514', '540323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59515', '540324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59516', '540325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59517', '540326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59518', '540327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59519', '540328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59520', '540329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59521', '540330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59522', '540400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59523', '540402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59524', '540421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59525', '540422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59526', '540423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59527', '540424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59528', '540425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59529', '540426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59530', '542200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59531', '542221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59532', '542222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59533', '542223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59534', '542224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59535', '542225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59536', '542226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59537', '542227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59538', '542228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59539', '542229', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59540', '542231', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59541', '542232', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59542', '542233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59543', '542400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59544', '542421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59545', '542422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59546', '542423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59547', '542424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59548', '542425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59549', '542426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59550', '542427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59551', '542428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59552', '542429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59553', '542430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59554', '542431', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59555', '542500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59556', '542521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59557', '542522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59558', '542523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59559', '542524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59560', '542525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59561', '542526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59562', '542527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59563', '610000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59564', '610100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59565', '610102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59566', '610103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59567', '610104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59568', '610111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59569', '610112', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59570', '610113', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59571', '610114', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59572', '610115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59573', '610116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59574', '610117', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59575', '610122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59576', '610124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59577', '610125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59578', '610200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59579', '610202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59580', '610203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59581', '610204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59582', '610222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59583', '610300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59584', '610302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59585', '610303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59586', '610304', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59587', '610322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59588', '610323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59589', '610324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59590', '610326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59591', '610327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59592', '610328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59593', '610329', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59594', '610330', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59595', '610331', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59596', '610400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59597', '610402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59598', '610403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59599', '610404', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59600', '610422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59601', '610423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59602', '610424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59603', '610425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59604', '610426', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59605', '610427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59606', '610428', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59607', '610429', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59608', '610430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59609', '610431', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59610', '610481', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59611', '610500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59612', '610502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59613', '610521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59614', '610522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59615', '610523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59616', '610524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59617', '610525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59618', '610526', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59619', '610527', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59620', '610528', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59621', '610581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59622', '610582', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59623', '610600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59624', '610602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59625', '610621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59626', '610622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59627', '610623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59628', '610624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59629', '610625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59630', '610626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59631', '610627', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59632', '610628', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59633', '610629', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59634', '610630', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59635', '610631', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59636', '610632', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59637', '610700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59638', '610702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59639', '610721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59640', '610722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59641', '610723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59642', '610724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59643', '610725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59644', '610726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59645', '610727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59646', '610728', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59647', '610729', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59648', '610730', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59649', '610800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59650', '610802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59651', '610821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59652', '610822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59653', '610823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59654', '610824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59655', '610825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59656', '610826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59657', '610827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59658', '610828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59659', '610829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59660', '610830', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59661', '610831', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59662', '610900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59663', '610902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59664', '610921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59665', '610922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59666', '610923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59667', '610924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59668', '610925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59669', '610926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59670', '610927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59671', '610928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59672', '610929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59673', '611000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59674', '611002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59675', '611021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59676', '611022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59677', '611023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59678', '611024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59679', '611025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59680', '611026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59681', '620000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59682', '620100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59683', '620102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59684', '620103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59685', '620104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59686', '620105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59687', '620111', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59688', '620121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59689', '620122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59690', '620123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59691', '620200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59692', '620300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59693', '620302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59694', '620321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59695', '620400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59696', '620402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59697', '620403', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59698', '620421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59699', '620422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59700', '620423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59701', '620500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59702', '620502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59703', '620503', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59704', '620521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59705', '620522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59706', '620523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59707', '620524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59708', '620525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59709', '620600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59710', '620602', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59711', '620621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59712', '620622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59713', '620623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59714', '620700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59715', '620702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59716', '620721', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59717', '620722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59718', '620723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59719', '620724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59720', '620725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59721', '620800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59722', '620802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59723', '620821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59724', '620822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59725', '620823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59726', '620824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59727', '620825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59728', '620826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59729', '620900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59730', '620902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59731', '620921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59732', '620922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59733', '620923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59734', '620924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59735', '620981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59736', '620982', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59737', '621000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59738', '621002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59739', '621021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59740', '621022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59741', '621023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59742', '621024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59743', '621025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59744', '621026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59745', '621027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59746', '621100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59747', '621102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59748', '621121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59749', '621122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59750', '621123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59751', '621124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59752', '621125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59753', '621126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59754', '621200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59755', '621202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59756', '621221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59757', '621222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59758', '621223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59759', '621224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59760', '621225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59761', '621226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59762', '621227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59763', '621228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59764', '622900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59765', '622901', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59766', '622921', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59767', '622922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59768', '622923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59769', '622924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59770', '622925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59771', '622926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59772', '622927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59773', '623000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59774', '623001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59775', '623021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59776', '623022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59777', '623023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59778', '623024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59779', '623025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59780', '623026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59781', '623027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59782', '630000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59783', '630100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59784', '630102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59785', '630103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59786', '630104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59787', '630105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59788', '630121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59789', '630122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59790', '630123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59791', '630200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59792', '630202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59793', '630203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59794', '630222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59795', '630223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59796', '630224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59797', '630225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59798', '632200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59799', '632221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59800', '632222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59801', '632223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59802', '632224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59803', '632300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59804', '632321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59805', '632322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59806', '632323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59807', '632324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59808', '632500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59809', '632521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59810', '632522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59811', '632523', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59812', '632524', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59813', '632525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59814', '632600', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59815', '632621', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59816', '632622', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59817', '632623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59818', '632624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59819', '632625', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59820', '632626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59821', '632700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59822', '632701', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59823', '632722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59824', '632723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59825', '632724', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59826', '632725', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59827', '632726', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59828', '632800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59829', '632801', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59830', '632802', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59831', '632821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59832', '632822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59833', '632823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59834', '640000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59835', '640100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59836', '640104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59837', '640105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59838', '640106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59839', '640121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59840', '640122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59841', '640181', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59842', '640200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59843', '640202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59844', '640205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59845', '640221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59846', '640300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59847', '640302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59848', '640303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59849', '640323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59850', '640324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59851', '640381', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59852', '640400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59853', '640402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59854', '640422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59855', '640423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59856', '640424', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59857', '640425', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59858', '640500', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59859', '640502', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59860', '640521', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59861', '640522', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59862', '650000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59863', '650100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59864', '650102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59865', '650103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59866', '650104', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59867', '650105', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59868', '650106', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59869', '650107', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59870', '650109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59871', '650121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59872', '650200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59873', '650202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59874', '650203', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59875', '650204', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59876', '650205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59877', '650400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59878', '650402', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59879', '650421', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59880', '650422', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59881', '652200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59882', '652201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59883', '652222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59884', '652223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59885', '652300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59886', '652301', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59887', '652302', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59888', '652323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59889', '652324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59890', '652325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59891', '652327', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59892', '652328', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59893', '652700', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59894', '652701', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59895', '652702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59896', '652722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59897', '652723', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59898', '652800', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59899', '652801', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59900', '652822', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59901', '652823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59902', '652824', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59903', '652825', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59904', '652826', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59905', '652827', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59906', '652828', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59907', '652829', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59908', '652900', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59909', '652901', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59910', '652922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59911', '652923', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59912', '652924', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59913', '652925', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59914', '652926', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59915', '652927', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59916', '652928', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59917', '652929', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59918', '653000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59919', '653001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59920', '653022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59921', '653023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59922', '653024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59923', '653100', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59924', '653101', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59925', '653121', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59926', '653122', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59927', '653123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59928', '653124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59929', '653125', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59930', '653126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59931', '653127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59932', '653128', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59933', '653129', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59934', '653130', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59935', '653131', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59936', '653200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59937', '653201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59938', '653221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59939', '653222', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59940', '653223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59941', '653224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59942', '653225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59943', '653226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59944', '653227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59945', '654000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59946', '654002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59947', '654003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59948', '654004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59949', '654021', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59950', '654022', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59951', '654023', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59952', '654024', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59953', '654025', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59954', '654026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59955', '654027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59956', '654028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59957', '654200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59958', '654201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59959', '654202', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59960', '654221', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59961', '654223', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59962', '654224', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59963', '654225', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59964', '654226', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59965', '654300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59966', '654301', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59967', '654321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59968', '654322', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59969', '654323', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59970', '654324', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59971', '654325', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59972', '654326', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59973', '659001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59974', '659002', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59975', '659003', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59976', '659004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59977', '710000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59978', '810000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59979', '820000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59980', '990001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59981', '990020', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59982', '990040', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59983', '990061', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59984', '990102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59985', '990126', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59986', '990141', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59987', '990150', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59988', '990170', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59989', '990190', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59990', '990217', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59991', '990235', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59992', '990247', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59993', '990264', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59994', '990277', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59995', '990289', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59996', '990300', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59997', '990312', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59998', '990318', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('59999', '990333', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60000', '990340', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60001', '990347', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60002', '990359', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60003', '990373', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60004', '990388', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60005', '990406', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60006', '990420', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60007', '990430', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60008', '990440', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60009', '990444', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60010', '990457', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60011', '990466', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60012', '990475', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60013', '990490', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60014', '990498', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60015', '990510', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60016', '990517', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60017', '990530', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60018', '990534', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60019', '990551', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60020', '990564', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60021', '990573', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60022', '990581', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60023', '990588', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60024', '990595', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60025', '990603', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60026', '990610', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60027', '990618', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60028', '990626', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60029', '990631', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60030', '990639', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60031', '990647', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60032', '990654', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60033', '990669', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60034', '990679', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60035', '990686', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60036', '990691', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60037', '990699', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60038', '990706', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60039', '990712', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60040', '990718', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60041', '990727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60042', '990748', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60043', '990765', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60044', '990775', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60045', '990784', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60046', '990793', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60047', '990803', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60048', '990821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60049', '990833', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60050', '990838', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60051', '990849', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60052', '990856', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60053', '990867', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60054', '990875', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60055', '990889', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60056', '990899', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60057', '990911', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60058', '990919', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60059', '990934', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60060', '990945', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60061', '990953', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60062', '990962', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60063', '990972', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60064', '990981', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60065', '990988', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60066', '990995', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60067', '991001', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60068', '991015', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60069', '991027', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60070', '991039', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60071', '991047', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60072', '991053', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60073', '991060', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60074', '991070', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60075', '991077', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60076', '991082', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60077', '991092', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60078', '991102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60079', '991115', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60080', '991124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60081', '991132', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60082', '991139', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60083', '991147', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60084', '991152', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60085', '991157', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60086', '991169', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60087', '991177', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60088', '991186', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60089', '991195', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60090', '991201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60091', '991209', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60092', '991214', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60093', '991219', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60094', '991227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60095', '991241', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60096', '991248', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60097', '991254', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60098', '991267', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60099', '991280', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60100', '991292', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60101', '991303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60102', '991311', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60103', '991321', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60104', '991334', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60105', '991339', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60106', '991345', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60107', '991359', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60108', '991362', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60109', '991366', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60110', '991386', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60111', '991400', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60112', '991411', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60113', '991423', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60114', '991436', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60115', '991447', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60116', '991461', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60117', '991470', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60118', '991477', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60119', '991485', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60120', '991498', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60121', '991512', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60122', '991525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60123', '991532', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60124', '991537', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60125', '991542', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60126', '991545', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60127', '991558', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60128', '991571', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60129', '991580', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60130', '991588', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60131', '991598', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60132', '991613', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60133', '991624', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60134', '991641', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60135', '991652', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60136', '991662', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60137', '991668', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60138', '991681', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60139', '991692', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60140', '991699', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60141', '991706', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60142', '991712', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60143', '991719', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60144', '991733', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60145', '991743', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60146', '991754', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60147', '991765', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60148', '991776', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60149', '991790', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60150', '991797', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60151', '991807', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60152', '991823', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60153', '991833', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60154', '991837', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60155', '991843', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60156', '991851', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60157', '991860', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60158', '991871', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60159', '991879', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60160', '991883', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60161', '991892', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60162', '991902', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60163', '991912', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60164', '991918', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60165', '991931', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60166', '991944', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60167', '991954', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60168', '991964', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60169', '991969', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60170', '991976', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60171', '991988', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60172', '992000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60173', '992013', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60174', '992019', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60175', '992028', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60176', '992042', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60177', '992053', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60178', '992064', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60179', '992070', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60180', '992078', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60181', '992084', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60182', '992092', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60183', '992102', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60184', '992109', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60185', '992118', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60186', '992124', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60187', '992133', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60188', '992138', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60189', '992145', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60190', '992150', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60191', '992159', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60192', '992164', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60193', '992171', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60194', '992177', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60195', '992190', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60196', '992201', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60197', '992219', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60198', '992228', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60199', '992233', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60200', '992238', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60201', '992243', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60202', '992249', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60203', '992257', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60204', '992270', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60205', '992276', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60206', '992288', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60207', '992295', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60208', '992303', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60209', '992308', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60210', '992319', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60211', '992339', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60212', '992346', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60213', '992352', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60214', '992360', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60215', '992367', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60216', '992378', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60217', '992386', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60218', '992392', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60219', '992398', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60220', '992410', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60221', '992420', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60222', '992427', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60223', '992438', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60224', '992446', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60225', '992454', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60226', '992463', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60227', '992469', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60228', '992474', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60229', '992488', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60230', '992507', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60231', '992525', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60232', '992537', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60233', '992542', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60234', '992557', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60235', '992575', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60236', '992593', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60237', '992610', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60238', '992623', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60239', '992638', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60240', '992648', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60241', '992658', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60242', '992664', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60243', '992676', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60244', '992682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60245', '992693', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60246', '992702', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60247', '992713', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60248', '992727', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60249', '992736', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60250', '992740', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60251', '992753', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60252', '992759', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60253', '992764', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60254', '992768', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60255', '992789', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60256', '992821', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60257', '992833', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60258', '992849', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60259', '992863', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60260', '992868', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60261', '992881', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60262', '992896', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60263', '992908', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60264', '992922', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60265', '992934', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60266', '992947', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60267', '992958', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60268', '992966', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60269', '992975', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60270', '992978', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60271', '992984', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60272', '992992', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60273', '992997', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60274', '993004', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60275', '993012', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60276', '993020', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60277', '993029', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60278', '993037', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60279', '993047', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60280', '993056', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60281', '993065', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60282', '993080', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60283', '993085', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60284', '993090', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60285', '993096', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60286', '993103', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60287', '993110', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60288', '993116', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60289', '993123', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60290', '993127', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60291', '993133', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60292', '993139', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60293', '993143', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60294', '993153', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60295', '993162', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60296', '993166', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60297', '993175', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60298', '993180', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60299', '993190', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60300', '993200', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60301', '993205', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60302', '993218', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60303', '993227', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60304', '993238', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60305', '993246', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60306', '993650', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60307', '993682', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60308', '993722', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60309', '993749', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60310', '993782', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60311', '993810', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60312', '993834', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60313', '993846', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60314', '993854', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60315', '993870', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60316', '993893', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60317', '993913', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60318', '993930', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60319', '993942', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60320', '993956', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60321', '993967', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60322', '993983', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60323', '993997', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60324', '994012', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60325', '994018', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60326', '994026', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60327', '994045', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60328', '994055', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60329', '994056', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60330', '994057', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60331', '994058', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60332', '994059', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60333', '994060', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60334', '994061', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60335', '994062', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60336', '441900003000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60337', '441900004000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60338', '441900005000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60339', '441900006000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60340', '441900101000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60341', '441900102000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60342', '441900103000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60343', '441900104000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60344', '441900105000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60345', '441900106000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60346', '441900107000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60347', '441900108000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60348', '441900109000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60349', '441900110000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60350', '441900111000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60351', '441900112000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60352', '441900113000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60353', '441900114000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60354', '441900115000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60355', '441900116000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60356', '441900117000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60357', '441900118000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60358', '441900119000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60359', '441900121000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60360', '441900122000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60361', '441900123000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60362', '441900124000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60363', '441900125000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60364', '441900126000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60365', '441900127000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60366', '441900128000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60367', '441900129000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60368', '442000001000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60369', '442000002000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60370', '442000003000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60371', '442000004000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60372', '442000005000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60373', '442000006000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60374', '442000100000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60375', '442000101000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60376', '442000102000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60377', '442000103000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60378', '442000104000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60379', '442000105000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60380', '442000106000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60381', '442000107000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60382', '442000108000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60383', '442000109000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60384', '442000110000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60385', '442000111000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60386', '442000112000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60387', '442000113000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60388', '442000114000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60389', '442000115000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60390', '442000116000', null, null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('60391', '442000117000', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `id` int(11) NOT NULL,
  `iosVersion` varchar(255) DEFAULT NULL,
  `androidVersion` varchar(255) DEFAULT NULL,
  `androidPath` varchar(255) DEFAULT NULL,
  `iosPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('1', '1.0', '1.0', 'apk\\app-release.apk', '123123');
