/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : zykj

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-05-16 15:48:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `advert_record`
-- ----------------------------
DROP TABLE IF EXISTS `advert_record`;
CREATE TABLE `advert_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `advertId` bigint(20) NOT NULL,
  `readStatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advert_record
-- ----------------------------
INSERT INTO `advert_record` VALUES ('1', '2', '6', '1');
INSERT INTO `advert_record` VALUES ('2', '21', '5', '0');
INSERT INTO `advert_record` VALUES ('3', '2', '5', '0');
INSERT INTO `advert_record` VALUES ('4', '21', '6', '0');
INSERT INTO `advert_record` VALUES ('5', '7', '6', '0');
INSERT INTO `advert_record` VALUES ('6', '21', '7', '0');
INSERT INTO `advert_record` VALUES ('7', '2', '7', '0');
INSERT INTO `advert_record` VALUES ('8', '7226', '1', '1');
INSERT INTO `advert_record` VALUES ('9', '7236', '8', '0');
INSERT INTO `advert_record` VALUES ('10', '7235', '8', '0');
INSERT INTO `advert_record` VALUES ('11', '7237', '8', '0');
INSERT INTO `advert_record` VALUES ('12', '7238', '8', '0');
INSERT INTO `advert_record` VALUES ('13', '7236', '9', '1');
INSERT INTO `advert_record` VALUES ('14', '7235', '9', '0');

-- ----------------------------
-- Table structure for `area`
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
-- Table structure for `bao_admin`
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
-- Table structure for `bao_advert_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `bao_advert_parameter`;
CREATE TABLE `bao_advert_parameter` (
  `time` tinyint(4) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `eachPay` decimal(11,3) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_parameter
-- ----------------------------
INSERT INTO `bao_advert_parameter` VALUES ('48', '50', '0.040', '1');

-- ----------------------------
-- Table structure for `bao_advert_red`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_red
-- ----------------------------
INSERT INTO `bao_advert_red` VALUES ('1', null, '2', '2', '1.0', 'ALL', '广告红包', '1.0', '2017-05-04 11:30:52', '1', '0', '2017-05-04 11:30:52', '1', null);
INSERT INTO `bao_advert_red` VALUES ('2', null, '2', '2', '1.0', 'ALL', '广告红包', '1.0', '2017-05-04 11:53:00', '1', '0', '2017-05-04 11:53:00', '1', null);
INSERT INTO `bao_advert_red` VALUES ('3', '8', '5', '2', '4.0', 'ALL', '广告红包', '2.0', '2017-05-04 16:20:25', '1', '0', '2017-05-04 16:20:25', '1', null);
INSERT INTO `bao_advert_red` VALUES ('4', '9', '2', '0', '3.0', 'ALL', '广告红包', '0.00', '2017-05-05 14:30:07', '7226', '0', '2017-05-05 14:30:07', '7226', null);

-- ----------------------------
-- Table structure for `bao_advert_red_click`
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_advert_red_click
-- ----------------------------
INSERT INTO `bao_advert_red_click` VALUES ('1', '0.0', '4.0', '0', '未填写', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.0', '3', '2017-05-04 16:41:21', '7226', '0', '2017-05-04 16:41:21', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('2', '0.0', '4.0', '0', '未填写', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.0', '3', '2017-05-04 16:42:57', '7226', '0', '2017-05-04 16:42:57', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('3', '1.0', '3.0', '0', '未填写', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '1.0', '3', '2017-05-04 16:50:42', '7226', '0', '2017-05-04 16:50:42', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('4', '0.0', '3.0', '0', '未填写', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '0.0', '3', '2017-05-04 17:38:01', '7226', '0', '2017-05-04 17:38:01', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('5', '1.0', '2.0', '0', '未填写', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', '1.0', '3', '2017-05-04 17:47:09', '7226', '0', '2017-05-04 17:47:09', '7226');
INSERT INTO `bao_advert_red_click` VALUES ('6', '2.0', '1.0', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '2.0', '4', '2017-05-05 14:34:21', '7236', '0', '2017-05-05 14:34:21', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('7', '1.0', '0.0', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '1.0', '4', '2017-05-05 14:35:31', '7236', '0', '2017-05-05 14:35:31', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('8', '1.0', '0.0', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '1.0', '4', '2017-05-05 14:36:56', '7236', '0', '2017-05-05 14:36:56', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('9', '0.0', '3.0', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.0', '4', '2017-05-05 14:41:36', '7236', '0', '2017-05-05 14:41:36', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('10', '3.0', '0.0', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '3.0', '4', '2017-05-05 14:42:04', '7236', '0', '2017-05-05 14:42:04', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('11', '0.7800000000000000266453525910037569701671600341796875', '2.2199999999999999733546474089962430298328399658203125', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.7800000000000000266453525910037569701671600341796875', '4', '2017-05-05 14:55:42', '7236', '0', '2017-05-05 14:55:42', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('12', '0.04', '2.96', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '0.04', '4', '2017-05-05 14:58:49', '7236', '0', '2017-05-05 14:58:49', '7236');
INSERT INTO `bao_advert_red_click` VALUES ('13', '2.96', '0.00', '0', ' 哈哈', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '2.96', '4', '2017-05-05 14:59:34', '7236', '0', '2017-05-05 14:59:34', '7236');

-- ----------------------------
-- Table structure for `bao_adviertisement`
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
  `image` varchar(255) DEFAULT NULL,
  `redMoney` decimal(11,2) DEFAULT NULL,
  `hasGetMoney` decimal(11,2) DEFAULT NULL,
  `readNum` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `pay` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_adviertisement
-- ----------------------------
INSERT INTO `bao_adviertisement` VALUES ('1', '7226', '1123', '123123', '1', null, null, null, '1.00', '1.00', '2', '1', '2017-04-01 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('2', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '1.00', '1.00', '0', '1', '2017-04-01 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('3', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '1.00', '1.00', '0', '0', '2017-05-16 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('4', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '0.78', '1.00', '0', '0', '2017-05-16 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('5', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '0.89', '1.00', '0', '0', '2017-05-16 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('6', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '1.20', '1.00', '5', '0', '2017-05-16 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('7', '7226', '123123', 'è¯·é®è¯·é®', '1', '21,2,', null, '', '1.00', '1.00', '0', '0', '2017-05-16 11:51:33', '2.00');
INSERT INTO `bao_adviertisement` VALUES ('8', '7226', '123123', '请问请问', '1', '7226,7236,7235,7237,7238,', null, '', '4.00', '4.00', '0', '0', '2017-05-16 11:51:33', '8.00');
INSERT INTO `bao_adviertisement` VALUES ('9', '7226', '123123', '请问请问', '1', '7236,7235,', null, '', '3.00', '2.00', '12', '0', '2017-05-16 11:51:33', '6.00');

-- ----------------------------
-- Table structure for `bao_appusers`
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_appusers
-- ----------------------------
INSERT INTO `bao_appusers` VALUES ('1', null, null, null, 'images/1493029104645.png', null, '2', null, '18263826828', null, '0', '2017-04-24 18:18:25', null, '0', '2017-04-25 16:13:27', '7226', '0', null, 'e3ceb5881a0a1fdaad01296d7554868d', null, null, '7226', 'ee873735c901d9553f67c5740df23fed', '0', '0000', '0', '24', 'java软件工程师', '打球', null, null);
INSERT INTO `bao_appusers` VALUES ('3', null, null, '1', 'images/1493130002921.png', '北京市 海淀区', '1', null, '18575618939', null, '0', '2017-04-25 22:20:03', null, '0', '2017-04-25 22:20:03', null, '0', null, null, null, null, null, 'a2808a36ebec317fb955eb51db523bdd', '0', '0000', null, '26', '设计师', '跳舞', null, null);
INSERT INTO `bao_appusers` VALUES ('4', null, null, '2', 'images/1493130068851.png', '成都市', '1', null, '14763766689', null, '0', '2017-04-25 22:21:09', null, '0', '2017-04-27 23:39:17', '7236', '0', null, null, null, null, '7236', '0b8f57defc265c296a44e8e6f2c0edda', '0', '0000', null, '18', 'av主播', '打飞机', null, null);
INSERT INTO `bao_appusers` VALUES ('5', null, null, '3', 'images/1493130102326.png', '北京市 海淀区', '2', null, '18572651299', null, '0', '2017-04-25 22:21:42', null, '0', '2017-04-28 11:55:55', '7237', '0', null, null, null, null, null, 'b81e19f107d2fb8a8f0697f656e57722', '0', '0000', null, '20', '色情主播', '打球,跳舞,啪啪啪', null, null);
INSERT INTO `bao_appusers` VALUES ('6', null, null, '4', 'images/1493965032598.png', null, null, null, '15626405387', null, '0', '2017-05-05 14:17:07', null, '0', '2017-05-05 14:17:07', null, null, null, null, null, null, '7241', null, '0', '0000', null, null, null, null, 'spreadImages/1493965035094spread.png', null);

-- ----------------------------
-- Table structure for `bao_app_callorder`
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_callorder`;
CREATE TABLE `bao_app_callorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '召集令主键ID',
  `users` varchar(255) DEFAULT NULL COMMENT '召集令接收人',
  `content` varchar(255) DEFAULT NULL COMMENT '召集令发布内容',
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_callorder
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_app_citys`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_citys
-- ----------------------------
INSERT INTO `bao_app_citys` VALUES ('1', '123', '123', '2017-04-28 09:34:42', null, '0', '2017-04-28 09:34:42', null);

-- ----------------------------
-- Table structure for `bao_app_code`
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_code
-- ----------------------------
INSERT INTO `bao_app_code` VALUES ('1', '203924', '18575618939', '2017-04-24 17:42:29', null, '0', '2017-04-24 17:42:29', null);
INSERT INTO `bao_app_code` VALUES ('2', '225993', '18575618939', '2017-04-24 17:42:31', null, '0', '2017-04-24 17:42:31', null);
INSERT INTO `bao_app_code` VALUES ('3', '519762', '18575618939', '2017-04-24 17:43:14', null, '0', '2017-04-24 17:43:14', null);
INSERT INTO `bao_app_code` VALUES ('4', '483287', '18575618939', '2017-04-24 17:43:23', null, '0', '2017-04-24 17:43:23', null);
INSERT INTO `bao_app_code` VALUES ('5', '931052', '18575618939', '2017-04-24 17:43:30', null, '0', '2017-04-24 17:43:30', null);
INSERT INTO `bao_app_code` VALUES ('6', '673994', '18575618939', '2017-04-25 09:24:12', null, '0', '2017-04-25 09:24:12', null);
INSERT INTO `bao_app_code` VALUES ('7', '274149', '18575618939', '2017-04-28 16:07:41', null, '0', '2017-04-28 16:07:41', null);
INSERT INTO `bao_app_code` VALUES ('8', '102988', '15626405387', '2017-04-28 16:09:30', null, '0', '2017-04-28 16:09:30', null);
INSERT INTO `bao_app_code` VALUES ('9', '963950', '15626405387', '2017-05-05 14:08:58', null, '0', '2017-05-05 14:08:58', null);

-- ----------------------------
-- Table structure for `bao_app_evaluate`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_app_experience`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_app_lable`
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_lable`;
CREATE TABLE `bao_app_lable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_lable
-- ----------------------------
INSERT INTO `bao_app_lable` VALUES ('5', '123', null, null, null, null, null);
INSERT INTO `bao_app_lable` VALUES ('6', '123', null, null, null, null, null);
INSERT INTO `bao_app_lable` VALUES ('7', '123', null, null, null, null, null);
INSERT INTO `bao_app_lable` VALUES ('8', '123', null, null, null, null, null);
INSERT INTO `bao_app_lable` VALUES ('12', '123213123驱蚊器', null, null, null, null, null);

-- ----------------------------
-- Table structure for `bao_app_order`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_order
-- ----------------------------
INSERT INTO `bao_app_order` VALUES ('1', null, '2017-05-15 17:51:45', '7226', null, null, null, null, '6', '12', null, null, null);
INSERT INTO `bao_app_order` VALUES ('2', null, '2017-04-01 17:54:50', '7226', null, null, null, null, '6', '45', null, null, null);

