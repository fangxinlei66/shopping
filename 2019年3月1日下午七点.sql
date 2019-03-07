/*
 Navicat Premium Data Transfer

 Source Server         : .
 Source Server Type    : SQL Server
 Source Server Version : 11002100
 Source Host           : 9YI7L72EE9K18Z0:1433
 Source Catalog        : shopping
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002100
 File Encoding         : 65001

 Date: 01/03/2019 19:28:15
*/


-- ----------------------------
-- Table structure for Address
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type IN ('U'))
	DROP TABLE [dbo].[Address]
GO

CREATE TABLE [dbo].[Address] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [UserId] int NULL,
  [ReceiverName] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Phone] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [AreaId] int NULL,
  [DetailAddress] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [IsDefault] bit NULL
)
GO

ALTER TABLE [dbo].[Address] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Address]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Address] ON
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'1', N'3007', N'房鑫磊', N'1000000', N'310104', N'徐汇区虹梅路2007号', N'0')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'2', N'3007', N'房鑫磊1', N'10222', N'421123', N'月亮湾108栋502室', N'0')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'3', N'3007', N'房小磊', N'10000', N'320505', N'长江路1006号', N'1')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'17', N'3007', N'asd', N'asd', N'421321', N'asdasd', N'0')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'18', N'3007', N'asfasfasdasd', N'asdasd', N'411421', N'asdasdasdasd', N'0')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'19', N'3018', N'房鑫磊2', N'123', N'431124', N'123123', N'1')
GO

INSERT INTO [dbo].[Address] ([Id], [UserId], [ReceiverName], [Phone], [AreaId], [DetailAddress], [IsDefault]) VALUES (N'21', N'3019', N'王锡坤', N'123123123123', N'421303', N'1231231', N'1')
GO

SET IDENTITY_INSERT [dbo].[Address] OFF
GO


-- ----------------------------
-- Table structure for Admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type IN ('U'))
	DROP TABLE [dbo].[Admin]
GO

CREATE TABLE [dbo].[Admin] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Username] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Password] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Nickname] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Avater] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Admin] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Admin]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Admin] ON
GO

INSERT INTO [dbo].[Admin] ([Id], [Username], [Password], [Nickname], [Avater]) VALUES (N'1', N'admin', N'admin', N'系统管理员', N'1.jpg')
GO

SET IDENTITY_INSERT [dbo].[Admin] OFF
GO


-- ----------------------------
-- Table structure for Area
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Area]') AND type IN ('U'))
	DROP TABLE [dbo].[Area]
GO

CREATE TABLE [dbo].[Area] (
  [Id] int NOT NULL,
  [Name] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [ParentId] int NULL
)
GO

