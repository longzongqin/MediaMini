/*
 Navicat Premium Data Transfer

 Source Server         : longzognqin
 Source Server Type    : MySQL
 Source Server Version : 50163
 Source Host           : 112.124.44.80
 Source Database       : wxapp

 Target Server Type    : MySQL
 Target Server Version : 50163
 File Encoding         : utf-8

 Date: 06/14/2017 20:48:58 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
--  Table structure for `log_info`
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `estTime` int(11) NOT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=MyISAM AUTO_INCREMENT=785 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `log_info`
-- ----------------------------
BEGIN;
INSERT INTO `log_info` VALUES ('1', '1', '1493402306'), ('2', '1', '1493402529'), ('3', '1', '1493402555'), ('4', '1', '1493402649'), ('5', '1', '1493402657'), ('6', '1', '1493402714'), ('7', '1', '1493402725'), ('8', '1', '1493402854'), ('9', '1', '1493402898'), ('10', '1', '1493403147'), ('11', '1', '1493403193'), ('12', '1', '1493403199'), ('13', '1', '1493403286'), ('14', '1', '1493403310'), ('15', '1', '1493403369'), ('16', '1', '1493403387'), ('17', '1', '1493403452'), ('18', '1', '1493403553'), ('19', '1', '1493403628'), ('20', '1', '1493403640'), ('21', '1', '1493403654'), ('22', '1', '1493403694'), ('23', '1', '1493403708'), ('24', '1', '1493403808'), ('25', '1', '1493403861'), ('26', '1', '1493403869'), ('27', '1', '1493403932'), ('28', '1', '1493404114'), ('29', '1', '1493427092'), ('30', '1', '1493552740'), ('31', '1', '1493645725'), ('32', '1', '1493647997'), ('33', '1', '1493693797'), ('34', '1', '1493693863'), ('35', '1', '1493693978'), ('36', '1', '1493694041'), ('37', '1', '1493694079'), ('38', '1', '1493694151'), ('39', '1', '1493700459'), ('40', '1', '1493700485'), ('41', '1', '1493700494'), ('42', '1', '1493700552'), ('43', '1', '1493700564'), ('44', '1', '1493700575'), ('45', '1', '1493700582'), ('46', '1', '1493700600'), ('47', '1', '1493700611'), ('48', '1', '1493700612'), ('49', '1', '1493700623'), ('50', '1', '1493700644'), ('51', '1', '1493700645'), ('52', '1', '1493702007'), ('53', '1', '1493702066'), ('54', '1', '1493702066'), ('55', '1', '1493702090'), ('56', '1', '1493702094'), ('57', '1', '1493702094'), ('58', '1', '1493702177'), ('59', '1', '1493702177'), ('60', '1', '1493702192'), ('61', '1', '1493702193'), ('62', '1', '1493702296'), ('63', '1', '1493702297'), ('64', '1', '1493702330'), ('65', '1', '1493702330'), ('66', '1', '1493702366'), ('67', '1', '1493702404'), ('68', '1', '1493702405'), ('69', '1', '1493702420'), ('70', '1', '1493702479'), ('71', '1', '1493702496'), ('72', '1', '1493702526'), ('73', '1', '1493702526'), ('74', '1', '1493702540'), ('75', '1', '1493702572'), ('76', '1', '1493702592'), ('77', '1', '1493702603'), ('78', '1', '1493702621'), ('79', '1', '1493702621'), ('80', '1', '1493702646'), ('81', '1', '1493702688'), ('82', '1', '1493702727'), ('83', '1', '1493702801'), ('84', '1', '1493702802'), ('85', '1', '1493702852'), ('86', '1', '1493702883'), ('87', '1', '1493702903'), ('88', '1', '1493702986'), ('89', '1', '1493705160'), ('90', '1', '1493705296'), ('91', '1', '1493705383'), ('92', '1', '1493705859'), ('93', '1', '1493705875'), ('94', '1', '1493705882'), ('95', '1', '1493705894'), ('96', '1', '1493705907'), ('97', '1', '1493705917'), ('98', '1', '1493706186'), ('99', '1', '1493706476'), ('100', '1', '1493706480'), ('101', '1', '1493706488'), ('102', '1', '1493706496'), ('103', '1', '1493706543'), ('104', '1', '1493706690'), ('105', '1', '1493706709'), ('106', '1', '1493706710'), ('107', '1', '1493706799'), ('108', '1', '1493706846'), ('109', '1', '1493706855'), ('110', '1', '1493706903'), ('111', '1', '1493706997'), ('112', '1', '1493707014'), ('113', '1', '1493707155'), ('114', '1', '1493707179'), ('115', '1', '1493707470'), ('116', '1', '1493707508'), ('117', '1', '1493708308'), ('118', '1', '1493708360'), ('119', '1', '1493708400'), ('120', '1', '1493708497'), ('121', '1', '1493708615'), ('122', '1', '1493708801'), ('123', '1', '1493708808'), ('124', '1', '1493708818'), ('125', '1', '1493709270'), ('126', '1', '1493709278'), ('127', '1', '1493709300'), ('128', '1', '1493709315'), ('129', '1', '1493709324'), ('130', '1', '1493709331'), ('131', '1', '1493709338'), ('132', '1', '1493709348'), ('133', '1', '1493709361'), ('134', '1', '1493709368'), ('135', '1', '1493709375'), ('136', '1', '1493709379'), ('137', '1', '1493709417'), ('138', '1', '1493709778'), ('139', '1', '1493709784'), ('140', '1', '1493709789'), ('141', '1', '1493709863'), ('142', '1', '1493709927'), ('143', '1', '1493709946'), ('144', '1', '1493709962'), ('145', '1', '1493709973'), ('146', '1', '1493709988'), ('147', '1', '1493710044'), ('148', '1', '1493710074'), ('149', '1', '1493710163'), ('150', '1', '1493710173'), ('151', '1', '1493710201'), ('152', '1', '1493710210'), ('153', '1', '1493710237'), ('154', '1', '1493710259'), ('155', '1', '1493710269'), ('156', '1', '1493710286'), ('157', '1', '1493710300'), ('158', '1', '1493710359'), ('159', '1', '1493710398'), ('160', '1', '1493710419'), ('161', '1', '1493710449'), ('162', '1', '1493710472'), ('163', '1', '1493710489'), ('164', '1', '1493710504'), ('165', '1', '1493710528'), ('166', '1', '1493710555'), ('167', '1', '1493710590'), ('168', '1', '1493710599'), ('169', '1', '1493710615'), ('170', '1', '1493710682'), ('171', '1', '1493710721'), ('172', '1', '1493710760'), ('173', '1', '1493710775'), ('174', '1', '1493710787'), ('175', '1', '1493710903'), ('176', '1', '1493710934'), ('177', '1', '1493710941'), ('178', '1', '1493710954'), ('179', '1', '1493711060'), ('180', '1', '1493711446'), ('181', '1', '1493711514'), ('182', '1', '1493711545'), ('183', '1', '1493711570'), ('184', '1', '1493711609'), ('185', '1', '1493711632'), ('186', '1', '1493711670'), ('187', '1', '1493711689'), ('188', '1', '1493711703'), ('189', '1', '1493711765'), ('190', '1', '1493711790'), ('191', '1', '1493711839'), ('192', '1', '1493711848'), ('193', '1', '1493711863'), ('194', '1', '1493711872'), ('195', '1', '1493711917'), ('196', '1', '1493711930'), ('197', '1', '1493711939'), ('198', '1', '1493712286'), ('199', '1', '1493712377'), ('200', '1', '1493712393'), ('201', '1', '1493712409'), ('202', '1', '1493712422'), ('203', '1', '1493712454'), ('204', '1', '1493712477'), ('205', '1', '1493712508'), ('206', '1', '1493712527'), ('207', '1', '1493712558'), ('208', '1', '1493712585'), ('209', '1', '1493712597'), ('210', '1', '1493712656'), ('211', '1', '1493712666'), ('212', '1', '1493712733'), ('213', '1', '1493712749'), ('214', '1', '1493712761'), ('215', '1', '1493712780'), ('216', '1', '1493712821'), ('217', '1', '1493712837'), ('218', '1', '1493713074'), ('219', '1', '1493713159'), ('220', '1', '1493713478'), ('221', '1', '1493713574'), ('222', '1', '1493713927'), ('223', '1', '1493713991'), ('224', '1', '1493714070'), ('225', '1', '1493714115'), ('226', '1', '1493714136'), ('227', '1', '1493714159'), ('228', '1', '1493714291'), ('229', '1', '1493714398'), ('230', '1', '1493714679'), ('231', '1', '1493715153'), ('232', '1', '1493715182'), ('233', '1', '1493715196'), ('234', '1', '1493715918'), ('235', '1', '1493715958'), ('236', '1', '1493716050'), ('237', '1', '1493716172'), ('238', '1', '1493716211'), ('239', '1', '1493716922'), ('240', '1', '1493717104'), ('241', '1', '1493717231'), ('242', '1', '1493718419'), ('243', '1', '1493718584'), ('244', '1', '1493718672'), ('245', '1', '1493718695'), ('246', '1', '1493718727'), ('247', '1', '1493718799'), ('248', '1', '1493718892'), ('249', '1', '1493719158'), ('250', '1', '1493719166'), ('251', '1', '1493719277'), ('252', '1', '1493719317'), ('253', '1', '1493719488'), ('254', '1', '1493719526'), ('255', '1', '1493719598'), ('256', '1', '1493719830'), ('257', '1', '1493719855'), ('258', '1', '1493719965'), ('259', '1', '1493720016'), ('260', '1', '1493720145'), ('261', '1', '1493720211'), ('262', '1', '1493720256'), ('263', '1', '1493720326'), ('264', '1', '1493720437'), ('265', '1', '1493720450'), ('266', '1', '1493720556'), ('267', '1', '1493720674'), ('268', '1', '1493720688'), ('269', '1', '1493720718'), ('270', '1', '1493720738'), ('271', '1', '1493720750'), ('272', '1', '1493720757'), ('273', '1', '1493720779'), ('274', '1', '1493720804'), ('275', '1', '1493720854'), ('276', '1', '1493720884'), ('277', '1', '1493721116'), ('278', '1', '1493721123'), ('279', '1', '1493721128'), ('280', '1', '1493721313'), ('281', '1', '1493721345'), ('282', '1', '1493721375'), ('283', '1', '1493721397'), ('284', '1', '1493721418'), ('285', '1', '1493721434'), ('286', '1', '1493721460'), ('287', '1', '1493721472'), ('288', '1', '1493721576'), ('289', '1', '1493721604'), ('290', '1', '1493721642'), ('291', '1', '1493721941'), ('292', '1', '1493727805'), ('293', '1', '1493776105'), ('294', '1', '1493776122'), ('295', '1', '1493776514'), ('296', '1', '1493776516'), ('297', '1', '1493776542'), ('298', '1', '1493776546'), ('299', '1', '1493776616'), ('300', '1', '1493776693'), ('301', '1', '1493776784'), ('302', '1', '1493777055'), ('303', '1', '1493777074'), ('304', '1', '1493777356'), ('305', '1', '1493777373'), ('306', '1', '1493777471'), ('307', '1', '1493777532'), ('308', '1', '1493778263'), ('309', '1', '1493779576'), ('310', '1', '1493779698'), ('311', '1', '1493779726'), ('312', '1', '1493779753'), ('313', '1', '1493779774'), ('314', '1', '1493779809'), ('315', '1', '1493779822'), ('316', '1', '1493779836'), ('317', '1', '1493784646'), ('318', '1', '1493784680'), ('319', '1', '1493784694'), ('320', '1', '1493784709'), ('321', '1', '1493784768'), ('322', '1', '1493784876'), ('323', '1', '1493784952'), ('324', '1', '1493785010'), ('325', '1', '1493785041'), ('326', '1', '1493785105'), ('327', '1', '1493785156'), ('328', '1', '1493785190'), ('329', '1', '1493785295'), ('330', '1', '1493785456'), ('331', '1', '1493785558'), ('332', '1', '1493785690'), ('333', '1', '1493785712'), ('334', '1', '1493785782'), ('335', '1', '1493785900'), ('336', '1', '1493788501'), ('337', '1', '1493788588'), ('338', '1', '1493788641'), ('339', '1', '1493788668'), ('340', '1', '1493788692'), ('341', '1', '1493788721'), ('342', '1', '1493788775'), ('343', '1', '1493788869'), ('344', '1', '1493790186'), ('345', '1', '1493790277'), ('346', '1', '1493790323'), ('347', '1', '1493790570'), ('348', '1', '1493790601'), ('349', '1', '1493790714'), ('350', '1', '1493790790'), ('351', '1', '1493790794'), ('352', '1', '1493790804'), ('353', '1', '1493790895'), ('354', '1', '1493790907'), ('355', '1', '1493790922'), ('356', '1', '1493790947'), ('357', '1', '1493791025'), ('358', '1', '1493791046'), ('359', '1', '1493791236'), ('360', '1', '1493795300'), ('361', '1', '1493795364'), ('362', '1', '1493795408'), ('363', '1', '1493795413'), ('364', '1', '1493795418'), ('365', '1', '1493795485'), ('366', '1', '1493795645'), ('367', '1', '1493796060'), ('368', '1', '1493796594'), ('369', '1', '1493796685'), ('370', '1', '1493798608'), ('371', '1', '1493799134'), ('372', '1', '1493799612'), ('373', '1', '1493799659'), ('374', '1', '1493800431'), ('375', '1', '1493800546'), ('376', '1', '1493800568'), ('377', '1', '1493800634'), ('378', '1', '1493801440'), ('379', '1', '1493801489'), ('380', '1', '1493801550'), ('381', '1', '1493801603'), ('382', '1', '1493801642'), ('383', '1', '1493801680'), ('384', '1', '1493801687'), ('385', '1', '1493801727'), ('386', '1', '1493801754'), ('387', '1', '1493801763'), ('388', '1', '1493801777'), ('389', '1', '1493801905'), ('390', '1', '1493801936'), ('391', '1', '1493801950'), ('392', '1', '1493801963'), ('393', '1', '1493802082'), ('394', '1', '1493802311'), ('395', '1', '1493802386'), ('396', '1', '1493802405'), ('397', '1', '1493802417'), ('398', '1', '1493802458'), ('399', '1', '1493802630'), ('400', '1', '1493802671'), ('401', '1', '1493802760'), ('402', '1', '1493802910'), ('403', '1', '1493802932'), ('404', '1', '1493803002'), ('405', '1', '1493803018'), ('406', '1', '1493803037'), ('407', '1', '1493803220'), ('408', '1', '1493803370'), ('409', '1', '1493803414'), ('410', '1', '1493803441'), ('411', '1', '1493803580'), ('412', '1', '1493803587'), ('413', '1', '1493803678'), ('414', '1', '1493803706'), ('415', '1', '1493803731'), ('416', '1', '1493803736'), ('417', '1', '1493803758'), ('418', '1', '1493803789'), ('419', '1', '1493803805'), ('420', '1', '1493803938'), ('421', '1', '1493803990'), ('422', '1', '1493804015'), ('423', '1', '1493804095'), ('424', '1', '1493804135'), ('425', '1', '1493804308'), ('426', '1', '1493804323'), ('427', '1', '1493804720'), ('428', '1', '1493805206'), ('429', '1', '1493805221'), ('430', '1', '1493805265'), ('431', '1', '1493805375'), ('432', '1', '1493805399'), ('433', '1', '1493805503'), ('434', '1', '1493805744'), ('435', '1', '1493806077'), ('436', '1', '1493806125'), ('437', '1', '1493806147'), ('438', '1', '1493806164'), ('439', '1', '1493806246'), ('440', '1', '1493806257'), ('441', '1', '1493806328'), ('442', '1', '1493806331'), ('443', '1', '1493806367'), ('444', '1', '1493806416'), ('445', '1', '1493806442'), ('446', '1', '1493806487'), ('447', '1', '1493806489'), ('448', '1', '1493806509'), ('449', '1', '1493806525'), ('450', '1', '1493806553'), ('451', '1', '1493806575'), ('452', '1', '1493807393'), ('453', '1', '1493807412'), ('454', '1', '1493807423'), ('455', '1', '1493807457'), ('456', '1', '1493807496'), ('457', '1', '1493807639'), ('458', '1', '1493807731'), ('459', '1', '1493807764'), ('460', '1', '1493807977'), ('461', '1', '1493808196'), ('462', '1', '1493808259'), ('463', '1', '1493808361'), ('464', '1', '1493808407'), ('465', '1', '1493808629'), ('466', '1', '1493808726'), ('467', '1', '1493808835'), ('468', '1', '1493808975'), ('469', '1', '1493809070'), ('470', '1', '1493809071'), ('471', '1', '1493825312'), ('472', '1', '1493825963'), ('473', '1', '1493826071'), ('474', '1', '1493826299'), ('475', '1', '1493826337'), ('476', '1', '1493826924'), ('477', '1', '1493827000'), ('478', '1', '1493827032'), ('479', '1', '1493827133'), ('480', '1', '1493827167'), ('481', '1', '1493827190'), ('482', '1', '1493827204'), ('483', '1', '1493827263'), ('484', '1', '1493827294'), ('485', '1', '1493827306'), ('486', '1', '1493827327'), ('487', '1', '1493827376'), ('488', '1', '1493827392'), ('489', '1', '1493827431'), ('490', '1', '1493827471'), ('491', '1', '1493827506'), ('492', '1', '1493827539'), ('493', '1', '1493827570'), ('494', '1', '1493827595'), ('495', '1', '1493827611'), ('496', '1', '1493827629'), ('497', '1', '1493827650'), ('498', '1', '1493827667'), ('499', '1', '1493827705'), ('500', '1', '1493827764'), ('501', '1', '1493827920'), ('502', '1', '1493827939'), ('503', '1', '1493827972'), ('504', '1', '1493828002'), ('505', '1', '1493828034'), ('506', '1', '1493828286'), ('507', '1', '1493828317'), ('508', '1', '1493828477'), ('509', '1', '1493828712'), ('510', '1', '1493828973'), ('511', '1', '1493828996'), ('512', '1', '1493829077'), ('513', '1', '1493829116'), ('514', '1', '1493829157'), ('515', '1', '1493829385'), ('516', '1', '1493829421'), ('517', '1', '1493829449'), ('518', '1', '1493829621'), ('519', '1', '1493829697'), ('520', '1', '1493829719'), ('521', '1', '1493829773'), ('522', '1', '1493829906'), ('523', '1', '1493829952'), ('524', '1', '1493830064'), ('525', '1', '1493830073'), ('526', '1', '1493830154'), ('527', '1', '1493830201'), ('528', '1', '1493830232'), ('529', '1', '1493830278'), ('530', '1', '1493830784'), ('531', '1', '1493830916'), ('532', '1', '1493832839'), ('533', '1', '1493832879'), ('534', '1', '1493832923'), ('535', '1', '1493833047'), ('536', '1', '1493857997'), ('537', '1', '1493865090'), ('538', '1', '1493866955'), ('539', '1', '1493866994'), ('540', '1', '1493867787'), ('541', '1', '1493867886'), ('542', '1', '1493867953'), ('543', '1', '1493867973'), ('544', '1', '1493868085'), ('545', '1', '1493868146'), ('546', '1', '1493868164'), ('547', '1', '1493868179'), ('548', '1', '1493868198'), ('549', '1', '1493868217'), ('550', '1', '1493868302'), ('551', '1', '1493868458'), ('552', '1', '1493868480'), ('553', '1', '1493868523'), ('554', '1', '1493868586'), ('555', '1', '1493868729'), ('556', '1', '1493868960'), ('557', '1', '1493869036'), ('558', '1', '1493869048'), ('559', '1', '1493869121'), ('560', '1', '1493869676'), ('561', '1', '1493869698'), ('562', '1', '1493869714'), ('563', '1', '1493869786'), ('564', '1', '1493869800'), ('565', '1', '1493869859'), ('566', '1', '1493869892'), ('567', '1', '1493869918'), ('568', '1', '1493869936'), ('569', '1', '1493870014'), ('570', '1', '1493870259'), ('571', '1', '1493870331'), ('572', '1', '1493870422'), ('573', '1', '1493898931'), ('574', '1', '1493907864'), ('575', '1', '1493907965'), ('576', '1', '1493908006'), ('577', '1', '1493908032'), ('578', '1', '1493908052'), ('579', '1', '1493910216'), ('580', '1', '1493916003'), ('581', '1', '1493998058'), ('582', '1', '1493998307'), ('583', '1', '1493998435'), ('584', '1', '1493998550'), ('585', '1', '1493998629'), ('586', '1', '1493998750'), ('587', '1', '1493999578'), ('588', '1', '1493999623'), ('589', '1', '1493999640'), ('590', '1', '1493999681'), ('591', '1', '1493999749'), ('592', '1', '1493999783'), ('593', '1', '1493999866'), ('594', '1', '1493999949'), ('595', '1', '1494000818'), ('596', '1', '1494000987'), ('597', '1', '1494001592'), ('598', '1', '1494001617'), ('599', '1', '1494001681'), ('600', '1', '1494001711'), ('601', '1', '1494001746'), ('602', '1', '1494001834'), ('603', '1', '1494001841'), ('604', '1', '1494001881'), ('605', '1', '1494002446'), ('606', '1', '1494002509'), ('607', '1', '1494002657'), ('608', '1', '1494002729'), ('609', '1', '1494002802'), ('610', '1', '1494002827'), ('611', '1', '1494003093'), ('612', '1', '1494003195'), ('613', '1', '1494003215'), ('614', '1', '1494003252'), ('615', '1', '1494003301'), ('616', '1', '1494003335'), ('617', '1', '1494003352'), ('618', '1', '1494003396'), ('619', '1', '1494003459'), ('620', '1', '1494003505'), ('621', '1', '1494003574'), ('622', '1', '1494003597'), ('623', '1', '1494003790'), ('624', '1', '1494003825'), ('625', '1', '1494004047'), ('626', '1', '1494004231'), ('627', '1', '1494004298'), ('628', '1', '1494004619'), ('629', '1', '1494004979'), ('630', '1', '1494005035'), ('631', '1', '1494005071'), ('632', '1', '1494005308'), ('633', '1', '1494005385'), ('634', '1', '1494005459'), ('635', '1', '1494005631'), ('636', '1', '1494005690'), ('637', '1', '1494005725'), ('638', '1', '1494005873'), ('639', '1', '1494005906'), ('640', '1', '1494006055'), ('641', '1', '1494006111'), ('642', '1', '1494006180'), ('643', '1', '1494006201'), ('644', '1', '1494006217'), ('645', '1', '1494006832'), ('646', '1', '1494006883'), ('647', '1', '1494006929'), ('648', '1', '1494006955'), ('649', '1', '1494007021'), ('650', '1', '1494007060'), ('651', '1', '1494007096'), ('652', '1', '1494007114'), ('653', '1', '1494007141'), ('654', '1', '1494032550'), ('655', '1', '1494033310'), ('656', '1', '1494034558'), ('657', '1', '1494034564'), ('658', '1', '1494034965'), ('659', '1', '1494035066'), ('660', '1', '1494035082'), ('661', '1', '1494035427'), ('662', '1', '1494035442'), ('663', '1', '1494035646'), ('664', '1', '1494035724'), ('665', '1', '1494036078'), ('666', '1', '1494036256'), ('667', '1', '1494036285'), ('668', '1', '1494036292'), ('669', '1', '1494036585'), ('670', '1', '1494036596'), ('671', '1', '1494036616'), ('672', '1', '1494036635'), ('673', '1', '1494036650'), ('674', '1', '1494036662'), ('675', '1', '1494036687'), ('676', '1', '1494036798'), ('677', '1', '1494036867'), ('678', '1', '1494036908'), ('679', '1', '1494037017'), ('680', '1', '1494037053'), ('681', '1', '1494037083'), ('682', '1', '1494037099'), ('683', '1', '1494037182'), ('684', '1', '1494037202'), ('685', '1', '1494037218'), ('686', '1', '1494037232'), ('687', '1', '1494037250'), ('688', '1', '1494037282'), ('689', '1', '1494037313'), ('690', '1', '1494037427'), ('691', '1', '1494037463'), ('692', '1', '1494037708'), ('693', '1', '1494038389'), ('694', '1', '1494038460'), ('695', '1', '1494038474'), ('696', '1', '1494038492'), ('697', '1', '1494038581'), ('698', '1', '1494038589'), ('699', '1', '1494038606'), ('700', '1', '1494038730'), ('701', '1', '1494130863'), ('702', '1', '1494131315'), ('703', '1', '1494210812'), ('704', '1', '1494211083'), ('705', '1', '1494211100'), ('706', '1', '1494211116'), ('707', '1', '1494211151'), ('708', '1', '1494211201'), ('709', '1', '1494211291'), ('710', '1', '1494211326'), ('711', '1', '1494211390'), ('712', '1', '1494211430'), ('713', '1', '1494211444'), ('714', '1', '1494211784'), ('715', '1', '1494211797'), ('716', '1', '1494211818'), ('717', '1', '1494211883'), ('718', '1', '1494211922'), ('719', '1', '1494211929'), ('720', '1', '1494211955'), ('721', '1', '1494211971'), ('722', '1', '1494212005'), ('723', '1', '1494212030'), ('724', '1', '1494212042'), ('725', '1', '1494212144'), ('726', '1', '1494265300'), ('727', '1', '1494294653'), ('728', '1', '1494296701'), ('729', '2', '1494296720'), ('730', '1', '1494296739'), ('731', '1', '1494296832'), ('732', '1', '1494296991'), ('733', '1', '1494296999'), ('734', '1', '1494297014'), ('735', '1', '1494308882'), ('736', '1', '1494309445'), ('737', '1', '1494309459'), ('738', '1', '1494314498'), ('739', '1', '1494316439'), ('740', '1', '1494316443'), ('741', '1', '1494316485'), ('742', '1', '1494323923'), ('743', '1', '1494336025'), ('744', '1', '1494387443'), ('745', '3', '1494398339'), ('746', '1', '1494408347'), ('747', '1', '1494408751'), ('748', '1', '1494409679'), ('749', '1', '1494410223'), ('750', '1', '1494410375'), ('751', '1', '1494411006'), ('752', '1', '1494411061'), ('753', '1', '1494411095'), ('754', '1', '1494411465'), ('755', '1', '1494436502'), ('756', '1', '1494469213'), ('757', '1', '1494469221'), ('758', '1', '1494469224'), ('759', '1', '1494483813'), ('760', '1', '1494484869'), ('761', '1', '1494569403'), ('762', '1', '1494582536'), ('763', '1', '1494582735'), ('764', '1', '1494583168'), ('765', '1', '1494641553'), ('766', '1', '1494653063'), ('767', '1', '1494655292'), ('768', '1', '1494685458'), ('769', '1', '1494828071'), ('770', '1', '1494830423'), ('771', '1', '1494921453'), ('772', '1', '1494988948'), ('773', '1', '1495120325'), ('774', '1', '1495175790'), ('775', '1', '1495367739'), ('776', '1', '1495770099'), ('777', '1', '1495770099'), ('778', '1', '1495770108'), ('779', '1', '1495770111'), ('780', '1', '1495770112'), ('781', '1', '1496104997'), ('782', '1', '1496310352'), ('783', '1', '1496731774'), ('784', '1', '1497178313');
COMMIT;

-- ----------------------------
--  Table structure for `media_info`
-- ----------------------------
DROP TABLE IF EXISTS `media_info`;
CREATE TABLE `media_info` (
  `mediaID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0图片、1视频',
  `url` varchar(255) NOT NULL,
  `estTime` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `userID` int(11) DEFAULT '0',
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mediaID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `media_info`
-- ----------------------------
BEGIN;
INSERT INTO `media_info` VALUES ('1', '骑行60公里，累到不行……', '0', '201705/04/201705044530.jpg', '1493831193', '0', '1', '40.077', '116.351', '回龙观'), ('2', '骑行60公里，累到不行……', '0', '201705/04/201705045737.jpg', '1493831193', '0', '1', '40.077', '116.351', '回龙观'), ('3', '骑行60公里，累到不行……', '0', '201705/04/201705043507.jpg', '1493831194', '0', '1', '40.077', '116.351', '回龙观'), ('4', '骑行60公里，累到不行……', '0', '201705/04/201705042147.jpg', '1493831194', '0', '1', '40.077', '116.351', '回龙观'), ('5', '骑行60公里，累到不行……', '0', '201705/04/201705047939.jpg', '1493831195', '0', '1', '40.077', '116.351', '回龙观'), ('6', '骑行60公里，累到不行……', '0', '201705/04/201705047424.jpg', '1493831195', '0', '1', '40.077', '116.351', '回龙观'), ('7', '云其实走得很快，短短几分钟的浓缩', '1', '201705/04/201705042204.mp4', '1493831722', '0', '1', '40.08', '116.347', '腾讯众创空间(北京昌平)'), ('8', 'Let go', '1', '201705/04/201705042955.mp4', '1493832968', '0', '1', '40.08', '116.347', '腾讯众创空间(北京昌平)'), ('9', '哈哈哈哈', '1', '201705/04/201705041659.mp4', '1493869993', '0', '1', '0', '0', ''), ('10', '明天骑行100公里，我们应该是疯了', '0', '201705/06/201705063743.jpg', '1494003547', '0', '1', '40.0764', '116.35', '北京市昌平第二中学'), ('11', '明天骑行100公里，我们应该是疯了', '0', '201705/06/201705064750.jpg', '1494003554', '0', '1', '40.0764', '116.35', '北京市昌平第二中学'), ('12', '没有想法', '0', '201705/06/201705066012.jpg', '1494003755', '0', '1', '40.0764', '116.35', '北京市昌平第二中学'), ('13', '明天你好', '0', '201705/06/201705068824.jpg', '1494003870', '0', '1', '0', '0', ''), ('14', '周二好', '0', '201705/09/201705091950.jpg', '1494309531', '0', '1', '40.08', '116.347', '腾讯众创空间(北京昌平)'), ('15', 'Give me a reason ', '1', '201705/09/201705096379.mp4', '1494324129', '0', '1', '40.08', '116.347', '腾讯众创空间(北京昌平)'), ('16', '打广告小弟弟', '0', '201705/10/201705104444.jpg', '1494398393', '0', '3', '0', '0', ''), ('17', '', '0', '201705/11/201705113412.jpg', '1494436541', '0', '1', '0', '0', ''), ('18', '哈哈哈哈', '0', '201705/11/201705113306.jpg', '1494436596', '0', '1', '0', '0', ''), ('19', '哈哈哈哈', '0', '201705/11/201705113740.jpg', '1494436596', '0', '1', '0', '0', '');
COMMIT;

-- ----------------------------
--  Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) DEFAULT NULL,
  `headImg` varchar(200) DEFAULT NULL,
  `joinTime` int(11) DEFAULT NULL,
  `openID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `openID` (`openID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_info`
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES ('1', '夜猫', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLSO7sOWsNicYegRT9A6sLehaxRSQtNlnlcA4tlpwUTKGvKeltgusbpu9IDibzv7wQibZ677jJaoLiajA/0', '1493402306', 'o63P80GYbNmMoei0iDMAXMOD0SSo'), ('2', '杨首长', 'http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqtHQQ5aIG6WibzBmbgGQSfCEicwiaDFJfzshStqmuZdibIV9thnKy0p2ahn1qDiaXSShDIrqvmj2pQgOQ/0', '1494296720', 'o63P80LwCuH4qS-Uz_5-MI6_NtVY'), ('3', '从前有座山', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKb4RQYa8bCkica6WvDjj0eeCHtT9tLbua0erca8KYAHZIErJdlOab6OW1qRVicfBRX3YQEs39xjlgQ/0', '1494398339', 'o63P80FnnnSc6nMEvZF302_lfQow');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