-- ----------------------------
-- Table structure for `bao_app_payment`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_app_user`
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_user`;
CREATE TABLE `bao_app_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `app_type` int(1) unsigned DEFAULT '0' COMMENT '0:ios,1:android',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_user
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_app_uservip`
-- ----------------------------
DROP TABLE IF EXISTS `bao_app_uservip`;
CREATE TABLE `bao_app_uservip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdTime` datetime DEFAULT NULL,
  `overTime` datetime DEFAULT NULL,
  `vipTypeId` bigint(20) DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_app_uservip
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_area`
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
-- Table structure for `bao_city`
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
-- Table structure for `bao_customer_service`
-- ----------------------------
DROP TABLE IF EXISTS `bao_customer_service`;
CREATE TABLE `bao_customer_service` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `phoneNumber` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `avatar` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '关于',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0 申请 1通过',
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bao_customer_service
-- ----------------------------
INSERT INTO `bao_customer_service` VALUES ('1', '我是客服', '18575618939', '123123', '123', '1', '1', '二级', '123123', '0', '2017-05-14 18:14:18');

-- ----------------------------
-- Table structure for `bao_image`
-- ----------------------------
DROP TABLE IF EXISTS `bao_image`;
CREATE TABLE `bao_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `objectId` bigint(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `orderBy` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_image
-- ----------------------------
INSERT INTO `bao_image` VALUES ('1', '1', 'EXPERIENCE', '1,2', '10', '2017-05-05 10:10:59', '1', '0', '2017-05-05 10:10:59', '1', null, null);

-- ----------------------------
-- Table structure for `bao_im_app_red`
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
-- Table structure for `bao_im_app_red_click`
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
-- Table structure for `bao_im_friend`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_im_group`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_im_group_grade`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_im_group_member`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_im_request`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_im_request
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_invite`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_invite
-- ----------------------------
INSERT INTO `bao_invite` VALUES ('1', '7237', '日狗大队', '2', null, '中国北京市海淀区黑泉路', '116.379572', '40.039063', '2', '2017-05-10 23:10:00', '12å°æ¶', '2017-05-10 23:06:17', '10', null, '2017-05-14 18:55:31', null);
INSERT INTO `bao_invite` VALUES ('2', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:22', '1', null, null, '2017-05-16 09:36:00');
INSERT INTO `bao_invite` VALUES ('3', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:22', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('4', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:24', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('5', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:24', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('6', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:27', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('7', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:27', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('8', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:31', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('9', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:54', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('10', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:22:55', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('11', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:30', '11', '2017-05-11 15:23:06', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('12', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', null, '2017-05-11 15:20:30', '11', '2017-05-11 15:23:53', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('13', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', null, '2017-05-11 15:20:30', '11', '2017-05-11 15:24:31', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('14', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', null, '2017-05-11 15:30:10', '11', '2017-05-11 15:28:20', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('15', '7226', 'iOS', '0', null, 'jinan', '37.785834', '-122.406417', '4', '2017-05-11 15:20:00', '11', '2017-05-11 17:10:37', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('16', '7237', '2017.5.11', '200', null, '中国北京市海淀区黑泉路', '116.379585', '40.039034', '4', '2017-05-11 22:44:00', '12å°æ¶', '2017-05-11 22:28:04', '10', null, null, null);
INSERT INTO `bao_invite` VALUES ('17', '7236', '啊啊啊啊啊', '2', null, '中国北京市海淀区黑泉路', '116.379581', '40.039029', '2', '2017-05-12 23:35:00', '12å°æ¶', '2017-05-11 23:35:43', '10', null, '2017-05-14 22:42:06', null);
INSERT INTO `bao_invite` VALUES ('18', '7236', '哈哈哈', '11', null, '中国山东省济宁市兖州市富阳路', '116.819907', '35.538684', '0', '2021-10-15 11:38:00', '12å°æ¶', '2017-05-12 11:39:15', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('19', '7226', '测试', '0', null, '济南', '37.785834', '-122.406417', '4', '2017-05-13 16:32:00', '0', '2017-05-12 15:32:59', '1', null, null, null);
INSERT INTO `bao_invite` VALUES ('20', '7237', '我的哥。', '2', null, '中国北京市海淀区黑泉路', '116.379557', '40.039059', '4', '2017-05-14 23:58:00', '2017-05-14 20:58', '2017-05-14 17:58:23', '2', null, null, '2017-05-14 23:59:00');
INSERT INTO `bao_invite` VALUES ('21', '7237', '我的哥。', '2', null, '中国北京市海淀区黑泉路', '116.379557', '40.039059', '4', '2017-05-14 23:58:00', '2017-05-14 20:58', '2017-05-14 17:58:25', '2', null, null, '2017-05-14 23:59:00');
INSERT INTO `bao_invite` VALUES ('22', '7236', '啦啦啦', '3', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '4', '2017-05-14 18:37:00', '2017-05-14 19:35', '2017-05-14 18:34:32', '3', null, null, null);
INSERT INTO `bao_invite` VALUES ('23', '7236', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '4', '2017-05-14 21:41:00', '2017-05-14 18:41', '2017-05-14 18:38:23', '3', null, null, null);
INSERT INTO `bao_invite` VALUES ('24', '7236', '来了来了', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '0', '2017-05-17 18:45:00', '2017-05-14 18:45', '2017-05-14 18:45:18', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('25', '7236', '来了来了', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '0', '2017-05-17 18:45:00', '2017-05-14 18:45', '2017-05-14 18:45:25', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('26', '7236', '来了来了', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '0', '2017-05-17 18:45:00', '2017-05-14 18:45', '2017-05-14 18:45:44', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('27', '7236', '来了来了', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '0', '2017-05-17 18:45:00', '2017-05-14 18:45', '2017-05-14 18:47:06', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('28', '7236', '明后', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820079', '35.535712', '4', '2017-05-15 19:39:00', '2017-05-15 19:39', '2017-05-14 19:39:46', '3', null, null, '2017-05-16 09:05:00');
INSERT INTO `bao_invite` VALUES ('29', '7236', '明后', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820079', '35.535712', '4', '2017-05-15 19:39:00', '2017-05-15 19:39', '2017-05-14 19:41:01', '3', null, null, '2017-05-16 09:05:25');
INSERT INTO `bao_invite` VALUES ('30', '7236', '来了来了', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820152', '35.535578', '0', '2017-05-17 18:45:00', '2017-05-14 18:45', '2017-05-14 19:45:58', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('31', '7237', '发个出大事了', '2', null, '中国北京市海淀区黑泉路', '116.379578', '40.039075', '4', '2017-05-14 20:38:00', '2017-05-14 23:39', '2017-05-14 20:39:15', '2', null, null, null);
INSERT INTO `bao_invite` VALUES ('32', '7236', '明后', '1', null, '中国山东省济宁市兖州市龙桥南路', '116.820079', '35.535712', '4', '2017-05-15 19:39:00', '2017-05-15 19:39', '2017-05-14 21:51:02', '3', null, null, '2017-05-16 09:05:28');

-- ----------------------------
-- Table structure for `bao_invite_record`
-- ----------------------------
DROP TABLE IF EXISTS `bao_invite_record`;
CREATE TABLE `bao_invite_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `inviteId` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ifPay` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_invite_record
-- ----------------------------
INSERT INTO `bao_invite_record` VALUES ('3', '7236', '2', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('4', '7237', '2', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('5', '7236', '2', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('6', '7236', '2', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('7', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('8', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('9', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('10', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('11', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('12', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('13', '7226', '2', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('14', '7226', '3', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('15', '7226', '4', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('16', '7226', '5', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('17', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('18', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('19', '7236', '1', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('20', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('21', '7237', '1', '2', '0');
INSERT INTO `bao_invite_record` VALUES ('22', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('23', '7237', '15', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('24', '7236', '15', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('25', '72362', '1', '1', '0');
INSERT INTO `bao_invite_record` VALUES ('26', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('27', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('28', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('29', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('30', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('31', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('32', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('33', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('34', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('35', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('36', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('37', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('38', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('39', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('40', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('41', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('42', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('43', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('44', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('45', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('46', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('47', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('48', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('49', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('50', '7236', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('51', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('52', '7237', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('53', '7226', '1', '0', '0');
INSERT INTO `bao_invite_record` VALUES ('54', '7236', '1', '0', '0');

-- ----------------------------
-- Table structure for `bao_mobile_user`
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
  PRIMARY KEY (`mu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_mobile_user
-- ----------------------------
INSERT INTO `bao_mobile_user` VALUES ('1', '7226', '116.820201', '35.538817', '2017-04-24 19:02:24', '7226', '0', '2017-04-24 19:02:24', '7226', '0', '1');
INSERT INTO `bao_mobile_user` VALUES ('2', '7236', '116.820201', '35.538817', '2017-05-05 17:25:35', '7236', '0', '2017-05-05 17:25:35', '7236', '1', '1');
INSERT INTO `bao_mobile_user` VALUES ('3', '30', '116.820201', '35.538817', '2017-05-05 15:14:28', '30', '0', '2017-05-05 16:54:08', '30', '1', null);
INSERT INTO `bao_mobile_user` VALUES ('4', '0', '116.819943', '35.538706', '2017-05-05 15:13:25', '0', '0', '2017-05-05 16:09:42', '0', '1', null);
INSERT INTO `bao_mobile_user` VALUES ('5', '5', '116.819943', '35.538706', '2017-05-05 16:52:11', '5', '0', '2017-05-05 16:52:11', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('6', '5', '116.819943', '35.538706', '2017-05-05 16:52:12', '5', '0', '2017-05-05 16:52:12', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('7', '5', '116.819943', '35.538706', '2017-05-05 16:52:12', '5', '0', '2017-05-05 16:52:12', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('8', '5', '116.819943', '35.538706', '2017-05-05 16:52:42', '5', '0', '2017-05-05 16:52:42', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('9', '5', '116.819943', '35.538706', '2017-05-05 16:52:42', '5', '0', '2017-05-05 16:52:42', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('10', '5', '116.819943', '35.538706', '2017-05-05 16:53:15', '5', '0', '2017-05-05 16:53:15', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('11', '5', '116.819943', '35.538706', '2017-05-05 16:53:15', '5', '0', '2017-05-05 16:53:15', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('12', '5', '116.819943', '35.538706', '2017-05-05 16:54:16', '5', '0', '2017-05-05 16:54:16', '5', null, null);
INSERT INTO `bao_mobile_user` VALUES ('13', '5', '116.819943', '35.538706', '2017-05-05 16:54:16', '5', '0', '2017-05-05 16:54:16', '5', null, null);

-- ----------------------------
-- Table structure for `bao_order`
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
) ENGINE=MyISAM AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_order
-- ----------------------------
INSERT INTO `bao_order` VALUES ('293', '0', '0', '7226', '0', '0', '0', '0', '1493887681', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('294', '0', '0', '7226', '1', '0', '0', '0', '1493887842', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('295', '0', '0', '7226', '0', '0', '0', '0', '1493890690', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('296', '0', '0', '7226', '1', '0', '0', '0', '1493891229', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('297', '0', '0', '7236', '2', '0', '0', '0', '1493966061', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('298', '0', '0', '7236', '1', '0', '0', '0', '1493966216', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('299', '0', '0', '7236', '0', '0', '0', '0', '1493966496', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('300', '0', '0', '7236', '3', '0', '0', '0', '1493966524', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('301', '0', '0', '7236', '1', '0', '0', '0', '1493967344', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('302', '0', '0', '7236', '0', '0', '0', '0', '1493967529', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('303', '0', '0', '7236', '3', '0', '0', '0', '1493967574', null, '0', null, '8', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('304', '0', '0', '7226', '0', '0', '0', '0', '1494482610', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('305', '0', '0', '7226', '0', '0', '0', '0', '1494482677', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('306', '0', '0', '7226', '0', '0', '0', '0', '1494482690', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('307', '0', '0', '7226', '0', '0', '0', '0', '1494489315', null, '0', null, '9', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('308', '0', '0', '7226', '0', '0', '0', '0', '1494579115', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('309', '0', '0', '7226', '0', '0', '0', '0', '1494579120', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('310', '0', '0', '7237', '2', '0', '0', '0', '1494579240', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('311', '0', '0', '7237', '2', '0', '0', '0', '1494579388', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('312', '0', '0', '7237', '2', '0', '0', '0', '1494579460', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('313', '0', '0', '7237', '2', '0', '0', '0', '1494579475', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('314', '0', '0', '7237', '2', '0', '0', '0', '1494579614', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('315', '0', '0', '7237', '2', '0', '0', '0', '1494579706', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('316', '0', '0', '7236', '0', '0', '0', '0', '1494583561', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('317', '0', '0', '7236', '0', '0', '0', '0', '1494583567', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('318', '0', '0', '7236', '0', '0', '0', '0', '1494810990', null, '0', null, '10', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('319', '0', '0', '7236', '1', '0', '0', '0', '1494896700', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('320', '0', '0', '7236', '1', '0', '0', '0', '1494896725', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('321', '0', '0', '7236', '1', '0', '0', '0', '1494896728', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('322', '0', '0', '7226', '0', '0', '0', '0', '1494898560', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('323', '0', '0', '7236', '0', '0', '0', '0', '1494898560', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('324', '0', '0', '7237', '0', '0', '0', '0', '1494898560', null, '0', null, '11', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('325', '0', '0', '7226', '0', '0', '0', '0', '1494913208', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('326', '0', '0', '7226', '0', '0', '0', '0', '1494913213', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('327', '0', '0', '7226', '0', '0', '0', '0', '1494913225', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('328', '0', '0', '7226', '0', '0', '0', '0', '1494913225', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('329', '0', '0', '7226', '0', '0', '0', '0', '1494913227', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('330', '0', '0', '7226', '0', '0', '0', '0', '1494913227', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('331', '0', '0', '7226', '0', '0', '0', '0', '1494913230', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('332', '0', '0', '7226', '0', '0', '0', '0', '1494913230', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('333', '0', '0', '7226', '0', '0', '0', '0', '1494913233', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('334', '0', '0', '7226', '0', '0', '0', '0', '1494913233', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('335', '0', '0', '7226', '0', '0', '0', '0', '1494913236', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('336', '0', '0', '7226', '0', '0', '0', '0', '1494913236', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('337', '0', '0', '7226', '0', '0', '0', '0', '1494913239', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('338', '0', '0', '7226', '0', '0', '0', '0', '1494913239', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('339', '0', '0', '7226', '0', '0', '0', '0', '1494913314', null, '0', null, '14', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('340', '0', '0', '7226', '0', '0', '0', '0', '1494913314', null, '0', null, '14', '0', '0', '0');

-- ----------------------------
-- Table structure for `bao_platform_menu`
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

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
INSERT INTO `bao_platform_menu` VALUES ('20', '群发配置', 'advertManage.do', '1', '', 'open', 'icon-item', '2017-05-04 00:00:00', '3', '0', '2017-05-04 00:00:00', '3');
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

-- ----------------------------
-- Table structure for `bao_platform_role`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_platform_role
-- ----------------------------
INSERT INTO `bao_platform_role` VALUES ('1', '超级管理员', '1,2,3,4,5,6,7,9,10,11,13,19,24,25,26,27,28,29,20,21,22,23,30', '2017-02-06 21:09:02', null, '0', null, null, null);
INSERT INTO `bao_platform_role` VALUES ('2', '客服', '1,6,7,9,10,11,13,19,24,25,26,27,28,29,20,21,22,23', '2017-05-16 13:13:40', null, '0', '2017-05-16 13:13:40', null, '');

-- ----------------------------
-- Table structure for `bao_platform_user`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_platform_user
-- ----------------------------
INSERT INTO `bao_platform_user` VALUES ('1', 'admin', '4297f44b13955235245b2497399d7a93', '1', '18510829662', '0@0.com', null, null, '2017-04-01 00:00:00', null, '0', '2017-04-01 00:00:00', null, '0', '1', '1', '超级管理员');
INSERT INTO `bao_platform_user` VALUES ('3', 'root', '4297f44b13955235245b2497399d7a93', '1', '18510829661', '0@0.com', null, null, '2017-04-01 00:00:00', null, '0', '2017-04-01 00:00:00', null, '0', '1', '1', '超级管理员1');
INSERT INTO `bao_platform_user` VALUES ('4', 'test', '4297f44b13955235245b2497399d7a93', '1', '123123', '123123', null, null, '2017-04-28 00:00:00', null, '0', '2017-04-28 00:00:00', null, '0', '1', '2', '123123');

-- ----------------------------
-- Table structure for `bao_recharge_card`
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
-- Table structure for `bao_recharge_record`
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_recharge_record
-- ----------------------------
INSERT INTO `bao_recharge_record` VALUES ('1', '1', '123', '1', '123', '1', null, null, '0', null, null, '1');
INSERT INTO `bao_recharge_record` VALUES ('2', null, '0.0', '8', null, null, '2017-05-04 16:48:08', '7226', '0', '2017-05-04 16:48:08', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('3', null, '1.0', '8', null, null, '2017-05-04 16:50:42', '7226', '0', '2017-05-04 16:50:42', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('4', null, '0.0', '8', null, null, '2017-05-04 17:38:21', '7226', '0', '2017-05-04 17:38:21', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('5', null, '1.0', '8', null, null, '2017-05-04 17:47:09', '7226', '0', '2017-05-04 17:47:09', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('6', null, '2.0', '8', null, null, '2017-05-05 14:34:21', '7236', '0', '2017-05-05 14:34:21', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('7', null, '1.0', '8', null, null, '2017-05-05 14:36:56', '7236', '0', '2017-05-05 14:36:56', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('8', null, '0.0', '8', null, null, '2017-05-05 14:41:36', '7236', '0', '2017-05-05 14:41:36', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('9', null, '3.0', '8', null, null, '2017-05-05 14:42:04', '7236', '0', '2017-05-05 14:42:04', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('10', null, '0.7800000000000000266453525910037569701671600341796875', '8', null, null, '2017-05-05 14:55:45', '7236', '0', '2017-05-05 14:55:45', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('11', null, '0.04', '8', null, null, '2017-05-05 14:58:49', '7236', '0', '2017-05-05 14:58:49', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('12', null, '2.96', '8', null, null, '2017-05-05 14:59:34', '7236', '0', '2017-05-05 14:59:34', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('13', null, '0', '9', null, null, '2017-05-11 14:03:30', '7226', '0', '2017-05-11 14:03:30', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('14', null, '0', '9', null, null, '2017-05-11 14:04:37', '7226', '0', '2017-05-11 14:04:37', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('15', null, '0', '9', null, null, '2017-05-11 14:04:50', '7226', '0', '2017-05-11 14:04:50', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('16', null, '0', '9', null, null, '2017-05-11 15:55:15', '7226', '0', '2017-05-11 15:55:15', '7226', null);
INSERT INTO `bao_recharge_record` VALUES ('17', null, '0', '11', null, null, '2017-05-12 16:51:55', '7226', '0', '2017-05-12 16:51:55', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('18', null, '0', '11', null, null, '2017-05-12 16:52:00', '7226', '0', '2017-05-12 16:52:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('19', null, '2', '11', null, null, '2017-05-12 16:54:02', '7237', '0', '2017-05-12 16:54:02', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('20', null, '2', '11', null, null, '2017-05-12 16:56:30', '7237', '0', '2017-05-12 16:56:30', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('21', null, '2', '11', null, null, '2017-05-12 16:57:40', '7237', '0', '2017-05-12 16:57:40', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('22', null, '2', '11', null, null, '2017-05-12 16:57:55', '7237', '0', '2017-05-12 16:57:55', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('23', null, '2', '11', null, null, '2017-05-12 17:00:15', '7237', '0', '2017-05-12 17:00:15', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('24', null, '2', '11', null, null, '2017-05-12 17:01:48', '7237', '0', '2017-05-12 17:01:48', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('25', null, '0', '10', null, null, '2017-05-12 18:06:03', '7236', '0', '2017-05-12 18:06:03', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('26', null, '0', '10', null, null, '2017-05-12 18:06:07', '7236', '0', '2017-05-12 18:06:07', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('27', null, '0', '10', null, null, '2017-05-15 09:16:30', '7236', '0', '2017-05-15 09:16:30', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('28', null, '1', '11', null, null, '2017-05-16 09:05:00', '7236', '0', '2017-05-16 09:05:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('29', null, '1', '11', null, null, '2017-05-16 09:05:25', '7236', '0', '2017-05-16 09:05:25', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('30', null, '1', '11', null, null, '2017-05-16 09:05:28', '7236', '0', '2017-05-16 09:05:28', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('31', null, '0', '11', null, null, '2017-05-16 09:36:00', '7226', '0', '2017-05-16 09:36:00', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('32', null, '0', '11', null, null, '2017-05-16 09:36:00', '7236', '0', '2017-05-16 09:36:00', '7236', '7236');
INSERT INTO `bao_recharge_record` VALUES ('33', null, '0', '11', null, null, '2017-05-16 09:36:00', '7237', '0', '2017-05-16 09:36:00', '7237', '7237');
INSERT INTO `bao_recharge_record` VALUES ('34', null, '1', '12', null, null, '2017-05-16 10:13:19', null, '0', '2017-05-16 10:13:19', null, '7241');
INSERT INTO `bao_recharge_record` VALUES ('35', null, '1', '13', null, null, '2017-05-16 10:13:23', null, '0', '2017-05-16 10:13:23', null, '7241');
INSERT INTO `bao_recharge_record` VALUES ('36', null, '0.00', '14', null, null, '2017-05-16 13:40:10', '7226', '0', '2017-05-16 13:40:10', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('37', null, '0.00', '14', null, null, '2017-05-16 13:40:13', '7226', '0', '2017-05-16 13:40:13', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('38', null, '0.00', '14', null, null, '2017-05-16 13:40:25', '7226', '0', '2017-05-16 13:40:25', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('39', null, '0.00', '14', null, null, '2017-05-16 13:40:25', '7226', '0', '2017-05-16 13:40:25', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('40', null, '0.00', '14', null, null, '2017-05-16 13:40:27', '7226', '0', '2017-05-16 13:40:27', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('41', null, '0.00', '14', null, null, '2017-05-16 13:40:27', '7226', '0', '2017-05-16 13:40:27', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('42', null, '0.00', '14', null, null, '2017-05-16 13:40:30', '7226', '0', '2017-05-16 13:40:30', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('43', null, '0.00', '14', null, null, '2017-05-16 13:40:30', '7226', '0', '2017-05-16 13:40:30', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('44', null, '0.00', '14', null, null, '2017-05-16 13:40:33', '7226', '0', '2017-05-16 13:40:33', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('45', null, '0.00', '14', null, null, '2017-05-16 13:40:33', '7226', '0', '2017-05-16 13:40:33', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('46', null, '0.00', '14', null, null, '2017-05-16 13:40:36', '7226', '0', '2017-05-16 13:40:36', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('47', null, '0.00', '14', null, null, '2017-05-16 13:40:36', '7226', '0', '2017-05-16 13:40:36', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('48', null, '0.00', '14', null, null, '2017-05-16 13:40:39', '7226', '0', '2017-05-16 13:40:39', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('49', null, '0.00', '14', null, null, '2017-05-16 13:40:39', '7226', '0', '2017-05-16 13:40:39', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('50', null, '0.00', '14', null, null, '2017-05-16 13:41:54', '7226', '0', '2017-05-16 13:41:54', '7226', '7226');
INSERT INTO `bao_recharge_record` VALUES ('51', null, '0.00', '14', null, null, '2017-05-16 13:41:54', '7226', '0', '2017-05-16 13:41:54', '7226', '7226');

-- ----------------------------
-- Table structure for `bao_users`
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
  `reg_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(15) DEFAULT NULL,
  `last_time` timestamp NULL DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=7242 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users
-- ----------------------------
INSERT INTO `bao_users` VALUES ('7226', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/yxin/avatar_1_1493101461.png', null, '未填写', '0', '0', '213.00', '1', '0', '2017-05-15 09:19:52', null, '2017-05-15 09:19:52', null, '0', '0', null, '18263826828', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', '0', null, null);
INSERT INTO `bao_users` VALUES ('7236', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', null, ' 哈哈', '0', '0', '12.00', '1', '0', '2017-05-15 09:19:52', null, '2017-05-15 09:19:52', null, '0', '0', null, '14763766689', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', '0', null, null);
INSERT INTO `bao_users` VALUES ('7235', null, '4297f44b13955235245b2497399d7a93', 'images/default.jpg', null, '未填写', '0', '0', '0', '1', '0', '2017-05-15 09:19:52', null, '2017-05-15 09:19:52', null, '0', '0', null, '18575618939', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', null, null, null);
INSERT INTO `bao_users` VALUES ('7237', null, 'e10adc3949ba59abbe56e057f20f883e', 'http://oez2a4f3v.bkt.clouddn.com/FqHspSYV-U-SN86Hv3Xnk8KV6z__', null, '我不做大哥好多年', '0', '0', '12', '1', '0', '2017-05-15 09:19:52', null, '2017-05-15 09:19:52', null, '0', '0', null, '18572651299', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '1', '0', null, null);
INSERT INTO `bao_users` VALUES ('7241', null, '4297f44b13955235245b2497399d7a93', 'images/default.jpg', null, '未填写', '0', '0', '0', '1', '0', '2017-05-15 09:19:52', null, '2017-05-15 09:19:52', null, '0', '0', null, '15626405387', '0', '0', null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0.00', null);

-- ----------------------------
-- Table structure for `bao_users_cash`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_cash`;
CREATE TABLE `bao_users_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未审核1通过2拒绝',
  `reason` text,
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
  PRIMARY KEY (`cash_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_cash
-- ----------------------------
INSERT INTO `bao_users_cash` VALUES ('1', '7226', '212', '2017-05-19 14:04:58', '1', '12', '12', '31', '23', '123', '123', '123', '123', '123', '0', '0.00', '123.00');

-- ----------------------------
-- Table structure for `bao_user_app`
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
-- Table structure for `bao_user_card`
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
-- Table structure for `bao_user_message`
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
-- Table structure for `bao_user_rank`
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
-- Table structure for `bao_user_relation`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_relation
-- ----------------------------
INSERT INTO `bao_user_relation` VALUES ('1', '7226', '7236', '1', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy,http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '123123', '123123', '1', '2017-05-08 12:08:11');
INSERT INTO `bao_user_relation` VALUES ('2', '7226', '7236', '2', 'http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy,http://oez2a4f3v.bkt.clouddn.com/FkhUiD0hB_wHMInB6bGgWc5pGdKy', '123实打实的', '12312312', '1', '2017-05-08 12:08:35');

-- ----------------------------
-- Table structure for `bao_weidian_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weidian_details`;
CREATE TABLE `bao_weidian_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weidian_name` varchar(64) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `business_time` varchar(32) NOT NULL,
  `details` text NOT NULL,
  `pic` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `area_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weidian_details
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_coupon`;
CREATE TABLE `bao_weixin_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(30) DEFAULT '',
  `title` varchar(50) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `photo` varchar(150) DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) DEFAULT '',
  `end_tips` varchar(1024) DEFAULT '',
  `end_photo` varchar(150) DEFAULT '',
  `num` mediumint(8) DEFAULT '0' COMMENT '数量',
  `max_count` mediumint(8) DEFAULT '0',
  `down_count` mediumint(8) DEFAULT '0',
  `use_count` mediumint(8) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `follower_condtion` tinyint(1) DEFAULT '0' COMMENT '关注限制，0:不限,1:必须关注',
  `member_condtion` tinyint(1) DEFAULT NULL,
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_couponsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_couponsn`;
CREATE TABLE `bao_weixin_couponsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_couponsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_goldegg`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_goldegg`;
CREATE TABLE `bao_weixin_goldegg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL COMMENT '参与人数',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `use_tips` varchar(200) NOT NULL COMMENT '简介',
  `stime` date DEFAULT NULL COMMENT '活动开始时间',
  `ltime` date DEFAULT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `end_tips` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL COMMENT '兑奖密码',
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_goldegg
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_goldeggsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_goldeggsn`;
CREATE TABLE `bao_weixin_goldeggsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `egg_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(11) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `isegg` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_goldeggsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_help`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_help`;
CREATE TABLE `bao_weixin_help` (
  `help_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`help_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_help
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helplist`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helplist`;
CREATE TABLE `bao_weixin_helplist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `help_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `zhuliid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helplist
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helpprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helpprize`;
CREATE TABLE `bao_weixin_helpprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `help_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'wx_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helpprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helpsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helpsn`;
CREATE TABLE `bao_weixin_helpsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `help_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `zhuanfa` mediumint(8) DEFAULT '0',
  `zhuli` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helpsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_keyword`;
CREATE TABLE `bao_weixin_keyword` (
  `keyword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL,
  `type` enum('news','text') DEFAULT 'text' COMMENT '0普通消息 1图片消息',
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_lottery`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_lottery`;
CREATE TABLE `bao_weixin_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL COMMENT '参与人数',
  `views` int(11) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `use_tips` varchar(200) NOT NULL COMMENT '简介',
  `stime` date DEFAULT NULL COMMENT '活动开始时间',
  `ltime` date DEFAULT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `end_tips` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` varchar(30) NOT NULL DEFAULT '' COMMENT '预计活动人数',
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL COMMENT '兑奖密码',
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_lottery
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_lotterysn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_lotterysn`;
CREATE TABLE `bao_weixin_lotterysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lottery_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `islottery` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_lotterysn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_msg`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_msg`;
CREATE TABLE `bao_weixin_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FromUserName` varchar(64) DEFAULT NULL,
  `ToUserName` varchar(64) DEFAULT NULL,
  `Content` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packet`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packet`;
CREATE TABLE `bao_weixin_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packetling`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetling`;
CREATE TABLE `bao_weixin_packetling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetling
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packetling_copy`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetling_copy`;
CREATE TABLE `bao_weixin_packetling_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetling_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packetsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetsn`;
CREATE TABLE `bao_weixin_packetsn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `open_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_prize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_prize`;
CREATE TABLE `bao_weixin_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scratch_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'shop_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_qrcode`;
CREATE TABLE `bao_weixin_qrcode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `soure_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=626 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relay`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relay`;
CREATE TABLE `bao_weixin_relay` (
  `relay_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '分享图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `relay_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享用户参加次数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人最多允许次数',
  `max_gold` mediumint(8) DEFAULT NULL,
  `min_gold` mediumint(8) DEFAULT '30',
  `time` mediumint(8) DEFAULT '30',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`relay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relay
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relaylist`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relaylist`;
CREATE TABLE `bao_weixin_relaylist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `relay_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `jieliid` varchar(50) DEFAULT NULL,
  `gold` mediumint(8) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relaylist
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relayprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relayprize`;
CREATE TABLE `bao_weixin_relayprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `relay_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'shop_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relayprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relaysn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relaysn`;
CREATE TABLE `bao_weixin_relaysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relay_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `cishu` mediumint(8) DEFAULT '0',
  `gold` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relaysn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_scratch`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_scratch`;
CREATE TABLE `bao_weixin_scratch` (
  `scratch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`scratch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_scratch
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_scratchsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_scratchsn`;
CREATE TABLE `bao_weixin_scratchsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scratch_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_scratchsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_shake`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shake`;
CREATE TABLE `bao_weixin_shake` (
  `shake_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`shake_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shake
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_shakeprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shakeprize`;
CREATE TABLE `bao_weixin_shakeprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shake_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'wx_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shakeprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_shakesn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shakesn`;
CREATE TABLE `bao_weixin_shakesn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shake_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` varchar(30) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shakesn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_tmpl`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_tmpl`;
CREATE TABLE `bao_weixin_tmpl` (
  `tmpl_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '模板标题',
  `serial` varchar(255) DEFAULT NULL COMMENT '模板系统编号',
  `template_id` varchar(255) DEFAULT NULL COMMENT '模板应用ID',
  `info` varchar(255) DEFAULT NULL COMMENT '模板介绍',
  `sort` tinyint(4) unsigned DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT NULL COMMENT '模板介绍',
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_tmpl
-- ----------------------------

-- ----------------------------
-- Table structure for `ms_area_agent`
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
) ENGINE=InnoDB AUTO_INCREMENT=52665 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_area_agent
-- ----------------------------
INSERT INTO `ms_area_agent` VALUES ('46487', '110101', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46488', '110102', '0', '30000', null, null, null, '2017-01-11 20:21:03', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46491', '110105', '0', '0', null, null, null, '2017-01-11 10:28:15', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46492', '110106', '0', '30000', null, null, null, '2017-01-11 20:20:21', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46493', '110107', '0', '30000', null, null, null, '2017-01-11 20:25:20', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46494', '110108', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46495', '110109', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46496', '110111', '0', '30000', null, null, null, '2017-01-11 22:01:33', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46497', '110112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46498', '110113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46499', '110114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46500', '110115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46501', '110116', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46502', '110117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46503', '110228', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46504', '110229', '0', '30000', null, null, null, '2017-01-11 03:06:57', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46506', '120101', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46507', '120102', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46508', '120103', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46509', '120104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46510', '120105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46511', '120106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46515', '120110', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46516', '120111', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46517', '120112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46518', '120113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46519', '120114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46520', '120115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46521', '120116', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46524', '120225', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46526', '310101', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46528', '310104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46529', '310105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46530', '310106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46531', '310107', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46532', '310108', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46533', '310109', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46534', '310110', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46535', '310112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46536', '310113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46537', '310114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46538', '310115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46539', '310116', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46540', '310117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46541', '310118', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46543', '310120', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46545', '310230', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46547', '500101', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46548', '500102', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46549', '500103', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46550', '500104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46551', '500105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46552', '500106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46553', '500107', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46554', '500108', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46555', '500109', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46556', '500110', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46557', '500111', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46558', '500112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46559', '500113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46560', '500114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46561', '500115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46568', '500228', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46569', '500229', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46570', '500230', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46571', '500231', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46572', '500232', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46573', '500233', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46574', '500234', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46575', '500235', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46576', '500236', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46577', '500237', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46578', '500238', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46579', '500240', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46580', '500241', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46581', '500242', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46582', '500243', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46588', '130102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46590', '130104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46591', '130105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46592', '130107', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46593', '130108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46594', '130121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46595', '130123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46597', '130125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46598', '130126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46599', '130127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46600', '130128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46601', '130129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46602', '130130', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46603', '130131', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46604', '130132', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46605', '130133', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46608', '130183', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46609', '130184', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46612', '130202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46613', '130203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46614', '130204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46615', '130205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46616', '130207', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46617', '130208', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46618', '130223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46619', '130224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46620', '130225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46621', '130227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46622', '130229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46624', '130281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46625', '130283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46627', '130302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46628', '130303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46629', '130304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46630', '130321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46631', '130322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46633', '130324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46636', '130402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46637', '130403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46638', '130404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46639', '130406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46640', '130421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46641', '130423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46642', '130424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46643', '130425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46644', '130426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46645', '130427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46646', '130428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46647', '130429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46648', '130430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46649', '130431', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46650', '130432', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46651', '130433', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46652', '130434', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46653', '130435', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46654', '130481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46656', '130502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46657', '130503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46658', '130521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46659', '130522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46660', '130523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46661', '130524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46662', '130525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46663', '130526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46664', '130527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46665', '130528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46666', '130529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46667', '130530', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46668', '130531', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46669', '130532', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46670', '130533', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46671', '130534', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46672', '130535', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46673', '130581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46674', '130582', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46676', '130602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46681', '130623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46682', '130624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46684', '130626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46685', '130627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46686', '130628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46687', '130629', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46688', '130630', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46689', '130631', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46690', '130632', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46691', '130633', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46692', '130634', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46693', '130635', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46694', '130636', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46695', '130637', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46696', '130638', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46697', '130681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46699', '130683', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46700', '130684', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46703', '130702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46704', '130703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46705', '130705', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46706', '130706', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46707', '130721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46708', '130722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46709', '130723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46710', '130724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46711', '130725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46712', '130726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46713', '130727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46714', '130728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46715', '130729', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46716', '130730', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46717', '130731', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46718', '130732', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46719', '130733', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46721', '130802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46722', '130803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46723', '130804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46724', '130821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46725', '130822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46726', '130823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46727', '130824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46728', '130825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46729', '130826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46730', '130827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46731', '130828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46733', '130902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46734', '130903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46735', '130921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46736', '130922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46737', '130923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46738', '130924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46739', '130925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46740', '130926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46741', '130927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46742', '130928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46743', '130929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46744', '130930', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46745', '130981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46746', '130982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46747', '130983', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46748', '130984', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46750', '131002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46751', '131003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46752', '131022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46753', '131023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46754', '131024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46755', '131025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46756', '131026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46757', '131028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46760', '131081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46761', '131082', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46763', '131102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46764', '131121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46765', '131122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46766', '131123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46767', '131124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46768', '131125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46769', '131126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46770', '131127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46771', '131128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46772', '131181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46773', '131182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46775', '140105', '0', '10', null, null, null, '2017-01-06 13:59:37', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('46776', '140106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46777', '140107', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46778', '140108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46779', '140109', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46780', '140110', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46781', '140121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46782', '140122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46783', '140123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46784', '140181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46786', '140202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46787', '140203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46788', '140211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46789', '140212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46790', '140221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46791', '140222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46792', '140223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46793', '140224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46794', '140225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46795', '140226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46796', '140227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46798', '140302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46799', '140303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46800', '140311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46801', '140321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46802', '140322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46804', '140421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46805', '140423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46806', '140424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46807', '140425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46808', '140426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46809', '140427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46810', '140428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46811', '140429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46812', '140430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46813', '140431', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46814', '140481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46819', '140502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46820', '140521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46821', '140522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46822', '140524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46823', '140525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46824', '140581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46826', '140602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46827', '140603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46828', '140621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46829', '140622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46830', '140623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46831', '140624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46833', '140702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46834', '140721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46835', '140722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46836', '140723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46837', '140724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46838', '140725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46839', '140726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46840', '140727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46841', '140728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46842', '140729', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46843', '140781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46845', '140802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46846', '140821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46847', '140822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46848', '140823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46849', '140824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46850', '140825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46851', '140826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46852', '140827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46853', '140828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46854', '140829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46855', '140830', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46856', '140881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46857', '140882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46859', '140902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46860', '140921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46861', '140922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46862', '140923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46863', '140924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46864', '140925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46865', '140926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46866', '140927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46867', '140928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46868', '140929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46869', '140930', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46870', '140931', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46871', '140932', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46872', '140981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46874', '141002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46875', '141021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46876', '141022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46877', '141023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46878', '141024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46879', '141025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46880', '141026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46881', '141027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46882', '141028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46883', '141029', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46884', '141030', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46885', '141031', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46886', '141032', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46887', '141033', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46888', '141034', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46889', '141081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46890', '141082', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46892', '141102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46893', '141121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46894', '141122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46895', '141123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46896', '141124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46897', '141125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46898', '141126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46899', '141127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46900', '141128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46901', '141129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46902', '141130', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46903', '141181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46904', '141182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46906', '150102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46907', '150103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46908', '150104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46909', '150105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46910', '150121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46911', '150122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46912', '150123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46913', '150124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46914', '150125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46916', '150202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46917', '150203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46918', '150204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46919', '150205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46920', '150206', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46921', '150207', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46922', '150221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46923', '150222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46924', '150223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46926', '150302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46927', '150303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46928', '150304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46930', '150402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46931', '150403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46932', '150404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46933', '150421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46934', '150422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46935', '150423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46936', '150424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46937', '150425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46938', '150426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46939', '150428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46940', '150429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46941', '150430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46943', '150502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46944', '150521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46945', '150522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46946', '150523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46947', '150524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46948', '150525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46949', '150526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46950', '150581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46952', '150602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46953', '150621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46954', '150622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46955', '150623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46956', '150624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46957', '150625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46958', '150626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46959', '150627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46961', '150702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46962', '150703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46963', '150721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46964', '150722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46965', '150723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46966', '150724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46967', '150725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46968', '150726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46969', '150727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46970', '150781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46971', '150782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46972', '150783', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46973', '150784', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46974', '150785', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46976', '150802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46977', '150821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46978', '150822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46979', '150823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46980', '150824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46981', '150825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46982', '150826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46984', '150902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46985', '150921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46986', '150922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46987', '150923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46988', '150924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46989', '150925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46990', '150926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46991', '150927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46992', '150928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46993', '150929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46994', '150981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46996', '152201', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46997', '152202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46998', '152221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('46999', '152222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47000', '152223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47001', '152224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47003', '152501', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47004', '152502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47005', '152522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47006', '152523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47007', '152524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47008', '152525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47009', '152526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47010', '152527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47011', '152528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47012', '152529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47013', '152530', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47014', '152531', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47016', '152921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47017', '152922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47018', '152923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47020', '210102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47021', '210103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47022', '210104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47023', '210105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47024', '210106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47025', '210111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47026', '210112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47027', '210113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47028', '210114', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47029', '210122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47030', '210123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47031', '210124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47032', '210181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47037', '210202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47038', '210203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47039', '210204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47040', '210211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47041', '210212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47042', '210213', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47043', '210224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47045', '210281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47046', '210282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47047', '210283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47050', '210302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47051', '210303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47052', '210304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47053', '210311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47054', '210321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47055', '210323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47057', '210381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47059', '210402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47060', '210403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47061', '210404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47062', '210411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47063', '210421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47064', '210422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47065', '210423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47067', '210502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47068', '210503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47069', '210504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47070', '210505', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47071', '210521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47072', '210522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47074', '210602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47075', '210603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47076', '210604', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47077', '210624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47078', '210681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47079', '210682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47081', '210702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47082', '210703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47083', '210711', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47084', '210726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47085', '210727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47086', '210781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47087', '210782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47089', '210802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47090', '210803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47091', '210804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47092', '210811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47093', '210881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47094', '210882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47096', '210902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47097', '210903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47098', '210904', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47099', '210905', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47100', '210911', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47101', '210921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47102', '210922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47104', '211002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47105', '211003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47106', '211004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47107', '211005', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47108', '211011', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47109', '211021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47110', '211081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47112', '211102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47113', '211103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47114', '211121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47115', '211122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47117', '211202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47118', '211204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47119', '211221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47120', '211223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47121', '211224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47122', '211281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47123', '211282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47125', '211302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47126', '211303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47127', '211321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47128', '211322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47129', '211324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47130', '211381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47131', '211382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47133', '211402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47134', '211403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47135', '211404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47136', '211421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47137', '211422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47138', '211481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47140', '220102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47141', '220103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47142', '220104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47143', '220105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47144', '220106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47145', '220112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47146', '220122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47148', '220182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47149', '220183', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47155', '220202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47156', '220203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47157', '220204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47158', '220211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47159', '220221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47160', '220281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47161', '220282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47162', '220283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47163', '220284', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47165', '220302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47166', '220303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47167', '220322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47168', '220323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47169', '220381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47170', '220382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47172', '220402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47173', '220403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47174', '220421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47175', '220422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47177', '220502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47178', '220503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47179', '220521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47180', '220523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47181', '220524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47182', '220581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47183', '220582', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47185', '220602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47186', '220621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47187', '220622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47188', '220623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47190', '220681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47192', '220702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47193', '220721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47194', '220722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47195', '220723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47198', '220802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47199', '220821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47200', '220822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47201', '220881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47202', '220882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47204', '222401', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47205', '222402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47206', '222403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47207', '222404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47208', '222405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47209', '222406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47210', '222424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47211', '222426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47213', '230102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47214', '230103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47215', '230104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47218', '230108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47219', '230109', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47220', '230111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47221', '230123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47222', '230124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47223', '230125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47224', '230126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47225', '230127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47226', '230128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47227', '230129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47230', '230183', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47231', '230184', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47234', '230202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47235', '230203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47236', '230204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47237', '230205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47238', '230206', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47239', '230207', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47240', '230208', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47241', '230221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47242', '230223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47243', '230224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47244', '230225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47245', '230227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47246', '230229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47247', '230230', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47248', '230231', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47249', '230281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47251', '230302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47252', '230303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47253', '230304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47254', '230305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47255', '230306', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47256', '230307', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47257', '230321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47258', '230381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47259', '230382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47261', '230402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47262', '230403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47263', '230404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47264', '230405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47265', '230406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47266', '230407', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47267', '230421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47268', '230422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47270', '230502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47271', '230503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47272', '230505', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47273', '230506', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47274', '230521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47275', '230522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47276', '230523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47277', '230524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47279', '230602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47280', '230603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47281', '230604', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47282', '230605', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47283', '230606', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47284', '230621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47285', '230622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47286', '230623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47287', '230624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47289', '230702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47290', '230703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47291', '230704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47292', '230705', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47293', '230706', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47294', '230707', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47295', '230708', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47296', '230709', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47297', '230710', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47298', '230711', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47299', '230712', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47300', '230713', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47301', '230714', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47302', '230715', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47303', '230716', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47304', '230722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47305', '230781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47308', '230803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47309', '230804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47310', '230805', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47311', '230811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47312', '230822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47313', '230826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47314', '230828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47315', '230833', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47316', '230881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47317', '230882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47319', '230902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47320', '230903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47321', '230904', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47322', '230921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47324', '231002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47325', '231003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47326', '231004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47327', '231005', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47328', '231024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47329', '231025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47330', '231081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47331', '231083', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47332', '231084', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47333', '231085', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47335', '231102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47336', '231121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47337', '231123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47338', '231124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47339', '231181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47340', '231182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47342', '231202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47343', '231221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47344', '231222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47345', '231223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47346', '231224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47347', '231225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47348', '231226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47349', '231281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47350', '231282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47351', '231283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47356', '232721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47357', '232722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47358', '232723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47361', '320102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47363', '320104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47364', '320105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47365', '320106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47367', '320111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47368', '320113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47369', '320114', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47370', '320115', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47371', '320116', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47375', '320202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47376', '320203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47377', '320204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47378', '320205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47379', '320206', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47380', '320211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47381', '320281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47382', '320282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47385', '320302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47386', '320303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47388', '320305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47389', '320311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47390', '320321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47391', '320322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47393', '320324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47394', '320381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47395', '320382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47397', '320402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47398', '320404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47400', '320411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47401', '320412', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47402', '320481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47408', '320505', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47409', '320506', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47410', '320507', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47411', '320508', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47412', '320581', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47413', '320582', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47414', '320583', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47416', '320585', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47420', '320602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47421', '320611', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47422', '320612', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47423', '320621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47424', '320623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47425', '320681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47426', '320682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47428', '320684', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47431', '320703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47433', '320706', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47435', '320722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47436', '320723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47437', '320724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47439', '320802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47440', '320803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47441', '320804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47442', '320811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47443', '320826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47444', '320829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47445', '320830', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47446', '320831', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47448', '320902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47449', '320903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47450', '320921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47451', '320922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47452', '320923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47453', '320924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47454', '320925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47455', '320981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47458', '321002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47459', '321003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47461', '321023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47462', '321081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47463', '321084', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47467', '321102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47468', '321111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47469', '321112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47470', '321181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47471', '321182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47472', '321183', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47474', '321202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47475', '321203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47476', '321281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47477', '321282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47478', '321283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47481', '321302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47482', '321311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47483', '321322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47484', '321323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47485', '321324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47487', '330102', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47488', '330103', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47489', '330104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47490', '330105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47491', '330106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47492', '330108', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47493', '330109', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47494', '330110', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47495', '330122', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47496', '330127', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47497', '330182', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47499', '330185', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47501', '330203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47502', '330204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47503', '330205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47504', '330206', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47505', '330211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47506', '330212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47507', '330225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47508', '330226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47509', '330281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47510', '330282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47511', '330283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47513', '330302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47514', '330303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47515', '330304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47517', '330324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47518', '330326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47519', '330327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47520', '330328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47521', '330329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47522', '330381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47523', '330382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47525', '330402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47526', '330411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47527', '330421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47528', '330424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47529', '330481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47530', '330482', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47531', '330483', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47533', '330502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47534', '330503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47535', '330521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47536', '330522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47537', '330523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47539', '330602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47541', '330624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47542', '330681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47544', '330683', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47546', '330702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47547', '330703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47548', '330723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47549', '330726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47550', '330727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47551', '330781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47552', '330782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47553', '330783', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47554', '330784', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47556', '330802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47557', '330803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47558', '330822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47559', '330824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47560', '330825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47561', '330881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47563', '330902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47564', '330903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47565', '330921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47566', '330922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47568', '331002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47569', '331003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47570', '331004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47571', '331021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47572', '331022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47573', '331023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47574', '331024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47575', '331081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47576', '331082', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47578', '331102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47579', '331121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47580', '331122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47581', '331123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47582', '331124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47583', '331125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47584', '331126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47585', '331127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47586', '331181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47588', '340102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47589', '340103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47590', '340104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47591', '340111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47592', '340121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47593', '340122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47594', '340123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47601', '340202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47602', '340203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47603', '340207', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47604', '340208', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47605', '340221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47606', '340222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47607', '340223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47610', '340302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47611', '340303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47612', '340304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47613', '340311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47614', '340321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47615', '340322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47616', '340323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47618', '340402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47619', '340403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47620', '340404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47621', '340405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47622', '340406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47623', '340421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47626', '340503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47627', '340504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47628', '340506', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47629', '340521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47630', '340522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47633', '340602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47634', '340603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47635', '340604', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47636', '340621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47638', '340702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47639', '340703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47640', '340711', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47641', '340721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47643', '340802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47644', '340803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47645', '340811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47646', '340822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47647', '340823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47648', '340824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47649', '340825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47650', '340826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47651', '340827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47652', '340828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47653', '340881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47655', '341002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47656', '341003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47657', '341004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47658', '341021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47659', '341022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47660', '341023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47661', '341024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47663', '341102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47664', '341103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47665', '341122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47666', '341124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47667', '341125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47668', '341126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47669', '341181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47670', '341182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47672', '341202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47673', '341203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47674', '341204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47675', '341221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47676', '341222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47677', '341225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47678', '341226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47679', '341282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47681', '341302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47682', '341321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47683', '341322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47684', '341323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47685', '341324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47687', '341502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47688', '341503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47689', '341521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47690', '341522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47691', '341523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47692', '341524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47693', '341525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47695', '341602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47696', '341621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47697', '341622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47698', '341623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47700', '341702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47701', '341721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47702', '341722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47703', '341723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47705', '341802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47706', '341821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47707', '341822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47708', '341823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47709', '341824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47710', '341825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47711', '341881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47713', '350102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47714', '350103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47715', '350104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47716', '350105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47717', '350111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47718', '350121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47719', '350122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47720', '350123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47721', '350124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47722', '350125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47723', '350128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47724', '350181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47725', '350182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47727', '350203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47728', '350205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47729', '350206', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47730', '350211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47731', '350212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47732', '350213', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47734', '350302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47735', '350303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47736', '350304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47737', '350305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47738', '350322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47740', '350402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47741', '350403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47742', '350421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47743', '350423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47744', '350424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47745', '350425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47746', '350426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47747', '350427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47748', '350428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47749', '350429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47750', '350430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47751', '350481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47753', '350502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47754', '350503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47755', '350504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47756', '350505', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47757', '350521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47758', '350524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47759', '350525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47760', '350526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47761', '350527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47762', '350581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47763', '350582', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47764', '350583', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47766', '350602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47767', '350603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47768', '350622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47769', '350623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47770', '350624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47771', '350625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47772', '350626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47773', '350627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47774', '350628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47775', '350629', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47776', '350681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47778', '350702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47779', '350721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47780', '350722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47781', '350723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47782', '350724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47783', '350725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47784', '350781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47785', '350782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47786', '350783', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47789', '350802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47790', '350821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47792', '350823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47793', '350824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47794', '350825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47795', '350881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47797', '350902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47798', '350921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47799', '350922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47800', '350923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47801', '350924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47802', '350925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47803', '350926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47804', '350981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47805', '350982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47807', '360102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47808', '360103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47809', '360104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47810', '360105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47811', '360111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47812', '360121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47814', '360123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47815', '360124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47820', '360202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47821', '360203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47822', '360222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47823', '360281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47825', '360302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47826', '360313', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47827', '360321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47828', '360322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47829', '360323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47831', '360402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47832', '360403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47833', '360421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47834', '360423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47835', '360424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47836', '360425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47837', '360426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47838', '360427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47839', '360428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47840', '360429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47841', '360430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47842', '360481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47843', '360482', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47845', '360502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47846', '360521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47848', '360602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47849', '360622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47850', '360681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47852', '360702', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47853', '360721', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47854', '360722', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47855', '360723', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47856', '360724', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47857', '360725', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47858', '360726', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47859', '360727', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47860', '360728', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47861', '360729', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47862', '360730', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47863', '360731', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47864', '360732', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47865', '360733', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47866', '360734', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47867', '360735', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47869', '360781', '0', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47872', '360802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47873', '360803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47874', '360821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47875', '360822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47876', '360823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47877', '360824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47878', '360825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47879', '360826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47880', '360827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47881', '360828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47882', '360829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47883', '360830', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47884', '360881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47886', '360902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47887', '360921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47888', '360922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47889', '360923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47890', '360924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47891', '360925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47892', '360926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47893', '360981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47894', '360982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47895', '360983', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47897', '361002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47898', '361021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47899', '361022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47900', '361023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47901', '361024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47902', '361025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47903', '361026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47904', '361027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47905', '361028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47906', '361029', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47907', '361030', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47909', '361102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47910', '361121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47912', '361123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47913', '361124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47914', '361125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47915', '361126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47916', '361127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47917', '361128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47918', '361129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47919', '361130', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47920', '361181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47922', '370102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47923', '370103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47924', '370104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47925', '370105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47926', '370112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47927', '370113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47928', '370124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47929', '370125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47930', '370126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47931', '370181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47933', '370202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47934', '370203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47936', '370211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47937', '370212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47938', '370213', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47939', '370214', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47941', '370281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47942', '370282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47943', '370283', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47945', '370285', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47947', '370302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47948', '370303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47949', '370304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47950', '370305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47951', '370306', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47952', '370321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47953', '370322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47954', '370323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47956', '370402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47957', '370403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47958', '370404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47959', '370405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47960', '370406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47961', '370481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47963', '370502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47964', '370503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47965', '370521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47966', '370522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47967', '370523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47971', '370602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47972', '370611', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47973', '370612', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47974', '370613', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47975', '370634', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47976', '370681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47977', '370682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47978', '370683', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47979', '370684', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47980', '370685', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47981', '370686', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47982', '370687', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47984', '370702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47985', '370703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47986', '370704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47987', '370705', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47988', '370724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47989', '370725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47991', '370781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47992', '370782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47993', '370783', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47994', '370784', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47995', '370785', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47996', '370786', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('47999', '370811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48000', '370826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48001', '370827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48002', '370828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48003', '370829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48004', '370830', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48005', '370831', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48006', '370832', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48007', '370881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48009', '370883', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48011', '370902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48013', '370921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48014', '370923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48015', '370982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48016', '370983', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48018', '371002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48020', '371082', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48021', '371083', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48023', '371102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48024', '371103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48025', '371121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48026', '371122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48028', '371202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48029', '371203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48031', '371302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48032', '371311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48033', '371312', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48034', '371321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48035', '371322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48036', '371323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48037', '371324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48038', '371325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48039', '371326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48040', '371327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48041', '371328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48042', '371329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48044', '371402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48046', '371422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48047', '371423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48048', '371424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48049', '371425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48050', '371426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48051', '371427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48052', '371428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48054', '371481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48055', '371482', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48057', '371502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48058', '371521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48059', '371522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48060', '371523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48061', '371524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48062', '371525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48063', '371526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48064', '371581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48066', '371602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48067', '371621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48068', '371622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48069', '371623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48071', '371625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48072', '371626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48074', '371702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48075', '371721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48076', '371722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48077', '371723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48078', '371724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48079', '371725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48080', '371726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48081', '371727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48082', '371728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48084', '410102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48085', '410103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48086', '410104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48087', '410105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48088', '410106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48089', '410108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48090', '410122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48091', '410181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48092', '410182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48093', '410183', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48094', '410184', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48095', '410185', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48099', '410202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48100', '410203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48101', '410204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48102', '410205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48103', '410211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48104', '410221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48105', '410222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48106', '410223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48108', '410225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48110', '410302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48111', '410303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48112', '410304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48113', '410305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48114', '410306', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48116', '410322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48117', '410323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48118', '410324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48119', '410325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48120', '410326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48121', '410327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48122', '410328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48123', '410329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48124', '410381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48127', '410402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48128', '410403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48129', '410404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48130', '410411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48131', '410421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48132', '410422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48133', '410423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48134', '410425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48135', '410481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48136', '410482', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48138', '410502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48139', '410503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48140', '410505', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48141', '410506', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48142', '410522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48143', '410523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48144', '410526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48145', '410527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48146', '410581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48148', '410602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48149', '410603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48150', '410611', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48151', '410621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48152', '410622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48154', '410702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48155', '410703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48156', '410704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48157', '410711', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48158', '410721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48159', '410724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48160', '410725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48161', '410726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48162', '410727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48163', '410728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48164', '410781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48165', '410782', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48167', '410802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48168', '410803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48169', '410804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48170', '410811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48171', '410821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48172', '410822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48173', '410823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48174', '410825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48175', '410882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48176', '410883', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48178', '410902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48179', '410922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48180', '410923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48181', '410926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48182', '410927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48183', '410928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48185', '411002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48186', '411023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48187', '411024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48188', '411025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48189', '411081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48190', '411082', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48192', '411102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48193', '411103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48194', '411104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48195', '411121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48196', '411122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48198', '411202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48199', '411221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48200', '411222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48201', '411224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48202', '411281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48203', '411282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48205', '411302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48206', '411303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48207', '411321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48208', '411322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48209', '411323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48210', '411324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48211', '411325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48212', '411326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48213', '411327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48214', '411328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48215', '411329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48216', '411330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48217', '411381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48219', '411402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48220', '411403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48221', '411421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48222', '411422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48223', '411423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48224', '411424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48225', '411425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48226', '411426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48227', '411481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48229', '411502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48230', '411503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48231', '411521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48232', '411522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48233', '411523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48234', '411524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48235', '411525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48236', '411526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48237', '411527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48238', '411528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48240', '411602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48241', '411621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48242', '411622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48243', '411623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48244', '411624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48245', '411625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48246', '411626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48247', '411627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48248', '411628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48249', '411681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48251', '411702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48252', '411721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48253', '411722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48254', '411723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48255', '411724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48256', '411725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48257', '411726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48258', '411727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48259', '411728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48260', '411729', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48262', '420102', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48263', '420103', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48264', '420104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48265', '420105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48266', '420106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48267', '420107', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48268', '420111', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48269', '420112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48270', '420113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48271', '420114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48272', '420115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48273', '420116', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48274', '420117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48276', '420202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48277', '420203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48278', '420204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48279', '420205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48280', '420222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48281', '420281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48283', '420302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48284', '420303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48286', '420322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48287', '420323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48288', '420324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48289', '420325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48290', '420381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48293', '420502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48294', '420503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48295', '420504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48296', '420505', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48297', '420506', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48298', '420525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48299', '420526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48300', '420527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48301', '420528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48302', '420529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48305', '420581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48306', '420582', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48307', '420583', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48309', '420602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48310', '420606', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48311', '420607', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48312', '420624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48313', '420625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48314', '420626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48315', '420682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48316', '420683', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48317', '420684', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48319', '420702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48320', '420703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48321', '420704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48323', '420802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48324', '420804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48325', '420821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48326', '420822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48327', '420881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48329', '420902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48330', '420921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48331', '420922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48332', '420923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48333', '420981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48334', '420982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48335', '420984', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48337', '421002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48338', '421003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48339', '421022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48340', '421023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48341', '421024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48342', '421081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48343', '421083', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48344', '421087', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48346', '421102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48347', '421121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48348', '421122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48349', '421123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48350', '421124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48351', '421125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48352', '421126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48353', '421127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48354', '421181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48355', '421182', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48357', '421202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48358', '421221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48359', '421222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48360', '421223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48361', '421224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48362', '421281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48366', '421321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48367', '421381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48369', '422801', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48370', '422802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48371', '422822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48372', '422823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48373', '422825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48374', '422826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48375', '422827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48376', '422828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48378', '430102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48379', '430103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48380', '430104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48381', '430105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48382', '430111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48383', '430121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48385', '430124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48386', '430181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48388', '430202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48389', '430203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48390', '430204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48391', '430211', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48392', '430221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48393', '430223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48394', '430224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48395', '430225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48396', '430281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48398', '430302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48399', '430304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48400', '430321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48401', '430381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48402', '430382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48404', '430405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48405', '430406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48406', '430407', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48407', '430408', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48408', '430412', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48409', '430421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48410', '430422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48411', '430423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48412', '430424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48413', '430426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48414', '430481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48415', '430482', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48417', '430502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48418', '430503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48419', '430511', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48420', '430521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48421', '430522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48422', '430523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48423', '430524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48424', '430525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48425', '430527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48426', '430528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48427', '430529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48428', '430581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48430', '430602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48431', '430603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48432', '430611', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48433', '430621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48434', '430623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48435', '430624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48436', '430626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48437', '430681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48438', '430682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48440', '430702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48441', '430703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48442', '430721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48443', '430722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48444', '430723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48445', '430724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48446', '430725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48447', '430726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48448', '430781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48450', '430802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48451', '430811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48452', '430821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48453', '430822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48455', '430902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48456', '430903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48457', '430921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48458', '430922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48459', '430923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48460', '430981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48462', '431002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48463', '431003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48464', '431021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48465', '431022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48466', '431023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48467', '431024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48468', '431025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48469', '431026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48470', '431027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48471', '431028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48472', '431081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48474', '431102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48475', '431103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48476', '431121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48477', '431122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48478', '431123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48479', '431124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48480', '431125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48481', '431126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48482', '431127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48483', '431128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48484', '431129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48486', '431202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48487', '431221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48488', '431222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48489', '431223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48490', '431224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48491', '431225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48492', '431226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48493', '431227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48494', '431228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48495', '431229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48496', '431230', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48497', '431281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48499', '431302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48500', '431321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48501', '431322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48502', '431381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48503', '431382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48505', '433101', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48506', '433122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48507', '433123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48508', '433124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48509', '433125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48510', '433126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48511', '433127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48512', '433130', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48514', '440103', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48515', '440104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48516', '440105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48517', '440106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48518', '440111', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48519', '440112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48520', '440113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48521', '440114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48522', '440115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48528', '440203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48529', '440204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48530', '440205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48531', '440222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48532', '440224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48533', '440229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48534', '440232', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48535', '440233', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48536', '440281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48537', '440282', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48539', '440303', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48540', '440304', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48541', '440305', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48542', '440306', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48543', '440307', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48544', '440308', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48550', '440402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48551', '440403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48552', '440404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48556', '440507', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48557', '440511', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48558', '440512', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48559', '440513', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48560', '440514', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48561', '440515', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48562', '440523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48564', '440604', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48565', '440605', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48566', '440606', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48567', '440607', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48568', '440608', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48570', '440703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48571', '440704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48572', '440705', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48573', '440781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48574', '440783', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48575', '440784', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48576', '440785', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48578', '440802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48579', '440803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48580', '440804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48581', '440811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48582', '440823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48583', '440825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48584', '440881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48585', '440882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48586', '440883', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48588', '440902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48591', '440981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48592', '440982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48593', '440983', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48595', '441202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48596', '441203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48597', '441223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48598', '441224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48599', '441225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48600', '441226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48602', '441284', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48604', '441302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48605', '441303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48606', '441322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48607', '441323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48608', '441324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48610', '441402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48612', '441422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48613', '441423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48614', '441424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48615', '441426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48616', '441427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48617', '441481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48619', '441502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48620', '441521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48621', '441523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48622', '441581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48624', '441602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48625', '441621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48626', '441622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48627', '441623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48628', '441624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48629', '441625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48631', '441702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48632', '441721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48634', '441781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48636', '441802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48637', '441821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48638', '441823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48639', '441825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48640', '441826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48642', '441881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48643', '441882', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48645', '445102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48647', '445122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48650', '445202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48652', '445222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48653', '445224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48654', '445281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48657', '445302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48658', '445321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48659', '445322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48661', '445381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48663', '450102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48664', '450103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48665', '450105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48666', '450107', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48667', '450108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48668', '450109', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48670', '450123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48671', '450124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48672', '450125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48673', '450126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48674', '450127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48676', '450202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48677', '450203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48678', '450204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48679', '450205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48680', '450221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48681', '450222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48682', '450223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48683', '450224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48684', '450225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48685', '450226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48687', '450302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48688', '450303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48689', '450304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48690', '450305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48691', '450311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48692', '450321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48694', '450323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48695', '450324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48696', '450325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48697', '450326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48698', '450327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48699', '450328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48700', '450329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48701', '450330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48702', '450331', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48703', '450332', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48705', '450403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48707', '450405', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48708', '450406', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48709', '450421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48710', '450422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48711', '450423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48712', '450481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48714', '450502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48715', '450503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48716', '450512', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48717', '450521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48719', '450602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48720', '450603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48721', '450621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48722', '450681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48724', '450702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48725', '450703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48726', '450721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48727', '450722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48729', '450802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48730', '450803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48731', '450804', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48732', '450821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48733', '450881', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48735', '450902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48736', '450903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48737', '450921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48738', '450922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48739', '450923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48740', '450924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48741', '450981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48743', '451002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48744', '451021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48745', '451022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48746', '451023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48747', '451024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48749', '451026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48750', '451027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48751', '451028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48752', '451029', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48753', '451030', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48754', '451031', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48756', '451102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48758', '451121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48759', '451122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48760', '451123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48762', '451202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48763', '451221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48764', '451222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48765', '451223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48766', '451224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48767', '451225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48768', '451226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48769', '451227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48770', '451228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48771', '451229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48772', '451281', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48774', '451302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48775', '451321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48776', '451322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48777', '451323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48778', '451324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48779', '451381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48781', '451402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48782', '451421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48783', '451422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48784', '451423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48785', '451424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48786', '451425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48787', '451481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48789', '460105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48790', '460106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48791', '460107', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48792', '460108', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48794', '460321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48795', '460322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48796', '460323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48805', '510104', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48806', '510105', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48807', '510106', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48808', '510107', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48809', '510108', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48810', '510112', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48811', '510113', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48812', '510114', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48813', '510115', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48814', '510121', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48815', '510122', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48816', '510124', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48817', '510129', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48818', '510131', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48819', '510132', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48820', '510181', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48821', '510182', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48822', '510183', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48823', '510184', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48825', '510302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48826', '510303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48827', '510304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48828', '510311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48829', '510321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48830', '510322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48832', '510402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48833', '510403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48834', '510411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48835', '510421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48836', '510422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48838', '510502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48839', '510503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48840', '510504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48841', '510521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48842', '510522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48843', '510524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48844', '510525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48846', '510603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48847', '510623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48848', '510626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48849', '510681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48850', '510682', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48851', '510683', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48853', '510703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48854', '510704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48855', '510722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48856', '510723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48857', '510724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48858', '510725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48859', '510726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48860', '510727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48862', '510781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48864', '510802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48865', '510811', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48866', '510812', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48867', '510821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48868', '510822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48869', '510823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48870', '510824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48872', '510903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48873', '510904', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48874', '510921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48875', '510922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48876', '510923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48878', '511002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48879', '511011', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48880', '511024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48881', '511025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48882', '511028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48884', '511102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48885', '511111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48886', '511112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48887', '511113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48888', '511123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48889', '511124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48890', '511126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48891', '511129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48892', '511132', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48893', '511133', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48894', '511181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48896', '511302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48897', '511303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48898', '511304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48899', '511321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48900', '511322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48901', '511323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48902', '511324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48903', '511325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48904', '511381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48906', '511402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48907', '511421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48909', '511423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48910', '511424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48911', '511425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48913', '511502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48914', '511521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48916', '511523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48917', '511524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48918', '511525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48919', '511526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48920', '511527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48921', '511528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48922', '511529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48924', '511602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48925', '511603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48926', '511621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48927', '511622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48928', '511623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48929', '511681', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48932', '511702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48934', '511722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48935', '511723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48936', '511724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48937', '511725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48938', '511781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48940', '511802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48942', '511822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48943', '511823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48944', '511824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48945', '511825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48946', '511826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48947', '511827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48949', '511902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48950', '511903', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48951', '511921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48952', '511922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48953', '511923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48955', '512002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48956', '512021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48957', '512022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48958', '512081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48960', '513221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48961', '513222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48962', '513223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48963', '513224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48964', '513225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48965', '513226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48966', '513227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48967', '513228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48968', '513229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48969', '513230', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48970', '513231', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48971', '513232', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48972', '513233', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48975', '513322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48976', '513323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48977', '513324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48978', '513325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48979', '513326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48980', '513327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48981', '513328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48982', '513329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48983', '513330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48984', '513331', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48985', '513332', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48986', '513333', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48987', '513334', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48988', '513335', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48989', '513336', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48990', '513337', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48991', '513338', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48993', '513401', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48994', '513422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48995', '513423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48996', '513424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48997', '513425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48998', '513426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('48999', '513427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49000', '513428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49001', '513429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49002', '513430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49003', '513431', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49004', '513432', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49005', '513433', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49006', '513434', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49007', '513435', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49008', '513436', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49009', '513437', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49011', '520102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49012', '520103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49013', '520111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49014', '520112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49015', '520113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49017', '520121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49018', '520122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49019', '520123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49021', '520181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49023', '520201', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49024', '520203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49025', '520221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49026', '520222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49028', '520302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49029', '520303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49030', '520321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49031', '520322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49032', '520323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49033', '520324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49034', '520325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49035', '520326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49036', '520327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49037', '520328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49038', '520329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49039', '520330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49040', '520381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49041', '520382', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49043', '520402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49045', '520422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49046', '520423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49047', '520424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49048', '520425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49061', '522301', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49062', '522322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49063', '522323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49064', '522324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49065', '522325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49066', '522326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49067', '522327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49068', '522328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49079', '522601', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49080', '522622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49081', '522623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49082', '522624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49083', '522625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49084', '522626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49085', '522627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49086', '522628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49087', '522629', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49088', '522630', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49089', '522631', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49090', '522632', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49091', '522633', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49092', '522634', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49093', '522635', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49094', '522636', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49096', '522701', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49097', '522702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49098', '522722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49099', '522723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49100', '522725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49101', '522726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49102', '522727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49103', '522728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49104', '522729', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49105', '522730', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49106', '522731', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49107', '522732', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49109', '530102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49110', '530103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49111', '530111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49112', '530112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49113', '530113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49115', '530122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49116', '530124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49117', '530125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49118', '530126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49119', '530127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49120', '530128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49121', '530129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49122', '530181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49124', '530302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49125', '530321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49126', '530322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49127', '530323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49128', '530324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49129', '530325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49130', '530326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49131', '530328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49132', '530381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49134', '530402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49135', '530421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49136', '530422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49137', '530423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49138', '530424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49139', '530425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49140', '530426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49141', '530427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49142', '530428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49144', '530502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49145', '530521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49147', '530523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49148', '530524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49150', '530602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49151', '530621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49152', '530622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49153', '530623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49154', '530624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49155', '530625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49156', '530626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49157', '530627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49158', '530628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49159', '530629', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49160', '530630', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49162', '530702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49163', '530721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49164', '530722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49165', '530723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49166', '530724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49168', '530802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49169', '530821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49170', '530822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49171', '530823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49172', '530824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49173', '530825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49174', '530826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49175', '530827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49176', '530828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49177', '530829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49179', '530902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49180', '530921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49181', '530922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49182', '530923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49183', '530924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49184', '530925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49185', '530926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49186', '530927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49188', '532301', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49189', '532322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49190', '532323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49191', '532324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49192', '532325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49193', '532326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49194', '532327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49195', '532328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49196', '532329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49197', '532331', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49199', '532501', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49200', '532502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49202', '532523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49203', '532524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49204', '532525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49206', '532527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49207', '532528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49208', '532529', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49209', '532530', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49210', '532531', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49211', '532532', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49214', '532622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49215', '532623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49216', '532624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49217', '532625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49218', '532626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49219', '532627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49220', '532628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49222', '532801', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49223', '532822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49224', '532823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49226', '532901', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49227', '532922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49228', '532923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49229', '532924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49230', '532925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49231', '532926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49232', '532927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49233', '532928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49234', '532929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49235', '532930', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49236', '532931', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49237', '532932', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49239', '533102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49240', '533103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49241', '533122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49242', '533123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49243', '533124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49245', '533321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49246', '533323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49247', '533324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49248', '533325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49251', '533422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49252', '533423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49254', '540102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49255', '540121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49256', '540122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49257', '540123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49258', '540124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49259', '540125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49260', '540126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49261', '540127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49275', '542221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49276', '542222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49277', '542223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49278', '542224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49279', '542225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49280', '542226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49281', '542227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49282', '542228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49283', '542229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49284', '542231', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49285', '542232', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49286', '542233', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49307', '542421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49308', '542422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49309', '542423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49310', '542424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49311', '542425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49312', '542426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49313', '542427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49314', '542428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49315', '542429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49316', '542430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49317', '542431', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49319', '542521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49320', '542522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49321', '542523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49322', '542524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49323', '542525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49324', '542526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49325', '542527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49335', '610102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49336', '610103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49337', '610104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49338', '610111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49339', '610112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49340', '610113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49341', '610114', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49342', '610115', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49343', '610116', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49344', '610122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49345', '610124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49346', '610125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49349', '610202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49350', '610203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49351', '610204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49352', '610222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49354', '610302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49355', '610303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49356', '610304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49357', '610322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49358', '610323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49359', '610324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49360', '610326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49361', '610327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49362', '610328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49363', '610329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49364', '610330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49365', '610331', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49367', '610402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49368', '610403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49369', '610404', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49370', '610422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49371', '610423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49372', '610424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49373', '610425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49374', '610426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49375', '610427', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49376', '610428', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49377', '610429', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49378', '610430', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49379', '610431', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49380', '610481', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49382', '610502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49383', '610521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49384', '610522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49385', '610523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49386', '610524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49387', '610525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49388', '610526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49389', '610527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49390', '610528', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49391', '610581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49392', '610582', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49394', '610602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49395', '610621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49396', '610622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49397', '610623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49398', '610624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49399', '610625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49400', '610626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49401', '610627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49402', '610628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49403', '610629', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49404', '610630', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49405', '610631', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49406', '610632', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49408', '610702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49409', '610721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49410', '610722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49411', '610723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49412', '610724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49413', '610725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49414', '610726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49415', '610727', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49416', '610728', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49417', '610729', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49418', '610730', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49420', '610802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49421', '610821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49422', '610822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49423', '610823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49424', '610824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49425', '610825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49426', '610826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49427', '610827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49428', '610828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49429', '610829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49430', '610830', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49431', '610831', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49433', '610902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49434', '610921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49435', '610922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49436', '610923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49437', '610924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49438', '610925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49439', '610926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49440', '610927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49441', '610928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49442', '610929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49444', '611002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49445', '611021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49446', '611022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49447', '611023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49448', '611024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49449', '611025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49450', '611026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49452', '620102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49453', '620103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49454', '620104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49455', '620105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49456', '620111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49457', '620121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49458', '620122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49459', '620123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49461', '620302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49462', '620321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49464', '620402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49465', '620403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49466', '620421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49467', '620422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49468', '620423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49470', '620502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49471', '620503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49472', '620521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49473', '620522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49474', '620523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49475', '620524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49476', '620525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49478', '620602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49479', '620621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49480', '620622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49481', '620623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49483', '620702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49484', '620721', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49485', '620722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49486', '620723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49487', '620724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49488', '620725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49490', '620802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49491', '620821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49492', '620822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49493', '620823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49494', '620824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49495', '620825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49496', '620826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49498', '620902', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49499', '620921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49500', '620922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49501', '620923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49502', '620924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49503', '620981', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49504', '620982', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49506', '621002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49507', '621021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49508', '621022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49509', '621023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49510', '621024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49511', '621025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49512', '621026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49513', '621027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49515', '621102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49516', '621121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49517', '621122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49518', '621123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49519', '621124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49520', '621125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49521', '621126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49523', '621202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49524', '621221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49525', '621222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49526', '621223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49527', '621224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49528', '621225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49529', '621226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49530', '621227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49531', '621228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49533', '622901', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49534', '622921', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49535', '622922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49536', '622923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49537', '622924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49538', '622925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49539', '622926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49540', '622927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49542', '623001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49543', '623021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49544', '623022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49545', '623023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49546', '623024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49547', '623025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49548', '623026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49549', '623027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49551', '630102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49552', '630103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49553', '630104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49554', '630105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49555', '630121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49556', '630122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49557', '630123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49566', '632221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49567', '632222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49568', '632223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49569', '632224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49571', '632321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49572', '632322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49573', '632323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49574', '632324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49576', '632521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49577', '632522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49578', '632523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49579', '632524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49580', '632525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49582', '632621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49583', '632622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49584', '632623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49585', '632624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49586', '632625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49587', '632626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49590', '632722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49591', '632723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49592', '632724', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49593', '632725', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49594', '632726', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49596', '632801', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49597', '632802', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49598', '632821', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49599', '632822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49600', '632823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49602', '640104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49603', '640105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49604', '640106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49605', '640121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49606', '640122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49607', '640181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49609', '640202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49610', '640205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49611', '640221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49613', '640302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49614', '640303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49615', '640323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49616', '640324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49617', '640381', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49619', '640402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49620', '640422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49621', '640423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49622', '640424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49623', '640425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49625', '640502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49626', '640521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49627', '640522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49629', '650102', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49630', '650103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49631', '650104', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49632', '650105', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49633', '650106', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49634', '650107', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49636', '650109', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49637', '650121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49639', '650202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49640', '650203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49641', '650204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49642', '650205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49648', '652201', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49649', '652222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49650', '652223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49652', '652301', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49653', '652302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49655', '652323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49656', '652324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49657', '652325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49658', '652327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49659', '652328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49661', '652701', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49662', '652702', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49663', '652722', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49664', '652723', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49666', '652801', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49667', '652822', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49668', '652823', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49669', '652824', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49670', '652825', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49671', '652826', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49672', '652827', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49673', '652828', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49674', '652829', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49676', '652901', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49677', '652922', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49678', '652923', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49679', '652924', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49680', '652925', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49681', '652926', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49682', '652927', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49683', '652928', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49684', '652929', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49686', '653001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49687', '653022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49688', '653023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49689', '653024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49691', '653101', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49692', '653121', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49693', '653122', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49694', '653123', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49695', '653124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49696', '653125', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49697', '653126', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49698', '653127', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49699', '653128', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49700', '653129', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49701', '653130', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49702', '653131', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49704', '653201', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49705', '653221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49706', '653222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49707', '653223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49708', '653224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49709', '653225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49710', '653226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49711', '653227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49713', '654002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49714', '654003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49715', '654021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49716', '654022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49717', '654023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49718', '654024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49719', '654025', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49720', '654026', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49721', '654027', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49722', '654028', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49724', '654201', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49725', '654202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49726', '654221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49727', '654223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49728', '654224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49729', '654225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49730', '654226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49732', '654301', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49733', '654321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49734', '654322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49735', '654323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49736', '654324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49737', '654325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('49738', '654326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50582', '990001', '1', null, null, null, null, '2016-12-30 17:59:49', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('50583', '990020', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50584', '990040', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50585', '990061', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50586', '990102', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50587', '990126', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50588', '990141', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50589', '990150', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50590', '990170', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50591', '990190', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50592', '990217', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50593', '990235', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50594', '990247', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50595', '990264', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50596', '990277', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50597', '990289', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50598', '990300', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50599', '990312', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50600', '990318', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50601', '990333', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50602', '990340', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50603', '990347', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50604', '990359', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50605', '990373', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50606', '990388', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50607', '990406', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50608', '990420', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50609', '990430', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50610', '990440', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50611', '990444', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50612', '990457', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50613', '990466', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50614', '990475', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50615', '990490', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50616', '990498', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50617', '990510', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50618', '990517', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50619', '990530', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50620', '990534', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50621', '990551', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50622', '990564', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50623', '990573', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50624', '990581', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50625', '990588', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50626', '990595', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50627', '990603', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50628', '990610', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50629', '990618', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50630', '990626', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50631', '990631', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50632', '990639', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50633', '990647', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50634', '990654', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50635', '990669', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50636', '990679', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50637', '990686', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50638', '990691', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50639', '990699', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50640', '990706', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50641', '990712', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50642', '990718', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50643', '990727', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50644', '990748', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50645', '990765', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50646', '990775', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50647', '990784', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50648', '990793', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50649', '990803', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50650', '990821', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50651', '990833', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50652', '990838', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50653', '990849', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50654', '990856', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50655', '990867', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50656', '990875', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50657', '990889', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50658', '990899', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50659', '990911', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50660', '990919', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50661', '990934', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50662', '990945', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50663', '990953', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50664', '990962', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50665', '990972', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50666', '990981', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50667', '990988', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50668', '990995', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50669', '991001', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50670', '991015', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50671', '991027', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50672', '991039', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50673', '991047', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50674', '991053', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50675', '991060', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50676', '991070', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50677', '991077', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50678', '991082', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50679', '991092', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50680', '991102', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50681', '991115', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50682', '991124', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50683', '991132', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50684', '991139', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50685', '991147', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50686', '991152', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50687', '991157', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50688', '991169', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50689', '991177', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50690', '991186', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50691', '991195', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50692', '991201', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50693', '991209', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50694', '991214', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50695', '991219', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50696', '991227', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50697', '991241', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50698', '991248', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50699', '991254', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50700', '991267', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50701', '991280', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50702', '991292', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50703', '991303', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50704', '991311', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50705', '991321', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50706', '991334', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50707', '991339', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50708', '991345', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50709', '991359', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50710', '991362', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50711', '991366', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50712', '991386', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50713', '991400', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50714', '991411', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50715', '991423', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50716', '991436', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50717', '991447', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50718', '991461', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50719', '991470', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50720', '991477', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50721', '991485', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50722', '991498', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50723', '991512', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50724', '991525', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50725', '991532', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50726', '991537', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50727', '991542', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50728', '991545', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50729', '991558', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50730', '991571', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50731', '991580', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50732', '991588', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50733', '991598', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50734', '991613', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50735', '991624', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50736', '991641', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50737', '991652', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50738', '991662', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50739', '991668', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50740', '991681', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50741', '991692', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50742', '991699', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50743', '991706', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50744', '991712', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50745', '991719', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50746', '991733', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50747', '991743', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50748', '991754', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50749', '991765', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50750', '991776', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50751', '991790', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50752', '991797', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50753', '991807', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50754', '991823', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50755', '991833', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50756', '991837', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50757', '991843', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50758', '991851', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50759', '991860', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50760', '991871', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50761', '991879', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50762', '991883', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50763', '991892', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50764', '991902', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50765', '991912', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50766', '991918', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50767', '991931', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50768', '991944', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50769', '991954', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50770', '991964', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50771', '991969', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50772', '991976', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50773', '991988', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50774', '992000', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50775', '992013', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50776', '992019', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50777', '992028', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50778', '992042', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50779', '992053', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50780', '992064', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50781', '992070', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50782', '992078', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50783', '992084', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50784', '992092', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50785', '992102', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50786', '992109', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50787', '992118', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50788', '992124', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50789', '992133', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50790', '992138', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50791', '992145', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50792', '992150', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50793', '992159', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50794', '992164', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50795', '992171', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50796', '992177', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50797', '992190', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50798', '992201', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50799', '992219', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50800', '992228', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50801', '992233', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50802', '992238', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50803', '992243', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50804', '992249', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50805', '992257', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50806', '992270', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50807', '992276', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50808', '992288', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50809', '992295', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50810', '992303', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50811', '992308', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50820', '992319', '1', null, null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50821', '992339', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50822', '992346', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50823', '992352', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50824', '992360', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50825', '992367', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50826', '992378', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50827', '992386', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50828', '992392', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50829', '992398', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50830', '992410', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50831', '992420', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50832', '992427', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50833', '992438', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50834', '992446', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50835', '992454', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50836', '992463', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50837', '992469', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50838', '992474', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50839', '992488', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50840', '992507', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50841', '992525', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50842', '992537', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50843', '992542', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50844', '992557', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50846', '992575', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50848', '992593', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50849', '992610', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50850', '992623', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50851', '992638', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50852', '992648', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50853', '992658', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50854', '992664', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50855', '992676', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50856', '992682', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50857', '992693', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50858', '992702', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50859', '992713', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50860', '992727', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50861', '992736', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50862', '992740', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50863', '992753', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50864', '992759', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50865', '992764', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50866', '992768', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50868', '992789', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50870', '992821', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50871', '992833', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50873', '992849', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50874', '992863', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50875', '992868', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50876', '992881', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50877', '992896', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50878', '992908', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50879', '992922', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50880', '992934', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50881', '992947', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50882', '992958', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50883', '992966', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50884', '992975', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50885', '992978', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50886', '992984', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50887', '992992', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50888', '992997', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50889', '993004', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50890', '993012', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50891', '993020', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50892', '993029', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50893', '993037', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50894', '993047', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50895', '993056', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50896', '993065', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50898', '993080', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50899', '993085', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50900', '993090', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50901', '993096', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50902', '993103', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50903', '993110', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50904', '993116', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50905', '993123', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50906', '993127', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50907', '993133', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50908', '993139', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50909', '993143', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50910', '993153', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50912', '993162', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50913', '993166', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50914', '993175', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50915', '993180', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50916', '993190', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50917', '993200', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50918', '993205', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50919', '993218', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50920', '993227', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50921', '993238', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50922', '993246', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50948', '993650', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50949', '993682', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50951', '993722', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50952', '993749', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50953', '993782', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50954', '993810', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50956', '993834', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50957', '993846', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50958', '993854', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50959', '993870', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50960', '993893', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50961', '993913', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50962', '993930', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50963', '993942', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50964', '993956', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50965', '993967', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50966', '993983', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50967', '993997', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50968', '994012', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50969', '994018', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50970', '994026', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50971', '994045', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('50972', '994055', '1', '10', null, null, null, '2017-01-05 14:57:18', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('52115', '120117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52116', '120118', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52118', '130109', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52119', '130110', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52120', '130111', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52122', '130209', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52124', '130306', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52128', '130606', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52129', '130607', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52130', '130608', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52131', '130609', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52137', '139001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52138', '139002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52143', '140402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52144', '140411', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52176', '220113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52182', '220605', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52184', '220781', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52187', '230110', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52188', '230112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52189', '230113', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52202', '320117', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52203', '320118', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52206', '320312', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52208', '320413', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52210', '320509', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52213', '320707', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52216', '320904', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52218', '321012', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52221', '321204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52224', '330111', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52227', '330305', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52231', '330603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52232', '330604', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52239', '340124', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52240', '340181', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52242', '340225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52246', '340523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52265', '350703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52267', '350803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52270', '360112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52277', '360703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52282', '361103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52291', '370812', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52293', '370911', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52295', '371003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52300', '371403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52303', '371603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52307', '410212', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52309', '410311', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52324', '419001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52328', '420304', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52338', '421303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52339', '429004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52340', '429005', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52341', '429006', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52342', '429021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52344', '430112', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52358', '440117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52359', '440118', '0', '30000', null, null, null, '2017-01-10 16:54:44', 'admin123');
INSERT INTO `ms_area_agent` VALUES ('52368', '440904', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52370', '441204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52373', '441403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52377', '441704', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52379', '441803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52381', '445103', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52383', '445203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52385', '445303', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52387', '450110', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52390', '450312', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52398', '451081', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52405', '460202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52406', '460203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52407', '460204', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52408', '460205', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52409', '469001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52410', '469002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52411', '469003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52412', '469005', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52413', '469006', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52414', '469007', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52415', '469021', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52416', '469022', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52417', '469023', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52418', '469024', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52423', '469029', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52424', '469030', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52425', '500116', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52426', '500117', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52427', '500118', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52428', '500119', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52429', '500120', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52430', '500151', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52431', '500152', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52432', '500153', '0', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52445', '511403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52447', '511503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52450', '511703', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52452', '511803', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52455', '513301', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52457', '520115', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52460', '520403', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52462', '520502', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52463', '520521', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52464', '520522', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52465', '520523', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52466', '520524', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52467', '520525', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52468', '520526', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52469', '520527', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52471', '520602', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52472', '520603', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52473', '520621', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52474', '520622', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52475', '520623', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52476', '520624', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52477', '520625', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52478', '520626', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52479', '520627', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52480', '520628', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52482', '530114', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52486', '530581', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52491', '532503', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52492', '532504', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52493', '532601', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52494', '533401', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52496', '540202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52497', '540221', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52498', '540222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52499', '540223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52500', '540224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52501', '540225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52502', '540226', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52503', '540227', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52504', '540228', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52505', '540229', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52506', '540230', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52507', '540231', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52508', '540232', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52509', '540233', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52510', '540234', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52511', '540235', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52512', '540236', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52513', '540237', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52514', '540302', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52515', '540321', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52516', '540322', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52517', '540323', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52518', '540324', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52519', '540325', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52520', '540326', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52521', '540327', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52522', '540328', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52523', '540329', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52524', '540330', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52525', '540402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52526', '540421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52527', '540422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52528', '540423', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52529', '540424', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52530', '540425', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52531', '540426', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52533', '610117', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52556', '630202', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52557', '630203', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52558', '630222', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52559', '630223', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52560', '630224', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52561', '630225', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52562', '632701', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52570', '650402', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52571', '650421', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52572', '650422', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52573', '654004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52574', '659001', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52575', '659002', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52576', '659003', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52577', '659004', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52578', '994056', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52579', '994057', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52580', '994058', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52581', '994059', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52582', '994060', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52583', '994061', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52584', '994062', '1', '30000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52607', '442000001000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52608', '442000002000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52609', '442000003000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52610', '442000004000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52611', '442000005000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52612', '442000006000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52613', '442000100000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52614', '442000101000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52615', '442000102000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52616', '442000103000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52617', '442000104000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52618', '442000105000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52619', '442000106000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52620', '442000107000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52621', '442000108000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52623', '442000109000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52624', '442000110000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52625', '442000111000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52626', '442000112000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52627', '442000113000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52628', '442000114000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52629', '442000115000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52630', '442000116000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52631', '442000117000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52632', '441900003000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52633', '441900004000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52634', '441900005000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52635', '441900006000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52636', '441900101000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52637', '441900102000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52638', '441900103000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52639', '441900104000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52640', '441900105000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52641', '441900111000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52642', '441900106000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52643', '441900107000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52644', '441900108000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52645', '441900109000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52646', '441900106000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52647', '441900110000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52648', '441900112000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52649', '441900113000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52650', '441900114000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52651', '441900115000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52652', '441900116000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52653', '441900117000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52654', '441900118000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52655', '441900119000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52656', '441900121000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52657', '441900122000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52658', '441900123000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52659', '441900124000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52660', '441900125000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52661', '441900126000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52662', '441900127000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52663', '441900128000', '0', '10000', null, null, null, null, null);
INSERT INTO `ms_area_agent` VALUES ('52664', '441900129000', '0', '10000', null, null, null, null, null);