ALTER TABLE [dbo].[Area] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Area]
-- ----------------------------
INSERT INTO [dbo].[Area]  VALUES (N'110000', N'北京市', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'110100', N'市辖区', N'110000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110101', N'东城区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110102', N'西城区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110105', N'朝阳区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110106', N'丰台区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110107', N'石景山区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110108', N'海淀区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110109', N'门头沟区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110111', N'房山区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110112', N'通州区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110113', N'顺义区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110114', N'昌平区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110115', N'大兴区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110116', N'怀柔区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110117', N'平谷区', N'110100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110200', N'县', N'110000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110228', N'密云县', N'110200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'110229', N'延庆县', N'110200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120000', N'天津市', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'120100', N'市辖区', N'120000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120101', N'和平区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120102', N'河东区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120103', N'河西区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120104', N'南开区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120105', N'河北区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120106', N'红桥区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120110', N'东丽区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120111', N'西青区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120112', N'津南区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120113', N'北辰区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120114', N'武清区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120115', N'宝坻区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120116', N'滨海新区', N'120100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120200', N'县', N'120000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120221', N'宁河县', N'120200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120223', N'静海县', N'120200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'120225', N'蓟县', N'120200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130000', N'河北省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'130100', N'石家庄市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130101', N'市辖区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130102', N'长安区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130103', N'桥东区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130104', N'桥西区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130105', N'新华区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130107', N'井陉矿区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130108', N'裕华区', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130121', N'井陉县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130123', N'正定县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130124', N'栾城县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130125', N'行唐县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130126', N'灵寿县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130127', N'高邑县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130128', N'深泽县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130129', N'赞皇县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130130', N'无极县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130131', N'平山县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130132', N'元氏县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130133', N'赵县', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130181', N'辛集市', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130182', N'藁城市', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130183', N'晋州市', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130184', N'新乐市', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130185', N'鹿泉市', N'130100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130200', N'唐山市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130201', N'市辖区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130202', N'路南区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130203', N'路北区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130204', N'古冶区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130205', N'开平区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130207', N'丰南区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130208', N'丰润区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130209', N'曹妃甸区', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130223', N'滦县', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130224', N'滦南县', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130225', N'乐亭县', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130227', N'迁西县', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130229', N'玉田县', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130281', N'遵化市', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130283', N'迁安市', N'130200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130300', N'秦皇岛市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130301', N'市辖区', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130302', N'海港区', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130303', N'山海关区', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130304', N'北戴河区', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130321', N'青龙满族自治县', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130322', N'昌黎县', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130323', N'抚宁县', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130324', N'卢龙县', N'130300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130400', N'邯郸市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130401', N'市辖区', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130402', N'邯山区', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130403', N'丛台区', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130404', N'复兴区', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130406', N'峰峰矿区', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130421', N'邯郸县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130423', N'临漳县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130424', N'成安县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130425', N'大名县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130426', N'涉县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130427', N'磁县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130428', N'肥乡县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130429', N'永年县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130430', N'邱县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130431', N'鸡泽县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130432', N'广平县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130433', N'馆陶县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130434', N'魏县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130435', N'曲周县', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130481', N'武安市', N'130400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130500', N'邢台市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130501', N'市辖区', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130502', N'桥东区', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130503', N'桥西区', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130521', N'邢台县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130522', N'临城县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130523', N'内丘县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130524', N'柏乡县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130525', N'隆尧县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130526', N'任县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130527', N'南和县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130528', N'宁晋县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130529', N'巨鹿县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130530', N'新河县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130531', N'广宗县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130532', N'平乡县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130533', N'威县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130534', N'清河县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130535', N'临西县', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130581', N'南宫市', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130582', N'沙河市', N'130500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130600', N'保定市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130601', N'市辖区', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130602', N'新市区', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130603', N'北市区', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130604', N'南市区', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130621', N'满城县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130622', N'清苑县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130623', N'涞水县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130624', N'阜平县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130625', N'徐水县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130626', N'定兴县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130627', N'唐县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130628', N'高阳县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130629', N'容城县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130630', N'涞源县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130631', N'望都县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130632', N'安新县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130633', N'易县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130634', N'曲阳县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130635', N'蠡县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130636', N'顺平县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130637', N'博野县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130638', N'雄县', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130681', N'涿州市', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130682', N'定州市', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130683', N'安国市', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130684', N'高碑店市', N'130600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130700', N'张家口市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130701', N'市辖区', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130702', N'桥东区', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130703', N'桥西区', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130705', N'宣化区', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130706', N'下花园区', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130721', N'宣化县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130722', N'张北县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130723', N'康保县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130724', N'沽源县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130725', N'尚义县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130726', N'蔚县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130727', N'阳原县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130728', N'怀安县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130729', N'万全县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130730', N'怀来县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130731', N'涿鹿县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130732', N'赤城县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130733', N'崇礼县', N'130700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130800', N'承德市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130801', N'市辖区', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130802', N'双桥区', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130803', N'双滦区', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130804', N'鹰手营子矿区', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130821', N'承德县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130822', N'兴隆县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130823', N'平泉县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130824', N'滦平县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130825', N'隆化县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130826', N'丰宁满族自治县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130827', N'宽城满族自治县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130828', N'围场满族蒙古族自治县', N'130800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130900', N'沧州市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130901', N'市辖区', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130902', N'新华区', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130903', N'运河区', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130921', N'沧县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130922', N'青县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130923', N'东光县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130924', N'海兴县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130925', N'盐山县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130926', N'肃宁县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130927', N'南皮县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130928', N'吴桥县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130929', N'献县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130930', N'孟村回族自治县', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130981', N'泊头市', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130982', N'任丘市', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130983', N'黄骅市', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'130984', N'河间市', N'130900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131000', N'廊坊市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131001', N'市辖区', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131002', N'安次区', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131003', N'广阳区', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131022', N'固安县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131023', N'永清县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131024', N'香河县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131025', N'大城县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131026', N'文安县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131028', N'大厂回族自治县', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131081', N'霸州市', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131082', N'三河市', N'131000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131100', N'衡水市', N'130000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131101', N'市辖区', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131102', N'桃城区', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131121', N'枣强县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131122', N'武邑县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131123', N'武强县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131124', N'饶阳县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131125', N'安平县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131126', N'故城县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131127', N'景县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131128', N'阜城县', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131181', N'冀州市', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'131182', N'深州市', N'131100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140000', N'山西省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'140100', N'太原市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140101', N'市辖区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140105', N'小店区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140106', N'迎泽区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140107', N'杏花岭区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140108', N'尖草坪区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140109', N'万柏林区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140110', N'晋源区', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140121', N'清徐县', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140122', N'阳曲县', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140123', N'娄烦县', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140181', N'古交市', N'140100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140200', N'大同市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140201', N'市辖区', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140202', N'城区', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140203', N'矿区', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140211', N'南郊区', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140212', N'新荣区', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140221', N'阳高县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140222', N'天镇县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140223', N'广灵县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140224', N'灵丘县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140225', N'浑源县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140226', N'左云县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140227', N'大同县', N'140200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140300', N'阳泉市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140301', N'市辖区', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140302', N'城区', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140303', N'矿区', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140311', N'郊区', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140321', N'平定县', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140322', N'盂县', N'140300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140400', N'长治市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140401', N'市辖区', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140402', N'城区', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140411', N'郊区', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140421', N'长治县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140423', N'襄垣县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140424', N'屯留县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140425', N'平顺县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140426', N'黎城县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140427', N'壶关县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140428', N'长子县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140429', N'武乡县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140430', N'沁县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140431', N'沁源县', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140481', N'潞城市', N'140400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140500', N'晋城市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140501', N'晋城市市辖区', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140502', N'城区', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140521', N'沁水县', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140522', N'阳城县', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140524', N'陵川县', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140525', N'泽州县', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140581', N'高平市', N'140500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140600', N'朔州市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140601', N'市辖区', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140602', N'朔城区', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140603', N'平鲁区', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140621', N'山阴县', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140622', N'应县', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140623', N'右玉县', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140624', N'怀仁县', N'140600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140700', N'晋中市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140701', N'市辖区', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140702', N'榆次区', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140721', N'榆社县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140722', N'左权县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140723', N'和顺县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140724', N'昔阳县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140725', N'寿阳县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140726', N'太谷县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140727', N'祁县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140728', N'平遥县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140729', N'灵石县', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140781', N'介休市', N'140700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140800', N'运城市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140801', N'市辖区', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140802', N'盐湖区', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140821', N'临猗县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140822', N'万荣县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140823', N'闻喜县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140824', N'稷山县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140825', N'新绛县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140826', N'绛县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140827', N'垣曲县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140828', N'夏县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140829', N'平陆县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140830', N'芮城县', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140881', N'永济市', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140882', N'河津市', N'140800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140900', N'忻州市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140901', N'市辖区', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140902', N'忻府区', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140921', N'定襄县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140922', N'五台县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140923', N'代县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140924', N'繁峙县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140925', N'宁武县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140926', N'静乐县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140927', N'神池县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140928', N'五寨县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140929', N'岢岚县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140930', N'河曲县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140931', N'保德县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140932', N'偏关县', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'140981', N'原平市', N'140900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141000', N'临汾市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141001', N'市辖区', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141002', N'尧都区', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141021', N'曲沃县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141022', N'翼城县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141023', N'襄汾县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141024', N'洪洞县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141025', N'古县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141026', N'安泽县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141027', N'浮山县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141028', N'吉县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141029', N'乡宁县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141030', N'大宁县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141031', N'隰县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141032', N'永和县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141033', N'蒲县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141034', N'汾西县', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141081', N'侯马市', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141082', N'霍州市', N'141000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141100', N'吕梁市', N'140000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141101', N'市辖区', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141102', N'离石区', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141121', N'文水县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141122', N'交城县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141123', N'兴县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141124', N'临县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141125', N'柳林县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141126', N'石楼县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141127', N'岚县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141128', N'方山县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141129', N'中阳县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141130', N'交口县', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141181', N'孝义市', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'141182', N'汾阳市', N'141100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150000', N'内蒙古自治区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'150100', N'呼和浩特市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150101', N'市辖区', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150102', N'新城区', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150103', N'回民区', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150104', N'玉泉区', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150105', N'赛罕区', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150121', N'土默特左旗', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150122', N'托克托县', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150123', N'和林格尔县', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150124', N'清水河县', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150125', N'武川县', N'150100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150200', N'包头市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150201', N'市辖区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150202', N'东河区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150203', N'昆都仑区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150204', N'青山区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150205', N'石拐区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150206', N'白云鄂博矿区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150207', N'九原区', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150221', N'土默特右旗', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150222', N'固阳县', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150223', N'达尔罕茂明安联合旗', N'150200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150300', N'乌海市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150301', N'市辖区', N'150300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150302', N'海勃湾区', N'150300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150303', N'海南区', N'150300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150304', N'乌达区', N'150300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150400', N'赤峰市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150401', N'市辖区', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150402', N'红山区', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150403', N'元宝山区', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150404', N'松山区', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150421', N'阿鲁科尔沁旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150422', N'巴林左旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150423', N'巴林右旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150424', N'林西县', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150425', N'克什克腾旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150426', N'翁牛特旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150428', N'喀喇沁旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150429', N'宁城县', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150430', N'敖汉旗', N'150400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150500', N'通辽市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150501', N'市辖区', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150502', N'科尔沁区', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150521', N'科尔沁左翼中旗', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150522', N'科尔沁左翼后旗', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150523', N'开鲁县', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150524', N'库伦旗', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150525', N'奈曼旗', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150526', N'扎鲁特旗', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150581', N'霍林郭勒市', N'150500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150600', N'鄂尔多斯市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150601', N'市辖区', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150602', N'东胜区', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150621', N'达拉特旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150622', N'准格尔旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150623', N'鄂托克前旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150624', N'鄂托克旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150625', N'杭锦旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150626', N'乌审旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150627', N'伊金霍洛旗', N'150600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150700', N'呼伦贝尔市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150701', N'市辖区', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150702', N'海拉尔区', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150721', N'阿荣旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150722', N'莫力达瓦达斡尔族自治旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150723', N'鄂伦春自治旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150724', N'鄂温克族自治旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150725', N'陈巴尔虎旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150726', N'新巴尔虎左旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150727', N'新巴尔虎右旗', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150781', N'满洲里市', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150782', N'牙克石市', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150783', N'扎兰屯市', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150784', N'额尔古纳市', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150785', N'根河市', N'150700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150800', N'巴彦淖尔市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150801', N'市辖区', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150802', N'临河区', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150821', N'五原县', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150822', N'磴口县', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150823', N'乌拉特前旗', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150824', N'乌拉特中旗', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150825', N'乌拉特后旗', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150826', N'杭锦后旗', N'150800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150900', N'乌兰察布市', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150901', N'市辖区', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150902', N'集宁区', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150921', N'卓资县', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150922', N'化德县', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150923', N'商都县', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150924', N'兴和县', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150925', N'凉城县', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150926', N'察哈尔右翼前旗', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150927', N'察哈尔右翼中旗', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150928', N'察哈尔右翼后旗', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150929', N'四子王旗', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'150981', N'丰镇市', N'150900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152200', N'兴安盟', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152201', N'乌兰浩特市', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152202', N'阿尔山市', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152221', N'科尔沁右翼前旗', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152222', N'科尔沁右翼中旗', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152223', N'扎赉特旗', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152224', N'突泉县', N'152200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152500', N'锡林郭勒盟', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152501', N'二连浩特市', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152502', N'锡林浩特市', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152522', N'阿巴嘎旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152523', N'苏尼特左旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152524', N'苏尼特右旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152525', N'东乌珠穆沁旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152526', N'西乌珠穆沁旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152527', N'太仆寺旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152528', N'镶黄旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152529', N'正镶白旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152530', N'正蓝旗', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152531', N'多伦县', N'152500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152900', N'阿拉善盟', N'150000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152921', N'阿拉善左旗', N'152900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152922', N'阿拉善右旗', N'152900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'152923', N'额济纳旗', N'152900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210000', N'辽宁省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'210100', N'沈阳市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210101', N'市辖区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210102', N'和平区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210103', N'沈河区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210104', N'大东区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210105', N'皇姑区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210106', N'铁西区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210111', N'苏家屯区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210112', N'东陵区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210113', N'沈北新区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210114', N'于洪区', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210122', N'辽中县', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210123', N'康平县', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210124', N'法库县', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210181', N'新民市', N'210100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210200', N'大连市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210201', N'市辖区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210202', N'中山区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210203', N'西岗区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210204', N'沙河口区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210211', N'甘井子区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210212', N'旅顺口区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210213', N'金州区', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210224', N'长海县', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210281', N'瓦房店市', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210282', N'普兰店市', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210283', N'庄河市', N'210200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210300', N'鞍山市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210301', N'市辖区', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210302', N'铁东区', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210303', N'铁西区', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210304', N'立山区', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210311', N'千山区', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210321', N'台安县', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210323', N'岫岩满族自治县', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210381', N'海城市', N'210300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210400', N'抚顺市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210401', N'市辖区', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210402', N'新抚区', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210403', N'东洲区', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210404', N'望花区', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210411', N'顺城区', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210421', N'抚顺县', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210422', N'新宾满族自治县', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210423', N'清原满族自治县', N'210400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210500', N'本溪市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210501', N'市辖区', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210502', N'平山区', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210503', N'溪湖区', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210504', N'明山区', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210505', N'南芬区', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210521', N'本溪满族自治县', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210522', N'桓仁满族自治县', N'210500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210600', N'丹东市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210601', N'市辖区', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210602', N'元宝区', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210603', N'振兴区', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210604', N'振安区', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210624', N'宽甸满族自治县', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210681', N'东港市', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210682', N'凤城市', N'210600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210700', N'锦州市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210701', N'市辖区', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210702', N'古塔区', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210703', N'凌河区', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210711', N'太和区', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210726', N'黑山县', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210727', N'义县', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210781', N'凌海市', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210782', N'北镇市', N'210700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210800', N'营口市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210801', N'市辖区', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210802', N'站前区', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210803', N'西市区', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210804', N'鲅鱼圈区', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210811', N'老边区', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210881', N'盖州市', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210882', N'大石桥市', N'210800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210900', N'阜新市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210901', N'市辖区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210902', N'海州区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210903', N'新邱区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210904', N'太平区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210905', N'清河门区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210911', N'细河区', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210921', N'阜新蒙古族自治县', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'210922', N'彰武县', N'210900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211000', N'辽阳市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211001', N'市辖区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211002', N'白塔区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211003', N'文圣区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211004', N'宏伟区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211005', N'弓长岭区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211011', N'太子河区', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211021', N'辽阳县', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211081', N'灯塔市', N'211000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211100', N'盘锦市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211101', N'市辖区', N'211100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211102', N'双台子区', N'211100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211103', N'兴隆台区', N'211100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211121', N'大洼县', N'211100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211122', N'盘山县', N'211100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211200', N'铁岭市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211201', N'市辖区', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211202', N'银州区', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211204', N'清河区', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211221', N'铁岭县', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211223', N'西丰县', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211224', N'昌图县', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211281', N'调兵山市', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211282', N'开原市', N'211200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211300', N'朝阳市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211301', N'市辖区', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211302', N'双塔区', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211303', N'龙城区', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211321', N'朝阳县', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211322', N'建平县', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211324', N'喀喇沁左翼蒙古族自治县', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211381', N'北票市', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211382', N'凌源市', N'211300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211400', N'葫芦岛市', N'210000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211401', N'市辖区', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211402', N'连山区', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211403', N'龙港区', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211404', N'南票区', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211421', N'绥中县', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211422', N'建昌县', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'211481', N'兴城市', N'211400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220000', N'吉林省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'220100', N'长春市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220101', N'市辖区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220102', N'南关区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220103', N'宽城区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220104', N'朝阳区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220105', N'二道区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220106', N'绿园区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220112', N'双阳区', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220122', N'农安县', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220181', N'九台市', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220182', N'榆树市', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220183', N'德惠市', N'220100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220200', N'吉林市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220201', N'市辖区', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220202', N'昌邑区', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220203', N'龙潭区', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220204', N'船营区', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220211', N'丰满区', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220221', N'永吉县', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220281', N'蛟河市', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220282', N'桦甸市', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220283', N'舒兰市', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220284', N'磐石市', N'220200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220300', N'四平市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220301', N'市辖区', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220302', N'铁西区', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220303', N'铁东区', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220322', N'梨树县', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220323', N'伊通满族自治县', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220381', N'公主岭市', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220382', N'双辽市', N'220300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220400', N'辽源市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220401', N'市辖区', N'220400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220402', N'龙山区', N'220400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220403', N'西安区', N'220400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220421', N'东丰县', N'220400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220422', N'东辽县', N'220400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220500', N'通化市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220501', N'市辖区', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220502', N'东昌区', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220503', N'二道江区', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220521', N'通化县', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220523', N'辉南县', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220524', N'柳河县', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220581', N'梅河口市', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220582', N'集安市', N'220500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220600', N'白山市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220601', N'市辖区', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220602', N'浑江区', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220605', N'江源区', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220621', N'抚松县', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220622', N'靖宇县', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220623', N'长白朝鲜族自治县', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220681', N'临江市', N'220600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220700', N'松原市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220701', N'市辖区', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220702', N'宁江区', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220721', N'前郭尔罗斯蒙古族自治县', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220722', N'长岭县', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220723', N'乾安县', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220724', N'扶余市', N'220700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220800', N'白城市', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220801', N'市辖区', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220802', N'洮北区', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220821', N'镇赉县', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220822', N'通榆县', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220881', N'洮南市', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'220882', N'大安市', N'220800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222400', N'延边朝鲜族自治州', N'220000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222401', N'延吉市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222402', N'图们市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222403', N'敦化市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222404', N'珲春市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222405', N'龙井市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222406', N'和龙市', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222424', N'汪清县', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'222426', N'安图县', N'222400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230000', N'黑龙江省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'230100', N'哈尔滨市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230101', N'市辖区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230102', N'道里区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230103', N'南岗区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230104', N'道外区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230108', N'平房区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230109', N'松北区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230110', N'香坊区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230111', N'呼兰区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230112', N'阿城区', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230123', N'依兰县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230124', N'方正县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230125', N'宾县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230126', N'巴彦县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230127', N'木兰县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230128', N'通河县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230129', N'延寿县', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230182', N'双城市', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230183', N'尚志市', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230184', N'五常市', N'230100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230200', N'齐齐哈尔市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230201', N'市辖区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230202', N'龙沙区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230203', N'建华区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230204', N'铁锋区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230205', N'昂昂溪区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230206', N'富拉尔基区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230207', N'碾子山区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230208', N'梅里斯达斡尔族区', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230221', N'龙江县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230223', N'依安县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230224', N'泰来县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230225', N'甘南县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230227', N'富裕县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230229', N'克山县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230230', N'克东县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230231', N'拜泉县', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230281', N'讷河市', N'230200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230300', N'鸡西市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230301', N'市辖区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230302', N'鸡冠区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230303', N'恒山区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230304', N'滴道区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230305', N'梨树区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230306', N'城子河区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230307', N'麻山区', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230321', N'鸡东县', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230381', N'虎林市', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230382', N'密山市', N'230300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230400', N'鹤岗市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230401', N'市辖区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230402', N'向阳区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230403', N'工农区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230404', N'南山区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230405', N'兴安区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230406', N'东山区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230407', N'兴山区', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230421', N'萝北县', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230422', N'绥滨县', N'230400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230500', N'双鸭山市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230501', N'市辖区', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230502', N'尖山区', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230503', N'岭东区', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230505', N'四方台区', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230506', N'宝山区', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230521', N'集贤县', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230522', N'友谊县', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230523', N'宝清县', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230524', N'饶河县', N'230500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230600', N'大庆市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230601', N'市辖区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230602', N'萨尔图区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230603', N'龙凤区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230604', N'让胡路区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230605', N'红岗区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230606', N'大同区', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230621', N'肇州县', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230622', N'肇源县', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230623', N'林甸县', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230624', N'杜尔伯特蒙古族自治县', N'230600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230700', N'伊春市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230701', N'市辖区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230702', N'伊春区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230703', N'南岔区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230704', N'友好区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230705', N'西林区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230706', N'翠峦区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230707', N'新青区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230708', N'美溪区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230709', N'金山屯区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230710', N'五营区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230711', N'乌马河区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230712', N'汤旺河区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230713', N'带岭区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230714', N'乌伊岭区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230715', N'红星区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230716', N'上甘岭区', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230722', N'嘉荫县', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230781', N'铁力市', N'230700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230800', N'佳木斯市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230801', N'市辖区', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230803', N'向阳区', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230804', N'前进区', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230805', N'东风区', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230811', N'郊区', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230822', N'桦南县', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230826', N'桦川县', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230828', N'汤原县', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230833', N'抚远县', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230881', N'同江市', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230882', N'富锦市', N'230800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230900', N'七台河市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230901', N'市辖区', N'230900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230902', N'新兴区', N'230900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230903', N'桃山区', N'230900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230904', N'茄子河区', N'230900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'230921', N'勃利县', N'230900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231000', N'牡丹江市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231001', N'市辖区', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231002', N'东安区', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231003', N'阳明区', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231004', N'爱民区', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231005', N'西安区', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231024', N'东宁县', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231025', N'林口县', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231081', N'绥芬河市', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231083', N'海林市', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231084', N'宁安市', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231085', N'穆棱市', N'231000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231100', N'黑河市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231101', N'市辖区', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231102', N'爱辉区', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231121', N'嫩江县', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231123', N'逊克县', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231124', N'孙吴县', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231181', N'北安市', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231182', N'五大连池市', N'231100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231200', N'绥化市', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231201', N'市辖区', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231202', N'北林区', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231221', N'望奎县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231222', N'兰西县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231223', N'青冈县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231224', N'庆安县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231225', N'明水县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231226', N'绥棱县', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231281', N'安达市', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231282', N'肇东市', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'231283', N'海伦市', N'231200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'232700', N'大兴安岭地区', N'230000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'232721', N'呼玛县', N'232700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'232722', N'塔河县', N'232700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'232723', N'漠河县', N'232700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310000', N'上海市', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'310100', N'市辖区', N'310000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310101', N'黄浦区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310104', N'徐汇区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310105', N'长宁区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310106', N'静安区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310107', N'普陀区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310108', N'闸北区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310109', N'虹口区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310110', N'杨浦区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310112', N'闵行区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310113', N'宝山区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310114', N'嘉定区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310115', N'浦东新区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310116', N'金山区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310117', N'松江区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310118', N'青浦区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310120', N'奉贤区', N'310100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310200', N'县', N'310000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'310230', N'崇明县', N'310200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320000', N'江苏省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'320100', N'南京市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320101', N'市辖区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320102', N'玄武区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320104', N'秦淮区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320105', N'建邺区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320106', N'鼓楼区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320111', N'浦口区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320113', N'栖霞区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320114', N'雨花台区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320115', N'江宁区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320116', N'六合区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320124', N'溧水区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320125', N'高淳区', N'320100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320200', N'无锡市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320201', N'市辖区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320202', N'崇安区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320203', N'南长区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320204', N'北塘区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320205', N'锡山区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320206', N'惠山区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320211', N'滨湖区', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320281', N'江阴市', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320282', N'宜兴市', N'320200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320300', N'徐州市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320301', N'市辖区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320302', N'鼓楼区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320303', N'云龙区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320305', N'贾汪区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320311', N'泉山区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320312', N'铜山区', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320321', N'丰县', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320322', N'沛县', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320324', N'睢宁县', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320381', N'新沂市', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320382', N'邳州市', N'320300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320400', N'常州市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320401', N'市辖区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320402', N'天宁区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320404', N'钟楼区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320405', N'戚墅堰区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320411', N'新北区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320412', N'武进区', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320481', N'溧阳市', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320482', N'金坛市', N'320400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320500', N'苏州市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320501', N'市辖区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320505', N'虎丘区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320506', N'吴中区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320507', N'相城区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320508', N'姑苏区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320509', N'吴江区', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320581', N'常熟市', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320582', N'张家港市', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320583', N'昆山市', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320585', N'太仓市', N'320500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320600', N'南通市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320601', N'市辖区', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320602', N'崇川区', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320611', N'港闸区', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320612', N'通州区', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320621', N'海安县', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320623', N'如东县', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320681', N'启东市', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320682', N'如皋市', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320684', N'海门市', N'320600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320700', N'连云港市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320701', N'市辖区', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320703', N'连云区', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320705', N'新浦区', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320706', N'海州区', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320721', N'赣榆县', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320722', N'东海县', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320723', N'灌云县', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320724', N'灌南县', N'320700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320800', N'淮安市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320801', N'市辖区', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320802', N'清河区', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320803', N'淮安区', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320804', N'淮阴区', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320811', N'清浦区', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320826', N'涟水县', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320829', N'洪泽县', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320830', N'盱眙县', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320831', N'金湖县', N'320800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320900', N'盐城市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320901', N'市辖区', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320902', N'亭湖区', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320903', N'盐都区', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320921', N'响水县', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320922', N'滨海县', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320923', N'阜宁县', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320924', N'射阳县', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320925', N'建湖县', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320981', N'东台市', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'320982', N'大丰市', N'320900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321000', N'扬州市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321001', N'市辖区', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321002', N'广陵区', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321003', N'邗江区', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321012', N'江都区', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321023', N'宝应县', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321081', N'仪征市', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321084', N'高邮市', N'321000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321100', N'镇江市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321101', N'市辖区', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321102', N'京口区', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321111', N'润州区', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321112', N'丹徒区', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321181', N'丹阳市', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321182', N'扬中市', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321183', N'句容市', N'321100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321200', N'泰州市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321201', N'市辖区', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321202', N'海陵区', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321203', N'高港区', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321281', N'兴化市', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321282', N'靖江市', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321283', N'泰兴市', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321284', N'姜堰市', N'321200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321300', N'宿迁市', N'320000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321301', N'市辖区', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321302', N'宿城区', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321311', N'宿豫区', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321322', N'沭阳县', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321323', N'泗阳县', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'321324', N'泗洪县', N'321300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330000', N'浙江省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'330100', N'杭州市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330101', N'市辖区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330102', N'上城区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330103', N'下城区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330104', N'江干区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330105', N'拱墅区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330106', N'西湖区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330108', N'滨江区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330109', N'萧山区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330110', N'余杭区', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330122', N'桐庐县', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330127', N'淳安县', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330182', N'建德市', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330183', N'富阳市', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330185', N'临安市', N'330100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330200', N'宁波市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330201', N'市辖区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330203', N'海曙区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330204', N'江东区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330205', N'江北区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330206', N'北仑区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330211', N'镇海区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330212', N'鄞州区', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330225', N'象山县', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330226', N'宁海县', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330281', N'余姚市', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330282', N'慈溪市', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330283', N'奉化市', N'330200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330300', N'温州市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330301', N'市辖区', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330302', N'鹿城区', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330303', N'龙湾区', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330304', N'瓯海区', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330322', N'洞头县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330324', N'永嘉县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330326', N'平阳县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330327', N'苍南县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330328', N'文成县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330329', N'泰顺县', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330381', N'瑞安市', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330382', N'乐清市', N'330300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330400', N'嘉兴市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330401', N'市辖区', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330402', N'南湖区', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330411', N'秀洲区', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330421', N'嘉善县', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330424', N'海盐县', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330481', N'海宁市', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330482', N'平湖市', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330483', N'桐乡市', N'330400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330500', N'湖州市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330501', N'市辖区', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330502', N'吴兴区', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330503', N'南浔区', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330521', N'德清县', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330522', N'长兴县', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330523', N'安吉县', N'330500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330600', N'绍兴市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330601', N'市辖区', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330602', N'越城区', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330621', N'绍兴县', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330624', N'新昌县', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330681', N'诸暨市', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330682', N'上虞市', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330683', N'嵊州市', N'330600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330700', N'金华市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330701', N'市辖区', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330702', N'婺城区', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330703', N'金东区', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330723', N'武义县', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330726', N'浦江县', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330727', N'磐安县', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330781', N'兰溪市', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330782', N'义乌市', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330783', N'东阳市', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330784', N'永康市', N'330700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330800', N'衢州市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330801', N'市辖区', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330802', N'柯城区', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330803', N'衢江区', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330822', N'常山县', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330824', N'开化县', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330825', N'龙游县', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330881', N'江山市', N'330800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330900', N'舟山市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330901', N'市辖区', N'330900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330902', N'定海区', N'330900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330903', N'普陀区', N'330900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330921', N'岱山县', N'330900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'330922', N'嵊泗县', N'330900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331000', N'台州市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331001', N'市辖区', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331002', N'椒江区', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331003', N'黄岩区', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331004', N'路桥区', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331021', N'玉环县', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331022', N'三门县', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331023', N'天台县', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331024', N'仙居县', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331081', N'温岭市', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331082', N'临海市', N'331000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331100', N'丽水市', N'330000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331101', N'市辖区', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331102', N'莲都区', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331121', N'青田县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331122', N'缙云县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331123', N'遂昌县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331124', N'松阳县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331125', N'云和县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331126', N'庆元县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331127', N'景宁畲族自治县', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'331181', N'龙泉市', N'331100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340000', N'安徽省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'340100', N'合肥市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340101', N'市辖区', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340102', N'瑶海区', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340103', N'庐阳区', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340104', N'蜀山区', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340111', N'包河区', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340121', N'长丰县', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340122', N'肥东县', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340123', N'肥西县', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340124', N'庐江县', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340181', N'巢湖市', N'340100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340200', N'芜湖市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340201', N'市辖区', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340202', N'镜湖区', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340203', N'弋江区', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340207', N'鸠江区', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340208', N'三山区', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340221', N'芜湖县', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340222', N'繁昌县', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340223', N'南陵县', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340225', N'无为县', N'340200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340300', N'蚌埠市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340301', N'市辖区', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340302', N'龙子湖区', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340303', N'蚌山区', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340304', N'禹会区', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340311', N'淮上区', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340321', N'怀远县', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340322', N'五河县', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340323', N'固镇县', N'340300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340400', N'淮南市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340401', N'市辖区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340402', N'大通区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340403', N'田家庵区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340404', N'谢家集区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340405', N'八公山区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340406', N'潘集区', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340421', N'凤台县', N'340400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340500', N'马鞍山市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340501', N'市辖区', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340503', N'花山区', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340504', N'雨山区', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340506', N'博望区', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340521', N'当涂县', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340522', N'含山县', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340523', N'和县', N'340500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340600', N'淮北市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340601', N'市辖区', N'340600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340602', N'杜集区', N'340600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340603', N'相山区', N'340600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340604', N'烈山区', N'340600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340621', N'濉溪县', N'340600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340700', N'铜陵市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340701', N'市辖区', N'340700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340702', N'铜官山区', N'340700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340703', N'狮子山区', N'340700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340711', N'郊区', N'340700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340721', N'铜陵县', N'340700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340800', N'安庆市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340801', N'市辖区', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340802', N'迎江区', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340803', N'大观区', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340811', N'宜秀区', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340822', N'怀宁县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340823', N'枞阳县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340824', N'潜山县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340825', N'太湖县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340826', N'宿松县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340827', N'望江县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340828', N'岳西县', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'340881', N'桐城市', N'340800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341000', N'黄山市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341001', N'市辖区', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341002', N'屯溪区', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341003', N'黄山区', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341004', N'徽州区', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341021', N'歙县', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341022', N'休宁县', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341023', N'黟县', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341024', N'祁门县', N'341000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341100', N'滁州市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341101', N'市辖区', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341102', N'琅琊区', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341103', N'南谯区', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341122', N'来安县', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341124', N'全椒县', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341125', N'定远县', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341126', N'凤阳县', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341181', N'天长市', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341182', N'明光市', N'341100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341200', N'阜阳市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341201', N'市辖区', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341202', N'颍州区', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341203', N'颍东区', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341204', N'颍泉区', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341221', N'临泉县', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341222', N'太和县', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341225', N'阜南县', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341226', N'颍上县', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341282', N'界首市', N'341200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341300', N'宿州市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341301', N'市辖区', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341302', N'埇桥区', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341321', N'砀山县', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341322', N'萧县', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341323', N'灵璧县', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341324', N'泗县', N'341300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341500', N'六安市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341501', N'市辖区', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341502', N'金安区', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341503', N'裕安区', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341521', N'寿县', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341522', N'霍邱县', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341523', N'舒城县', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341524', N'金寨县', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341525', N'霍山县', N'341500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341600', N'亳州市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341601', N'市辖区', N'341600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341602', N'谯城区', N'341600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341621', N'涡阳县', N'341600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341622', N'蒙城县', N'341600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341623', N'利辛县', N'341600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341700', N'池州市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341701', N'市辖区', N'341700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341702', N'贵池区', N'341700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341721', N'东至县', N'341700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341722', N'石台县', N'341700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341723', N'青阳县', N'341700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341800', N'宣城市', N'340000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341801', N'市辖区', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341802', N'宣州区', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341821', N'郎溪县', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341822', N'广德县', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341823', N'泾县', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341824', N'绩溪县', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341825', N'旌德县', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'341881', N'宁国市', N'341800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350000', N'福建省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'350100', N'福州市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350101', N'市辖区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350102', N'鼓楼区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350103', N'台江区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350104', N'仓山区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350105', N'马尾区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350111', N'晋安区', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350121', N'闽侯县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350122', N'连江县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350123', N'罗源县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350124', N'闽清县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350125', N'永泰县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350128', N'平潭县', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350181', N'福清市', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350182', N'长乐市', N'350100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350200', N'厦门市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350201', N'市辖区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350203', N'思明区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350205', N'海沧区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350206', N'湖里区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350211', N'集美区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350212', N'同安区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350213', N'翔安区', N'350200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350300', N'莆田市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350301', N'市辖区', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350302', N'城厢区', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350303', N'涵江区', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350304', N'荔城区', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350305', N'秀屿区', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350322', N'仙游县', N'350300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350400', N'三明市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350401', N'市辖区', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350402', N'梅列区', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350403', N'三元区', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350421', N'明溪县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350423', N'清流县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350424', N'宁化县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350425', N'大田县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350426', N'尤溪县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350427', N'沙县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350428', N'将乐县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350429', N'泰宁县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350430', N'建宁县', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350481', N'永安市', N'350400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350500', N'泉州市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350501', N'市辖区', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350502', N'鲤城区', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350503', N'丰泽区', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350504', N'洛江区', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350505', N'泉港区', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350521', N'惠安县', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350524', N'安溪县', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350525', N'永春县', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350526', N'德化县', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350527', N'金门县', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350581', N'石狮市', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350582', N'晋江市', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350583', N'南安市', N'350500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350600', N'漳州市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350601', N'市辖区', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350602', N'芗城区', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350603', N'龙文区', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350622', N'云霄县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350623', N'漳浦县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350624', N'诏安县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350625', N'长泰县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350626', N'东山县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350627', N'南靖县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350628', N'平和县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350629', N'华安县', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350681', N'龙海市', N'350600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350700', N'南平市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350701', N'市辖区', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350702', N'延平区', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350721', N'顺昌县', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350722', N'浦城县', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350723', N'光泽县', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350724', N'松溪县', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350725', N'政和县', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350781', N'邵武市', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350782', N'武夷山市', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350783', N'建瓯市', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350784', N'建阳市', N'350700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350800', N'龙岩市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350801', N'市辖区', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350802', N'新罗区', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350821', N'长汀县', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350822', N'永定县', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350823', N'上杭县', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350824', N'武平县', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350825', N'连城县', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350881', N'漳平市', N'350800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350900', N'宁德市', N'350000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350901', N'市辖区', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350902', N'蕉城区', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350921', N'霞浦县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350922', N'古田县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350923', N'屏南县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350924', N'寿宁县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350925', N'周宁县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350926', N'柘荣县', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350981', N'福安市', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'350982', N'福鼎市', N'350900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360000', N'江西省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'360100', N'南昌市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360101', N'市辖区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360102', N'东湖区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360103', N'西湖区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360104', N'青云谱区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360105', N'湾里区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360111', N'青山湖区', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360121', N'南昌县', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360122', N'新建县', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360123', N'安义县', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360124', N'进贤县', N'360100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360200', N'景德镇市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360201', N'市辖区', N'360200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360202', N'昌江区', N'360200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360203', N'珠山区', N'360200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360222', N'浮梁县', N'360200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360281', N'乐平市', N'360200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360300', N'萍乡市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360301', N'市辖区', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360302', N'安源区', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360313', N'湘东区', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360321', N'莲花县', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360322', N'上栗县', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360323', N'芦溪县', N'360300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360400', N'九江市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360401', N'市辖区', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360402', N'庐山区', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360403', N'浔阳区', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360421', N'九江县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360423', N'武宁县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360424', N'修水县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360425', N'永修县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360426', N'德安县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360427', N'星子县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360428', N'都昌县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360429', N'湖口县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360430', N'彭泽县', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360481', N'瑞昌市', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360482', N'共青城市', N'360400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360500', N'新余市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360501', N'市辖区', N'360500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360502', N'渝水区', N'360500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360521', N'分宜县', N'360500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360600', N'鹰潭市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360601', N'市辖区', N'360600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360602', N'月湖区', N'360600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360622', N'余江县', N'360600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360681', N'贵溪市', N'360600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360700', N'赣州市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360701', N'市辖区', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360702', N'章贡区', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360721', N'赣县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360722', N'信丰县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360723', N'大余县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360724', N'上犹县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360725', N'崇义县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360726', N'安远县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360727', N'龙南县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360728', N'定南县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360729', N'全南县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360730', N'宁都县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360731', N'于都县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360732', N'兴国县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360733', N'会昌县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360734', N'寻乌县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360735', N'石城县', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360781', N'瑞金市', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360782', N'南康市', N'360700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360800', N'吉安市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360801', N'市辖区', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360802', N'吉州区', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360803', N'青原区', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360821', N'吉安县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360822', N'吉水县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360823', N'峡江县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360824', N'新干县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360825', N'永丰县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360826', N'泰和县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360827', N'遂川县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360828', N'万安县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360829', N'安福县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360830', N'永新县', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360881', N'井冈山市', N'360800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360900', N'宜春市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360901', N'市辖区', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360902', N'袁州区', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360921', N'奉新县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360922', N'万载县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360923', N'上高县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360924', N'宜丰县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360925', N'靖安县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360926', N'铜鼓县', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360981', N'丰城市', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360982', N'樟树市', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'360983', N'高安市', N'360900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361000', N'抚州市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361001', N'市辖区', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361002', N'临川区', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361021', N'南城县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361022', N'黎川县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361023', N'南丰县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361024', N'崇仁县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361025', N'乐安县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361026', N'宜黄县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361027', N'金溪县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361028', N'资溪县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361029', N'东乡县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361030', N'广昌县', N'361000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361100', N'上饶市', N'360000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361101', N'市辖区', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361102', N'信州区', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361121', N'上饶县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361122', N'广丰县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361123', N'玉山县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361124', N'铅山县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361125', N'横峰县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361126', N'弋阳县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361127', N'余干县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361128', N'鄱阳县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361129', N'万年县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361130', N'婺源县', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'361181', N'德兴市', N'361100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370000', N'山东省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'370100', N'济南市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370101', N'市辖区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370102', N'历下区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370103', N'市中区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370104', N'槐荫区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370105', N'天桥区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370112', N'历城区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370113', N'长清区', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370124', N'平阴县', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370125', N'济阳县', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370126', N'商河县', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370181', N'章丘市', N'370100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370200', N'青岛市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370201', N'市辖区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370202', N'市南区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370203', N'市北区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370205', N'四方区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370211', N'黄岛区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370212', N'崂山区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370213', N'李沧区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370214', N'城阳区', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370281', N'胶州市', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370282', N'即墨市', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370283', N'平度市', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370284', N'胶南市', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370285', N'莱西市', N'370200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370300', N'淄博市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370301', N'市辖区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370302', N'淄川区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370303', N'张店区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370304', N'博山区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370305', N'临淄区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370306', N'周村区', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370321', N'桓台县', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370322', N'高青县', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370323', N'沂源县', N'370300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370400', N'枣庄市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370401', N'市辖区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370402', N'市中区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370403', N'薛城区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370404', N'峄城区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370405', N'台儿庄区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370406', N'山亭区', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370481', N'滕州市', N'370400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370500', N'东营市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370501', N'市辖区', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370502', N'东营区', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370503', N'河口区', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370521', N'垦利县', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370522', N'利津县', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370523', N'广饶县', N'370500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370600', N'烟台市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370601', N'市辖区', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370602', N'芝罘区', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370611', N'福山区', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370612', N'牟平区', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370613', N'莱山区', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370634', N'长岛县', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370681', N'龙口市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370682', N'莱阳市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370683', N'莱州市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370684', N'蓬莱市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370685', N'招远市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370686', N'栖霞市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370687', N'海阳市', N'370600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370700', N'潍坊市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370701', N'市辖区', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370702', N'潍城区', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370703', N'寒亭区', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370704', N'坊子区', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370705', N'奎文区', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370724', N'临朐县', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370725', N'昌乐县', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370781', N'青州市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370782', N'诸城市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370783', N'寿光市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370784', N'安丘市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370785', N'高密市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370786', N'昌邑市', N'370700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370800', N'济宁市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370801', N'市辖区', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370802', N'市中区', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370811', N'任城区', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370826', N'微山县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370827', N'鱼台县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370828', N'金乡县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370829', N'嘉祥县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370830', N'汶上县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370831', N'泗水县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370832', N'梁山县', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370881', N'曲阜市', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370882', N'兖州市', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370883', N'邹城市', N'370800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370900', N'泰安市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370901', N'市辖区', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370902', N'泰山区', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370911', N'岱岳区', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370921', N'宁阳县', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370923', N'东平县', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370982', N'新泰市', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'370983', N'肥城市', N'370900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371000', N'威海市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371001', N'市辖区', N'371000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371002', N'环翠区', N'371000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371081', N'文登市', N'371000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371082', N'荣成市', N'371000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371083', N'乳山市', N'371000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371100', N'日照市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371101', N'市辖区', N'371100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371102', N'东港区', N'371100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371103', N'岚山区', N'371100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371121', N'五莲县', N'371100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371122', N'莒县', N'371100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371200', N'莱芜市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371201', N'市辖区', N'371200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371202', N'莱城区', N'371200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371203', N'钢城区', N'371200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371300', N'临沂市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371301', N'市辖区', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371302', N'兰山区', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371311', N'罗庄区', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371312', N'河东区', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371321', N'沂南县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371322', N'郯城县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371323', N'沂水县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371324', N'苍山县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371325', N'费县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371326', N'平邑县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371327', N'莒南县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371328', N'蒙阴县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371329', N'临沭县', N'371300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371400', N'德州市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371401', N'市辖区', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371402', N'德城区', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371421', N'陵县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371422', N'宁津县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371423', N'庆云县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371424', N'临邑县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371425', N'齐河县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371426', N'平原县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371427', N'夏津县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371428', N'武城县', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371481', N'乐陵市', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371482', N'禹城市', N'371400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371500', N'聊城市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371501', N'市辖区', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371502', N'东昌府区', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371521', N'阳谷县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371522', N'莘县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371523', N'茌平县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371524', N'东阿县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371525', N'冠县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371526', N'高唐县', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371581', N'临清市', N'371500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371600', N'滨州市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371601', N'市辖区', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371602', N'滨城区', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371621', N'惠民县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371622', N'阳信县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371623', N'无棣县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371624', N'沾化县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371625', N'博兴县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371626', N'邹平县', N'371600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371700', N'菏泽市', N'370000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371701', N'市辖区', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371702', N'牡丹区', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371721', N'曹县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371722', N'单县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371723', N'成武县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371724', N'巨野县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371725', N'郓城县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371726', N'鄄城县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371727', N'定陶县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'371728', N'东明县', N'371700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410000', N'河南省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'410100', N'郑州市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410101', N'市辖区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410102', N'中原区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410103', N'二七区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410104', N'管城回族区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410105', N'金水区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410106', N'上街区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410108', N'惠济区', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410122', N'中牟县', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410181', N'巩义市', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410182', N'荥阳市', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410183', N'新密市', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410184', N'新郑市', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410185', N'登封市', N'410100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410200', N'开封市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410201', N'市辖区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410202', N'龙亭区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410203', N'顺河回族区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410204', N'鼓楼区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410205', N'禹王台区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410211', N'金明区', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410221', N'杞县', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410222', N'通许县', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410223', N'尉氏县', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410224', N'开封县', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410225', N'兰考县', N'410200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410300', N'洛阳市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410301', N'市辖区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410302', N'老城区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410303', N'西工区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410304', N'瀍河回族区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410305', N'涧西区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410306', N'吉利区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410311', N'洛龙区', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410322', N'孟津县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410323', N'新安县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410324', N'栾川县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410325', N'嵩县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410326', N'汝阳县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410327', N'宜阳县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410328', N'洛宁县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410329', N'伊川县', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410381', N'偃师市', N'410300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410400', N'平顶山市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410401', N'市辖区', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410402', N'新华区', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410403', N'卫东区', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410404', N'石龙区', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410411', N'湛河区', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410421', N'宝丰县', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410422', N'叶县', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410423', N'鲁山县', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410425', N'郏县', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410481', N'舞钢市', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410482', N'汝州市', N'410400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410500', N'安阳市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410501', N'市辖区', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410502', N'文峰区', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410503', N'北关区', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410505', N'殷都区', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410506', N'龙安区', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410522', N'安阳县', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410523', N'汤阴县', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410526', N'滑县', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410527', N'内黄县', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410581', N'林州市', N'410500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410600', N'鹤壁市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410601', N'市辖区', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410602', N'鹤山区', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410603', N'山城区', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410611', N'淇滨区', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410621', N'浚县', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410622', N'淇县', N'410600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410700', N'新乡市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410701', N'市辖区', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410702', N'红旗区', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410703', N'卫滨区', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410704', N'凤泉区', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410711', N'牧野区', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410721', N'新乡县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410724', N'获嘉县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410725', N'原阳县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410726', N'延津县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410727', N'封丘县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410728', N'长垣县', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410781', N'卫辉市', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410782', N'辉县市', N'410700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410800', N'焦作市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410801', N'市辖区', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410802', N'解放区', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410803', N'中站区', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410804', N'马村区', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410811', N'山阳区', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410821', N'修武县', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410822', N'博爱县', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410823', N'武陟县', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410825', N'温县', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410882', N'沁阳市', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410883', N'孟州市', N'410800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410900', N'濮阳市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410901', N'市辖区', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410902', N'华龙区', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410922', N'清丰县', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410923', N'南乐县', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410926', N'范县', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410927', N'台前县', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'410928', N'濮阳县', N'410900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411000', N'许昌市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411001', N'市辖区', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411002', N'魏都区', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411023', N'许昌县', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411024', N'鄢陵县', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411025', N'襄城县', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411081', N'禹州市', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411082', N'长葛市', N'411000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411100', N'漯河市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411101', N'市辖区', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411102', N'源汇区', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411103', N'郾城区', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411104', N'召陵区', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411121', N'舞阳县', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411122', N'临颍县', N'411100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411200', N'三门峡市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411201', N'市辖区', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411202', N'湖滨区', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411221', N'渑池县', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411222', N'陕县', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411224', N'卢氏县', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411281', N'义马市', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411282', N'灵宝市', N'411200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411300', N'南阳市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411301', N'市辖区', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411302', N'宛城区', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411303', N'卧龙区', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411321', N'南召县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411322', N'方城县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411323', N'西峡县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411324', N'镇平县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411325', N'内乡县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411326', N'淅川县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411327', N'社旗县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411328', N'唐河县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411329', N'新野县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411330', N'桐柏县', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411381', N'邓州市', N'411300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411400', N'商丘市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411401', N'市辖区', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411402', N'梁园区', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411403', N'睢阳区', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411421', N'民权县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411422', N'睢县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411423', N'宁陵县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411424', N'柘城县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411425', N'虞城县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411426', N'夏邑县', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411481', N'永城市', N'411400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411500', N'信阳市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411501', N'市辖区', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411502', N'浉河区', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411503', N'平桥区', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411521', N'罗山县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411522', N'光山县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411523', N'新县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411524', N'商城县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411525', N'固始县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411526', N'潢川县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411527', N'淮滨县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411528', N'息县', N'411500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411600', N'周口市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411601', N'市辖区', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411602', N'川汇区', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411621', N'扶沟县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411622', N'西华县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411623', N'商水县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411624', N'沈丘县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411625', N'郸城县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411626', N'淮阳县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411627', N'太康县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411628', N'鹿邑县', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411681', N'项城市', N'411600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411700', N'驻马店市', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411701', N'市辖区', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411702', N'驿城区', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411721', N'西平县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411722', N'上蔡县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411723', N'平舆县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411724', N'正阳县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411725', N'确山县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411726', N'泌阳县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411727', N'汝南县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411728', N'遂平县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'411729', N'新蔡县', N'411700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'419000', N'省直辖县级行政区划', N'410000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'419001', N'济源市', N'419000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420000', N'湖北省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'420100', N'武汉市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420101', N'市辖区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420102', N'江岸区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420103', N'江汉区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420104', N'硚口区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420105', N'汉阳区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420106', N'武昌区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420107', N'青山区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420111', N'洪山区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420112', N'东西湖区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420113', N'汉南区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420114', N'蔡甸区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420115', N'江夏区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420116', N'黄陂区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420117', N'新洲区', N'420100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420200', N'黄石市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420201', N'市辖区', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420202', N'黄石港区', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420203', N'西塞山区', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420204', N'下陆区', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420205', N'铁山区', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420222', N'阳新县', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420281', N'大冶市', N'420200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420300', N'十堰市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420301', N'市辖区', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420302', N'茅箭区', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420303', N'张湾区', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420321', N'郧县', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420322', N'郧西县', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420323', N'竹山县', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420324', N'竹溪县', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420325', N'房县', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420381', N'丹江口市', N'420300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420500', N'宜昌市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420501', N'市辖区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420502', N'西陵区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420503', N'伍家岗区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420504', N'点军区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420505', N'猇亭区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420506', N'夷陵区', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420525', N'远安县', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420526', N'兴山县', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420527', N'秭归县', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420528', N'长阳土家族自治县', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420529', N'五峰土家族自治县', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420581', N'宜都市', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420582', N'当阳市', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420583', N'枝江市', N'420500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420600', N'襄阳市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420601', N'市辖区', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420602', N'襄城区', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420606', N'樊城区', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420607', N'襄州区', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420624', N'南漳县', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420625', N'谷城县', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420626', N'保康县', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420682', N'老河口市', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420683', N'枣阳市', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420684', N'宜城市', N'420600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420700', N'鄂州市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420701', N'市辖区', N'420700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420702', N'梁子湖区', N'420700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420703', N'华容区', N'420700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420704', N'鄂城区', N'420700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420800', N'荆门市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420801', N'市辖区', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420802', N'东宝区', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420804', N'掇刀区', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420821', N'京山县', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420822', N'沙洋县', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420881', N'钟祥市', N'420800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420900', N'孝感市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420901', N'市辖区', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420902', N'孝南区', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420921', N'孝昌县', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420922', N'大悟县', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420923', N'云梦县', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420981', N'应城市', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420982', N'安陆市', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'420984', N'汉川市', N'420900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421000', N'荆州市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421001', N'市辖区', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421002', N'沙市区', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421003', N'荆州区', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421022', N'公安县', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421023', N'监利县', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421024', N'江陵县', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421081', N'石首市', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421083', N'洪湖市', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421087', N'松滋市', N'421000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421100', N'黄冈市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421101', N'市辖区', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421102', N'黄州区', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421121', N'团风县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421122', N'红安县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421123', N'罗田县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421124', N'英山县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421125', N'浠水县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421126', N'蕲春县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421127', N'黄梅县', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421181', N'麻城市', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421182', N'武穴市', N'421100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421200', N'咸宁市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421201', N'市辖区', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421202', N'咸安区', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421221', N'嘉鱼县', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421222', N'通城县', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421223', N'崇阳县', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421224', N'通山县', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421281', N'赤壁市', N'421200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421300', N'随州市', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421301', N'市辖区', N'421300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421303', N'曾都区', N'421300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421321', N'随县', N'421300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'421381', N'广水市', N'421300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422800', N'恩施土家族苗族自治州', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422801', N'恩施市', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422802', N'利川市', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422822', N'建始县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422823', N'巴东县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422825', N'宣恩县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422826', N'咸丰县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422827', N'来凤县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'422828', N'鹤峰县', N'422800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'429000', N'省直辖县级行政区划', N'420000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'429004', N'仙桃市', N'429000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'429005', N'潜江市', N'429000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'429006', N'天门市', N'429000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'429021', N'神农架林区', N'429000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430000', N'湖南省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'430100', N'长沙市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430101', N'市辖区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430102', N'芙蓉区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430103', N'天心区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430104', N'岳麓区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430105', N'开福区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430111', N'雨花区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430112', N'望城区', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430121', N'长沙县', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430124', N'宁乡县', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430181', N'浏阳市', N'430100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430200', N'株洲市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430201', N'市辖区', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430202', N'荷塘区', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430203', N'芦淞区', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430204', N'石峰区', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430211', N'天元区', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430221', N'株洲县', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430223', N'攸县', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430224', N'茶陵县', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430225', N'炎陵县', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430281', N'醴陵市', N'430200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430300', N'湘潭市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430301', N'市辖区', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430302', N'雨湖区', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430304', N'岳塘区', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430321', N'湘潭县', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430381', N'湘乡市', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430382', N'韶山市', N'430300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430400', N'衡阳市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430401', N'市辖区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430405', N'珠晖区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430406', N'雁峰区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430407', N'石鼓区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430408', N'蒸湘区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430412', N'南岳区', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430421', N'衡阳县', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430422', N'衡南县', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430423', N'衡山县', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430424', N'衡东县', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430426', N'祁东县', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430481', N'耒阳市', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430482', N'常宁市', N'430400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430500', N'邵阳市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430501', N'市辖区', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430502', N'双清区', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430503', N'大祥区', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430511', N'北塔区', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430521', N'邵东县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430522', N'新邵县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430523', N'邵阳县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430524', N'隆回县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430525', N'洞口县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430527', N'绥宁县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430528', N'新宁县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430529', N'城步苗族自治县', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430581', N'武冈市', N'430500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430600', N'岳阳市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430601', N'市辖区', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430602', N'岳阳楼区', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430603', N'云溪区', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430611', N'君山区', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430621', N'岳阳县', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430623', N'华容县', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430624', N'湘阴县', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430626', N'平江县', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430681', N'汨罗市', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430682', N'临湘市', N'430600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430700', N'常德市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430701', N'市辖区', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430702', N'武陵区', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430703', N'鼎城区', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430721', N'安乡县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430722', N'汉寿县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430723', N'澧县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430724', N'临澧县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430725', N'桃源县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430726', N'石门县', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430781', N'津市市', N'430700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430800', N'张家界市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430801', N'市辖区', N'430800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430802', N'永定区', N'430800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430811', N'武陵源区', N'430800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430821', N'慈利县', N'430800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430822', N'桑植县', N'430800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430900', N'益阳市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430901', N'市辖区', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430902', N'资阳区', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430903', N'赫山区', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430921', N'南县', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430922', N'桃江县', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430923', N'安化县', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'430981', N'沅江市', N'430900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431000', N'郴州市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431001', N'市辖区', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431002', N'北湖区', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431003', N'苏仙区', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431021', N'桂阳县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431022', N'宜章县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431023', N'永兴县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431024', N'嘉禾县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431025', N'临武县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431026', N'汝城县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431027', N'桂东县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431028', N'安仁县', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431081', N'资兴市', N'431000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431100', N'永州市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431101', N'市辖区', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431102', N'零陵区', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431103', N'冷水滩区', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431121', N'祁阳县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431122', N'东安县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431123', N'双牌县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431124', N'道县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431125', N'江永县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431126', N'宁远县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431127', N'蓝山县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431128', N'新田县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431129', N'江华瑶族自治县', N'431100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431200', N'怀化市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431201', N'市辖区', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431202', N'鹤城区', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431221', N'中方县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431222', N'沅陵县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431223', N'辰溪县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431224', N'溆浦县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431225', N'会同县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431226', N'麻阳苗族自治县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431227', N'新晃侗族自治县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431228', N'芷江侗族自治县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431229', N'靖州苗族侗族自治县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431230', N'通道侗族自治县', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431281', N'洪江市', N'431200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431300', N'娄底市', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431301', N'市辖区', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431302', N'娄星区', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431321', N'双峰县', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431322', N'新化县', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431381', N'冷水江市', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'431382', N'涟源市', N'431300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433100', N'湘西土家族苗族自治州', N'430000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433101', N'吉首市', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433122', N'泸溪县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433123', N'凤凰县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433124', N'花垣县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433125', N'保靖县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433126', N'古丈县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433127', N'永顺县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'433130', N'龙山县', N'433100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440000', N'广东省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'440100', N'广州市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440101', N'市辖区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440103', N'荔湾区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440104', N'越秀区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440105', N'海珠区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440106', N'天河区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440111', N'白云区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440112', N'黄埔区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440113', N'番禺区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440114', N'花都区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440115', N'南沙区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440116', N'萝岗区', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440183', N'增城市', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440184', N'从化市', N'440100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440200', N'韶关市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440201', N'市辖区', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440203', N'武江区', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440204', N'浈江区', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440205', N'曲江区', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440222', N'始兴县', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440224', N'仁化县', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440229', N'翁源县', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440232', N'乳源瑶族自治县', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440233', N'新丰县', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440281', N'乐昌市', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440282', N'南雄市', N'440200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440300', N'深圳市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440301', N'市辖区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440303', N'罗湖区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440304', N'福田区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440305', N'南山区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440306', N'宝安区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440307', N'龙岗区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440308', N'盐田区', N'440300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440400', N'珠海市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440401', N'市辖区', N'440400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440402', N'香洲区', N'440400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440403', N'斗门区', N'440400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440404', N'金湾区', N'440400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440500', N'汕头市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440501', N'市辖区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440507', N'龙湖区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440511', N'金平区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440512', N'濠江区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440513', N'潮阳区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440514', N'潮南区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440515', N'澄海区', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440523', N'南澳县', N'440500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440600', N'佛山市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440601', N'市辖区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440604', N'禅城区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440605', N'南海区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440606', N'顺德区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440607', N'三水区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440608', N'高明区', N'440600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440700', N'江门市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440701', N'市辖区', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440703', N'蓬江区', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440704', N'江海区', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440705', N'新会区', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440781', N'台山市', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440783', N'开平市', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440784', N'鹤山市', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440785', N'恩平市', N'440700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440800', N'湛江市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440801', N'市辖区', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440802', N'赤坎区', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440803', N'霞山区', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440804', N'坡头区', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440811', N'麻章区', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440823', N'遂溪县', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440825', N'徐闻县', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440881', N'廉江市', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440882', N'雷州市', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440883', N'吴川市', N'440800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440900', N'茂名市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440901', N'市辖区', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440902', N'茂南区', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440903', N'茂港区', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440923', N'电白县', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440981', N'高州市', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440982', N'化州市', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'440983', N'信宜市', N'440900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441200', N'肇庆市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441201', N'市辖区', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441202', N'端州区', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441203', N'鼎湖区', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441223', N'广宁县', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441224', N'怀集县', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441225', N'封开县', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441226', N'德庆县', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441283', N'高要市', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441284', N'四会市', N'441200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441300', N'惠州市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441301', N'市辖区', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441302', N'惠城区', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441303', N'惠阳区', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441322', N'博罗县', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441323', N'惠东县', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441324', N'龙门县', N'441300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441400', N'梅州市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441401', N'市辖区', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441402', N'梅江区', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441421', N'梅县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441422', N'大埔县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441423', N'丰顺县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441424', N'五华县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441426', N'平远县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441427', N'蕉岭县', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441481', N'兴宁市', N'441400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441500', N'汕尾市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441501', N'市辖区', N'441500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441502', N'城区', N'441500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441521', N'海丰县', N'441500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441523', N'陆河县', N'441500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441581', N'陆丰市', N'441500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441600', N'河源市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441601', N'市辖区', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441602', N'源城区', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441621', N'紫金县', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441622', N'龙川县', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441623', N'连平县', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441624', N'和平县', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441625', N'东源县', N'441600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441700', N'阳江市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441701', N'市辖区', N'441700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441702', N'江城区', N'441700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441721', N'阳西县', N'441700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441723', N'阳东县', N'441700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441781', N'阳春市', N'441700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441800', N'清远市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441801', N'市辖区', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441802', N'清城区', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441821', N'佛冈县', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441823', N'阳山县', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441825', N'连山壮族瑶族自治县', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441826', N'连南瑶族自治县', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441827', N'清新县', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441881', N'英德市', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441882', N'连州市', N'441800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'441900', N'东莞市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'442000', N'中山市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445100', N'潮州市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445101', N'市辖区', N'445100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445102', N'湘桥区', N'445100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445121', N'潮安县', N'445100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445122', N'饶平县', N'445100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445200', N'揭阳市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445201', N'市辖区', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445202', N'榕城区', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445221', N'揭东县', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445222', N'揭西县', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445224', N'惠来县', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445281', N'普宁市', N'445200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445300', N'云浮市', N'440000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445301', N'市辖区', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445302', N'云城区', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445321', N'新兴县', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445322', N'郁南县', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445323', N'云安县', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'445381', N'罗定市', N'445300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450000', N'广西壮族自治区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'450100', N'南宁市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450101', N'市辖区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450102', N'兴宁区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450103', N'青秀区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450105', N'江南区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450107', N'西乡塘区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450108', N'良庆区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450109', N'邕宁区', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450122', N'武鸣县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450123', N'隆安县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450124', N'马山县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450125', N'上林县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450126', N'宾阳县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450127', N'横县', N'450100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450200', N'柳州市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450201', N'市辖区', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450202', N'城中区', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450203', N'鱼峰区', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450204', N'柳南区', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450205', N'柳北区', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450221', N'柳江县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450222', N'柳城县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450223', N'鹿寨县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450224', N'融安县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450225', N'融水苗族自治县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450226', N'三江侗族自治县', N'450200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450300', N'桂林市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450301', N'市辖区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450302', N'秀峰区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450303', N'叠彩区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450304', N'象山区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450305', N'七星区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450311', N'雁山区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450321', N'阳朔县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450322', N'临桂区', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450323', N'灵川县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450324', N'全州县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450325', N'兴安县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450326', N'永福县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450327', N'灌阳县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450328', N'龙胜各族自治县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450329', N'资源县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450330', N'平乐县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450331', N'荔浦县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450332', N'恭城瑶族自治县', N'450300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450400', N'梧州市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450401', N'市辖区', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450403', N'万秀区', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450405', N'长洲区', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450421', N'苍梧县', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450422', N'藤县', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450423', N'蒙山县', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450481', N'岑溪市', N'450400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450500', N'北海市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450501', N'市辖区', N'450500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450502', N'海城区', N'450500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450503', N'银海区', N'450500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450512', N'铁山港区', N'450500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450521', N'合浦县', N'450500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450600', N'防城港市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450601', N'市辖区', N'450600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450602', N'港口区', N'450600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450603', N'防城区', N'450600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450621', N'上思县', N'450600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450681', N'东兴市', N'450600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450700', N'钦州市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450701', N'市辖区', N'450700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450702', N'钦南区', N'450700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450703', N'钦北区', N'450700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450721', N'灵山县', N'450700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450722', N'浦北县', N'450700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450800', N'贵港市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450801', N'市辖区', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450802', N'港北区', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450803', N'港南区', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450804', N'覃塘区', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450821', N'平南县', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450881', N'桂平市', N'450800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450900', N'玉林市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450901', N'市辖区', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450902', N'玉州区', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450921', N'容县', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450922', N'陆川县', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450923', N'博白县', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450924', N'兴业县', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'450981', N'北流市', N'450900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451000', N'百色市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451001', N'市辖区', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451002', N'右江区', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451021', N'田阳县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451022', N'田东县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451023', N'平果县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451024', N'德保县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451025', N'靖西县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451026', N'那坡县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451027', N'凌云县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451028', N'乐业县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451029', N'田林县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451030', N'西林县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451031', N'隆林各族自治县', N'451000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451100', N'贺州市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451101', N'市辖区', N'451100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451102', N'八步区', N'451100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451121', N'昭平县', N'451100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451122', N'钟山县', N'451100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451123', N'富川瑶族自治县', N'451100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451200', N'河池市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451201', N'市辖区', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451202', N'金城江区', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451221', N'南丹县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451222', N'天峨县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451223', N'凤山县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451224', N'东兰县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451225', N'罗城仫佬族自治县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451226', N'环江毛南族自治县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451227', N'巴马瑶族自治县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451228', N'都安瑶族自治县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451229', N'大化瑶族自治县', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451281', N'宜州市', N'451200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451300', N'来宾市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451301', N'市辖区', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451302', N'兴宾区', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451321', N'忻城县', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451322', N'象州县', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451323', N'武宣县', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451324', N'金秀瑶族自治县', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451381', N'合山市', N'451300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451400', N'崇左市', N'450000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451401', N'市辖区', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451402', N'江洲区', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451421', N'扶绥县', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451422', N'宁明县', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451423', N'龙州县', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451424', N'大新县', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451425', N'天等县', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'451481', N'凭祥市', N'451400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460000', N'海南省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'460100', N'海口市', N'460000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460101', N'市辖区', N'460100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460105', N'秀英区', N'460100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460106', N'龙华区', N'460100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460107', N'琼山区', N'460100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460108', N'美兰区', N'460100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460200', N'三亚市', N'460000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460201', N'市辖区', N'460200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460300', N'三沙市', N'460000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460321', N'西沙群岛', N'460300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460322', N'南沙群岛', N'460300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'460323', N'中沙群岛的岛礁及其海域', N'460300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469000', N'省直辖县级行政区划', N'460000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469001', N'五指山市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469002', N'琼海市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469003', N'儋州市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469005', N'文昌市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469006', N'万宁市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469007', N'东方市', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469021', N'定安县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469022', N'屯昌县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469023', N'澄迈县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469024', N'临高县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469025', N'白沙黎族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469026', N'昌江黎族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469027', N'乐东黎族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469028', N'陵水黎族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469029', N'保亭黎族苗族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'469030', N'琼中黎族苗族自治县', N'469000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500000', N'重庆市', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'500100', N'市辖区', N'500000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500101', N'万州区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500102', N'涪陵区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500103', N'渝中区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500104', N'大渡口区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500105', N'江北区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500106', N'沙坪坝区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500107', N'九龙坡区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500108', N'南岸区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500109', N'北碚区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500110', N'綦江区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500111', N'大足区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500112', N'渝北区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500113', N'巴南区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500114', N'黔江区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500115', N'长寿区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500116', N'江津区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500117', N'合川区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500118', N'永川区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500119', N'南川区', N'500100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500200', N'县', N'500000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500223', N'潼南县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500224', N'铜梁县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500226', N'荣昌县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500227', N'璧山县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500228', N'梁平县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500229', N'城口县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500230', N'丰都县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500231', N'垫江县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500232', N'武隆县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500233', N'忠县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500234', N'开县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500235', N'云阳县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500236', N'奉节县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500237', N'巫山县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500238', N'巫溪县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500240', N'石柱土家族自治县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500241', N'秀山土家族苗族自治县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500242', N'酉阳土家族苗族自治县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'500243', N'彭水苗族土家族自治县', N'500200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510000', N'四川省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'510100', N'成都市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510101', N'市辖区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510104', N'锦江区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510105', N'青羊区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510106', N'金牛区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510107', N'武侯区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510108', N'成华区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510112', N'龙泉驿区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510113', N'青白江区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510114', N'新都区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510115', N'温江区', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510121', N'金堂县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510122', N'双流县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510124', N'郫县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510129', N'大邑县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510131', N'蒲江县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510132', N'新津县', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510181', N'都江堰市', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510182', N'彭州市', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510183', N'邛崃市', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510184', N'崇州市', N'510100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510300', N'自贡市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510301', N'市辖区', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510302', N'自流井区', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510303', N'贡井区', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510304', N'大安区', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510311', N'沿滩区', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510321', N'荣县', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510322', N'富顺县', N'510300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510400', N'攀枝花市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510401', N'市辖区', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510402', N'东区', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510403', N'西区', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510411', N'仁和区', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510421', N'米易县', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510422', N'盐边县', N'510400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510500', N'泸州市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510501', N'市辖区', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510502', N'江阳区', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510503', N'纳溪区', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510504', N'龙马潭区', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510521', N'泸县', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510522', N'合江县', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510524', N'叙永县', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510525', N'古蔺县', N'510500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510600', N'德阳市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510601', N'市辖区', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510603', N'旌阳区', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510623', N'中江县', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510626', N'罗江县', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510681', N'广汉市', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510682', N'什邡市', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510683', N'绵竹市', N'510600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510700', N'绵阳市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510701', N'市辖区', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510703', N'涪城区', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510704', N'游仙区', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510722', N'三台县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510723', N'盐亭县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510724', N'安县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510725', N'梓潼县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510726', N'北川羌族自治县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510727', N'平武县', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510781', N'江油市', N'510700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510800', N'广元市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510801', N'市辖区', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510802', N'利州区', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510811', N'元坝区', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510812', N'朝天区', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510821', N'旺苍县', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510822', N'青川县', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510823', N'剑阁县', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510824', N'苍溪县', N'510800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510900', N'遂宁市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510901', N'市辖区', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510903', N'船山区', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510904', N'安居区', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510921', N'蓬溪县', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510922', N'射洪县', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'510923', N'大英县', N'510900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511000', N'内江市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511001', N'市辖区', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511002', N'市中区', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511011', N'东兴区', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511024', N'威远县', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511025', N'资中县', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511028', N'隆昌县', N'511000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511100', N'乐山市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511101', N'市辖区', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511102', N'市中区', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511111', N'沙湾区', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511112', N'五通桥区', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511113', N'金口河区', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511123', N'犍为县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511124', N'井研县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511126', N'夹江县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511129', N'沐川县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511132', N'峨边彝族自治县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511133', N'马边彝族自治县', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511181', N'峨眉山市', N'511100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511300', N'南充市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511301', N'市辖区', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511302', N'顺庆区', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511303', N'高坪区', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511304', N'嘉陵区', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511321', N'南部县', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511322', N'营山县', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511323', N'蓬安县', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511324', N'仪陇县', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511325', N'西充县', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511381', N'阆中市', N'511300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511400', N'眉山市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511401', N'市辖区', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511402', N'东坡区', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511421', N'仁寿县', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511422', N'彭山县', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511423', N'洪雅县', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511424', N'丹棱县', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511425', N'青神县', N'511400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511500', N'宜宾市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511501', N'市辖区', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511502', N'翠屏区', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511503', N'南溪区', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511521', N'宜宾县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511523', N'江安县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511524', N'长宁县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511525', N'高县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511526', N'珙县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511527', N'筠连县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511528', N'兴文县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511529', N'屏山县', N'511500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511600', N'广安市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511601', N'市辖区', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511602', N'广安区', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511621', N'岳池县', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511622', N'武胜县', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511623', N'邻水县', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511681', N'华蓥市', N'511600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511700', N'达州市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511701', N'市辖区', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511702', N'通川区', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511721', N'达县', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511722', N'宣汉县', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511723', N'开江县', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511724', N'大竹县', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511725', N'渠县', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511781', N'万源市', N'511700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511800', N'雅安市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511801', N'市辖区', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511802', N'雨城区', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511803', N'名山区', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511822', N'荥经县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511823', N'汉源县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511824', N'石棉县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511825', N'天全县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511826', N'芦山县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511827', N'宝兴县', N'511800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511900', N'巴中市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511901', N'市辖区', N'511900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511902', N'巴州区', N'511900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511921', N'通江县', N'511900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511922', N'南江县', N'511900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'511923', N'平昌县', N'511900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512000', N'资阳市', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512001', N'市辖区', N'512000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512002', N'雁江区', N'512000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512021', N'安岳县', N'512000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512022', N'乐至县', N'512000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'512081', N'简阳市', N'512000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513200', N'阿坝藏族羌族自治州', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513221', N'汶川县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513222', N'理县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513223', N'茂县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513224', N'松潘县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513225', N'九寨沟县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513226', N'金川县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513227', N'小金县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513228', N'黑水县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513229', N'马尔康县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513230', N'壤塘县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513231', N'阿坝县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513232', N'若尔盖县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513233', N'红原县', N'513200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513300', N'甘孜藏族自治州', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513321', N'康定县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513322', N'泸定县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513323', N'丹巴县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513324', N'九龙县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513325', N'雅江县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513326', N'道孚县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513327', N'炉霍县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513328', N'甘孜县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513329', N'新龙县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513330', N'德格县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513331', N'白玉县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513332', N'石渠县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513333', N'色达县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513334', N'理塘县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513335', N'巴塘县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513336', N'乡城县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513337', N'稻城县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513338', N'得荣县', N'513300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513400', N'凉山彝族自治州', N'510000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513401', N'西昌市', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513422', N'木里藏族自治县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513423', N'盐源县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513424', N'德昌县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513425', N'会理县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513426', N'会东县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513427', N'宁南县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513428', N'普格县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513429', N'布拖县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513430', N'金阳县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513431', N'昭觉县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513432', N'喜德县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513433', N'冕宁县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513434', N'越西县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513435', N'甘洛县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513436', N'美姑县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'513437', N'雷波县', N'513400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520000', N'贵州省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'520100', N'贵阳市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520101', N'市辖区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520102', N'南明区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520103', N'云岩区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520111', N'花溪区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520112', N'乌当区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520113', N'白云区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520114', N'小河区', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520121', N'开阳县', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520122', N'息烽县', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520123', N'修文县', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520181', N'清镇市', N'520100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520200', N'六盘水市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520201', N'钟山区', N'520200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520203', N'六枝特区', N'520200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520221', N'水城县', N'520200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520222', N'盘县', N'520200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520300', N'遵义市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520301', N'市辖区', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520302', N'红花岗区', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520303', N'汇川区', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520321', N'遵义县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520322', N'桐梓县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520323', N'绥阳县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520324', N'正安县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520325', N'道真仡佬族苗族自治县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520326', N'务川仡佬族苗族自治县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520327', N'凤冈县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520328', N'湄潭县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520329', N'余庆县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520330', N'习水县', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520381', N'赤水市', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520382', N'仁怀市', N'520300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520400', N'安顺市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520401', N'市辖区', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520402', N'西秀区', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520421', N'平坝县', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520422', N'普定县', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520423', N'镇宁布依族苗族自治县', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520424', N'关岭布依族苗族自治县', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520425', N'紫云苗族布依族自治县', N'520400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520500', N'毕节市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520502', N'七星关区', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520521', N'大方县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520522', N'黔西县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520523', N'金沙县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520524', N'织金县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520525', N'纳雍县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520526', N'威宁彝族回族苗族自治县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520527', N'赫章县', N'520500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520600', N'铜仁市', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520602', N'碧江区', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520603', N'万山区', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520621', N'江口县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520622', N'玉屏侗族自治县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520623', N'石阡县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520624', N'思南县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520625', N'印江土家族苗族自治县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520626', N'德江县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520627', N'沿河土家族自治县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'520628', N'松桃苗族自治县', N'520600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522300', N'黔西南布依族苗族自治州', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522301', N'兴义市', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522322', N'兴仁县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522323', N'普安县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522324', N'晴隆县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522325', N'贞丰县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522326', N'望谟县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522327', N'册亨县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522328', N'安龙县', N'522300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522600', N'黔东南苗族侗族自治州', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522601', N'凯里市', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522622', N'黄平县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522623', N'施秉县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522624', N'三穗县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522625', N'镇远县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522626', N'岑巩县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522627', N'天柱县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522628', N'锦屏县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522629', N'剑河县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522630', N'台江县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522631', N'黎平县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522632', N'榕江县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522633', N'从江县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522634', N'雷山县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522635', N'麻江县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522636', N'丹寨县', N'522600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522700', N'黔南布依族苗族自治州', N'520000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522701', N'都匀市', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522702', N'福泉市', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522722', N'荔波县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522723', N'贵定县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522725', N'瓮安县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522726', N'独山县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522727', N'平塘县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522728', N'罗甸县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522729', N'长顺县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522730', N'龙里县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522731', N'惠水县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'522732', N'三都水族自治县', N'522700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530000', N'云南省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'530100', N'昆明市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530101', N'市辖区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530102', N'五华区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530103', N'盘龙区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530111', N'官渡区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530112', N'西山区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530113', N'东川区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530114', N'呈贡区', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530122', N'晋宁县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530124', N'富民县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530125', N'宜良县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530126', N'石林彝族自治县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530127', N'嵩明县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530128', N'禄劝彝族苗族自治县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530129', N'寻甸回族彝族自治县', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530181', N'安宁市', N'530100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530300', N'曲靖市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530301', N'市辖区', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530302', N'麒麟区', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530321', N'马龙县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530322', N'陆良县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530323', N'师宗县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530324', N'罗平县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530325', N'富源县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530326', N'会泽县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530328', N'沾益县', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530381', N'宣威市', N'530300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530400', N'玉溪市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530402', N'红塔区', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530421', N'江川县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530422', N'澄江县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530423', N'通海县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530424', N'华宁县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530425', N'易门县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530426', N'峨山彝族自治县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530427', N'新平彝族傣族自治县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530428', N'元江哈尼族彝族傣族自治县', N'530400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530500', N'保山市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530501', N'市辖区', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530502', N'隆阳区', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530521', N'施甸县', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530522', N'腾冲县', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530523', N'龙陵县', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530524', N'昌宁县', N'530500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530600', N'昭通市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530601', N'市辖区', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530602', N'昭阳区', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530621', N'鲁甸县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530622', N'巧家县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530623', N'盐津县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530624', N'大关县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530625', N'永善县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530626', N'绥江县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530627', N'镇雄县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530628', N'彝良县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530629', N'威信县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530630', N'水富县', N'530600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530700', N'丽江市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530701', N'市辖区', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530702', N'古城区', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530721', N'玉龙纳西族自治县', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530722', N'永胜县', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530723', N'华坪县', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530724', N'宁蒗彝族自治县', N'530700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530800', N'普洱市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530801', N'市辖区', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530802', N'思茅区', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530821', N'宁洱哈尼族彝族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530822', N'墨江哈尼族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530823', N'景东彝族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530824', N'景谷傣族彝族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530825', N'镇沅彝族哈尼族拉祜族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530826', N'江城哈尼族彝族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530827', N'孟连傣族拉祜族佤族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530828', N'澜沧拉祜族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530829', N'西盟佤族自治县', N'530800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530900', N'临沧市', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530901', N'市辖区', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530902', N'临翔区', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530921', N'凤庆县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530922', N'云县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530923', N'永德县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530924', N'镇康县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530925', N'双江拉祜族佤族布朗族傣族自治县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530926', N'耿马傣族佤族自治县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'530927', N'沧源佤族自治县', N'530900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532300', N'楚雄彝族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532301', N'楚雄市', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532322', N'双柏县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532323', N'牟定县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532324', N'南华县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532325', N'姚安县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532326', N'大姚县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532327', N'永仁县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532328', N'元谋县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532329', N'武定县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532331', N'禄丰县', N'532300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532500', N'红河哈尼族彝族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532501', N'个旧市', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532502', N'开远市', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532503', N'蒙自市', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532523', N'屏边苗族自治县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532524', N'建水县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532525', N'石屏县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532526', N'弥勒区', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532527', N'泸西县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532528', N'元阳县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532529', N'红河县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532530', N'金平苗族瑶族傣族自治县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532531', N'绿春县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532532', N'河口瑶族自治县', N'532500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532600', N'文山壮族苗族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532601', N'文山市', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532622', N'砚山县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532623', N'西畴县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532624', N'麻栗坡县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532625', N'马关县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532626', N'丘北县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532627', N'广南县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532628', N'富宁县', N'532600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532800', N'西双版纳傣族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532801', N'景洪市', N'532800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532822', N'勐海县', N'532800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532823', N'勐腊县', N'532800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532900', N'大理白族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532901', N'大理市', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532922', N'漾濞彝族自治县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532923', N'祥云县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532924', N'宾川县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532925', N'弥渡县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532926', N'南涧彝族自治县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532927', N'巍山彝族回族自治县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532928', N'永平县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532929', N'云龙县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532930', N'洱源县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532931', N'剑川县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'532932', N'鹤庆县', N'532900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533100', N'德宏傣族景颇族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533102', N'瑞丽市', N'533100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533103', N'芒市', N'533100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533122', N'梁河县', N'533100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533123', N'盈江县', N'533100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533124', N'陇川县', N'533100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533300', N'怒江傈僳族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533321', N'泸水县', N'533300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533323', N'福贡县', N'533300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533324', N'贡山独龙族怒族自治县', N'533300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533325', N'兰坪白族普米族自治县', N'533300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533400', N'迪庆藏族自治州', N'530000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533421', N'香格里拉县', N'533400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533422', N'德钦县', N'533400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'533423', N'维西傈僳族自治县', N'533400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540000', N'西藏自治区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'540100', N'拉萨市', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540101', N'市辖区', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540102', N'城关区', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540121', N'林周县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540122', N'当雄县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540123', N'尼木县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540124', N'曲水县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540125', N'堆龙德庆县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540126', N'达孜县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'540127', N'墨竹工卡县', N'540100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542100', N'昌都地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542121', N'昌都县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542122', N'江达县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542123', N'贡觉县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542124', N'类乌齐县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542125', N'丁青县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542126', N'察雅县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542127', N'八宿县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542128', N'左贡县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542129', N'芒康县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542132', N'洛隆县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542133', N'边坝县', N'542100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542200', N'山南地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542221', N'乃东县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542222', N'扎囊县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542223', N'贡嘎县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542224', N'桑日县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542225', N'琼结县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542226', N'曲松县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542227', N'措美县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542228', N'洛扎县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542229', N'加查县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542231', N'隆子县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542232', N'错那县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542233', N'浪卡子县', N'542200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542300', N'日喀则地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542301', N'日喀则市', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542322', N'南木林县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542323', N'江孜县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542324', N'定日县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542325', N'萨迦县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542326', N'拉孜县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542327', N'昂仁县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542328', N'谢通门县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542329', N'白朗县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542330', N'仁布县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542331', N'康马县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542332', N'定结县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542333', N'仲巴县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542334', N'亚东县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542335', N'吉隆县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542336', N'聂拉木县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542337', N'萨嘎县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542338', N'岗巴县', N'542300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542400', N'那曲地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542421', N'那曲县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542422', N'嘉黎县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542423', N'比如县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542424', N'聂荣县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542425', N'安多县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542426', N'申扎县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542427', N'索县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542428', N'班戈县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542429', N'巴青县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542430', N'尼玛县', N'542400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542500', N'阿里地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542521', N'普兰县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542522', N'札达县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542523', N'噶尔县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542524', N'日土县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542525', N'革吉县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542526', N'改则县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542527', N'措勤县', N'542500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542600', N'林芝地区', N'540000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542621', N'林芝县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542622', N'工布江达县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542623', N'米林县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542624', N'墨脱县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542625', N'波密县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542626', N'察隅县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'542627', N'朗县', N'542600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610000', N'陕西省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'610100', N'西安市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610101', N'市辖区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610102', N'新城区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610103', N'碑林区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610104', N'莲湖区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610111', N'灞桥区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610112', N'未央区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610113', N'雁塔区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610114', N'阎良区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610115', N'临潼区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610116', N'长安区', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610122', N'蓝田县', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610124', N'周至县', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610125', N'户县', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610126', N'高陵县', N'610100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610200', N'铜川市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610201', N'市辖区', N'610200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610202', N'王益区', N'610200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610203', N'印台区', N'610200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610204', N'耀州区', N'610200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610222', N'宜君县', N'610200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610300', N'宝鸡市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610301', N'市辖区', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610302', N'渭滨区', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610303', N'金台区', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610304', N'陈仓区', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610322', N'凤翔县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610323', N'岐山县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610324', N'扶风县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610326', N'眉县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610327', N'陇县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610328', N'千阳县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610329', N'麟游县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610330', N'凤县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610331', N'太白县', N'610300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610400', N'咸阳市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610401', N'市辖区', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610402', N'秦都区', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610403', N'杨陵区', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610404', N'渭城区', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610422', N'三原县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610423', N'泾阳县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610424', N'乾县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610425', N'礼泉县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610426', N'永寿县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610427', N'彬县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610428', N'长武县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610429', N'旬邑县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610430', N'淳化县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610431', N'武功县', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610481', N'兴平市', N'610400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610500', N'渭南市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610501', N'市辖区', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610502', N'临渭区', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610521', N'华县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610522', N'潼关县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610523', N'大荔县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610524', N'合阳县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610525', N'澄城县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610526', N'蒲城县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610527', N'白水县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610528', N'富平县', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610581', N'韩城市', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610582', N'华阴市', N'610500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610600', N'延安市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610601', N'市辖区', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610602', N'宝塔区', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610621', N'延长县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610622', N'延川县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610623', N'子长县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610624', N'安塞县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610625', N'志丹县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610626', N'吴起县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610627', N'甘泉县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610628', N'富县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610629', N'洛川县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610630', N'宜川县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610631', N'黄龙县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610632', N'黄陵县', N'610600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610700', N'汉中市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610701', N'市辖区', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610702', N'汉台区', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610721', N'南郑县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610722', N'城固县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610723', N'洋县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610724', N'西乡县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610725', N'勉县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610726', N'宁强县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610727', N'略阳县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610728', N'镇巴县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610729', N'留坝县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610730', N'佛坪县', N'610700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610800', N'榆林市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610801', N'市辖区', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610802', N'榆阳区', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610821', N'神木县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610822', N'府谷县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610823', N'横山县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610824', N'靖边县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610825', N'定边县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610826', N'绥德县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610827', N'米脂县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610828', N'佳县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610829', N'吴堡县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610830', N'清涧县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610831', N'子洲县', N'610800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610900', N'安康市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610901', N'市辖区', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610902', N'汉滨区', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610921', N'汉阴县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610922', N'石泉县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610923', N'宁陕县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610924', N'紫阳县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610925', N'岚皋县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610926', N'平利县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610927', N'镇坪县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610928', N'旬阳县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'610929', N'白河县', N'610900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611000', N'商洛市', N'610000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611001', N'市辖区', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611002', N'商州区', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611021', N'洛南县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611022', N'丹凤县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611023', N'商南县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611024', N'山阳县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611025', N'镇安县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'611026', N'柞水县', N'611000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620000', N'甘肃省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'620100', N'兰州市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620101', N'市辖区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620102', N'城关区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620103', N'七里河区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620104', N'西固区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620105', N'安宁区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620111', N'红古区', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620121', N'永登县', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620122', N'皋兰县', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620123', N'榆中县', N'620100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620200', N'嘉峪关市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620201', N'市辖区', N'620200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620300', N'金昌市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620301', N'市辖区', N'620300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620302', N'金川区', N'620300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620321', N'永昌县', N'620300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620400', N'白银市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620401', N'市辖区', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620402', N'白银区', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620403', N'平川区', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620421', N'靖远县', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620422', N'会宁县', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620423', N'景泰县', N'620400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620500', N'天水市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620501', N'市辖区', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620502', N'秦州区', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620503', N'麦积区', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620521', N'清水县', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620522', N'秦安县', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620523', N'甘谷县', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620524', N'武山县', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620525', N'张家川回族自治县', N'620500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620600', N'武威市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620601', N'市辖区', N'620600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620602', N'凉州区', N'620600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620621', N'民勤县', N'620600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620622', N'古浪县', N'620600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620623', N'天祝藏族自治县', N'620600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620700', N'张掖市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620701', N'市辖区', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620702', N'甘州区', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620721', N'肃南裕固族自治县', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620722', N'民乐县', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620723', N'临泽县', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620724', N'高台县', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620725', N'山丹县', N'620700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620800', N'平凉市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620801', N'市辖区', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620802', N'崆峒区', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620821', N'泾川县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620822', N'灵台县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620823', N'崇信县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620824', N'华亭县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620825', N'庄浪县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620826', N'静宁县', N'620800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620900', N'酒泉市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620901', N'市辖区', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620902', N'肃州区', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620921', N'金塔县', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620922', N'瓜州县', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620923', N'肃北蒙古族自治县', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620924', N'阿克塞哈萨克族自治县', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620981', N'玉门市', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'620982', N'敦煌市', N'620900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621000', N'庆阳市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621001', N'市辖区', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621002', N'西峰区', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621021', N'庆城县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621022', N'环县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621023', N'华池县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621024', N'合水县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621025', N'正宁县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621026', N'宁县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621027', N'镇原县', N'621000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621100', N'定西市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621101', N'市辖区', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621102', N'安定区', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621121', N'通渭县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621122', N'陇西县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621123', N'渭源县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621124', N'临洮县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621125', N'漳县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621126', N'岷县', N'621100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621200', N'陇南市', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621201', N'市辖区', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621202', N'武都区', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621221', N'成县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621222', N'文县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621223', N'宕昌县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621224', N'康县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621225', N'西和县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621226', N'礼县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621227', N'徽县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'621228', N'两当县', N'621200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622900', N'临夏回族自治州', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622901', N'临夏市', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622921', N'临夏县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622922', N'康乐县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622923', N'永靖县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622924', N'广河县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622925', N'和政县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622926', N'东乡族自治县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'622927', N'积石山保安族东乡族撒拉族自治县', N'622900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623000', N'甘南藏族自治州', N'620000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623001', N'合作市', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623021', N'临潭县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623022', N'卓尼县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623023', N'舟曲县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623024', N'迭部县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623025', N'玛曲县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623026', N'碌曲县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'623027', N'夏河县', N'623000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630000', N'青海省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'630100', N'西宁市', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630101', N'市辖区', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630102', N'城东区', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630103', N'城中区', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630104', N'城西区', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630105', N'城北区', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630121', N'大通回族土族自治县', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630122', N'湟中县', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'630123', N'湟源县', N'630100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632100', N'海东市', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632121', N'平安县', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632122', N'民和回族土族自治县', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632123', N'乐都区', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632126', N'互助土族自治县', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632127', N'化隆回族自治县', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632128', N'循化撒拉族自治县', N'632100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632200', N'海北藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632221', N'门源回族自治县', N'632200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632222', N'祁连县', N'632200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632223', N'海晏县', N'632200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632224', N'刚察县', N'632200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632300', N'黄南藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632321', N'同仁县', N'632300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632322', N'尖扎县', N'632300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632323', N'泽库县', N'632300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632324', N'河南蒙古族自治县', N'632300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632500', N'海南藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632521', N'共和县', N'632500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632522', N'同德县', N'632500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632523', N'贵德县', N'632500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632524', N'兴海县', N'632500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632525', N'贵南县', N'632500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632600', N'果洛藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632621', N'玛沁县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632622', N'班玛县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632623', N'甘德县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632624', N'达日县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632625', N'久治县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632626', N'玛多县', N'632600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632700', N'玉树藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632721', N'玉树县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632722', N'杂多县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632723', N'称多县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632724', N'治多县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632725', N'囊谦县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632726', N'曲麻莱县', N'632700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632800', N'海西蒙古族藏族自治州', N'630000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632801', N'格尔木市', N'632800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632802', N'德令哈市', N'632800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632821', N'乌兰县', N'632800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632822', N'都兰县', N'632800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'632823', N'天峻县', N'632800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640000', N'宁夏回族自治区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'640100', N'银川市', N'640000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640101', N'市辖区', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640104', N'兴庆区', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640105', N'西夏区', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640106', N'金凤区', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640121', N'永宁县', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640122', N'贺兰县', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640181', N'灵武市', N'640100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640200', N'石嘴山市', N'640000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640201', N'市辖区', N'640200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640202', N'大武口区', N'640200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640205', N'惠农区', N'640200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640221', N'平罗县', N'640200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640300', N'吴忠市', N'640000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640301', N'市辖区', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640302', N'利通区', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640303', N'红寺堡区', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640323', N'盐池县', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640324', N'同心县', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640381', N'青铜峡市', N'640300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640400', N'固原市', N'640000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640401', N'市辖区', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640402', N'原州区', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640422', N'西吉县', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640423', N'隆德县', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640424', N'泾源县', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640425', N'彭阳县', N'640400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640500', N'中卫市', N'640000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640501', N'市辖区', N'640500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640502', N'沙坡头区', N'640500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640521', N'中宁县', N'640500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'640522', N'海原县', N'640500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650000', N'新疆维吾尔自治区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'650100', N'乌鲁木齐市', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650101', N'市辖区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650102', N'天山区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650103', N'沙依巴克区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650104', N'新市区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650105', N'水磨沟区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650106', N'头屯河区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650107', N'达坂城区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650109', N'米东区', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650121', N'乌鲁木齐县', N'650100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650200', N'克拉玛依市', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650201', N'市辖区', N'650200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650202', N'独山子区', N'650200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650203', N'克拉玛依区', N'650200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650204', N'白碱滩区', N'650200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'650205', N'乌尔禾区', N'650200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652100', N'吐鲁番地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652101', N'吐鲁番市', N'652100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652122', N'鄯善县', N'652100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652123', N'托克逊县', N'652100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652200', N'哈密地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652201', N'哈密市', N'652200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652222', N'巴里坤哈萨克自治县', N'652200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652223', N'伊吾县', N'652200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652300', N'昌吉回族自治州', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652301', N'昌吉市', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652302', N'阜康市', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652323', N'呼图壁县', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652324', N'玛纳斯县', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652325', N'奇台县', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652327', N'吉木萨尔县', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652328', N'木垒哈萨克自治县', N'652300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652700', N'博尔塔拉蒙古自治州', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652701', N'博乐市', N'652700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652722', N'精河县', N'652700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652723', N'温泉县', N'652700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652800', N'巴音郭楞蒙古自治州', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652801', N'库尔勒市', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652822', N'轮台县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652823', N'尉犁县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652824', N'若羌县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652825', N'且末县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652826', N'焉耆回族自治县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652827', N'和静县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652828', N'和硕县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652829', N'博湖县', N'652800')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652900', N'阿克苏地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652901', N'阿克苏市', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652922', N'温宿县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652923', N'库车县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652924', N'沙雅县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652925', N'新和县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652926', N'拜城县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652927', N'乌什县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652928', N'阿瓦提县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'652929', N'柯坪县', N'652900')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653000', N'克孜勒苏柯尔克孜自治州', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653001', N'阿图什市', N'653000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653022', N'阿克陶县', N'653000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653023', N'阿合奇县', N'653000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653024', N'乌恰县', N'653000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653100', N'喀什地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653101', N'喀什市', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653121', N'疏附县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653122', N'疏勒县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653123', N'英吉沙县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653124', N'泽普县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653125', N'莎车县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653126', N'叶城县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653127', N'麦盖提县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653128', N'岳普湖县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653129', N'伽师县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653130', N'巴楚县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653131', N'塔什库尔干塔吉克自治县', N'653100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653200', N'和田地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653201', N'和田市', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653221', N'和田县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653222', N'墨玉县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653223', N'皮山县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653224', N'洛浦县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653225', N'策勒县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653226', N'于田县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'653227', N'民丰县', N'653200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654000', N'伊犁哈萨克自治州', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654002', N'伊宁市', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654003', N'奎屯市', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654021', N'伊宁县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654022', N'察布查尔锡伯自治县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654023', N'霍城县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654024', N'巩留县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654025', N'新源县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654026', N'昭苏县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654027', N'特克斯县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654028', N'尼勒克县', N'654000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654200', N'塔城地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654201', N'塔城市', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654202', N'乌苏市', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654221', N'额敏县', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654223', N'沙湾县', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654224', N'托里县', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654225', N'裕民县', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654226', N'和布克赛尔蒙古自治县', N'654200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654300', N'阿勒泰地区', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654301', N'阿勒泰市', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654321', N'布尔津县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654322', N'富蕴县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654323', N'福海县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654324', N'哈巴河县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654325', N'青河县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'654326', N'吉木乃县', N'654300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'659000', N'自治区直辖县级行政区划', N'650000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'659001', N'石河子市', N'659000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'659002', N'阿拉尔市', N'659000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'659003', N'图木舒克市', N'659000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'659004', N'五家渠市', N'659000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710000', N'台湾省', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'710100', N'台北市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710101', N'中正区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710102', N'大同区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710103', N'中山区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710104', N'松山区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710105', N'大安区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710106', N'万华区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710107', N'信义区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710108', N'士林区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710109', N'北投区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710110', N'内湖区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710111', N'南港区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710112', N'文山区', N'710100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710200', N'高雄市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710201', N'新兴区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710202', N'前金区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710203', N'芩雅区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710204', N'盐埕区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710205', N'鼓山区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710206', N'旗津区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710207', N'前镇区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710208', N'三民区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710209', N'左营区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710210', N'楠梓区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710211', N'小港区', N'710200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710300', N'基隆市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710301', N'仁爱区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710302', N'信义区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710303', N'中正区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710304', N'中山区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710305', N'安乐区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710306', N'暖暖区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710307', N'七堵区', N'710300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710400', N'台中市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710401', N'中区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710402', N'东区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710403', N'南区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710404', N'西区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710405', N'北区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710406', N'北屯区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710407', N'西屯区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710408', N'南屯区', N'710400')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710500', N'台南市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710501', N'中西区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710502', N'东区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710503', N'南区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710504', N'北区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710505', N'安平区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710506', N'安南区', N'710500')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710600', N'新竹市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710601', N'东区', N'710600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710602', N'北区', N'710600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710603', N'香山区', N'710600')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710700', N'嘉义市', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710701', N'东区', N'710700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'710702', N'西区', N'710700')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719000', N'省直辖', N'710000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719001', N'台北县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719002', N'宜兰县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719003', N'新竹县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719004', N'桃园县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719005', N'苗栗县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719006', N'台中县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719007', N'彰化县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719008', N'南投县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719009', N'嘉义县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719010', N'云林县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719011', N'台南县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719012', N'高雄县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719013', N'屏东县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719014', N'台东县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719015', N'花莲县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'719016', N'澎湖县', N'719000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810000', N'香港特别行政区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'810100', N'香港岛', N'810000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810101', N'中西区', N'810100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810102', N'湾仔区', N'810100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810103', N'东区', N'810100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810104', N'南区', N'810100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810200', N'九龙', N'810000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810201', N'油尖旺区', N'810200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810202', N'深水埗区', N'810200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810203', N'九龙城区', N'810200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810204', N'黄大仙区', N'810200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810205', N'观塘区', N'810200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810300', N'新界', N'810000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810301', N'北区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810302', N'大埔区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810303', N'沙田区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810304', N'西贡区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810305', N'荃湾区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810306', N'屯门区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810307', N'元朗区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810308', N'葵青区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'810309', N'离岛区', N'810300')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820000', N'澳门特别行政区', NULL)
GO

