/*
Navicat SQL Server Data Transfer

Source Server         : sql server
Source Server Version : 120000
Source Host           : localhost\SQLExpress:1433
Source Database       : ajaxfilterpagination
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 120000
File Encoding         : 65001

Date: 2023-02-11 20:18:15
*/


-- ----------------------------
-- Table structure for [dbo].[daerah]
-- ----------------------------
DROP TABLE [dbo].[daerah]
GO
CREATE TABLE [dbo].[daerah] (
[id] bigint NOT NULL ,
[nama] nvarchar(255) NULL ,
[kod_negeri] nvarchar(255) NULL ,
[kod_daerah] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of daerah
-- ----------------------------
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'1', N'KOTA TINGGI', N'01', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'2', N'BATU PAHAT', N'01', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'3', N'MUAR', N'01', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'4', N'PONTIAN', N'01', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'5', N'JOHOR BAHRU', N'01', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'6', N'KLUANG', N'01', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'7', N'KULAI', N'01', N'21');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'8', N'TANGKAK', N'01', N'22');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'9', N'DAERAH SEGAMAT', N'01', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'10', N'DAERAH MERSING', N'01', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'11', N'DAERAH LANGKAWI', N'02', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'12', N'DAERAH KOTA SETAR', N'02', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'13', N'DAERAH PADANG TERAP', N'02', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'14', N'DAERAH KUALA MUDA', N'02', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'15', N'DAERAH YAN', N'02', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'16', N'DAERAH SIK', N'02', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'17', N'DAERAH BALING', N'02', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'18', N'DAERAH KULIM', N'02', N'09');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'19', N'DAERAH BANDAR BAHARU', N'02', N'10');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'20', N'DAERAH PENDANG', N'02', N'11');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'21', N'DAERAH POKOK SENA', N'02', N'12');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'22', N'DAERAH KUBANG PASU', N'02', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'23', N'MACHANG', N'03', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'24', N'KECIL LOJING', N'03', N'12');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'25', N'TUMPAT', N'03', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'26', N'PASIR MAS', N'03', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'27', N'KUALA KRAI', N'03', N'10');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'28', N'KOTA BHARU', N'03', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'29', N'BACHOK', N'03', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'30', N'GUA MUSANG', N'03', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'31', N'PASIR PUTEH', N'03', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'32', N'TANAH MERAH', N'03', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'33', N'JELI', N'03', N'11');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'34', N'JASIN', N'04', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'35', N'MELAKA TENGAH', N'04', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'36', N'ALOR GAJAH', N'04', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'37', N'PORT DICKSON', N'05', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'38', N'REMBAU', N'05', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'39', N'SEREMBAN', N'05', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'40', N'TAMPIN', N'05', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'41', N'JEMPOL', N'05', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'42', N'JELEBU', N'05', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'43', N'KUALA PILAH', N'05', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'44', N'KUANTAN', N'06', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'45', N'LIPIS', N'06', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'46', N'PEKAN', N'06', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'47', N'TEMERLOH', N'06', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'48', N'ROMPIN', N'06', N'09');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'49', N'MARAN', N'06', N'10');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'50', N'BERA', N'06', N'11');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'51', N'CAMERON HIGHLANDS', N'06', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'52', N'RAUB', N'06', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'53', N'BENTONG', N'06', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'54', N'JERANTUT', N'06', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'55', N'SEBERANG PERAI SELATAN', N'07', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'56', N'TIMOR LAUT', N'07', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'57', N'BARAT DAYA', N'07', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'58', N'SEBERANG PERAI TENGAH', N'07', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'59', N'SEBERANG PERAI UTARA', N'07', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'60', N'KINTA', N'08', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'61', N'KUALA KANGSAR', N'08', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'62', N'HILIR PERAK', N'08', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'63', N'SELAMA', N'08', N'09');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'64', N'PERAK TENGAH', N'08', N'10');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'65', N'MUALLIM', N'08', N'12');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'66', N'MANJUNG', N'08', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'67', N'KAMPAR', N'08', N'11');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'68', N'BATANG PADANG', N'08', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'69', N'BAGAN DATUK', N'08', N'13');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'70', N'LARUT & MATANG', N'08', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'71', N'KERIAN', N'08', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'72', N'HULU PERAK', N'08', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'73', N'TIADA DAERAH', N'09', N'00');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'74', N'KUALA LANGAT', N'10', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'75', N'KUALA SELANGOR', N'10', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'76', N'ULU LANGAT', N'10', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'77', N'ULU SELANGOR', N'10', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'78', N'PETALING', N'10', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'79', N'GOMBAK', N'10', N'09');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'80', N'SEPANG', N'10', N'10');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'81', N'KLANG', N'10', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'82', N'SABAK BERNAM', N'10', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'83', N'KEMAMAN', N'11', N'03');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'84', N'HULU TERENGGANU', N'11', N'05');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'85', N'MARANG', N'11', N'06');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'86', N'SETIU', N'11', N'07');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'87', N'DUNGUN', N'11', N'02');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'88', N'KUALA NERUS', N'11', N'08');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'89', N'KUALA TERENGGANU', N'11', N'04');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'90', N'BESUT', N'11', N'01');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'91', N'KUALA LUMPUR', N'14', N'00');
GO
INSERT INTO [dbo].[daerah] ([id], [nama], [kod_negeri], [kod_daerah]) VALUES (N'92', N'PUTRAJAYA', N'16', N'01');
GO

-- ----------------------------
-- Indexes structure for table daerah
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[daerah]
-- ----------------------------
ALTER TABLE [dbo].[daerah] ADD PRIMARY KEY ([id])
GO
