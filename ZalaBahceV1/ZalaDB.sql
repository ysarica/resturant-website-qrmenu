USE [ZalaDB]
GO
/****** Object:  Table [dbo].[Sosyal]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sosyal](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](150) NULL,
	[link] [nvarchar](150) NULL,
	[icon] [nvarchar](150) NULL,
 CONSTRAINT [PK_Sosyal] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sosyal] ON
INSERT [dbo].[Sosyal] ([SID], [ad], [link], [icon]) VALUES (1, N'twitter1', N'#1', N'twitter1')
INSERT [dbo].[Sosyal] ([SID], [ad], [link], [icon]) VALUES (2, N'instagram', N'#', N'instagram')
INSERT [dbo].[Sosyal] ([SID], [ad], [link], [icon]) VALUES (3, N'facebook', N'#', N'facebook')
INSERT [dbo].[Sosyal] ([SID], [ad], [link], [icon]) VALUES (6, N'linkedin', NULL, N'linkedin')
SET IDENTITY_INSERT [dbo].[Sosyal] OFF
/****** Object:  Table [dbo].[Slider]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](150) NULL,
	[baslik] [nvarchar](100) NULL,
	[slogan] [nvarchar](100) NULL,
	[link] [nvarchar](100) NULL,
	[siralama] [int] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Slider] ON
INSERT [dbo].[Slider] ([SID], [resim], [baslik], [slogan], [link], [siralama]) VALUES (12, N'/Resim/Slayt/1ee65083-bf3d-476f-9a38-12ec4fa2f045.jpg', N'HAMBURGERİN ADRESİ', N'En Güzel Hamburger Zala Bahçede Yenir.', N'/Zalabahce/Menu?KategoriID=4', NULL)
INSERT [dbo].[Slider] ([SID], [resim], [baslik], [slogan], [link], [siralama]) VALUES (13, N'/Resim/Slayt/32d8e078-6356-43c3-8a18-fe115b6308c5.jpg', N'Salata Zalada Yenir', N'En Güzel Salatalar Zal Bahçede Yenir.', N'/ZalaBahce/Menu?kategoriID=7', NULL)
SET IDENTITY_INSERT [dbo].[Slider] OFF
/****** Object:  Table [dbo].[SlaytResim]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlaytResim](
	[SRID] [int] IDENTITY(1,1) NOT NULL,
	[resimyol] [nvarchar](50) NULL,
	[resimbaslik] [nvarchar](50) NULL,
	[SID] [int] NULL,
 CONSTRAINT [PK_SlaytResim] PRIMARY KEY CLUSTERED 
(
	[SRID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteAyar]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteAyar](
	[ayarID] [int] IDENTITY(1,1) NOT NULL,
	[logo1] [nvarchar](150) NULL,
	[logo2] [nvarchar](150) NULL,
	[title] [nvarchar](150) NULL,
	[aciklama] [nvarchar](320) NULL,
	[anahtarKelime] [nvarchar](max) NULL,
	[ziyaretgün] [nvarchar](50) NULL,
	[siteoff] [nvarchar](50) NULL,
	[siteurl] [nvarchar](150) NULL,
	[firmaadi] [nvarchar](150) NULL,
 CONSTRAINT [PK_SiteAyar] PRIMARY KEY CLUSTERED 
(
	[ayarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SiteAyar] ON
INSERT [dbo].[SiteAyar] ([ayarID], [logo1], [logo2], [title], [aciklama], [anahtarKelime], [ziyaretgün], [siteoff], [siteurl], [firmaadi]) VALUES (1, N'/Resim/Site/zalalogo1.png', N'/Resim/Site/zalalogo2.png', N'ZALA BAHÇE | Tarabyanın Parlayan Yıldızı', N'Zala Bahçe, Sarıyer Tarabya''da bir hayalin neticesinde, siz değerli konuklarına eşsiz sunumları, damağınıza hitap edecek farklı tatları ve tabiki kendinizi huzurlu ve rahat hissedebileceğiniz iç ve dış mekanı ile hizmet vermek üzere kurulmuştur.', N'Tarabya,Tarabya Cafe,Tarabya Doğum Günü,Evlilik Teklifi,Tarabya Resturant,Zala Bahçe Yemek,Tarabya Yemek,Zala Bahçe İletişim,Zala,Bahçe,Zala Bahçe,Zala Baçe Doğum Günü,İletişim,Zala Bahçe Menü,Zala Menü,Tarabya Kahvaltı, Tarabya Kahvaltı', N'0', N'0', N'http://zalabahce.com/', N'Zala Bahce')
SET IDENTITY_INSERT [dbo].[SiteAyar] OFF
/****** Object:  Table [dbo].[SayfaSlayt]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SayfaSlayt](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[slaytad] [nvarchar](150) NULL,
 CONSTRAINT [PK_SayfaSlayt] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SayfaSlayt] ON
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (1, N'sdfsdfdsf')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (2, N'sdfsdfdsf')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (3, N'sdfsdfdsf')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (4, N'ghhgjfjfgjfj')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (5, N'sdfsdfdsf')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (6, N'dene')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (7, N'sdfsdfdsf')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (8, N'dene')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (9, N'dene')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (10, N'dene')
INSERT [dbo].[SayfaSlayt] ([SID], [slaytad]) VALUES (11, N'dene')
SET IDENTITY_INSERT [dbo].[SayfaSlayt] OFF
/****** Object:  Table [dbo].[Sayfalar]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sayfalar](
	[SaID] [int] IDENTITY(1,1) NOT NULL,
	[baslik] [nvarchar](150) NULL,
	[baslik2] [nvarchar](150) NULL,
	[icerik] [nvarchar](max) NULL,
	[resim] [nvarchar](150) NULL,
	[aktif] [nvarchar](50) NULL,
	[yer] [nvarchar](150) NULL,
 CONSTRAINT [PK_Sayfalar] PRIMARY KEY CLUSTERED 
(
	[SaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sayfalar] ON
INSERT [dbo].[Sayfalar] ([SaID], [baslik], [baslik2], [icerik], [resim], [aktif], [yer]) VALUES (6, N'Kahvaltı Şöleni', N'En Ucuz Kahvaltı', N'<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis pharetra neque id commodo. Sed condimentum posuere malesuada. Fusce vulputate libero a nisl molestie, non accumsan quam congue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam sodales mattis magna vitae finibus. Phasellus et tempus sem, et porttitor leo.</strong></p><p><i>Ut id scelerisque leo, vel bibendum sapien. </i><a href="ssss"><i>Vestibulum </i></a><i>ut nisi vitae ante pharetra pellentesque. Nulla facilisi. Nullam blandit ex sit amet nulla lacinia elementum. Vestibulum eu sodales lacus, ut euismod justo. Morbi eleifend enim dui, non rhoncus augue efficitur eu. Quisque nec feugiat mi. Integer ultricies placerat nulla sed tincidunt. Pellentesque tortor leo, fermentum et elementum eu, semper sit amet tellus. In et auctor ipsum. Morbi eget euismod erat, id sollicitudin lectus. Sed sollicitudin porta sem, a gravida diam placerat ut. Quisque et orci ante.</i></p><p>Vivamus ultrices urna nibh, ut commodo eros hendrerit sed. Nullam vestibulum at eros ut lobortis. In gravida faucibus nibh, non hendrerit magna dictum ut. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean rhoncus turpis sit amet magna egestas, a tristique lacus porttitor. <i><strong>Phasellus nec dolor sit amet lacus fermentum </strong></i>sagittis nec quis nisi. Cras venenatis sem ut tincidunt lacinia. Vestibulum ipsum augue, tristique et condimentum vitae, dignissim ut nisi. Duis sit amet diam dui. Phasellus sed odio enim. Etiam non luctus nulla. Donec eget vestibulum tortor.</p><blockquote><p>Integer non iaculis est, nec imperdiet nunc. Sed auctor congue semper. Donec in mauris ex. Suspendisse id dignissim mi, vel porta massa. Quisque et tortor quis enim rhoncus aliquet. Sed sodales metus eget mauris dictum imperdiet id vel ante. Cras vitae sodales velit. Proin a ipsum a nulla euismod hendrerit. Vivamus interdum, tellus eleifend aliquam mattis, lacus nisl laoreet ligula, sit amet fermentum velit diam in urna. Nulla facilisi. Morbi vel mauris dui. Donec sed risus magna.</p></blockquote><h4>Curabitur dapibus suscipit posuere. Morbi eu porttitor erat. Vivamus congue nisi eget tellus varius, vel venenatis risus tristique. Maecenas facilisis tortor turpis, id commodo purus maximus vel. Morbi quis ex quis ex vehicula efficitur. Cras convallis tortor ut est lacinia sagittis. Sed a posuere odio. Nulla sit amet purus eu mi interdum semper. Curabitur porta fermentum ullamcorper.</h4>', N'/Resim/Sayfa/a6dd8e8a-78ed-4a31-8df6-1c0d65435b56.jpg', N'aktif', N'altmenu')
INSERT [dbo].[Sayfalar] ([SaID], [baslik], [baslik2], [icerik], [resim], [aktif], [yer]) VALUES (7, N'Sizin İçin', N'Önlemlerimizi Aldık', N'<h2>Covid1o*</h2>', N'/Resim/Sayfa/07bbad1d-caca-48e0-a7a5-f0ee526d5855.jpg', N'pasif', N'ustmenu')
SET IDENTITY_INSERT [dbo].[Sayfalar] OFF
/****** Object:  Table [dbo].[Sayac]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sayac](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[yil] [nvarchar](50) NULL,
	[ay] [nvarchar](50) NULL,
	[gün] [nvarchar](50) NULL,
	[sayi] [int] NULL,
 CONSTRAINT [PK_Sayac] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sayac] ON
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (37, N'2020', N'1', N'1', 20)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (38, N'2020', N'1', N'2', 61)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (39, N'2020', N'1', N'3', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (40, N'2020', N'1', N'4', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (41, N'2020', N'1', N'5', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (42, N'2020', N'1', N'6', 9)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (43, N'2020', N'1', N'7', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (44, N'2020', N'1', N'8', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (45, N'2020', N'1', N'9', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (46, N'2020', N'1', N'10', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (47, N'2020', N'1', N'11', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (48, N'2020', N'1', N'12', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (49, N'2020', N'1', N'13', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (50, N'2020', N'1', N'14', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (51, N'2020', N'1', N'15', 9)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (52, N'2020', N'1', N'16', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (53, N'2020', N'1', N'17', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (54, N'2020', N'1', N'18', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (55, N'2020', N'1', N'19', 8)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (56, N'2020', N'1', N'20', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (57, N'2020', N'1', N'21', 8)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (58, N'2020', N'1', N'22', 6)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (59, N'2020', N'1', N'23', 6)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (60, N'2020', N'1', N'24', 54)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (61, N'2020', N'1', N'25', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (62, N'2020', N'1', N'26', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (63, N'2020', N'1', N'27', 8)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (64, N'2020', N'1', N'28', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (65, N'2020', N'1', N'29', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (66, N'2020', N'1', N'30', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (67, N'2020', N'1', N'31', 6)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (68, N'2020', N'2', N'1', 78)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (69, N'2020', N'2', N'2', 54)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (70, N'2020', N'2', N'3', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (71, N'2020', N'2', N'4', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (72, N'2020', N'2', N'5', 4)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (73, N'2020', N'8', N'6', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (74, N'2020', N'8', N'7', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (75, N'2020', N'9', N'12', 3)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (76, N'2021', N'1', N'1', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (77, N'2021', N'1', N'6', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (78, N'2021', N'1', N'22', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (79, N'2021', N'1', N'23', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (80, N'2021', N'1', N'26', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (81, N'2021', N'1', N'31', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (82, N'2021', N'2', N'8', 19)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (83, N'2021', N'2', N'9', 3)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (84, N'2021', N'2', N'11', 6)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (85, N'2021', N'3', N'3', 9)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (86, N'2021', N'3', N'6', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (87, N'2021', N'3', N'7', 6)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (88, N'2021', N'3', N'8', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (89, N'2021', N'3', N'9', 39)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (90, N'2021', N'3', N'10', 14)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (91, N'2021', N'3', N'11', 19)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (92, N'2021', N'3', N'12', 1)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (93, N'2021', N'3', N'14', 14)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (94, N'2021', N'3', N'15', 5)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (95, N'2021', N'3', N'16', 9)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (96, N'2021', N'3', N'17', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (97, N'2021', N'8', N'21', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (98, N'2021', N'8', N'29', 20)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (99, N'2021', N'10', N'2', 2)
INSERT [dbo].[Sayac] ([SID], [yil], [ay], [gün], [sayi]) VALUES (100, N'2022', N'11', N'16', 3)
SET IDENTITY_INSERT [dbo].[Sayac] OFF
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezID] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [nvarchar](150) NULL,
	[mail] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[adres] [nvarchar](max) NULL,
	[hizmet] [nvarchar](50) NULL,
	[kisi] [nvarchar](50) NULL,
	[mesaj] [nvarchar](max) NULL,
	[aciklama] [nvarchar](max) NULL,
	[okundu] [nvarchar](50) NULL,
	[tarih] [nvarchar](150) NULL,
	[pTarih] [nvarchar](250) NULL,
	[pSaat] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Rezervasyon] ON
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (56, N'Sezai Hakkı Aydın', NULL, NULL, NULL, N'hizmet', N'5', N'1010101010101000101', N'1010101010101000101', N'Onaylanmamis', N'9 Mart 2021 Salı', N'2021.03.06', N'10:11')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (57, N'Sezai Hakkı Aydın', NULL, NULL, NULL, N'hizmet', N'12', N'10101010', N'10101010', N'Onaylandı', N'9 Mart 2021 Salı', N'2021.03.06', N'11:11')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (58, N'Sezai Hakkı Aydın', NULL, NULL, NULL, N'hizmet', N'10', N'101001', N'101001', N'Onaylanmamis', N'9.03.2021-19:03', N'2021.03.06', N'10:00')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (59, N'Sezai Hakkı Aydın', NULL, NULL, NULL, N'hizmet', N'12', N'fhgfhgfhf', N'fhgfhgfhf(10.03.2021-22:49 Tarihinde Rezervasyon Onaylandı)', N'Onaylandı', N'10 Mart 2021 Çarşamba', N'2021.03.11', N'05:22')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (60, N'Sezai Hakkı Aydın', NULL, NULL, NULL, N'fghhfg', N'h', N'ghgfhgf', N'ghgfhgf', N'İptal', N'9.03.2021-19:11', N'2021.03.10', N'05:05')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (61, N'Sezai Hakkı Aydın', NULL, N'(0212) 262 61 44', NULL, N'hizmet', NULL, N'ertyhj', N'ertyhj(10.03.2021-22:49 Tarihinde Rezervasyon Onaylandı)', N'İptal', N'10 Mart 2021 Çarşamba', N'2021.04.10', N'05:55')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (62, N'12121221211', NULL, N'(0212) 262 61 44', NULL, N'hizmet1', N'13', N'1212121212', N'1212121212(10.03.2021-16:47 Tarihinde Rezervasyon Onaylandı)111(10.03.2021-22:45 Tarihinde Rezervasyon Bilgileri Güncellendi)(10.03.2021-22:45 Tarihinde Rezervasyon Bilgileri Güncellendi)(10.03.2021-22:48 Tarihinde Rezervasyon Bilgileri Güncellendi)(10.03.2021-22:48 Tarihinde Rezervasyon Onaylandı)', N'İptal', N'10 Mart 2021 Çarşamba', N'2021.05.04', N'15:05')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (63, N'Sezai Hakkı Aydın', NULL, N'(0212) 262 61 44', NULL, N'hizmet', N'12', NULL, N'6565', N'Onaylanmamis', N'9.03.2021-20:07', N'2021.02.11', N'16:11')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (64, N'Sezai Hakkı Aydın', NULL, N'05319574200', NULL, N'hizmet', NULL, NULL, N'fdgdfg', N'İptal', N'9.03.2021-22:25', N'2021.04.03', N'04:05')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (65, N'Sezai Hakkı Aydın', NULL, N'(0212) 262 61 44', NULL, N'hizmet', N'12', NULL, N'fbgfdgdfg', N'Onaylandı', N'9.03.2021-22:28', N'2020.06.05', N'05:05')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (66, N'Sezai Hakkı Aydın', NULL, N'(0212) 262 61 44', NULL, N'hizmet', N'12', NULL, N'2222(10.03.2021-01:03 Tarihinde Rezervasyon Bilgileri Güncellendi)(10.03.2021-01:08 Tarihinde Rezervasyon Bilgileri Güncellendi)(10.03.2021-01:08 Tarihinde Rezervasyon Bilgileri Güncellendi)', N'Onaylanmamis', N'10 Mart 2021 Çarşamba', N'2021.03.31', N'22:02')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (67, N'Sezai Hakkı Aydın', NULL, N'(0212) 262 61 44', NULL, N'hizmet', N'12', NULL, N'10101010', N'Onaylanmamis', N'10.03.2021-22:29', N'2021.11.11', N'10:10')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (68, N'Yasin SARICA', N'yasin-sarica@outlook.com', N'+905319574200', N'İstanbul/Pendik', N'Motivasyon Yemekleri', N'Yasin SARICA', N'hgjhgjghj', N'', N'Onaylanmamis', N'16.03.2021-17:45', N'2021.03.09', N'20:50')
INSERT [dbo].[Rezervasyon] ([RezID], [adsoyad], [mail], [telefon], [adres], [hizmet], [kisi], [mesaj], [aciklama], [okundu], [tarih], [pTarih], [pSaat]) VALUES (69, N'Yasin SARICA', N'yasin-sarica@outlook.com', N'+905319574200', N'İstanbul/Pendik', N'Kutlamalar', N'10', N'fgdhgfhfgh', N'(16.03.2021-23:54 Tarihinde Rezervasyon Onaylandı)', N'Onaylandı', N'16 Mart 2021 Salı', N'2021.03.30', N'20:50')
SET IDENTITY_INSERT [dbo].[Rezervasyon] OFF
/****** Object:  Table [dbo].[Resim]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resim](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](150) NULL,
	[icerik] [nvarchar](50) NULL,
	[baslik] [nvarchar](50) NULL,
 CONSTRAINT [PK_Resim] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NelerVar]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NelerVar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[baslik] [nvarchar](50) NULL,
	[aciklama] [nvarchar](150) NULL,
 CONSTRAINT [PK_NelerVar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NelerVar] ON
INSERT [dbo].[NelerVar] ([ID], [baslik], [aciklama]) VALUES (1, N'Muhteşem Yemekler', N'Usta Aşçılar Tarafından Kahvaltı,Öğlen Yemeği ve Akşam Yemeği İçin Mükemmel Yemekler Sizin İçin Hazırlanıyor')
INSERT [dbo].[NelerVar] ([ID], [baslik], [aciklama]) VALUES (2, N'Kahve Ve Nargile', N'Baristalarımız Tarafından Sizin İçin Hazırlanan Mükemmel Kahveler ve Bir çok Nargile İle Yemekten Sonra Keyfinize Keyif Katın')
INSERT [dbo].[NelerVar] ([ID], [baslik], [aciklama]) VALUES (3, N'Sizin İçin Oyun Alanları', N'Okey,Tavla,Monopoly Gibi Birçok Oyun Sizler İçin Tahsis Edilmiş Alanımızda')
INSERT [dbo].[NelerVar] ([ID], [baslik], [aciklama]) VALUES (4, N'Cocuklarınız İçin Oyun Alanıaaaaa', N'Çocuklarınızın Canı Hiç Sıkılmayacak,Cocuklarınız İçin Bir Parkımız Bulunuyoraaaaaa')
SET IDENTITY_INSERT [dbo].[NelerVar] OFF
/****** Object:  Table [dbo].[MüsteriMailDB]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MüsteriMailDB](
	[mailID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[adres] [nvarchar](350) NULL,
 CONSTRAINT [PK_MüsteriMailDB] PRIMARY KEY CLUSTERED 
(
	[mailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MüsteriMailDB] ON
INSERT [dbo].[MüsteriMailDB] ([mailID], [AdSoyad], [tel], [mail], [adres]) VALUES (2, N'fdgfdg', N'05319574200', N'gdfg', N'Belirtilmedi')
INSERT [dbo].[MüsteriMailDB] ([mailID], [AdSoyad], [tel], [mail], [adres]) VALUES (3, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.com', N'İstanbul/Pendik, Pendik/Aydos')
INSERT [dbo].[MüsteriMailDB] ([mailID], [AdSoyad], [tel], [mail], [adres]) VALUES (4, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.comU', N'İstanbul/Pendik, Pendik/Aydos')
INSERT [dbo].[MüsteriMailDB] ([mailID], [AdSoyad], [tel], [mail], [adres]) VALUES (6, N'Yasin SARICA', N'05319574200', N'gewitterwolke22@gmail.com', N'İstanbul/Pendik, Pendik/Aydos')
SET IDENTITY_INSERT [dbo].[MüsteriMailDB] OFF
/****** Object:  Table [dbo].[Markalar]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalar](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[markaAd] [nvarchar](50) NULL,
	[markaResim] [nvarchar](250) NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Markalar] ON
INSERT [dbo].[Markalar] ([MID], [markaAd], [markaResim]) VALUES (6, N'aaaaaa', N'/Resim/Kategori/44f312c3-cc8e-44bc-ab3f-b0da2f317833.jpg')
INSERT [dbo].[Markalar] ([MID], [markaAd], [markaResim]) VALUES (7, N'nvbnvbnvb', N'/Resim/Kategori/d3f0d580-1e14-44d3-9665-689d7101231f.jpg')
INSERT [dbo].[Markalar] ([MID], [markaAd], [markaResim]) VALUES (8, N'src', N'/Resim/Kategori/4e79d936-ba82-40f3-97a0-2bb8fdf99350.jpg')
INSERT [dbo].[Markalar] ([MID], [markaAd], [markaResim]) VALUES (9, N'bmc', N'/Resim/Kategori/8d89711c-538f-4580-b1d9-5034adf1eb58.jpg')
INSERT [dbo].[Markalar] ([MID], [markaAd], [markaResim]) VALUES (10, N'sdf', N'/Resim/Kategori/befec3a2-9c80-44b4-87f4-aed0215f2cd3.png')
SET IDENTITY_INSERT [dbo].[Markalar] OFF
/****** Object:  Table [dbo].[Mail]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[Host] [nvarchar](50) NULL,
	[Port] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[secili] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mail] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mail] ON
INSERT [dbo].[Mail] ([MID], [Host], [Port], [mail], [Sifre], [secili]) VALUES (1, N'smtp.gmail.com', N'587', N'zalabahcebilgi@gmail.com', N'3792097821', N'0')
INSERT [dbo].[Mail] ([MID], [Host], [Port], [mail], [Sifre], [secili]) VALUES (8, N'smtp.yandex.com', N'587', N'info@zalabahce.com', N'Zala/196284735?Zala', N'0')
INSERT [dbo].[Mail] ([MID], [Host], [Port], [mail], [Sifre], [secili]) VALUES (9, N'smtp.gmail.com', N'587', N'matematikyasin@gmail.com', N'3792097821', N'0')
INSERT [dbo].[Mail] ([MID], [Host], [Port], [mail], [Sifre], [secili]) VALUES (10, N'smtp-mail.outlook.com', N'587', N'yasin-sarica@outlook.com', N'qwerty.3792097', N'1')
INSERT [dbo].[Mail] ([MID], [Host], [Port], [mail], [Sifre], [secili]) VALUES (11, N'smtp-mail.outlook.com', N'587', N'zalabahcebilgi@outlook.com', N'Qwerty.3792097', N'0')
SET IDENTITY_INSERT [dbo].[Mail] OFF
/****** Object:  Table [dbo].[Log]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [nvarchar](150) NULL,
	[Olay] [nvarchar](max) NULL,
	[Kim] [nvarchar](50) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Log] ON
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (1, N'20.03.2020-21:41', N'ZalaBahceV1.Models.Kullanici Tarafından Çıkış Yapıldı.', N'ZalaBahceV1.Models.Kullanici')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (2, N'20.03.2020-21:41', N'ZalaBahceV1.Models.Kullanici Tarafından (nvbnvbnvb) Adlı Marka Eklendi', N'ZalaBahceV1.Models.Kullanici')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (3, N'20.03.2020-21:43', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (4, N'20.03.2020-21:43', N'admin Tarafından Çıkış Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (5, N'20.03.2020-21:44', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (6, N'20.03.2020-21:44', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (7, N'20.03.2020-22:21', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (8, N'20.03.2020-22:22', N'admin Tarafından Mantı Adlı Ürün Eklendi.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (9, N'20.03.2020-22:25', N'admin Tarafından Ziyaretçi İstatistikleri Sıfırlandı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (10, N'21.03.2020-00:08', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (11, N'21.03.2020-00:13', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (12, N'21.03.2020-00:16', N'admin Tarafından Giriş Yapıldı.', N'admin')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (13, N'21.03.2020-15:09', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (14, N'21.03.2020-15:45', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (15, N'21.03.2020-16:07', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (16, N'21.03.2020-16:12', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (17, N'21.03.2020-16:15', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (18, N'21.03.2020-16:16', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (19, N'21.03.2020-16:19', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (20, N'21.03.2020-16:21', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (21, N'21.03.2020-16:24', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (22, N'21.03.2020-16:26', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (23, N'21.03.2020-16:29', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (24, N'21.03.2020-17:15', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (25, N'21.03.2020-17:25', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (26, N'21.03.2020-17:25', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (27, N'21.03.2020-17:26', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (28, N'21.03.2020-17:26', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (29, N'21.03.2020-17:26', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (30, N'21.03.2020-17:27', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (31, N'21.03.2020-17:27', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (32, N'21.03.2020-17:27', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (33, N'21.03.2020-17:27', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (34, N'21.03.2020-17:28', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (35, N'21.03.2020-17:28', N'Hasan KIRKPINAR Tarafından Giriş Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (36, N'21.03.2020-17:33', N'Hasan KIRKPINAR Tarafından Çıkış Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (37, N'21.03.2020-17:33', N'Hasan KIRKPINAR Tarafından Çıkış Yapıldı.', N'Hasan KIRKPINAR')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (38, N'21.03.2020-17:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (39, N'21.03.2020-17:57', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (40, N'21.03.2020-18:30', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (41, N'21.03.2020-18:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (42, N'21.03.2020-18:34', N'Yasin SARICA Tarafından (dsfds) Adlı Kullani Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (43, N'21.03.2020-18:34', N'Yasin SARICA Tarafından (dsfds) Adlı Kullanici Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (44, N'21.03.2020-18:37', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (45, N'21.03.2020-18:41', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (46, N'21.03.2020-18:44', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (47, N'21.03.2020-18:44', N'Yasin SARICA Tarafından (Yasin SARICA) Adlı Kullani eklenmedi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (48, N'21.03.2020-18:49', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (49, N'21.03.2020-18:50', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (50, N'21.03.2020-18:51', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (51, N'21.03.2020-18:54', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (52, N'21.03.2020-18:56', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (53, N'21.03.2020-18:57', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (54, N'21.03.2020-18:58', N'Yasin SARICA Tarafından (Yasin SARICA) Adlı Kullani Eklenemedi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (55, N'21.03.2020-19:01', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (56, N'21.03.2020-19:01', N'Yasin SARICA Tarafından (Yasin SARICA) Adlı Kullani Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (57, N'21.03.2020-19:01', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (58, N'21.03.2020-19:01', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (59, N'21.03.2020-19:01', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (60, N'21.03.2020-19:02', N'Yasin SARICA Tarafından (Yasin SARICA) Adlı Kullanici Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (61, N'21.03.2020-19:02', N'Yasin SARICA Tarafından (Hasan KIRKPINAR) Adlı Kullanici Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (62, N'21.03.2020-19:03', N'Yasin SARICA Tarafından (Yasemin SARICA) Adlı Kullani Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (63, N'21.03.2020-19:04', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (64, N'21.03.2020-19:04', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (65, N'21.03.2020-19:05', N'Yasemin SARICA Tarafından Giriş Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (66, N'21.03.2020-19:06', N'Yasemin SARICA Tarafından Çıkış Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (67, N'21.03.2020-19:06', N'Yasemin SARICA Tarafından Çıkış Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (68, N'21.03.2020-19:06', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (69, N'21.03.2020-19:26', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (70, N'21.03.2020-21:37', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (71, N'21.03.2020-21:39', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (72, N'21.03.2020-22:04', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (73, N'21.03.2020-22:07', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (74, N'21.03.2020-22:07', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (75, N'21.03.2020-22:08', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (76, N'21.03.2020-22:08', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (77, N'21.03.2020-22:17', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (78, N'21.03.2020-22:22', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (79, N'21.03.2020-22:23', N'Yasin SARICA Tarafından (gewitterwolke22@gmail.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (80, N'5.04.2020-16:09', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (81, N'9.04.2020-01:42', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (82, N'10.04.2020-00:48', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (83, N'10.04.2020-00:50', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (84, N'10.04.2020-00:50', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (85, N'10.04.2020-00:53', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (86, N'15.04.2020-17:27', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (87, N'15.04.2020-17:29', N'Yasin SARICA Tarafından Mantı Adlı Ürün Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (88, N'15.04.2020-17:33', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (89, N'15.04.2020-17:33', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (90, N'15.04.2020-17:33', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (91, N'15.04.2020-17:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (92, N'15.04.2020-17:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (93, N'15.04.2020-17:36', N'Yasin SARICA Tarafından Mantıe Adlı Ürün Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (94, N'15.04.2020-17:38', N'Yasin SARICA Tarafından (src) Adlı Marka Eklendi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (95, N'15.04.2020-17:38', N'Yasin SARICA Tarafından (bmc) Adlı Marka Eklendi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (96, N'16.04.2020-02:44', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (97, N'16.04.2020-02:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (98, N'19.04.2020-01:00', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (99, N'19.04.2020-01:20', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (100, N'3.06.2020-02:16', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
GO
print 'Processed 100 total records'
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (101, N'9.06.2020-12:06', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (102, N'10.06.2020-02:04', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (103, N'10.06.2020-02:06', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (104, N'10.06.2020-02:07', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (105, N'10.06.2020-02:08', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (106, N'10.06.2020-02:12', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (107, N'10.06.2020-02:12', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (108, N'10.06.2020-02:13', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (109, N'10.06.2020-02:25', N'Yasin Sarıca Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin Sarıca')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (110, N'10.06.2020-02:28', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (111, N'10.06.2020-02:43', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (112, N'10.06.2020-02:43', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (113, N'10.06.2020-02:44', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (114, N'10.06.2020-02:44', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (115, N'10.06.2020-02:44', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (116, N'10.06.2020-02:44', N'Başarısız Giriş Denemesi Yapıldı.', N'Bilinmiyor IP:::1')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (117, N'10.06.2020-02:45', N'Yasemin SARICA Tarafından Giriş Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (118, N'10.06.2020-02:47', N'Yasemin SARICA Tarafından Çıkış Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (119, N'10.06.2020-02:47', N'Yasemin SARICA Tarafından Çıkış Yapıldı.', N'Yasemin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (120, N'10.06.2020-02:47', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (121, N'10.06.2020-02:49', N'Yasin SARICA Tarafından (sdf) Adlı Marka Eklendi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (122, N'10.06.2020-02:59', N'Yasin SARICA Tarafından Sizin İçin Başlıklı Sayfa Oluşturuldu', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (123, N'10.06.2020-03:30', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (124, N'11.06.2020-21:56', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (125, N'11.06.2020-22:40', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (126, N'16.06.2020-03:29', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (127, N'16.06.2020-03:30', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (xxx) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (128, N'16.06.2020-03:31', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (dfgdfgdfg) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (129, N'16.06.2020-03:32', N'Yasin SARICA Tarafından (gewitterwolke22@gmail.com) Mail Adresine (su adamı kovun artık) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (130, N'16.06.2020-03:52', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (131, N'16.06.2020-20:38', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (132, N'17.06.2020-15:13', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (133, N'17.06.2020-15:26', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (134, N'17.06.2020-16:19', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (135, N'17.06.2020-22:04', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (136, N'18.07.2020-02:00', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (137, N'18.07.2020-02:17', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (138, N'18.07.2020-02:17', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (139, N'18.07.2020-02:18', N'Yasin SARICA Tarafından () İsimli Mesaj Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (140, N'18.07.2020-02:19', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (141, N'18.07.2020-02:19', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (142, N'6.08.2020-14:54', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (143, N'6.08.2020-15:08', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (144, N'7.08.2020-00:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (145, N'7.08.2020-00:53', N'Yasin SARICA Tarafından (deneme) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (146, N'7.08.2020-00:53', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (147, N'7.08.2020-00:53', N'Yasin SARICA Tarafından (Bizimle İletişime Geçin) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (148, N'7.08.2020-00:54', N'Yasin SARICA Tarafından (dsfdsf) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (149, N'7.08.2020-00:54', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (150, N'7.08.2020-01:02', N'Yasin SARICA Tarafından (Bizimle İletişime Geçin) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (151, N'7.08.2020-01:03', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (152, N'7.08.2020-01:23', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (153, N'12.09.2020-03:20', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (154, N'12.09.2020-03:20', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (155, N'1.01.2021-16:06', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (156, N'1.01.2021-17:11', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (157, N'6.01.2021-18:23', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (158, N'6.01.2021-18:25', N'Yasin SARICA Tarafından Mantı Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (159, N'6.01.2021-18:25', N'Yasin SARICA Tarafından Mantı Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (160, N'6.01.2021-18:25', N'Yasin SARICA Tarafından fddsfds Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (161, N'6.01.2021-18:25', N'Yasin SARICA Tarafından Mantıe Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (162, N'6.01.2021-18:25', N'Yasin SARICA Tarafından Yeni Ürün1 Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (163, N'6.01.2021-18:25', N'Yasin SARICA Tarafından Yeni Ürün1 Adlı Ürün Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (164, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Kuruyemişf) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (165, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (166, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Ara Sıcaklar) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (167, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Ana Yemekler) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (168, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (169, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Soğuk İçecekler) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (170, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Sıcak İçecekler) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (171, N'6.01.2021-18:25', N'Yasin SARICA Tarafından (Tatlılar) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (172, N'22.01.2021-15:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (173, N'23.01.2021-15:35', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (174, N'23.01.2021-16:06', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (175, N'26.01.2021-02:00', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (176, N'31.01.2021-23:48', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (177, N'1.02.2021-00:10', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (178, N'8.02.2021-16:53', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (179, N'8.02.2021-16:54', N'Yasin SARICA Tarafından Yeni Ürün1 Adlı Ürün Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (180, N'8.02.2021-17:15', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (181, N'8.02.2021-17:40', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (182, N'8.02.2021-18:16', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (183, N'8.02.2021-18:21', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (184, N'8.02.2021-18:52', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (185, N'8.02.2021-18:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (186, N'8.02.2021-18:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (187, N'8.02.2021-19:14', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (188, N'8.02.2021-22:35', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (189, N'8.02.2021-22:37', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (190, N'8.02.2021-22:38', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (191, N'8.02.2021-22:39', N'Yasin SARICA Tarafından (dsfdsf) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (192, N'8.02.2021-23:50', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (193, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (deneme) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (194, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (195, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (Bizimle İletişime Geçin) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (196, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (197, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (Bizimle İletişime Geçin) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (198, N'8.02.2021-23:53', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (199, N'8.02.2021-23:58', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (200, N'8.02.2021-23:59', N'Yasin SARICA Tarafından () Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (201, N'8.02.2021-23:59', N'Yasin SARICA Tarafından () Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
GO
print 'Processed 200 total records'
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (202, N'9.02.2021-00:02', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (203, N'9.02.2021-00:02', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (204, N'9.02.2021-00:03', N'Yasin SARICA Tarafından (Başlangıçlar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (205, N'9.02.2021-00:03', N'Yasin SARICA Tarafından (Tostlar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (206, N'9.02.2021-00:05', N'Yasin SARICA Tarafından (Burgerler) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (207, N'9.02.2021-00:05', N'Yasin SARICA Tarafından (Makarnalar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (208, N'9.02.2021-00:06', N'Yasin SARICA Tarafından (Atıştırmalıklar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (209, N'9.02.2021-00:07', N'Yasin SARICA Tarafından (Tatlılar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (210, N'9.02.2021-00:08', N'Yasin SARICA Tarafından (Ana Yemekler) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (211, N'9.02.2021-00:08', N'Yasin SARICA Tarafından (Ara Sıcaklar) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (212, N'9.02.2021-23:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (213, N'10.02.2021-00:13', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (214, N'11.02.2021-19:15', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (215, N'3.03.2021-12:47', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (216, N'3.03.2021-15:28', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (217, N'3.03.2021-15:46', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (218, N'3.03.2021-15:58', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (219, N'3.03.2021-15:59', N'Yasin SARICA Tarafından (deneme) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (220, N'3.03.2021-19:34', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (221, N'3.03.2021-19:34', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (222, N'6.03.2021-20:40', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (223, N'7.03.2021-15:23', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (224, N'7.03.2021-17:27', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (225, N'7.03.2021-23:00', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (226, N'7.03.2021-23:01', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (227, N'8.03.2021-17:21', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (228, N'9.03.2021-16:04', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (229, N'9.03.2021-17:07', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (230, N'9.03.2021-17:22', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (231, N'9.03.2021-17:32', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (232, N'9.03.2021-18:11', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (233, N'9.03.2021-18:27', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (234, N'9.03.2021-18:48', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (235, N'9.03.2021-21:38', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (236, N'9.03.2021-21:58', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (237, N'9.03.2021-22:30', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (238, N'10.03.2021-00:05', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (239, N'10.03.2021-16:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (240, N'10.03.2021-22:19', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (241, N'10.03.2021-22:28', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (242, N'10.03.2021-22:44', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (243, N'10.03.2021-22:47', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (244, N'11.03.2021-16:10', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (245, N'11.03.2021-20:00', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (246, N'11.03.2021-20:45', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (247, N'11.03.2021-21:18', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (248, N'11.03.2021-21:24', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (249, N'11.03.2021-21:24', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (250, N'11.03.2021-21:24', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (251, N'11.03.2021-21:26', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (252, N'11.03.2021-21:31', N'Yasin SARICA Tarafından (fdgfdg) İsimli Mesaj Silindi Silinen Mesajın Mail Adresi:gdfg', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (253, N'11.03.2021-21:31', N'Yasin SARICA Tarafından (sdfsdfsdfsdf) İsimli Mesaj Silindi Silinen Mesajın Mail Adresi:yasin-sarica@outlook.com', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (254, N'11.03.2021-21:36', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (255, N'11.03.2021-22:24', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (256, N'11.03.2021-22:32', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (257, N'11.03.2021-22:41', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (258, N'11.03.2021-22:43', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (259, N'11.03.2021-22:46', N'Yasin SARICA Tarafından Anket Cevaplandı ve Yönetim Tarafından Okunmadı.', N'(Ziyaretçi)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (260, N'11.03.2021-22:47', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (261, N'11.03.2021-22:50', N'Yasin SARICA Tarafından Anket Cevaplandı ve Yönetim Tarafından Okunmadı.', N'(Ziyaretçi)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (262, N'11.03.2021-22:52', N'Yasin SARICA Tarafından () İsimli Anket Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (263, N'11.03.2021-22:53', N'Yasin SARICA Tarafından (Yasin SARICA) İsimli Anket Silindi Silinen Mesajın Mail Adresi:yasin-sarica@outlook.com', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (264, N'14.03.2021-00:41', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (265, N'14.03.2021-00:59', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (266, N'14.03.2021-00:59', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (dsfggfdsf) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (267, N'14.03.2021-00:59', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (adamlık) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (268, N'14.03.2021-00:59', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (269, N'14.03.2021-00:59', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (270, N'14.03.2021-01:00', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (su adamı kovun artık) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (271, N'14.03.2021-01:00', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (dsfdsf) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (272, N'14.03.2021-01:00', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (dsfdsf) Konulu Mail Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (273, N'14.03.2021-01:42', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (274, N'14.03.2021-01:43', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (275, N'14.03.2021-02:38', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (276, N'14.03.2021-02:42', N'Yasin SARICA Tarafından (dee) Adlı Ürün Kategorisi Eklendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (277, N'14.03.2021-02:42', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (278, N'14.03.2021-02:43', N'Yasin SARICA Tarafından () Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (279, N'14.03.2021-02:45', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (280, N'14.03.2021-02:46', N'Yasin SARICA Tarafından (ad) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (281, N'14.03.2021-02:47', N'Yasin SARICA Tarafından () Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (282, N'14.03.2021-02:48', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (283, N'14.03.2021-02:50', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (284, N'14.03.2021-02:50', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (285, N'14.03.2021-02:50', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (286, N'14.03.2021-03:23', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (287, N'14.03.2021-14:43', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (288, N'14.03.2021-14:44', N'Yasin SARICA Tarafından (Kahvaltı) Adlı Ürün Kategori Silindi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (289, N'14.03.2021-15:07', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (290, N'14.03.2021-15:27', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (291, N'14.03.2021-15:59', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (292, N'15.03.2021-00:04', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (293, N'15.03.2021-00:33', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (294, N'15.03.2021-00:46', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (295, N'16.03.2021-15:49', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (296, N'16.03.2021-16:23', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (297, N'16.03.2021-16:30', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (298, N'16.03.2021-16:39', N'Yasin SARICA Tarafından (12121221211) İsimli Müşterinin Rezervasyonu İptal Edildi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (299, N'16.03.2021-16:39', N'Yasin SARICA Tarafından (Sezai Hakkı Aydın) İsimli Müşterinin Rezervasyonu İptal Edildi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (300, N'16.03.2021-16:39', N'Yasin SARICA Tarafından (Sezai Hakkı Aydın) İsimli Müşterinin Rezervasyonu İptal Edildi', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (301, N'16.03.2021-17:22', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (302, N'16.03.2021-17:42', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
GO
print 'Processed 300 total records'
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (303, N'16.03.2021-17:43', N'Yasin SARICA Tarafından (yasin-sarica@outlook.com) Mail Adresine (denemer) Konulu Mail Gönderildi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (304, N'16.03.2021-17:45', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (305, N'16.03.2021-17:46', N'Yasin SARICA Tarafından Rezervasyon Yapıldı Mail Adresi:yasin-sarica@outlook.com', N'(Ziyaretci)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (306, N'16.03.2021-17:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (307, N'16.03.2021-17:56', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (308, N'16.03.2021-17:58', N'Yasin SARICA Tarafından () İsimli Anket Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (309, N'16.03.2021-17:58', N'Yasin SARICA Tarafından Anket Cevaplandı ve Yönetim Tarafından Okunmadı.', N'(Ziyaretçi)Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (310, N'16.03.2021-17:59', N'Yasin SARICA Tarafından () İsimli Mesaj Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (311, N'16.03.2021-23:45', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (312, N'16.03.2021-23:50', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (313, N'16.03.2021-23:51', N'Yasin SARICA Tarafından () İsimli Mesaj Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (314, N'16.03.2021-23:51', N'Yasin SARICA Tarafından () İsimli Mesaj Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (315, N'16.03.2021-23:51', N'Yasin SARICA Tarafından () İsimli Anket Okundu Okunan Mesajın Mail Adresi:', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (316, N'16.03.2021-23:54', N'Yasin SARICA Tarafından (Yasin SARICA) İsimli Müşterinin Rezervasyonu Onaylandı', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (317, N'17.03.2021-20:41', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (318, N'21.08.2021-22:24', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (319, N'29.08.2021-12:50', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (320, N'29.08.2021-13:34', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (321, N'29.08.2021-13:36', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (322, N'29.08.2021-13:39', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (323, N'29.08.2021-13:39', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (324, N'29.08.2021-13:41', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (325, N'29.08.2021-13:42', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (326, N'29.08.2021-13:42', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (327, N'29.08.2021-13:42', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (328, N'29.08.2021-13:44', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (329, N'29.08.2021-13:45', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (330, N'29.08.2021-13:49', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (331, N'29.08.2021-13:52', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (332, N'29.08.2021-13:57', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (333, N'29.08.2021-13:57', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (334, N'29.08.2021-14:09', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (335, N'29.08.2021-14:10', N'Yasin SARICA Tarafından (R1) Adlı Ürün Kategori Düzenlendi.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (336, N'2.10.2021-13:49', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (337, N'16.11.2022-19:39', N'Bilinmiyor Tarafından Çıkış Yapıldı.', N'Bilinmiyor')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (338, N'16.11.2022-19:55', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (339, N'16.11.2022-20:16', N'Yasin SARICA Tarafından Çıkış Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (340, N'16.11.2022-20:34', N'Yasin SARICA Tarafından Giriş Yapıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (341, N'16.11.2022-20:43', N'Yasin SARICA Tarafından Site Açıldı.', N'Yasin SARICA')
INSERT [dbo].[Log] ([ID], [Tarih], [Olay], [Kim]) VALUES (342, N'16.11.2022-20:44', N'Yasin SARICA Tarafından Site Kapatıldı.', N'Yasin SARICA')
SET IDENTITY_INSERT [dbo].[Log] OFF
/****** Object:  Table [dbo].[Kullanici]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ka] [nvarchar](50) NULL,
	[pw] [nvarchar](50) NULL,
	[yetki] [nvarchar](50) NULL,
	[songiris] [nvarchar](50) NULL,
	[adsoyad] [nvarchar](150) NULL,
	[mail] [nvarchar](150) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON
INSERT [dbo].[Kullanici] ([ID], [ka], [pw], [yetki], [songiris], [adsoyad], [mail]) VALUES (1, N'admin', N'123456', N'Yetkili', N'16.11.2022-20:34', N'Yasin SARICA', N'yasin-sarica@outlook.com')
INSERT [dbo].[Kullanici] ([ID], [ka], [pw], [yetki], [songiris], [adsoyad], [mail]) VALUES (5, N'src', N'src', N'Personel', N'10.06.2020-02:45', N'Yasemin SARICA', N'yasemin-sarica@outlook.com')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
/****** Object:  Table [dbo].[iletisim]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[baslik] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[adres] [nvarchar](250) NULL,
	[telefon] [nvarchar](50) NULL,
	[harita] [nvarchar](max) NULL,
	[wpNo] [nvarchar](50) NULL,
	[wpMesaj] [nvarchar](250) NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[iletisim] ON
INSERT [dbo].[iletisim] ([ID], [baslik], [mail], [adres], [telefon], [harita], [wpNo], [wpMesaj]) VALUES (1, N'Bizimle İletişime Geçin', N'info@zalabahce.com', N'  Tarabya, Atadan Sk. No: 22, 34457 Sarıyer/İstanbul', N'(0212) 262 61 44', N'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12020.77357052355!2d29.056453!3d41.130304!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x86b10b8ae827039a!2sZALA+BAH%C3%87E!5e0!3m2!1str!2str!4v1550592406939', N'+905522799034', N'merhaba nasıl yardımcı olabilirim')
SET IDENTITY_INSERT [dbo].[iletisim] OFF
/****** Object:  Table [dbo].[Hizmetler]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmetler](
	[HID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[icerik] [nvarchar](max) NULL,
	[resim] [nvarchar](150) NULL,
 CONSTRAINT [PK_Hizmetler] PRIMARY KEY CLUSTERED 
(
	[HID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hizmetler] ON
INSERT [dbo].[Hizmetler] ([HID], [ad], [icerik], [resim]) VALUES (23, N'Evlilik Teklifiaaaaaa', N'aaaaa', NULL)
INSERT [dbo].[Hizmetler] ([HID], [ad], [icerik], [resim]) VALUES (24, N'Kutlamalar', NULL, NULL)
INSERT [dbo].[Hizmetler] ([HID], [ad], [icerik], [resim]) VALUES (25, N'Motivasyon Yemekleri', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hizmetler] OFF
/****** Object:  Table [dbo].[Hakkimizda]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizda](
	[HID] [int] IDENTITY(1,1) NOT NULL,
	[baslik1] [nvarchar](100) NULL,
	[baslik2] [nvarchar](100) NULL,
	[ozet] [nvarchar](max) NULL,
	[resim1] [nvarchar](150) NULL,
	[resim2] [nvarchar](150) NULL,
	[resim3] [nvarchar](150) NULL,
	[hskkimizda] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hakkimizda] PRIMARY KEY CLUSTERED 
(
	[HID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hakkimizda] ON
INSERT [dbo].[Hakkimizda] ([HID], [baslik1], [baslik2], [ozet], [resim1], [resim2], [resim3], [hskkimizda]) VALUES (1, N'Biz Kimiz ?', N'Hakkımızda', N'Zala Bahçe, Sarıyer Tarabya''da bir hayalin neticesinde, siz değerli konuklarına eşsiz sunumları, damağınıza hitap edecek farklı tatları ve tabiki kendinizi huzurlu ve rahat hissedebileceğiniz iç ve dış mekanı ile hizmet vermek üzere kurulmuştur.', N'/Resim/Hakkimizda/e09cdb30-e777-4bc1-83ee-66e080292a8b.jpg', N'/Resim/Hakkimizda/3f4bdf3c-879a-47ec-8fbf-ed373fbfa61b.jpg', N'/Resim/Hakkimizda/c7fe4956-b014-446d-bc90-9d235f63d43b.jpg', N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Zala Bahçe, Sarıyer Tarabya''da bir hayalin neticesinde, siz değerli konuklarına eşsiz sunumları, damağınıza hitap edecek farklı tatları ve tabiki kendinizi huzurlu ve rahat hissedebileceğiniz iç ve dış mekanı ile hizmet vermek üzere kurulmuştur. Zala Bahçe; aileniz, çocuklarınız ve dostlarınızla hoşça vakit geçirebileceğiniz, şehrin gürültüsünden uzak, yeşille mavinin hakim olduğu bir lokasyondadır. Dilerseniz aileniz ve dostlarınızla eşsiz manzaramız eşliğinde kahvaltı edebilir, hem manzaranın seyrini hem de lezzetlerimizin keyfini sürebilirsiniz. Dilerseniz şömine karşısında kahvenizi yudumlarken kitabınızı okuyabilir, dilerseniz de nargile bölümünde dumanı üstünde çayınızı içebilirsiniz. &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Doğa ile iç içe olan Zala Bahçe''de, çocuklarınız oyun parkımızda oynayabilir, bahçemizdeki küçük dostlarımız olan tavuklarla, ağaçlardaki sincaplarla ve dahasıyla hoşça vakit geçirebilirler. Dilerseniz şömine karşısında kahvenizi yudumlarken kitabınızı okuyabilir, dilerseniz de nargile bölümünde dumanı üstünde çayınızı içebilirsiniz. Doğa ile iç içe olan Zala Bahçe''de, çocuklarınız oyun parkımızda oynayabilir, bahçemizdeki küçük dostlarımız olan tavuklarla, ağaçlardaki sincaplarla ve dahasıyla hoşça vakit geçirebilirler.&nbsp;</p>')
SET IDENTITY_INSERT [dbo].[Hakkimizda] OFF
/****** Object:  Table [dbo].[HakkımızdaResim]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HakkımızdaResim](
	[RID] [int] NULL,
	[resim] [nvarchar](150) NULL,
	[icerik] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GonderilenMail]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GonderilenMail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[konu] [nvarchar](250) NULL,
	[mail] [nvarchar](max) NULL,
	[gönderen] [nvarchar](150) NULL,
	[gönderilen] [nvarchar](150) NULL,
	[tarih] [nvarchar](150) NULL,
 CONSTRAINT [PK_GonderilenMail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GonderilenMail] ON
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (23, N'su adamı kovun artık', N'<p>retretert</p>', N'zalabahcebilgi@gmail.com', N'yasin-sarica@outlook.com', N'21.03.2020 - 22:22')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (24, N'su adamı kovun artık', N'<p>jklşlkş</p>', N'yasin-sarica@outlook.com', N'gewitterwolke22@gmail.com', N'21.03.2020 - 22:23')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (25, N'su adamı kovun artık', N'<p>dfsfdsfdsfdsfsdf</p>', N'zalabahcebilgi@gmail.com', N'yasin-sarica@outlook.com', N'10.06.2020 - 02:06')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (26, N'su adamı kovun artık', N'<p>sdsdsd</p>', N'zalabahcebilgi@outlook.com', N'yasin-sarica@outlook.com', N'10.06.2020 - 02:07')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (27, N'su adamı kovun artık', N'<p>xccxczxcxz</p>', N'yasin-sarica@outlook.com', N'yasin-sarica@outlook.com', N'10.06.2020 - 02:08')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (28, N'xxx', N'<p>xxx</p>', N'zalabahcebilgi@gmail.com', N'yasin-sarica@outlook.com', N'16.06.2020 - 03:30')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (29, N'dfgdfgdfg', N'<p>dfgdfgfd</p>', N'yasin-sarica@outlook.com', N'yasin-sarica@outlook.com', N'16.06.2020 - 03:31')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (30, N'su adamı kovun artık', N'<p>asdsadasd</p>', N'yasin-sarica@outlook.com', N'gewitterwolke22@gmail.com', N'16.06.2020 - 03:32')
INSERT [dbo].[GonderilenMail] ([ID], [konu], [mail], [gönderen], [gönderilen], [tarih]) VALUES (31, N'denemer', N'<p>dsfsdfdsfdsfdsfdsfdsf</p>', N'yasin-sarica@outlook.com', N'yasin-sarica@outlook.com', N'16.03.2021 - 17:43')
SET IDENTITY_INSERT [dbo].[GonderilenMail] OFF
/****** Object:  Table [dbo].[GelenMesaj]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GelenMesaj](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[konu] [nvarchar](max) NULL,
	[mesaj] [nvarchar](max) NULL,
	[tarih] [nvarchar](100) NULL,
	[nerden] [nvarchar](max) NULL,
	[okundu] [nvarchar](50) NULL,
	[aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_GelenMesaj] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GelenMesaj] ON
INSERT [dbo].[GelenMesaj] ([MID], [adsoyad], [tel], [mail], [konu], [mesaj], [tarih], [nerden], [okundu], [aciklama]) VALUES (31, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.com', NULL, NULL, N'13 Ağustos 2019 Salı-02:05', N'İletişim Sayfası', N'Okundu', NULL)
INSERT [dbo].[GelenMesaj] ([MID], [adsoyad], [tel], [mail], [konu], [mesaj], [tarih], [nerden], [okundu], [aciklama]) VALUES (32, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.com', NULL, NULL, N'13 Ağustos 2019 Salı-02:05', N'İletişim Sayfası', N'Okundu', NULL)
INSERT [dbo].[GelenMesaj] ([MID], [adsoyad], [tel], [mail], [konu], [mesaj], [tarih], [nerden], [okundu], [aciklama]) VALUES (36, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.com', N'su adamı kovun artık', N'dfssdfsdfs', N'18.07.2020-01:59', N'İletişim Sayfası', N'Okundu', N'pbfnfghfghfghfgh')
INSERT [dbo].[GelenMesaj] ([MID], [adsoyad], [tel], [mail], [konu], [mesaj], [tarih], [nerden], [okundu], [aciklama]) VALUES (37, N'Sezai Hakkı Aydın', N'05319574200', N'yasin-sarica@outlook.com', N'su adamı kovun artık', N'dfghjk', N'16.03.2021-23:46', N'İletişim Sayfası', N'Okundu', N'bvnnbvnvbnvbnvbnvbnvb')
SET IDENTITY_INSERT [dbo].[GelenMesaj] OFF
/****** Object:  Table [dbo].[Galeri]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](150) NULL,
	[Baslik] [nvarchar](150) NULL,
	[aciklama] [nvarchar](250) NULL,
 CONSTRAINT [PK_Galeri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Galeri] ON
INSERT [dbo].[Galeri] ([ID], [resim], [Baslik], [aciklama]) VALUES (2, N'/Resim/Slayt/db68830e-63d4-4e58-95cb-4754e432a3de.jpg', N'denemes', N'denedses')
INSERT [dbo].[Galeri] ([ID], [resim], [Baslik], [aciklama]) VALUES (3, N'/Resim/Hakkimizda/as.jpg', N'dasdas', N'dasd')
INSERT [dbo].[Galeri] ([ID], [resim], [Baslik], [aciklama]) VALUES (4, N'/Resim/Hakkimizda/bogaz.jpg', N'asdas', NULL)
INSERT [dbo].[Galeri] ([ID], [resim], [Baslik], [aciklama]) VALUES (5, N'/Resim/Hakkimizda/dışalan2.jpg', N'asdasd', N'asd')
INSERT [dbo].[Galeri] ([ID], [resim], [Baslik], [aciklama]) VALUES (8, N'/Resim/Galeri/8658a06f-b537-4343-839d-67626cac838f.jpg', N'dsfgsdfggsfd                                                                                                                                          ', N'sdfsdfsdf')
SET IDENTITY_INSERT [dbo].[Galeri] OFF
/****** Object:  Table [dbo].[DegerlendirmeFormu]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DegerlendirmeFormu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [nvarchar](150) NULL,
	[tel] [nvarchar](50) NULL,
	[mail] [nvarchar](150) NULL,
	[adres] [nvarchar](250) NULL,
	[karşılama] [nvarchar](50) NULL,
	[personel] [nvarchar](50) NULL,
	[temizlik] [nvarchar](50) NULL,
	[ücret] [nvarchar](50) NULL,
	[mekan] [nvarchar](50) NULL,
	[resturantgenel] [nvarchar](50) NULL,
	[tekrargelmek] [nvarchar](50) NULL,
	[tavsiye] [nvarchar](50) NULL,
	[nerdenduydun] [nvarchar](150) NULL,
	[aciklama] [nvarchar](max) NULL,
	[ulasim] [nvarchar](50) NULL,
	[tarih] [nvarchar](150) NULL,
	[okundu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DegerlendirmeFormu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DegerlendirmeFormu] ON
INSERT [dbo].[DegerlendirmeFormu] ([ID], [adsoyad], [tel], [mail], [adres], [karşılama], [personel], [temizlik], [ücret], [mekan], [resturantgenel], [tekrargelmek], [tavsiye], [nerdenduydun], [aciklama], [ulasim], [tarih], [okundu]) VALUES (3, N'Yasin SARICA', N'05319574200', N'yasin-sarica@outlook.com', N'İstanbul/Pendik, Pendik/Aydos', N'3', N'3', N'4', N'2', N'3', N'3', N'Hayır', N'Evet', N'gazete', NULL, N'2', N'16 Ağustos 2019 Cuma-00:02', N'Okundu')
INSERT [dbo].[DegerlendirmeFormu] ([ID], [adsoyad], [tel], [mail], [adres], [karşılama], [personel], [temizlik], [ücret], [mekan], [resturantgenel], [tekrargelmek], [tavsiye], [nerdenduydun], [aciklama], [ulasim], [tarih], [okundu]) VALUES (5, N'Yasin SARICA', N'+905319574200', N'yasin-sarica@outlook.com', N'İstanbul/Pendik', N'2', N'3', N'5', N'5', N'5', N'5', N'Evet', N'Evet', N'dsf', N'dsfdsfsdfdsf', N'5', N'11 Mart 2021 Perşembe-22:50', N'Okundu')
INSERT [dbo].[DegerlendirmeFormu] ([ID], [adsoyad], [tel], [mail], [adres], [karşılama], [personel], [temizlik], [ücret], [mekan], [resturantgenel], [tekrargelmek], [tavsiye], [nerdenduydun], [aciklama], [ulasim], [tarih], [okundu]) VALUES (6, N'Yasin SARICA', N'+905319574200', N'yasin-sarica@outlook.com', N'İstanbul/Pendik', N'3', N'4', N'3', N'4', N'3', N'3', N'Evet', N'Evet', N'gazete', N'fgfdgfdg', N'5', N'16 Mart 2021 Salı-17:58', N'Okundu')
SET IDENTITY_INSERT [dbo].[DegerlendirmeFormu] OFF
/****** Object:  Table [dbo].[CCMail]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCMail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adsoyad] [nvarchar](150) NULL,
	[mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_CCMail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CCMail] ON
INSERT [dbo].[CCMail] ([ID], [Adsoyad], [mail]) VALUES (2, N'Yasin SARICA', N'yasin-sarica@outlook.com')
SET IDENTITY_INSERT [dbo].[CCMail] OFF
/****** Object:  Table [dbo].[ZiyaretciIstatistik]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZiyaretciIstatistik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](50) NULL,
	[Browser] [nvarchar](50) NULL,
	[Dil] [nvarchar](50) NULL,
	[NeredenGeldi] [nvarchar](max) NULL,
	[NereyeGeldi] [nvarchar](max) NULL,
 CONSTRAINT [PK_ZiyaretciIstatistik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZiyaretciIstatistik] ON
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (1, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (2, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (3, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (4, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (5, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (6, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (7, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (8, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (9, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (10, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (11, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (12, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (13, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (14, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Diger/LOG')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (15, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (16, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (17, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (18, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Kategori/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (19, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (20, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Profil')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (21, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (22, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Profil')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (23, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (24, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (25, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (26, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (27, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Profil')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (28, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (29, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (30, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (31, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (32, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Profil', N'/Admin/Profil')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (33, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Profil', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (34, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (35, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (36, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Profil', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (37, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Profil', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (38, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (39, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (40, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/__browserLink/requestData/b101375da3bb420989956b4b4da7a831?version=2')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (41, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (42, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (43, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Slayt/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (44, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (45, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (46, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (47, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (48, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (49, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (50, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (51, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (52, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (53, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (54, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (55, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (56, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (57, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (58, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (59, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (60, N'127.0.0.1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Kullanici/', N'/Admin/Kullanici/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (61, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (62, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Profil', N'/Diger/Log')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (63, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Kullanici/', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (64, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (65, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (66, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (67, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Kullanici', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (68, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Kullanici', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (69, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (70, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (71, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (72, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (73, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (74, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mail/MailAyar')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (75, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (76, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (77, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mail/MailAyar', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (78, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (79, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (80, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (81, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (82, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (83, N'::1', N'Chrome', N'tr', N'http://localhost:14588/', N'/Rezervasyon/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (84, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (85, N'::1', N'Chrome', N'tr', N'http://localhost:14588/', N'/ZalaBahce/Menu?kategoriID=0')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (86, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (87, N'127.0.0.1', N'Chrome', N'tr', N'http://localhost:14588/', N'/ZalaBahce/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (88, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunDetay?urunID=55', N'/Urun/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (89, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunDetay?urunID=55', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (90, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (91, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (92, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Diger/LOG')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (93, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (94, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Diger/LOG')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (95, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (96, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (97, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (98, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (99, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (100, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
GO
print 'Processed 100 total records'
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (101, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mail/MailAyar', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (102, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Kullanici', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (103, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mesaj/AnketDetay?ID=3', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (104, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Sayfa/SayfaEkle')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (105, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (106, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (107, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (108, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (109, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (110, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Admin/Kullanici')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (111, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (112, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/MenuKategori')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (113, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (114, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/MenuKategori')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (115, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (116, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (117, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (118, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (119, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunEkle')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (120, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (121, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (122, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/giris')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (123, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mail/GonderilenMail', N'/Admin/Cikis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (124, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (125, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (126, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/Menu')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (127, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (128, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/Menu')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (129, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (130, N'::1', N'Chrome', N'tr', N'http://localhost:14588/giris', N'/Giris')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (131, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (132, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Kategori/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (133, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/Menu')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (134, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (135, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunEkle')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (136, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (137, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (138, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (139, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (140, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (141, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (142, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (143, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (144, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (145, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (146, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (147, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunResimEkle?urunID=59&urunAd', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (148, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunResimEkle?urunID=59&urunAd', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (149, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (150, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (151, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (152, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Menus')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (153, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (154, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (155, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (156, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (157, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (158, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Menus')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (159, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (160, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (161, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (162, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (163, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Gecici/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (164, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Gecici/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (165, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Gecici/KategoriListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (166, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (167, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Gecici/KategoriListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (168, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (169, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (170, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (171, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (172, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (173, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (174, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (175, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (176, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (177, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (178, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Menu/Menus?Kategori=1', N'/Menu/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (179, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (180, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (181, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (182, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (183, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (184, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (185, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (186, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (187, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (188, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (189, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Shared/RezervasyonTMP')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (190, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (191, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (192, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (193, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (194, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (195, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (196, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (197, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (198, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/_RezEkle')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (199, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (200, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (201, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
GO
print 'Processed 200 total records'
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (202, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (203, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (204, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (205, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (206, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (207, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Shared/RezervasyonTMP')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (208, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (209, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (210, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (211, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (212, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (213, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (214, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (215, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (216, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (217, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (218, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (219, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (220, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (221, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (222, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (223, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (224, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (225, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (226, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (227, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (228, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (229, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (230, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Gecmis')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (231, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Rez/Hosgeldiniz/', N'/Rez/Gecmis/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (232, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (233, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/rez')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (234, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (235, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (236, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Rez/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (237, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (238, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (239, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (240, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (241, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (242, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (243, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (244, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (245, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (246, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (247, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/MesajListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (248, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (249, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/OkunmusMesaj')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (250, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (251, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (252, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (253, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (254, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/OkunmusMesaj')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (255, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (256, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/MesajListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (257, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (258, N'127.0.0.1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (259, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/AnketOkunmus')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (260, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (261, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (262, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/MesajListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (263, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (264, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Admin/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (265, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Giris/Hosgeldiniz', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (266, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (267, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (268, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (269, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mail/CCListe', N'/Mail/CCListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (270, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Kategori/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (271, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (272, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Kategori/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (273, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (274, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Kategori/Index')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (275, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (276, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (277, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mail/MailDB')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (278, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (279, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mail/MailDB')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (280, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (281, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (282, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Iletisim/Sosyal')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (283, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (284, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Iletisim/Sosyal')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (285, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (286, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (287, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Sayfa/SayfaEkle')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (288, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (289, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Mesaj/Hosgeldiniz/', N'/Mesaj/Hosgeldiniz/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (290, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (291, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (292, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (293, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (294, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/ZalaBahce/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (295, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (296, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Shared/RezervasyonTMP')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (297, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/rez')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (298, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Mesaj/RezMenu')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (299, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (300, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (301, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (302, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
GO
print 'Processed 300 total records'
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (303, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (304, N'127.0.0.1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (305, N'127.0.0.1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (306, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (307, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (308, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (309, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Urun/UrunListe')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (310, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (311, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (312, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (313, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (314, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (315, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (316, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunListe?p=3&Durum=Silindi', N'/Urun/UrunListe?p=3&Durum=Silindi')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (317, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Urun/UrunListe?p=3&Durum=Silindi', N'/Giris/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (318, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (319, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/Menu/Hosgeldiniz')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (320, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (321, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (322, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (323, N'::1', N'Chrome', N'tr', N'Bilinmiyor', N'/giris')
INSERT [dbo].[ZiyaretciIstatistik] ([ID], [IP], [Browser], [Dil], [NeredenGeldi], [NereyeGeldi]) VALUES (324, N'::1', N'Chrome', N'tr', N'http://localhost:14588/Admin/Index', N'/Mail/GonderilenMail')
SET IDENTITY_INSERT [dbo].[ZiyaretciIstatistik] OFF
/****** Object:  Table [dbo].[Yorumlar]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlar](
	[YID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](150) NULL,
	[yorum] [nvarchar](max) NULL,
	[adSoyad] [nvarchar](100) NULL,
 CONSTRAINT [PK_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunKategori]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunKategori](
	[kategoriID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](500) NULL,
	[baslik] [nvarchar](250) NULL,
	[aciklama] [nvarchar](max) NULL,
	[sira] [int] NULL,
 CONSTRAINT [PK_UrunKategori] PRIMARY KEY CLUSTERED 
(
	[kategoriID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UrunKategori] ON
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (1, N'/Resim/Kategori/aeb57f87-a90e-40f0-b25d-36cd1d3a05c3.jpg', N'Kahvaltı', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 3)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (3, N'/Resim/Kategori/dff72ee7-f179-41e2-b232-ed58853e9072.jpg', N'Tostlar', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 0)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (4, N'/Resim/Kategori/3145f741-1d75-4bb6-abc7-90a6951c26f3.jpg', N'Burgerler', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 4)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (5, N'/Resim/Kategori/0b752d71-ce03-43ba-b17a-49136e0e74c2.jpg', N'Makarnalar', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 0)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (7, N'/Resim/Kategori/77a8d190-3d00-4384-aaf1-ec5e56409afd.jpg', N'Tatlılar', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 2)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (10, N'/Resim/Urun/UK-31408.jpg', N'R1', N'R', 1)
INSERT [dbo].[UrunKategori] ([kategoriID], [resim], [baslik], [aciklama], [sira]) VALUES (11, N'/Resim/Kategori/a6ba478b-2135-4d34-bf12-c98b25dfd014.jpg', N'deneme', N'Yeniköy''ün en güzel tepesinde bulunan, yeşillikler içerisindeki Zala Bahçe''de serpme kahvaltı menüsü ', 0)
SET IDENTITY_INSERT [dbo].[UrunKategori] OFF
/****** Object:  Table [dbo].[Urun]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[urunID] [int] IDENTITY(1,1) NOT NULL,
	[urunAd] [nvarchar](50) NULL,
	[aciklama] [nvarchar](max) NULL,
	[icerik] [nvarchar](max) NULL,
	[katID] [int] NULL,
	[kapakResim] [nvarchar](150) NULL,
	[aktif] [nvarchar](50) NULL,
	[TRFiyat] [nvarchar](50) NULL,
	[ARFiyat] [nvarchar](50) NULL,
	[sira] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[urunID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Urun] ON
INSERT [dbo].[Urun] ([urunID], [urunAd], [aciklama], [icerik], [katID], [kapakResim], [aktif], [TRFiyat], [ARFiyat], [sira]) VALUES (65, N'Kahvaltı Tabağı', NULL, N'içerik', 3, N'/Resim/Urun/U-6405.jpg', N'aktif', N'50.90', N'100', 0)
INSERT [dbo].[Urun] ([urunID], [urunAd], [aciklama], [icerik], [katID], [kapakResim], [aktif], [TRFiyat], [ARFiyat], [sira]) VALUES (66, N'Hamburger', NULL, N'Hamburger', 1, N'/Resim/Urun/U-11657.jpg', N'aktif', N'38', N'80', 7)
INSERT [dbo].[Urun] ([urunID], [urunAd], [aciklama], [icerik], [katID], [kapakResim], [aktif], [TRFiyat], [ARFiyat], [sira]) VALUES (67, N'Köfte4344', NULL, NULL, 1, N'/Resim/Urun/U-87735.jpg', N'aktif', N'34', N'25', 5)
INSERT [dbo].[Urun] ([urunID], [urunAd], [aciklama], [icerik], [katID], [kapakResim], [aktif], [TRFiyat], [ARFiyat], [sira]) VALUES (68, N'4554545454', N'45544545', N'545454', 10, N'/Resim/Urun/U-28094.jpg', N'aktif', N'455445', N'455445', 0)
SET IDENTITY_INSERT [dbo].[Urun] OFF
/****** Object:  Table [dbo].[UrunYorum]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunYorum](
	[YID] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[tel] [nvarchar](100) NULL,
	[mesaj] [nvarchar](max) NULL,
	[nerden] [nvarchar](100) NULL,
	[urunID] [int] NULL,
 CONSTRAINT [PK_UrunYorum] PRIMARY KEY CLUSTERED 
(
	[YID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunResim]    Script Date: 11/16/2022 20:46:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunResim](
	[resimID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](100) NULL,
	[resimalt] [nvarchar](50) NULL,
	[urunID] [int] NULL,
 CONSTRAINT [PK_UrunResim] PRIMARY KEY CLUSTERED 
(
	[resimID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Urun_UrunKategori]    Script Date: 11/16/2022 20:46:28 ******/
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunKategori] FOREIGN KEY([katID])
REFERENCES [dbo].[UrunKategori] ([kategoriID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunKategori]
GO
/****** Object:  ForeignKey [FK_UrunResim_Urun]    Script Date: 11/16/2022 20:46:28 ******/
ALTER TABLE [dbo].[UrunResim]  WITH CHECK ADD  CONSTRAINT [FK_UrunResim_Urun] FOREIGN KEY([urunID])
REFERENCES [dbo].[Urun] ([urunID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UrunResim] CHECK CONSTRAINT [FK_UrunResim_Urun]
GO
/****** Object:  ForeignKey [FK_UrunYorum_Urun]    Script Date: 11/16/2022 20:46:28 ******/
ALTER TABLE [dbo].[UrunYorum]  WITH CHECK ADD  CONSTRAINT [FK_UrunYorum_Urun] FOREIGN KEY([urunID])
REFERENCES [dbo].[Urun] ([urunID])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[UrunYorum] CHECK CONSTRAINT [FK_UrunYorum_Urun]
GO