INSERT INTO [dbo].[Area]  VALUES (N'820100', N'澳门半岛', N'820000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820101', N'花地玛堂区', N'820100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820102', N'圣安多尼堂区', N'820100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820103', N'大堂区', N'820100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820104', N'望德堂区', N'820100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820105', N'风顺堂区', N'820100')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820200', N'澳门离岛', N'820000')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820201', N'嘉模堂区', N'820200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820202', N'圣方济各堂区', N'820200')
GO

INSERT INTO [dbo].[Area]  VALUES (N'820300', N'无堂区划分区域', N'820000')
GO


-- ----------------------------
-- Table structure for Cart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type IN ('U'))
	DROP TABLE [dbo].[Cart]
GO

CREATE TABLE [dbo].[Cart] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [UserId] int NULL,
  [ProductId] int NULL,
  [Number] int NULL
)
GO

ALTER TABLE [dbo].[Cart] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Cart]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cart] ON
GO

INSERT INTO [dbo].[Cart] ([Id], [UserId], [ProductId], [Number]) VALUES (N'9', N'3007', N'2', N'2')
GO

INSERT INTO [dbo].[Cart] ([Id], [UserId], [ProductId], [Number]) VALUES (N'12', N'3018', N'1', N'4')
GO

INSERT INTO [dbo].[Cart] ([Id], [UserId], [ProductId], [Number]) VALUES (N'36', N'3019', N'1', N'1')
GO

INSERT INTO [dbo].[Cart] ([Id], [UserId], [ProductId], [Number]) VALUES (N'37', N'3019', N'2', N'1')
GO

SET IDENTITY_INSERT [dbo].[Cart] OFF
GO


-- ----------------------------
-- Table structure for Comment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type IN ('U'))
	DROP TABLE [dbo].[Comment]
GO

CREATE TABLE [dbo].[Comment] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [ProductId] int NULL,
  [Content] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [UserId] int NULL,
  [Star] int NULL
)
GO

ALTER TABLE [dbo].[Comment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type IN ('U'))
	DROP TABLE [dbo].[Menu]
GO

CREATE TABLE [dbo].[Menu] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ParentId] int NULL,
  [Controller] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Action] varchar(255) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Menu]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Menu] ON
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'1', N'商品管理', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'2', N'订单管理', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'3', N'系统管理', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'4', N'用户管理', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'5', N'新增商品', N'1', N'Product', N'Add')
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'6', N'修改商品', N'1', N'Product', N'Edit')
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'7', N'查看商品', N'1', N'Product', N'List')
GO

INSERT INTO [dbo].[Menu] ([Id], [Name], [ParentId], [Controller], [Action]) VALUES (N'8', N'删除商品', N'1', N'Prodcut', N'Delete')
GO

SET IDENTITY_INSERT [dbo].[Menu] OFF
GO


-- ----------------------------
-- Table structure for Navigators
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Navigators]') AND type IN ('U'))
	DROP TABLE [dbo].[Navigators]
GO

CREATE TABLE [dbo].[Navigators] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Url] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Show] bit NULL
)
GO

ALTER TABLE [dbo].[Navigators] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type IN ('U'))
	DROP TABLE [dbo].[Order]
GO

CREATE TABLE [dbo].[Order] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [UserId] int NULL,
  [OrderTime] datetime NULL,
  [AddressId] int NULL,
  [Price] money NULL,
  [OrderState] int NULL
)
GO

ALTER TABLE [dbo].[Order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Order]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Order] ON
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'9', N'3007', N'2019-02-26 10:41:34.983', N'3', N'4809.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'10', N'3007', N'2019-02-26 10:41:56.903', N'3', N'4809.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'11', N'3007', N'2019-02-26 10:42:55.383', N'3', N'4809.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'12', N'3007', N'2019-02-26 10:47:01.923', N'3', N'4809.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'13', N'3007', N'2019-02-26 11:07:32.367', N'3', N'2107.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'14', N'3018', N'2019-03-01 10:19:13.837', N'19', N'880.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'15', N'3018', N'2019-03-01 13:35:28.573', N'19', N'15840.0000', N'0')
GO

INSERT INTO [dbo].[Order] ([Id], [UserId], [OrderTime], [AddressId], [Price], [OrderState]) VALUES (N'16', N'3019', N'2019-03-01 18:08:40.087', N'21', N'7201.0000', N'0')
GO

SET IDENTITY_INSERT [dbo].[Order] OFF
GO


-- ----------------------------
-- Table structure for OrderDetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type IN ('U'))
	DROP TABLE [dbo].[OrderDetail]
GO

CREATE TABLE [dbo].[OrderDetail] (
  [OrderDetailId] int IDENTITY(1,1) NOT NULL,
  [OrderId] int NULL,
  [ProductId] int NULL,
  [Number] int NULL
)
GO

ALTER TABLE [dbo].[OrderDetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [OrderDetail]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'17', N'9', N'1', N'5')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'18', N'9', N'2', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'19', N'10', N'1', N'5')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'20', N'10', N'2', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'21', N'11', N'2', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'22', N'12', N'2', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'23', N'13', N'2', N'3')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'24', N'13', N'1', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'25', N'14', N'1', N'1')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'26', N'15', N'1', N'30')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'27', N'16', N'2', N'2')
GO

INSERT INTO [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Number]) VALUES (N'28', N'16', N'1', N'1')
GO

SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO


-- ----------------------------
-- Table structure for Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type IN ('U'))
	DROP TABLE [dbo].[Product]
GO

CREATE TABLE [dbo].[Product] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [FullName] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [OldPirce] money NULL,
  [NewPirce] money NULL,
  [ProductColorId] int NULL,
  [ProductSizeId] int NULL,
  [TypeId] int NULL,
  [Saled] int NULL,
  [Amount] int NULL,
  [Onsale] bit NULL,
  [Detail] ntext COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Product]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Product] ON
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'1', N'男士专业运动短袖POLO', N'男士专业运动短袖POLO', N'980.0000', N'880.0000', N'1', N'3', N'8', N'14', N'62', N'1', N'"<div class=""detail-line"">')
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'2', N'男士休闲长袖T', N'男士休闲长袖T', N'599.0000', N'409.0000', N'2', N'4', N'8', N'13', N'9105', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'3', N'男生潮牌短袖T', N'男生潮牌短袖T', N'440.0000', N'369.0000', N'3', N'3', N'8', N'12', N'18', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'4', N'男士休闲长袖T恤', N'男士休闲长袖T恤', N'582.0000', N'439.0000', N'2', N'2', N'8', N'11', N'92', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'5', N'男生潮牌长袖t恤', N'男生潮牌长袖t恤', N'480.0000', N'369.0000', N'4', N'1', N'8', N'10', N'3', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'6', N'男士专业运动连帽卫衣', N'男士专业运动连帽卫衣', N'880.0000', N'792.0000', N'5', N'3', N'9', N'9', N'13', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'7', N'男士休闲连帽卫衣', N'男士休闲连帽卫衣', N'780.0000', N'589.0000', N'6', N'3', N'9', N'8', N'538', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'8', N'男士休闲连帽卫衣', N'男士休闲连帽卫衣', N'740.0000', N'559.0000', N'2', N'3', N'9', N'7', N'38', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'9', N'女士休闲拼色连衣裙', N'女士休闲拼色连衣裙', N'980.0000', N'879.0000', N'2', N'3', N'11', N'6', N'91', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'10', N'女生潮牌串标连衣裙', N'女生潮牌串标连衣裙', N'980.0000', N'869.0000', N'3', N'3', N'11', N'5', N'102', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'11', N'女士复古经典连衣裙', N'女士复古经典连衣裙', N'840.0000', N'629.0000', N'7', N'2', N'11', N'4', N'11', N'0', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'12', N'女士休闲大LOGO针织长裤', N'女士休闲大LOGO针织长裤', N'690.0000', N'509.0000', N'3', N'2', N'12', N'3', N'49', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'13', N'女生潮牌针织长裤', N'女生潮牌针织长裤', N'580.0000', N'519.0000', N'3', N'3', N'12', N'2', N'41', N'1', NULL)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [FullName], [OldPirce], [NewPirce], [ProductColorId], [ProductSizeId], [TypeId], [Saled], [Amount], [Onsale], [Detail]) VALUES (N'14', N'男童套头卫衣', N'男童套头卫衣', N'580.0000', N'522.0000', N'8', N'2', N'13', N'1', N'18', N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[Product] OFF
GO


-- ----------------------------
-- Table structure for ProductColor
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductColor]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductColor]
GO

CREATE TABLE [dbo].[ProductColor] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [Red] int NULL,
  [Green] int NULL,
  [Blue] int NULL
)
GO

ALTER TABLE [dbo].[ProductColor] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [ProductColor]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProductColor] ON
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'1', N'钻蓝', N'31', N'87', N'177')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'2', N'传奇蓝', N'74', N'77', N'96')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'3', N'深黑', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'4', N'深沼泽绿', N'106', N'190', N'200')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'5', N'板岩灰', N'175', N'175', N'175')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'6', N'标准白', N'250', N'250', N'250')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'7', N'传奇红', N'219', N'27', N'36')
GO

INSERT INTO [dbo].[ProductColor] ([Id], [Name], [Red], [Green], [Blue]) VALUES (N'8', N'满印', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[ProductColor] OFF
GO


-- ----------------------------
-- Table structure for ProductImage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImage]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductImage]
GO

CREATE TABLE [dbo].[ProductImage] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [ProductId] int NULL,
  [BigImage] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [SmallImage] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[ProductImage] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [ProductImage]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProductImage] ON
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'1', N'1', N'0001_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'2', N'1', N'0001_2.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'3', N'1', N'0001_3.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'4', N'1', N'0001_4.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'5', N'1', N'0001_5.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'6', N'1', N'0001_6.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'7', N'1', N'0001_7.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'8', N'2', N'0002_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'9', N'2', N'0002_2.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'10', N'2', N'0002_3.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'11', N'2', N'0002_4.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'12', N'2', N'0002_5.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'13', N'2', N'0002_6.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'14', N'2', N'0002_7.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'15', N'3', N'0004_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'16', N'4', N'0005_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'17', N'5', N'0006_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'18', N'6', N'0007_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'19', N'7', N'0008_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'20', N'8', N'0009_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'21', N'9', N'0010_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'22', N'10', N'0011_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'23', N'11', N'0012_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'24', N'12', N'0013_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'25', N'13', N'0014_1.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'27', N'2', N'0002_8.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'28', N'2', N'0002_9.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'29', N'2', N'0002_10.jpg', NULL)
GO

INSERT INTO [dbo].[ProductImage] ([Id], [ProductId], [BigImage], [SmallImage]) VALUES (N'30', N'2', N'0002_11.jpg', NULL)
GO

SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO


-- ----------------------------
-- Table structure for ProDuctSize
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProDuctSize]') AND type IN ('U'))
	DROP TABLE [dbo].[ProDuctSize]
GO

CREATE TABLE [dbo].[ProDuctSize] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[ProDuctSize] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [ProDuctSize]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProDuctSize] ON
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'1', N'S')
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'2', N'M')
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'3', N'L')
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'4', N'XL')
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'5', N'XXL')
GO

INSERT INTO [dbo].[ProDuctSize] ([Id], [Name]) VALUES (N'6', N'XXXL')
GO

SET IDENTITY_INSERT [dbo].[ProDuctSize] OFF
GO


-- ----------------------------
-- Table structure for ProductType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductType]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductType]
GO

CREATE TABLE [dbo].[ProductType] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Pid] int NULL
)
GO

ALTER TABLE [dbo].[ProductType] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [ProductType]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProductType] ON
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'1', N'新品上市', NULL)
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'2', N'男士', NULL)
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'3', N'女士', NULL)
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'4', N'儿童', NULL)
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'5', N'男士', N'1')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'6', N'女士', N'1')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'7', N'儿童', N'1')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'8', N'T恤', N'2')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'9', N'卫衣', N'2')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'10', N'外套', N'2')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'11', N'连衣裙', N'3')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'12', N'下装', N'3')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'13', N'男童-服装', N'4')
GO

INSERT INTO [dbo].[ProductType] ([Id], [Name], [Pid]) VALUES (N'14', N'女童-鞋类', N'4')
GO

SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO


-- ----------------------------
-- Table structure for Urls
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Urls]') AND type IN ('U'))
	DROP TABLE [dbo].[Urls]
GO

CREATE TABLE [dbo].[Urls] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Url] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Title] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Urls] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type IN ('U'))
	DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User] (
  [Id] int IDENTITY(1,1) NOT NULL,
  [Username] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Password] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Nickname] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [Pic] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [Age] int NULL,
  [Gender] nvarchar(max) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[User] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [User]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User] ON
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'2007', N'fangixinlei66', N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'房鑫磊', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'2008', N'fangxinlei666', N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'房鑫磊', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'3007', N'fangxiaolei66', N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'房小磊', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'3015', N'111', N'111', N'111', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'3018', N'fang123', N'42-97-F4-4B-13-95-52-35-24-5B-24-97-39-9D-7A-93', N'房鑫磊', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User] ([Id], [Username], [Password], [Nickname], [Pic], [Age], [Gender]) VALUES (N'3019', N'zxc123', N'42-97-F4-4B-13-95-52-35-24-5B-24-97-39-9D-7A-93', N'123', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[User] OFF
GO


-- ----------------------------
-- Primary Key structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [PK__Address__3214EC074CE8754D] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Admin
-- ----------------------------
ALTER TABLE [dbo].[Admin] ADD CONSTRAINT [PK__Admin__3214EC07E9EA63C7] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = OFF, ALLOW_PAGE_LOCKS = OFF)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Area
-- ----------------------------
ALTER TABLE [dbo].[Area] ADD CONSTRAINT [PK__Area__3214EC07C661FCEA] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Cart
-- ----------------------------
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [PK__Cart__3214EC07EE787D83] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Comment
-- ----------------------------
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [PK__Comment__3214EC073048C43C] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Menu
-- ----------------------------
ALTER TABLE [dbo].[Menu] ADD CONSTRAINT [PK__Menu__3214EC07B0A1EA5D] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = OFF, ALLOW_PAGE_LOCKS = OFF)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Navigators
-- ----------------------------
ALTER TABLE [dbo].[Navigators] ADD CONSTRAINT [PK__Navigato__3214EC07F5F3811C] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK__Order__3214EC07C104C1AD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table OrderDetail
-- ----------------------------
ALTER TABLE [dbo].[OrderDetail] ADD CONSTRAINT [PK__OrderDet__D3B9D36C1A8F175A] PRIMARY KEY CLUSTERED ([OrderDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK__Product__3214EC075E7E8E32] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductColor
-- ----------------------------
ALTER TABLE [dbo].[ProductColor] ADD CONSTRAINT [PK__ProductC__3214EC071C70EE11] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductImage
-- ----------------------------
ALTER TABLE [dbo].[ProductImage] ADD CONSTRAINT [PK__ProductI__3214EC07CFD2B730] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProDuctSize
-- ----------------------------
ALTER TABLE [dbo].[ProDuctSize] ADD CONSTRAINT [PK__ProDuctS__3214EC075023B7A4] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductType
-- ----------------------------
ALTER TABLE [dbo].[ProductType] ADD CONSTRAINT [PK__ProductT__3214EC072355C817] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Urls
-- ----------------------------
ALTER TABLE [dbo].[Urls] ADD CONSTRAINT [PK__Urls__3214EC07AF74E912] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK__User__3214EC07B55F1CC1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK__Address__UserId__15502E78] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK__Address__AreaId__164452B1] FOREIGN KEY ([AreaId]) REFERENCES [Area] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Area
-- ----------------------------
ALTER TABLE [dbo].[Area] ADD CONSTRAINT [FK__Area__ParentId__1273C1CD] FOREIGN KEY ([ParentId]) REFERENCES [Area] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Cart
-- ----------------------------
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [FK__Cart__UserId__2B3F6F97] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [FK__Cart__ProductId__2C3393D0] FOREIGN KEY ([ProductId]) REFERENCES [Product] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Comment
-- ----------------------------
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [FK__Comment__Product__24927208] FOREIGN KEY ([ProductId]) REFERENCES [Product] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [FK__Comment__UserId__25869641] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Menu
-- ----------------------------
ALTER TABLE [dbo].[Menu] ADD CONSTRAINT [ChildMenus] FOREIGN KEY ([ParentId]) REFERENCES [Menu] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK__Order__UserId__49C3F6B7] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK__Order__AddressId__4AB81AF0] FOREIGN KEY ([AddressId]) REFERENCES [Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table OrderDetail
-- ----------------------------
ALTER TABLE [dbo].[OrderDetail] ADD CONSTRAINT [FK__OrderDeta__Order__4D94879B] FOREIGN KEY ([OrderId]) REFERENCES [Order] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[OrderDetail] ADD CONSTRAINT [FK__OrderDeta__Produ__4E88ABD4] FOREIGN KEY ([ProductId]) REFERENCES [Product] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK__Product__Product__1FCDBCEB] FOREIGN KEY ([ProductColorId]) REFERENCES [ProductColor] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK__Product__Product__20C1E124] FOREIGN KEY ([ProductSizeId]) REFERENCES [ProDuctSize] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK__Product__TypeId__21B6055D] FOREIGN KEY ([TypeId]) REFERENCES [ProductType] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductImage
-- ----------------------------
ALTER TABLE [dbo].[ProductImage] ADD CONSTRAINT [FK__ProductIm__Produ__49C3F6B7] FOREIGN KEY ([ProductId]) REFERENCES [Product] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductType
-- ----------------------------
ALTER TABLE [dbo].[ProductType] ADD CONSTRAINT [FK__ProductType__Pid__1CF15040] FOREIGN KEY ([Pid]) REFERENCES [ProductType] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

