USE [WebBanThuoc]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UseName] [nvarchar](200) NULL,
	[Passoword] [nchar](200) NULL,
	[Uid] [nvarchar](300) NOT NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brands]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[url_image] [nvarchar](300) NULL,
	[delete] [bit] NULL,
 CONSTRAINT [PK_brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[intomoney] [decimal](18, 0) NULL,
	[uid] [nvarchar](200) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NULL,
	[type] [int] NULL,
	[delete] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversation](
	[id] [bigint] NOT NULL,
	[idcustormer] [nvarchar](200) NULL,
	[idemployer] [nvarchar](200) NULL,
	[createDate] [datetime] NULL,
	[message] [nvarchar](max) NULL,
 CONSTRAINT [PK_conversation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Custormer]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custormer](
	[uid] [nvarchar](200) NOT NULL,
	[name] [nvarchar](100) NULL,
	[adress] [nvarchar](50) NULL,
	[birthday] [datetime] NULL,
	[sex] [bit] NULL,
	[telephone] [nchar](10) NULL,
	[email] [nvarchar](100) NULL,
	[password] [nvarchar](500) NULL,
	[delete] [bit] NULL,
 CONSTRAINT [PK_Custormer] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detailforum]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detailforum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[idforum] [int] NULL,
	[Time] [datetime] NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Detailforum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employer]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[uid] [nvarchar](200) NOT NULL,
	[name] [nvarchar](200) NULL,
	[telephone] [nchar](10) NULL,
	[email] [nvarchar](100) NULL,
	[position] [nvarchar](100) NULL,
	[delete] [bit] NULL,
	[password] [nvarchar](500) NULL,
	[birthday] [date] NULL,
 CONSTRAINT [PK_employer] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluate]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](200) NULL,
	[point] [int] NULL,
	[Message] [nvarchar](max) NULL,
	[idproduct] [int] NULL,
	[idorderdetail] [int] NULL,
 CONSTRAINT [PK_Evaluate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[forum]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_forum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photos]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[product_id] [int] NULL,
	[url] [nvarchar](500) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_photos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[partner_code] [nvarchar](200) NULL,
	[product_brand] [nvarchar](100) NULL,
	[product_type] [int] NULL,
	[product_code] [nvarchar](50) NULL,
	[name] [nvarchar](300) NULL,
	[name_normalized] [nvarchar](300) NULL,
	[description] [nvarchar](max) NULL,
	[unit] [nvarchar](100) NULL,
	[price] [decimal](18, 0) NULL,
	[discount] [int] NULL,
	[discount_from] [nvarchar](50) NULL,
	[discount_to] [nvarchar](50) NULL,
	[published] [int] NULL,
	[is_discount] [bit] NULL,
	[category_id] [int] NULL,
	[delete] [bit] NULL,
	[quantity] [int] NULL,
	[weight] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoucherOrder]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherOrder](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](200) NULL,
	[adrees] [nvarchar](500) NULL,
	[telephone] [nchar](10) NULL,
	[email] [nvarchar](200) NULL,
	[status] [int] NULL,
	[createdate] [datetime] NULL,
	[datemodified] [datetime] NULL,
	[grossAmount] [decimal](18, 0) NULL,
	[discountAmount] [decimal](18, 0) NULL,
	[paymentmethods] [int] NULL,
	[delete] [bit] NULL,
	[approvedby] [nvarchar](200) NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](200) NULL,
	[Transport] [int] NULL,
	[note] [nvarchar](50) NULL,
	[required_note] [nvarchar](50) NULL,
	[province] [nvarchar](200) NULL,
	[district] [nvarchar](200) NULL,
	[ward] [nvarchar](300) NULL,
	[street] [nvarchar](300) NULL,
	[deliver_time] [nvarchar](300) NULL,
	[shiper] [decimal](18, 0) NULL,
	[statusCancel] [int] NULL,
	[pointevaluation] [int] NULL,
 CONSTRAINT [PK_VoucherOrder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoucherOrderDetail]    Script Date: 5/31/2022 7:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherOrderDetail](
	[voucherId] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[grossAmount] [decimal](18, 0) NULL,
	[discountAmount] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_VoucherOrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([UseName], [Passoword], [Uid], [id]) VALUES (N'phamtruong0305@gmail.com', N'C4CA4238A0B923820DCC509A6F75849B                                                                                                                                                                        ', N'4178f4bd-6d1d-4eb4-88e7-eff1b78c9f40', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (1, N'ACM', N'https://media.vietskin.vn/media/acm.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (2, N'Lysaskin', N'https://media.vietskin.vn/media/lysaskin.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (3, N'UREA', N'https://media.vietskin.vn/media/urea.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (4, N'Interapothek', N'https://media.vietskin.vn/media/interapothek.jpeg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (5, N'Image', N'https://media.vietskin.vn/media/image.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (6, N'Gammaphil', N'https://media.vietskin.vn/media/gammaphil.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (7, N'Stanhome', N'https://media.vietskin.vn/media/stanhome.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (8, N'Khác', N'https://media.vietskin.vn/media/differentbrand.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (9, N'Tenamyd', N'https://media.vietskin.vn/media/tenamyd.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (10, N'Uriage', N'https://media.vietskin.vn/media/uriage.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (11, N'Biocharm', N'https://media.vietskin.vn/media/biocharm.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (12, N'Ceradan', N'https://media.vietskin.vn/media/ceradan.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (13, N'Cetaphil', N'https://media.vietskin.vn/media/cetaphil.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (14, N'Ducray', N'https://media.vietskin.vn/media/ducray.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (15, N'Eucerin', N'https://media.vietskin.vn/media/eucerin.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (16, N'Papulex', N'https://media.vietskin.vn/media/papulex.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (17, N'Soskin', N'https://media.vietskin.vn/media/soskin.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (18, N'Laroche Posay', N'https://media.vietskin.vn/media/larochposay.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (19, N'Farmona', N'https://media.vietskin.vn/media/farmona.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (20, N'Latopic', N'https://media.vietskin.vn/media/latopic.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (21, N'Avène', N'https://media.vietskin.vn/media/avene.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (22, N'Ziaja', N'https://media.vietskin.vn/media/ziaja.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (23, N'SVR', N'https://media.vietskin.vn/media/SVR.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (24, N'SKINMD', N'https://media.vietskin.vn/media/SKINMD.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (25, N'Saforelle', N'https://media.vietskin.vn/media/saforelle.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (26, N'Isispharma', N'https://media.vietskin.vn/media/Isis.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (27, N'A-derma', N'https://media.vietskin.vn/media/aderma.png', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (28, N'Obagi', N'https://media.vietskin.vn/media/obagicom.jpg', NULL)
INSERT [dbo].[Brands] ([id], [name], [url_image], [delete]) VALUES (29, N'Med+', N'https://media.vietskin.vn/media/med.png', NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [product_id], [quantity], [intomoney], [uid]) VALUES (1, 1, 2, CAST(20000 AS Decimal(18, 0)), N'6eab3c96-6c62-4996-8499-12e2b81d25ae')
INSERT [dbo].[Cart] ([id], [product_id], [quantity], [intomoney], [uid]) VALUES (5, 435, 1, CAST(50000 AS Decimal(18, 0)), N'6eab3c96-6c62-4996-8499-12e2b81d25ae')
INSERT [dbo].[Cart] ([id], [product_id], [quantity], [intomoney], [uid]) VALUES (7, 446, 1, CAST(285000 AS Decimal(18, 0)), N'6eab3c96-6c62-4996-8499-12e2b81d25ae')
INSERT [dbo].[Cart] ([id], [product_id], [quantity], [intomoney], [uid]) VALUES (8, 405, 1, CAST(132000 AS Decimal(18, 0)), N'6eab3c96-6c62-4996-8499-12e2b81d25ae')
INSERT [dbo].[Cart] ([id], [product_id], [quantity], [intomoney], [uid]) VALUES (23, 475, 1, CAST(799980 AS Decimal(18, 0)), N'c101ce5e-55a9-47bb-b512-924f7c526c02')
SET IDENTITY_INSERT [dbo].[Cart] OFF
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (101, N'Chăm sóc da cơ bản', 3, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (102, N'Chăm sóc da mụn', 3, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (103, N'Trẻ hoá da', 3, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (104, N'Dưỡng trắng sáng da', 3, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (105, N'Triệt lông', 3, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (201, N'Da dầu', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (202, N'Da khô', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (203, N'Da hỗn hợp', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (204, N'Trị mụn', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (205, N'Trị sẹo', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (206, N'Trị nám, tàn nhang', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (207, N'Kem chống nắng', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (208, N'Sữa rửa mặt', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (209, N'Kem dưỡng', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (210, N'Serum', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (211, N'Khác', 1, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (301, N'Thuốc bôi', 2, NULL)
INSERT [dbo].[Categories] ([id], [name], [type], [delete]) VALUES (302, N'Thuốc uống', 2, NULL)
INSERT [dbo].[Custormer] ([uid], [name], [adress], [birthday], [sex], [telephone], [email], [password], [delete]) VALUES (N'6eab3c96-6c62-4996-8499-12e2b81d25ae', N'Phạm Trọng Trường1', N'TDP14 Chư sê Gia Lai ', CAST(N'2021-12-25 00:00:00.000' AS DateTime), NULL, N'0353573467', N'', N'C4CA4238A0B923820DCC509A6F75849B', 1)
INSERT [dbo].[Custormer] ([uid], [name], [adress], [birthday], [sex], [telephone], [email], [password], [delete]) VALUES (N'81beeb96-88d7-4342-bb7a-b96f1cf21ab8', N'truongpham', N'', CAST(N'2000-01-01 00:00:00.000' AS DateTime), NULL, N'0353537464', N'tmooquiz40@gmail.com', N'Cf0353573467', 0)
INSERT [dbo].[Custormer] ([uid], [name], [adress], [birthday], [sex], [telephone], [email], [password], [delete]) VALUES (N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'Phạm Trọng Trường', N'TDP14 Chư sê Gia Lai ', CAST(N'2021-12-26 00:00:00.000' AS DateTime), NULL, N'0353573467', N'phamtruong0305@gmail.com', N'C4CA4238A0B923820DCC509A6F75849B', 0)
INSERT [dbo].[Custormer] ([uid], [name], [adress], [birthday], [sex], [telephone], [email], [password], [delete]) VALUES (N'c101ce5e-55a9-47bb-b512-924f7c526c02', N'PhamTrongTruong', N'', NULL, NULL, N'0353537461', N'5951071113@st.utc2.edu.vn', N'Cf0353573467', 0)
INSERT [dbo].[Employer] ([uid], [name], [telephone], [email], [position], [delete], [password], [birthday]) VALUES (N'188d4cac-6132-48f0-bb2e-78ef6f0667ab', N'Phạm Trọng Trường', N'0353537467', N'phamtruong0306@gmail.com', N'Dược Sĩ', 0, N'C4CA4238A0B923820DCC509A6F75849B', CAST(N'2021-12-25' AS Date))
INSERT [dbo].[Employer] ([uid], [name], [telephone], [email], [position], [delete], [password], [birthday]) VALUES (N'25e1ee0f-94f9-4758-a3b9-72f7de5ca4fd', N'Pham Trong Truong ', N'0353573467', N'phamtruong0305@gmail.com', N'Quản Lý', 0, N'C4CA4238A0B923820DCC509A6F75849B', CAST(N'2021-12-17' AS Date))
INSERT [dbo].[Employer] ([uid], [name], [telephone], [email], [position], [delete], [password], [birthday]) VALUES (N'477c4130-7497-472f-b20b-a6c33fdbc2a1', N'Phạm Trọng Trường', N'0353537467', N'phamtruong0306@gmail.com', N'Quản Lý', 1, N'C4CA4238A0B923820DCC509A6F75849B', CAST(N'2021-12-25' AS Date))
INSERT [dbo].[Employer] ([uid], [name], [telephone], [email], [position], [delete], [password], [birthday]) VALUES (N'a789f754-4958-4761-a852-815183c9bd6a', N'Tran Quang Truong', N'0387531153', N'quangtruong112000.93@gmail.com', N'Quản Lý', 0, N'C4CA4238A0B923820DCC509A6F75849B', CAST(N'2000-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Evaluate] ON 

INSERT [dbo].[Evaluate] ([id], [uid], [point], [Message], [idproduct], [idorderdetail]) VALUES (6, N'b90659a6-db39-40c9-96ca-ba27c46a795a', 5, N'helllllllllllllllllllllllllllllllllllll', 405, 14)
SET IDENTITY_INSERT [dbo].[Evaluate] OFF
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (1, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 1)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (2, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 2)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (3, N'https://media.vietskin.vn/media/971efc2596b59e96a6c725cb0a44fe5dtay-te-bao-chet-lam-sang-da-iluma-intense-brightening-exfoliating-powder-600x603.png', 3)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (4, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 4)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (5, N'https://media.vietskin.vn/media/80855764b596022498cc78d98b81e77fdermatonus.jpg', 5)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (6, N'https://media.vietskin.vn/media/3b33c16c9703ac411b19a7b1862cd350Gammaphil125.jpg', 6)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (7, N'https://media.vietskin.vn/media/7f589008131f5a8bd36a6eb22cb70112Gammaphil125.jpg', 7)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (8, N'https://media.vietskin.vn/media/7adc44dcb9f7ded70d626b025fc76b0aGammaphil500.jpeg', 8)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (9, N'https://media.vietskin.vn/media/7fc948a7063234026127078622323300farmona_dermacos_anti_acne_anti_imperfection_spot_gel_15ml.jpg', 9)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (10, N'https://media.vietskin.vn/media/5aa5cfad351d74dbfdb21e41605d3049uriage-hyseac-gel-nettoyant-cleansing-gel-gel-rua-mat-cho-da-nhon-mun-hon-hop.jpg', 10)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (11, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 11)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (12, N'https://media.vietskin.vn/media/daf34bb1bee2ccb138064239fa670309id30.jpeg', 12)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (13, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 13)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (14, N'https://media.vietskin.vn/media/c1b14a7244d4b9f3e73769b16c3a232cPREVENTION-PLUS-DAILY-MATTE-MOISTURIZER-SPF-32-600x600.jpg', 14)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (15, N'https://media.vietskin.vn/media/0f5a09c3967fcfcdf11cd81e2404a6b8IMAGE-Skincare-Restoring-Daily-Defense-Moisturizer-SPF-50-1.7-oz.jpg', 15)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (16, N'https://media.vietskin.vn/media/a8ca499016c45375c5dce4a8044df29735e0d766b5b965caa6324da1d02c815e.jpg', 16)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (17, N'https://media.vietskin.vn/media/64620239404ff8289d5c0617dd67205atải_xuống.jpg', 17)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (18, N'https://media.vietskin.vn/media/57c4db5f83a55f01f6fe718c263d6d28kem-chong-nang-obagi-sun-shield-matte-broad-spectrum-spf-50-orchard.vn_.jpg', 18)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (19, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 19)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (20, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 20)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (21, N'https://media.vietskin.vn/media/51a6c0d0db2e4c742289b99c6c29d3fb67b4e680128f149cc9739e84deb3a3be.jpg', 21)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (22, N'https://media.vietskin.vn/media/29f6986a9be10b1dddfc8b67bb0606c5ageless-total-eye-lift-creme_2_.png', 22)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (23, N'https://media.vietskin.vn/media/c51a262b0e7f05bb8bf2ae69f4c2bb38ageless-total-eye-lift-creme_2_.png', 23)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (24, N'https://media.vietskin.vn/media/9377a2577056ca17dc49be11b050554fAGELESSTotalRetinolACrème.jpg', 24)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (25, N'https://media.vietskin.vn/media/af6ded7ef2731834b7b01f717a7eee20Kem-Dưỡng-Ẩm-Ceradan-1-600x400.png', 25)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (26, N'https://media.vietskin.vn/media/dbe35fc68f7f7d409ac2ae6c70289e52Cream.jpg', 26)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (27, N'https://media.vietskin.vn/media/3b541c83409b7078e285fad5844c8821gentle_rejuvenation_grande.jpg', 27)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (28, N'https://media.vietskin.vn/media/4cbcff98c1c5c9f2d43f0737003ebe9ekem-duong-am-tre-hoa-da-ban-dem-Obagi-Gentle-Rejuvenation-Advanced-Night-Repair.jpg', 28)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (29, N'https://media.vietskin.vn/media/53e1c9bce9b56cd2bad677321d44aed8farmona_dermacos_anti_acne_matting_cream_50ml.jpeg', 29)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (30, N'https://media.vietskin.vn/media/bbc68ea91f72c33f24a96eef676a884ckem-lam-sang-da-va-mo-nam-cong-nghe-adt-image-md-restoring-brightening-creme-with-adt-technology-tm.png', 30)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (31, N'https://media.vietskin.vn/media/ac646e1563682a25f9a3d1ea0081594biluma-brightening-eye-creme.png', 31)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (32, N'https://media.vietskin.vn/media/a0f83a3f5eaaf0bbccb157b93316d2c3Công-dụng-của-kem-dưỡng-trắng-Sunfader-SPF-15.jpg', 32)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (33, N'https://media.vietskin.vn/media/10477846b11abeb5c91901f48ef51c37IMG_8634-.jpg', 33)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (34, N'https://media.vietskin.vn/media/735c6ca4d831d0e180c49fa266044ba5imgpsh_fullsize_anim_0bffa7afd5a84c0aa4302149c59fed37_master.jpg', 34)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (35, N'https://media.vietskin.vn/media/d2d12ccf4bdb46bcaf316dbc577bdc67i-conceal-flawless-foundation-spf30-kem-nen-che-khuyet-diem-28gr.jpg', 35)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (36, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 36)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (37, N'https://media.vietskin.vn/media/91c95c887295ba2708b12a49e4512c92Hydrating-Eye-Recovery-Gel-05.jpg', 37)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (38, N'https://media.vietskin.vn/media/5a9afedcc8113480eef3ea078f434e50kem-phuc-hoi-va-tre-hoa-da-image-md-restoring-youth-repair-creme-with-adt-technology-tm.png', 38)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (39, N'https://media.vietskin.vn/media/f3767c887f580e8467f5f033336cba63kem-retinol-cong-nghe-adt-tre-hoa-da-mo-tham-nam-image-md-restoring-retinol-creme-with-adt-technology-tm.png', 39)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (40, N'https://media.vietskin.vn/media/cbe2594446b7ac26744bfa7990825fe3AGELESSTotalRetinolACrème.jpg', 40)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (41, N'https://media.vietskin.vn/media/f4e5215aa867ebc78f13380d076c41bctrị_mụn.jpg', 41)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (42, N'https://media.vietskin.vn/media/35478b3b2e6ee1a78920950eb3179a7975371_master.jpg', 42)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (43, N'https://media.vietskin.vn/media/9cb08ad1635685d506b7839496c2ff0275370.jpg', 43)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (44, N'https://media.vietskin.vn/media/f45938d1943cb5cf8567b5363fa96cf8lotion-dac-tri-danh-cho-co-the-obagi-keraphine-body-smoothing-lotion-jpg-1591604465-08062020152105.jpg', 44)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (45, N'https://media.vietskin.vn/media/7154b65cda28fc7b666adeb7e2b47e74obg-14-001-nd.jpg', 45)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (46, N'https://media.vietskin.vn/media/2a31590539ec23a4a447e81848e4ff8fOrmedic-Balancing-Gel-Masque-2-oz.jpg', 46)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (47, N'https://media.vietskin.vn/media/38a845e679c5d3072f8c18b12d6ed34aIMAGEMDRestoringOvernightRetinolMasque.jpg', 47)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (48, N'https://media.vietskin.vn/media/a824118889cce0a54e8523bd27856298ageless-resurfacing-masque_1.png', 48)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (49, N'https://media.vietskin.vn/media/78ece0408d45055fc8da561af7b8f737ageless-resurfacing-masque_1.png', 49)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (50, N'https://media.vietskin.vn/media/36ad684ba15cbfa73ad524a69baeda25rwine_beauty_1.1.jpeg', 50)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (51, N'https://media.vietskin.vn/media/0c5827359dafa4e96dccc3ca16d97384agelessovernightmasque.png', 51)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (52, N'https://media.vietskin.vn/media/566845dbe002089383f7587c2e287857agelessovernightmasque.png', 52)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (53, N'https://media.vietskin.vn/media/d764134337a3b869d83c264bcda81ed1mat-na-tre-hoa-vung-mat-flawless-rejuvenating-eye-pads.jpg', 53)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (54, N'https://media.vietskin.vn/media/8125ee2e6dbd6736c6e5f3e0dc158154laboratoire-acm-novophane-p40828.jpg', 54)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (55, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 55)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (56, N'https://media.vietskin.vn/media/da4ed826beba1417128c598f3f8fb381actimat-acm-sebionex-p39062.jpg', 56)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (57, N'https://media.vietskin.vn/media/574b4e8b8981920514a896baeb0c1de5sfoaminggel.jpeg', 57)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (58, N'https://media.vietskin.vn/media/0e813bea190c0b6dafffabe11751d552sebionexhydra.jpg', 58)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (59, N'https://media.vietskin.vn/media/19f3eabe86292230d876ad959fa8f60cSebionex.K_creme_v2.jpg', 59)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (60, N'https://media.vietskin.vn/media/058039233c379c8ba53c20a871f5a766sebionexmattifying.jpg', 60)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (61, N'https://media.vietskin.vn/media/fdcb7251ba483064a1956ccecc3f2b903D_Sebionex_Trio_v2.jpg', 61)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (62, N'https://media.vietskin.vn/media/7adcc276945b3ed4935ad5cf30c0ae79IMAGE-SKINCARE-Vital-C-Hydrating-Water-Burst-600x600.jpg', 62)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (63, N'https://media.vietskin.vn/media/0bf93318ed6a05a09aa175bea16c160erestoring-serum-oil-free-1.jpg', 63)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (64, N'https://media.vietskin.vn/media/df4ceff3e4f903338f0924e72f8c5971iluma-intense-bleaching-serum.png', 64)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (65, N'https://media.vietskin.vn/media/6ea287b51edb8e0918a1d881e741fe1ffacial_01_42a81240508a40618e8d61ac6a93696c_master.jpg', 65)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (66, N'https://media.vietskin.vn/media/d65362d02c35a0e3ada4bbced2fcb42aObagi-Gentle-Rejuvenation-Skin-Rejuvenation-Serum.jpg', 66)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (67, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 67)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (68, N'https://media.vietskin.vn/media/3e5c64ac0744b5900cee01b6b2bd4e87serum-tre-hoa-da-image-the-max-stem-cell-serum-600x600.jpg', 68)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (69, N'https://media.vietskin.vn/media/5b617d8f45543a141b6297445e5e8555sesitelialcleansinggel.png', 69)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (70, N'https://media.vietskin.vn/media/ffa302e43c25e77b4f8e7bf0fef4d618sesitelialmspf50.jpg', 70)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (71, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 71)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (72, N'https://media.vietskin.vn/media/c121408fff0b204c21d7548fd81a858fclearspot.jpeg', 72)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (73, N'https://media.vietskin.vn/media/aa3e6ae8e2905e3a521744313e191e71ormedic-balancing-facial-cleanser-1.jpg', 73)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (74, N'https://media.vietskin.vn/media/d594fefc8db54028e12f11d72ba32e4d00016266-dermacos-anti-acne-deep-cleansing-gel-150ml-7730-5c8b_large.jpg', 74)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (75, N'https://media.vietskin.vn/media/0aff6f51492a8146c531fd92bf3aa648total_facial_cleanser.png', 75)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (76, N'https://media.vietskin.vn/media/57982c16824d4d157aad0cf4bdd5302ctotal_facial_cleanser.png', 76)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (77, N'https://media.vietskin.vn/media/c43e757dec9b2ad43db26c9843a29aa7medicated-acne-facial-scrub_1.png', 77)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (78, N'https://media.vietskin.vn/media/d535c08b311dff12848bbfd1f37299a7VITALCHydratingFacialCleanser.png', 78)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (79, N'https://media.vietskin.vn/media/136e23e0154417499514fb4ecb413bb4Gentle-purifying-cleansing-gel-100ml.jpg', 79)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (80, N'https://media.vietskin.vn/media/676760f6ca2cf8e554e964818afec195the-max-stem-cell-facial-cleanser_2.png', 80)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (81, N'https://media.vietskin.vn/media/bf2501ab6728dbcd0b025a3ca5621772clear-cell-sayicylic-cleanser_1.png', 81)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (82, N'https://media.vietskin.vn/media/3bb83465f62d3163d214ad32f8869d501.png', 82)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (83, N'https://media.vietskin.vn/media/82733ecd64db932f85e72e76407c19f4clndau1.jpg', 83)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (84, N'https://media.vietskin.vn/media/6b6c5de262c4cb8934bb09290136d486image-ageless-hyaluronic6-filler-a-109n.jpg', 84)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (85, N'https://media.vietskin.vn/media/c3fa4566eb552aeb6e0c2f2bd9a4334dIMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600.jpg', 85)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (86, N'https://media.vietskin.vn/media/c1ae048c3f0f517f99cf8aeec0558cbd3-IMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600_(1).jpg', 86)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (86, N'https://media.vietskin.vn/media/747be8b89f0243a6dd6287f48b3489412-AGELESS-TOTAL-PURE-HYALURONIC-FILLER.jpg', 87)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (86, N'https://media.vietskin.vn/media/1738ed1adf078a9eddaca32ba8daecd51-hyaluronic-acid.jpg', 88)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (87, N'https://media.vietskin.vn/media/14b3bd72a97e250d77c1595c993c5f08vital-c-hydrating-facial-oil.jpg', 89)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (88, N'https://media.vietskin.vn/media/373e82205bd235ab0e58ed05c8a3b039Xịt_Khoáng_Avène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 90)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (89, N'https://media.vietskin.vn/media/53d6d5e1f74118403a5912c980f71bf15.jpeg', 91)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (90, N'https://media.vietskin.vn/media/1d6a650ff28323c642f253ecbabc5e34ATOLYSgel_.jpg', 92)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (91, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 93)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (92, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 94)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (93, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 95)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (94, N'https://media.vietskin.vn/media/80855764b596022498cc78d98b81e77fdermatonus.jpg', 96)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (95, N'https://media.vietskin.vn/media/3b33c16c9703ac411b19a7b1862cd350Gammaphil125.jpg', 97)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (96, N'https://media.vietskin.vn/media/7f589008131f5a8bd36a6eb22cb70112Gammaphil125.jpg', 98)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (97, N'https://media.vietskin.vn/media/7adc44dcb9f7ded70d626b025fc76b0aGammaphil500.jpeg', 99)
GO
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (98, N'https://media.vietskin.vn/media/7fc948a7063234026127078622323300farmona_dermacos_anti_acne_anti_imperfection_spot_gel_15ml.jpg', 100)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (99, N'https://media.vietskin.vn/media/4d15134b208f879c2d42941735760d78gel.jpg', 101)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (100, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 102)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (101, N'https://media.vietskin.vn/media/daf34bb1bee2ccb138064239fa670309id30.jpeg', 103)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (102, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 104)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (103, N'https://media.vietskin.vn/media/05eaeb9b44ab219e8f398c1c21535b5ePrevention-Daily-Hydrating-Moisturizer-SPF-30.png', 105)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (104, N'https://media.vietskin.vn/media/0f5a09c3967fcfcdf11cd81e2404a6b8IMAGE-Skincare-Restoring-Daily-Defense-Moisturizer-SPF-50-1.7-oz.jpg', 106)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (105, N'https://media.vietskin.vn/media/a8ca499016c45375c5dce4a8044df29735e0d766b5b965caa6324da1d02c815e.jpg', 107)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (106, N'https://media.vietskin.vn/media/64620239404ff8289d5c0617dd67205atải_xuống.jpg', 108)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (107, N'https://media.vietskin.vn/media/57c4db5f83a55f01f6fe718c263d6d28kem-chong-nang-obagi-sun-shield-matte-broad-spectrum-spf-50-orchard.vn_.jpg', 109)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (108, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 110)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (109, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 111)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (110, N'https://media.vietskin.vn/media/630853529bfa5060c2c44c228da6caccmed15.png', 112)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (111, N'https://media.vietskin.vn/media/d2d12ccf4bdb46bcaf316dbc577bdc67i-conceal-flawless-foundation-spf30-kem-nen-che-khuyet-diem-28gr.jpg', 113)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (112, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 114)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (113, N'https://media.vietskin.vn/media/91c95c887295ba2708b12a49e4512c92Hydrating-Eye-Recovery-Gel-05.jpg', 115)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (114, N'https://media.vietskin.vn/media/5a9afedcc8113480eef3ea078f434e50kem-phuc-hoi-va-tre-hoa-da-image-md-restoring-youth-repair-creme-with-adt-technology-tm.png', 116)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (115, N'https://media.vietskin.vn/media/f3767c887f580e8467f5f033336cba63kem-retinol-cong-nghe-adt-tre-hoa-da-mo-tham-nam-image-md-restoring-retinol-creme-with-adt-technology-tm.png', 117)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (116, N'https://media.vietskin.vn/media/cbe2594446b7ac26744bfa7990825fe3AGELESSTotalRetinolACrème.jpg', 118)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (117, N'https://media.vietskin.vn/media/35478b3b2e6ee1a78920950eb3179a7975371_master.jpg', 119)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (118, N'https://media.vietskin.vn/media/9cb08ad1635685d506b7839496c2ff0275370.jpg', 120)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (119, N'https://media.vietskin.vn/media/f45938d1943cb5cf8567b5363fa96cf8lotion-dac-tri-danh-cho-co-the-obagi-keraphine-body-smoothing-lotion-jpg-1591604465-08062020152105.jpg', 121)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (120, N'https://media.vietskin.vn/media/7154b65cda28fc7b666adeb7e2b47e74obg-14-001-nd.jpg', 122)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (121, N'https://media.vietskin.vn/media/2a31590539ec23a4a447e81848e4ff8fOrmedic-Balancing-Gel-Masque-2-oz.jpg', 123)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (122, N'https://media.vietskin.vn/media/38a845e679c5d3072f8c18b12d6ed34aIMAGEMDRestoringOvernightRetinolMasque.jpg', 124)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (123, N'https://media.vietskin.vn/media/a824118889cce0a54e8523bd27856298ageless-resurfacing-masque_1.png', 125)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (124, N'https://media.vietskin.vn/media/36ad684ba15cbfa73ad524a69baeda25rwine_beauty_1.1.jpeg', 126)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (125, N'https://media.vietskin.vn/media/0c5827359dafa4e96dccc3ca16d97384agelessovernightmasque.png', 127)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (126, N'https://media.vietskin.vn/media/566845dbe002089383f7587c2e287857agelessovernightmasque.png', 128)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (127, N'https://media.vietskin.vn/media/d764134337a3b869d83c264bcda81ed1mat-na-tre-hoa-vung-mat-flawless-rejuvenating-eye-pads.jpg', 129)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (128, N'https://media.vietskin.vn/media/6213ad605b84ee5c41aaba95a0d4dc75kem-ziaja-med3%.png', 130)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (129, N'https://media.vietskin.vn/media/d9d8bc34e89a10bd593b49d950726f3f3.jpeg', 131)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (130, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 132)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (131, N'https://media.vietskin.vn/media/da4ed826beba1417128c598f3f8fb381actimat-acm-sebionex-p39062.jpg', 133)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (132, N'https://media.vietskin.vn/media/0e813bea190c0b6dafffabe11751d552sebionexhydra.jpg', 134)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (133, N'https://media.vietskin.vn/media/7adcc276945b3ed4935ad5cf30c0ae79IMAGE-SKINCARE-Vital-C-Hydrating-Water-Burst-600x600.jpg', 135)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (134, N'https://media.vietskin.vn/media/df4ceff3e4f903338f0924e72f8c5971iluma-intense-bleaching-serum.png', 136)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (135, N'https://media.vietskin.vn/media/6ea287b51edb8e0918a1d881e741fe1ffacial_01_42a81240508a40618e8d61ac6a93696c_master.jpg', 137)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (136, N'https://media.vietskin.vn/media/d65362d02c35a0e3ada4bbced2fcb42aObagi-Gentle-Rejuvenation-Skin-Rejuvenation-Serum.jpg', 138)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (137, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 139)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (138, N'https://media.vietskin.vn/media/3e5c64ac0744b5900cee01b6b2bd4e87serum-tre-hoa-da-image-the-max-stem-cell-serum-600x600.jpg', 140)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (139, N'https://media.vietskin.vn/media/5b617d8f45543a141b6297445e5e8555sesitelialcleansinggel.png', 141)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (140, N'https://media.vietskin.vn/media/ffa302e43c25e77b4f8e7bf0fef4d618sesitelialmspf50.jpg', 142)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (141, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 143)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (142, N'https://media.vietskin.vn/media/c121408fff0b204c21d7548fd81a858fclearspot.jpeg', 144)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (143, N'https://media.vietskin.vn/media/f4b9903403ed2ea3f598d7102e83b141lipid-extra-kem-duong-lam-diu-giam-ngua-cho-da-kho-nhay-cam-01.jpg', 145)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (144, N'https://media.vietskin.vn/media/aa3e6ae8e2905e3a521744313e191e71ormedic-balancing-facial-cleanser-1.jpg', 146)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (145, N'https://media.vietskin.vn/media/0aff6f51492a8146c531fd92bf3aa648total_facial_cleanser.png', 147)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (146, N'https://media.vietskin.vn/media/57982c16824d4d157aad0cf4bdd5302ctotal_facial_cleanser.png', 148)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (147, N'https://media.vietskin.vn/media/c43e757dec9b2ad43db26c9843a29aa7medicated-acne-facial-scrub_1.png', 149)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (148, N'https://media.vietskin.vn/media/d535c08b311dff12848bbfd1f37299a7VITALCHydratingFacialCleanser.png', 150)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (149, N'https://media.vietskin.vn/media/676760f6ca2cf8e554e964818afec195the-max-stem-cell-facial-cleanser_2.png', 151)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (150, N'https://media.vietskin.vn/media/3bb83465f62d3163d214ad32f8869d501.png', 152)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (151, N'https://media.vietskin.vn/media/82733ecd64db932f85e72e76407c19f4clndau1.jpg', 153)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (152, N'https://media.vietskin.vn/media/6b6c5de262c4cb8934bb09290136d486image-ageless-hyaluronic6-filler-a-109n.jpg', 154)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (153, N'https://media.vietskin.vn/media/c3fa4566eb552aeb6e0c2f2bd9a4334dIMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600.jpg', 155)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (154, N'https://media.vietskin.vn/media/c1ae048c3f0f517f99cf8aeec0558cbd3-IMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600_(1).jpg', 156)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (154, N'https://media.vietskin.vn/media/747be8b89f0243a6dd6287f48b3489412-AGELESS-TOTAL-PURE-HYALURONIC-FILLER.jpg', 157)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (154, N'https://media.vietskin.vn/media/1738ed1adf078a9eddaca32ba8daecd51-hyaluronic-acid.jpg', 158)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (155, N'https://media.vietskin.vn/media/14b3bd72a97e250d77c1595c993c5f08vital-c-hydrating-facial-oil.jpg', 159)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (156, N'https://media.vietskin.vn/media/3c5935b1c43352b1c804ac6d502373e1Xịt_khoáng_-_Avene_Thermal_Spring_Water_150ml.jpg', 160)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (157, N'https://media.vietskin.vn/media/08a1d2d8499b78508f623063758793adAvène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 161)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (158, N'https://media.vietskin.vn/media/373e82205bd235ab0e58ed05c8a3b039Xịt_Khoáng_Avène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 162)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (159, N'https://media.vietskin.vn/media/971efc2596b59e96a6c725cb0a44fe5dtay-te-bao-chet-lam-sang-da-iluma-intense-brightening-exfoliating-powder-600x603.png', 163)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (160, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 164)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (161, N'https://media.vietskin.vn/media/80855764b596022498cc78d98b81e77fdermatonus.jpg', 165)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (162, N'https://media.vietskin.vn/media/3b33c16c9703ac411b19a7b1862cd350Gammaphil125.jpg', 166)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (163, N'https://media.vietskin.vn/media/7f589008131f5a8bd36a6eb22cb70112Gammaphil125.jpg', 167)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (164, N'https://media.vietskin.vn/media/7adc44dcb9f7ded70d626b025fc76b0aGammaphil500.jpeg', 168)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (165, N'https://media.vietskin.vn/media/7fc948a7063234026127078622323300farmona_dermacos_anti_acne_anti_imperfection_spot_gel_15ml.jpg', 169)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (166, N'https://media.vietskin.vn/media/5aa5cfad351d74dbfdb21e41605d3049uriage-hyseac-gel-nettoyant-cleansing-gel-gel-rua-mat-cho-da-nhon-mun-hon-hop.jpg', 170)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (167, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 171)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (168, N'https://media.vietskin.vn/media/daf34bb1bee2ccb138064239fa670309id30.jpeg', 172)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (169, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 173)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (170, N'https://media.vietskin.vn/media/3bc8f045bcb015e13f6f290d64b7e5e33476_image_prevention__daily_ultimate_protection_moisturizer_spf50.png', 174)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (171, N'https://media.vietskin.vn/media/0f5a09c3967fcfcdf11cd81e2404a6b8IMAGE-Skincare-Restoring-Daily-Defense-Moisturizer-SPF-50-1.7-oz.jpg', 175)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (172, N'https://media.vietskin.vn/media/a8ca499016c45375c5dce4a8044df29735e0d766b5b965caa6324da1d02c815e.jpg', 176)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (173, N'https://media.vietskin.vn/media/64620239404ff8289d5c0617dd67205atải_xuống.jpg', 177)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (174, N'https://media.vietskin.vn/media/57c4db5f83a55f01f6fe718c263d6d28kem-chong-nang-obagi-sun-shield-matte-broad-spectrum-spf-50-orchard.vn_.jpg', 178)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (175, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 179)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (176, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 180)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (177, N'https://media.vietskin.vn/media/51a6c0d0db2e4c742289b99c6c29d3fb67b4e680128f149cc9739e84deb3a3be.jpg', 181)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (178, N'https://media.vietskin.vn/media/29f6986a9be10b1dddfc8b67bb0606c5ageless-total-eye-lift-creme_2_.png', 182)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (179, N'https://media.vietskin.vn/media/971efc2596b59e96a6c725cb0a44fe5dtay-te-bao-chet-lam-sang-da-iluma-intense-brightening-exfoliating-powder-600x603.png', 183)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (180, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 184)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (181, N'https://media.vietskin.vn/media/80855764b596022498cc78d98b81e77fdermatonus.jpg', 185)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (182, N'https://media.vietskin.vn/media/3b33c16c9703ac411b19a7b1862cd350Gammaphil125.jpg', 186)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (183, N'https://media.vietskin.vn/media/7f589008131f5a8bd36a6eb22cb70112Gammaphil125.jpg', 187)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (184, N'https://media.vietskin.vn/media/7adc44dcb9f7ded70d626b025fc76b0aGammaphil500.jpeg', 188)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (185, N'https://media.vietskin.vn/media/7fc948a7063234026127078622323300farmona_dermacos_anti_acne_anti_imperfection_spot_gel_15ml.jpg', 189)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (186, N'https://media.vietskin.vn/media/5aa5cfad351d74dbfdb21e41605d3049uriage-hyseac-gel-nettoyant-cleansing-gel-gel-rua-mat-cho-da-nhon-mun-hon-hop.jpg', 190)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (187, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 191)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (188, N'https://media.vietskin.vn/media/daf34bb1bee2ccb138064239fa670309id30.jpeg', 192)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (189, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 193)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (190, N'https://media.vietskin.vn/media/3bc8f045bcb015e13f6f290d64b7e5e33476_image_prevention__daily_ultimate_protection_moisturizer_spf50.png', 194)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (191, N'https://media.vietskin.vn/media/0f5a09c3967fcfcdf11cd81e2404a6b8IMAGE-Skincare-Restoring-Daily-Defense-Moisturizer-SPF-50-1.7-oz.jpg', 195)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (192, N'https://media.vietskin.vn/media/a8ca499016c45375c5dce4a8044df29735e0d766b5b965caa6324da1d02c815e.jpg', 196)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (193, N'https://media.vietskin.vn/media/64620239404ff8289d5c0617dd67205atải_xuống.jpg', 197)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (194, N'https://media.vietskin.vn/media/57c4db5f83a55f01f6fe718c263d6d28kem-chong-nang-obagi-sun-shield-matte-broad-spectrum-spf-50-orchard.vn_.jpg', 198)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (195, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 199)
GO
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (196, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 200)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (197, N'https://media.vietskin.vn/media/51a6c0d0db2e4c742289b99c6c29d3fb67b4e680128f149cc9739e84deb3a3be.jpg', 201)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (198, N'https://media.vietskin.vn/media/29f6986a9be10b1dddfc8b67bb0606c5ageless-total-eye-lift-creme_2_.png', 202)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (199, N'https://media.vietskin.vn/media/c51a262b0e7f05bb8bf2ae69f4c2bb38ageless-total-eye-lift-creme_2_.png', 203)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (200, N'https://media.vietskin.vn/media/9377a2577056ca17dc49be11b050554fAGELESSTotalRetinolACrème.jpg', 204)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (201, N'https://media.vietskin.vn/media/af6ded7ef2731834b7b01f717a7eee20Kem-Dưỡng-Ẩm-Ceradan-1-600x400.png', 205)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (202, N'https://media.vietskin.vn/media/dbe35fc68f7f7d409ac2ae6c70289e52Cream.jpg', 206)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (203, N'https://media.vietskin.vn/media/3b541c83409b7078e285fad5844c8821gentle_rejuvenation_grande.jpg', 207)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (204, N'https://media.vietskin.vn/media/4cbcff98c1c5c9f2d43f0737003ebe9ekem-duong-am-tre-hoa-da-ban-dem-Obagi-Gentle-Rejuvenation-Advanced-Night-Repair.jpg', 208)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (205, N'https://media.vietskin.vn/media/53e1c9bce9b56cd2bad677321d44aed8farmona_dermacos_anti_acne_matting_cream_50ml.jpeg', 209)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (206, N'https://media.vietskin.vn/media/bbc68ea91f72c33f24a96eef676a884ckem-lam-sang-da-va-mo-nam-cong-nghe-adt-image-md-restoring-brightening-creme-with-adt-technology-tm.png', 210)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (207, N'https://media.vietskin.vn/media/ac646e1563682a25f9a3d1ea0081594biluma-brightening-eye-creme.png', 211)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (208, N'https://media.vietskin.vn/media/a0f83a3f5eaaf0bbccb157b93316d2c3Công-dụng-của-kem-dưỡng-trắng-Sunfader-SPF-15.jpg', 212)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (209, N'https://media.vietskin.vn/media/10477846b11abeb5c91901f48ef51c37IMG_8634-.jpg', 213)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (210, N'https://media.vietskin.vn/media/735c6ca4d831d0e180c49fa266044ba5imgpsh_fullsize_anim_0bffa7afd5a84c0aa4302149c59fed37_master.jpg', 214)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (211, N'https://media.vietskin.vn/media/d2d12ccf4bdb46bcaf316dbc577bdc67i-conceal-flawless-foundation-spf30-kem-nen-che-khuyet-diem-28gr.jpg', 215)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (212, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 216)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (213, N'https://media.vietskin.vn/media/91c95c887295ba2708b12a49e4512c92Hydrating-Eye-Recovery-Gel-05.jpg', 217)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (214, N'https://media.vietskin.vn/media/5a9afedcc8113480eef3ea078f434e50kem-phuc-hoi-va-tre-hoa-da-image-md-restoring-youth-repair-creme-with-adt-technology-tm.png', 218)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (215, N'https://media.vietskin.vn/media/f3767c887f580e8467f5f033336cba63kem-retinol-cong-nghe-adt-tre-hoa-da-mo-tham-nam-image-md-restoring-retinol-creme-with-adt-technology-tm.png', 219)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (216, N'https://media.vietskin.vn/media/cbe2594446b7ac26744bfa7990825fe3AGELESSTotalRetinolACrème.jpg', 220)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (217, N'https://media.vietskin.vn/media/35478b3b2e6ee1a78920950eb3179a7975371_master.jpg', 221)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (218, N'https://media.vietskin.vn/media/9cb08ad1635685d506b7839496c2ff0275370.jpg', 222)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (219, N'https://media.vietskin.vn/media/f45938d1943cb5cf8567b5363fa96cf8lotion-dac-tri-danh-cho-co-the-obagi-keraphine-body-smoothing-lotion-jpg-1591604465-08062020152105.jpg', 223)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (220, N'https://media.vietskin.vn/media/7154b65cda28fc7b666adeb7e2b47e74obg-14-001-nd.jpg', 224)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (221, N'https://media.vietskin.vn/media/2a31590539ec23a4a447e81848e4ff8fOrmedic-Balancing-Gel-Masque-2-oz.jpg', 225)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (222, N'https://media.vietskin.vn/media/38a845e679c5d3072f8c18b12d6ed34aIMAGEMDRestoringOvernightRetinolMasque.jpg', 226)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (223, N'https://media.vietskin.vn/media/a824118889cce0a54e8523bd27856298ageless-resurfacing-masque_1.png', 227)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (224, N'https://media.vietskin.vn/media/36ad684ba15cbfa73ad524a69baeda25rwine_beauty_1.1.jpeg', 228)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (225, N'https://media.vietskin.vn/media/0c5827359dafa4e96dccc3ca16d97384agelessovernightmasque.png', 229)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (226, N'https://media.vietskin.vn/media/566845dbe002089383f7587c2e287857agelessovernightmasque.png', 230)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (227, N'https://media.vietskin.vn/media/d764134337a3b869d83c264bcda81ed1mat-na-tre-hoa-vung-mat-flawless-rejuvenating-eye-pads.jpg', 231)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (228, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 232)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (229, N'https://media.vietskin.vn/media/da4ed826beba1417128c598f3f8fb381actimat-acm-sebionex-p39062.jpg', 233)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (230, N'https://media.vietskin.vn/media/0e813bea190c0b6dafffabe11751d552sebionexhydra.jpg', 234)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (231, N'https://media.vietskin.vn/media/7adcc276945b3ed4935ad5cf30c0ae79IMAGE-SKINCARE-Vital-C-Hydrating-Water-Burst-600x600.jpg', 235)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (232, N'https://media.vietskin.vn/media/0bf93318ed6a05a09aa175bea16c160erestoring-serum-oil-free-1.jpg', 236)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (233, N'https://media.vietskin.vn/media/df4ceff3e4f903338f0924e72f8c5971iluma-intense-bleaching-serum.png', 237)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (234, N'https://media.vietskin.vn/media/6ea287b51edb8e0918a1d881e741fe1ffacial_01_42a81240508a40618e8d61ac6a93696c_master.jpg', 238)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (235, N'https://media.vietskin.vn/media/d65362d02c35a0e3ada4bbced2fcb42aObagi-Gentle-Rejuvenation-Skin-Rejuvenation-Serum.jpg', 239)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (236, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 240)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (237, N'https://media.vietskin.vn/media/3e5c64ac0744b5900cee01b6b2bd4e87serum-tre-hoa-da-image-the-max-stem-cell-serum-600x600.jpg', 241)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (238, N'https://media.vietskin.vn/media/5b617d8f45543a141b6297445e5e8555sesitelialcleansinggel.png', 242)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (239, N'https://media.vietskin.vn/media/ffa302e43c25e77b4f8e7bf0fef4d618sesitelialmspf50.jpg', 243)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (240, N'https://media.vietskin.vn/media/c121408fff0b204c21d7548fd81a858fclearspot.jpeg', 244)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (241, N'https://media.vietskin.vn/media/aa3e6ae8e2905e3a521744313e191e71ormedic-balancing-facial-cleanser-1.jpg', 245)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (242, N'https://media.vietskin.vn/media/d594fefc8db54028e12f11d72ba32e4d00016266-dermacos-anti-acne-deep-cleansing-gel-150ml-7730-5c8b_large.jpg', 246)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (243, N'https://media.vietskin.vn/media/57982c16824d4d157aad0cf4bdd5302ctotal_facial_cleanser.png', 247)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (244, N'https://media.vietskin.vn/media/0aff6f51492a8146c531fd92bf3aa648total_facial_cleanser.png', 248)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (245, N'https://media.vietskin.vn/media/c43e757dec9b2ad43db26c9843a29aa7medicated-acne-facial-scrub_1.png', 249)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (246, N'https://media.vietskin.vn/media/d535c08b311dff12848bbfd1f37299a7VITALCHydratingFacialCleanser.png', 250)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (247, N'https://media.vietskin.vn/media/676760f6ca2cf8e554e964818afec195the-max-stem-cell-facial-cleanser_2.png', 251)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (248, N'https://media.vietskin.vn/media/3bb83465f62d3163d214ad32f8869d501.png', 252)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (249, N'https://media.vietskin.vn/media/82733ecd64db932f85e72e76407c19f4clndau1.jpg', 253)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (250, N'https://media.vietskin.vn/media/6b6c5de262c4cb8934bb09290136d486image-ageless-hyaluronic6-filler-a-109n.jpg', 254)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (251, N'https://media.vietskin.vn/media/c3fa4566eb552aeb6e0c2f2bd9a4334dIMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600.jpg', 255)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (252, N'https://media.vietskin.vn/media/c1ae048c3f0f517f99cf8aeec0558cbd3-IMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600_(1).jpg', 256)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (252, N'https://media.vietskin.vn/media/747be8b89f0243a6dd6287f48b3489412-AGELESS-TOTAL-PURE-HYALURONIC-FILLER.jpg', 257)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (252, N'https://media.vietskin.vn/media/1738ed1adf078a9eddaca32ba8daecd51-hyaluronic-acid.jpg', 258)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (253, N'https://media.vietskin.vn/media/14b3bd72a97e250d77c1595c993c5f08vital-c-hydrating-facial-oil.jpg', 259)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (254, N'https://media.vietskin.vn/media/3c5935b1c43352b1c804ac6d502373e1Xịt_khoáng_-_Avene_Thermal_Spring_Water_150ml.jpg', 260)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (255, N'https://media.vietskin.vn/media/08a1d2d8499b78508f623063758793adAvène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 261)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (256, N'https://media.vietskin.vn/media/373e82205bd235ab0e58ed05c8a3b039Xịt_Khoáng_Avène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 262)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (257, N'https://media.vietskin.vn/media/53d6d5e1f74118403a5912c980f71bf15.jpeg', 263)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (258, N'https://media.vietskin.vn/media/fe0c2fd43e2f854d23ad162b8a266a78kem-dac-tri-mun-biocharm-acne-cream-25ml-nvy3dkimyma97env6oxmlm150ami7oibx8u4ynpy88.jpg', 264)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (259, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 265)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (260, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 266)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (261, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 267)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (262, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 268)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (263, N'https://media.vietskin.vn/media/80855764b596022498cc78d98b81e77fdermatonus.jpg', 269)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (264, N'https://media.vietskin.vn/media/7fc948a7063234026127078622323300farmona_dermacos_anti_acne_anti_imperfection_spot_gel_15ml.jpg', 270)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (265, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 271)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (266, N'https://media.vietskin.vn/media/2fbf80151e7bbe7d607ea899744fed4d1.jpg', 272)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (267, N'https://media.vietskin.vn/media/35478b3b2e6ee1a78920950eb3179a7975371_master.jpg', 273)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (268, N'https://media.vietskin.vn/media/9cb08ad1635685d506b7839496c2ff0275370.jpg', 274)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (269, N'https://media.vietskin.vn/media/a824118889cce0a54e8523bd27856298ageless-resurfacing-masque_1.png', 275)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (270, N'https://media.vietskin.vn/media/78ece0408d45055fc8da561af7b8f737ageless-resurfacing-masque_1.png', 276)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (271, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 277)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (272, N'https://media.vietskin.vn/media/da4ed826beba1417128c598f3f8fb381actimat-acm-sebionex-p39062.jpg', 278)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (273, N'https://media.vietskin.vn/media/0e813bea190c0b6dafffabe11751d552sebionexhydra.jpg', 279)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (274, N'https://media.vietskin.vn/media/19f3eabe86292230d876ad959fa8f60cSebionex.K_creme_v2.jpg', 280)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (275, N'https://media.vietskin.vn/media/fdcb7251ba483064a1956ccecc3f2b903D_Sebionex_Trio_v2.jpg', 281)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (276, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 282)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (277, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 283)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (278, N'https://media.vietskin.vn/media/c121408fff0b204c21d7548fd81a858fclearspot.jpeg', 284)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (279, N'https://media.vietskin.vn/media/c43e757dec9b2ad43db26c9843a29aa7medicated-acne-facial-scrub_1.png', 285)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (280, N'https://media.vietskin.vn/media/53d6d5e1f74118403a5912c980f71bf15.jpeg', 286)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (281, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 287)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (282, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 288)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (283, N'https://media.vietskin.vn/media/6a173a8b9d6f216f5b562b114f731f57CICASTIMSOOTHINGREPAIRCREAM_.jpg', 289)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (284, N'https://media.vietskin.vn/media/448de953ee07dedd194b5a7829a952cdAvene_Cicalfate_Repair_Cream.png', 290)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (285, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 291)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (286, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 292)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (287, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 293)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (288, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 294)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (289, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 295)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (290, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 296)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (291, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 297)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (292, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 298)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (293, N'https://media.vietskin.vn/media/daf34bb1bee2ccb138064239fa670309id30.jpeg', 299)
GO
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (294, N'https://media.vietskin.vn/media/3b541c83409b7078e285fad5844c8821gentle_rejuvenation_grande.jpg', 300)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (295, N'https://media.vietskin.vn/media/bbc68ea91f72c33f24a96eef676a884ckem-lam-sang-da-va-mo-nam-cong-nghe-adt-image-md-restoring-brightening-creme-with-adt-technology-tm.png', 301)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (296, N'https://media.vietskin.vn/media/a0f83a3f5eaaf0bbccb157b93316d2c3Công-dụng-của-kem-dưỡng-trắng-Sunfader-SPF-15.jpg', 302)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (297, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 303)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (298, N'https://media.vietskin.vn/media/ead3141171e1ae3fe678cb6f1dfacf06CLARILYS_NEW_DESIGN-600x855.jpeg', 304)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (299, N'https://media.vietskin.vn/media/a9140b67a9a70fe761c768ed3e5193051.jpg', 305)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (300, N'https://media.vietskin.vn/media/644961600497e2bd58f3463de1f34ff8Nước_hoa_hồng_Obagi_Nuderm_Toner_#2_(_cho_mọi_loại_da_).jpg', 306)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (301, N'https://media.vietskin.vn/media/df4ceff3e4f903338f0924e72f8c5971iluma-intense-bleaching-serum.png', 307)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (302, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 308)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (303, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 309)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (304, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 310)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (305, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 311)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (306, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 312)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (307, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 313)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (308, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 314)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (309, N'https://media.vietskin.vn/media/274b7f02dcbc9fc210fac6c3391c4f5adepiwhite_m.jpg', 315)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (310, N'https://media.vietskin.vn/media/3bc8f045bcb015e13f6f290d64b7e5e33476_image_prevention__daily_ultimate_protection_moisturizer_spf50.png', 316)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (311, N'https://media.vietskin.vn/media/05eaeb9b44ab219e8f398c1c21535b5ePrevention-Daily-Hydrating-Moisturizer-SPF-30.png', 317)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (312, N'https://media.vietskin.vn/media/c1b14a7244d4b9f3e73769b16c3a232cPREVENTION-PLUS-DAILY-MATTE-MOISTURIZER-SPF-32-600x600.jpg', 318)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (313, N'https://media.vietskin.vn/media/0f5a09c3967fcfcdf11cd81e2404a6b8IMAGE-Skincare-Restoring-Daily-Defense-Moisturizer-SPF-50-1.7-oz.jpg', 319)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (314, N'https://media.vietskin.vn/media/a8ca499016c45375c5dce4a8044df29735e0d766b5b965caa6324da1d02c815e.jpg', 320)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (315, N'https://media.vietskin.vn/media/64620239404ff8289d5c0617dd67205atải_xuống.jpg', 321)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (316, N'https://media.vietskin.vn/media/57c4db5f83a55f01f6fe718c263d6d28kem-chong-nang-obagi-sun-shield-matte-broad-spectrum-spf-50-orchard.vn_.jpg', 322)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (317, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 323)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (318, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 324)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (319, N'https://media.vietskin.vn/media/51a6c0d0db2e4c742289b99c6c29d3fb67b4e680128f149cc9739e84deb3a3be.jpg', 325)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (320, N'https://media.vietskin.vn/media/a0f83a3f5eaaf0bbccb157b93316d2c3Công-dụng-của-kem-dưỡng-trắng-Sunfader-SPF-15.jpg', 326)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (321, N'https://media.vietskin.vn/media/10477846b11abeb5c91901f48ef51c37IMG_8634-.jpg', 327)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (322, N'https://media.vietskin.vn/media/735c6ca4d831d0e180c49fa266044ba5imgpsh_fullsize_anim_0bffa7afd5a84c0aa4302149c59fed37_master.jpg', 328)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (323, N'https://media.vietskin.vn/media/058039233c379c8ba53c20a871f5a766sebionexmattifying.jpg', 329)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (324, N'https://media.vietskin.vn/media/ffa302e43c25e77b4f8e7bf0fef4d618sesitelialmspf50.jpg', 330)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (325, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 331)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (326, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 332)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (327, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 333)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (328, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 334)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (329, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 335)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (330, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 336)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (331, N'https://media.vietskin.vn/media/3b33c16c9703ac411b19a7b1862cd350Gammaphil125.jpg', 337)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (332, N'https://media.vietskin.vn/media/7f589008131f5a8bd36a6eb22cb70112Gammaphil125.jpg', 338)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (333, N'https://media.vietskin.vn/media/7adc44dcb9f7ded70d626b025fc76b0aGammaphil500.jpeg', 339)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (334, N'https://media.vietskin.vn/media/5aa5cfad351d74dbfdb21e41605d3049uriage-hyseac-gel-nettoyant-cleansing-gel-gel-rua-mat-cho-da-nhon-mun-hon-hop.jpg', 340)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (335, N'https://media.vietskin.vn/media/574b4e8b8981920514a896baeb0c1de5sfoaminggel.jpeg', 341)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (336, N'https://media.vietskin.vn/media/5b617d8f45543a141b6297445e5e8555sesitelialcleansinggel.png', 342)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (337, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 343)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (338, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 344)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (339, N'https://media.vietskin.vn/media/aa3e6ae8e2905e3a521744313e191e71ormedic-balancing-facial-cleanser-1.jpg', 345)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (340, N'https://media.vietskin.vn/media/d594fefc8db54028e12f11d72ba32e4d00016266-dermacos-anti-acne-deep-cleansing-gel-150ml-7730-5c8b_large.jpg', 346)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (341, N'https://media.vietskin.vn/media/0aff6f51492a8146c531fd92bf3aa648total_facial_cleanser.png', 347)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (342, N'https://media.vietskin.vn/media/57982c16824d4d157aad0cf4bdd5302ctotal_facial_cleanser.png', 348)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (343, N'https://media.vietskin.vn/media/c43e757dec9b2ad43db26c9843a29aa7medicated-acne-facial-scrub_1.png', 349)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (344, N'https://media.vietskin.vn/media/d535c08b311dff12848bbfd1f37299a7VITALCHydratingFacialCleanser.png', 350)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (345, N'https://media.vietskin.vn/media/136e23e0154417499514fb4ecb413bb4Gentle-purifying-cleansing-gel-100ml.jpg', 351)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (346, N'https://media.vietskin.vn/media/676760f6ca2cf8e554e964818afec195the-max-stem-cell-facial-cleanser_2.png', 352)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (347, N'https://media.vietskin.vn/media/bf2501ab6728dbcd0b025a3ca5621772clear-cell-sayicylic-cleanser_1.png', 353)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (348, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 354)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (349, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 355)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (350, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 356)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (351, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 357)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (352, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 358)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (353, N'https://media.vietskin.vn/media/9c7cee23cedae7299d6ea9b4700c6ad98.jpg', 359)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (354, N'https://media.vietskin.vn/media/bb3e1a5a05958b3d9d65bcfc89c0366batolys-soin-emollient.jpg', 360)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (355, N'https://media.vietskin.vn/media/af6ded7ef2731834b7b01f717a7eee20Kem-Dưỡng-Ẩm-Ceradan-1-600x400.png', 361)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (356, N'https://media.vietskin.vn/media/d86f36d22baa9698e57f8df2b51b5d25Latopic_Face_and_Body_Cream_75ml', 362)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (357, N'https://media.vietskin.vn/media/a00bba7c67c61b704bb723348af8499dXEROlys+Soinemollientlongueduree_LysaSkin.jpg', 363)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (358, N'https://media.vietskin.vn/media/84169c1e8200eb120c2bc18a0a518712xerolys10.jpeg', 364)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (359, N'https://media.vietskin.vn/media/448ef3a6a8de0bb11157df9b03f89a67xerolys-5-new-design_redim.jpg', 365)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (360, N'https://media.vietskin.vn/media/883b20fc0962068c42438005393c144dxerolys-50-40ml.jpg', 366)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (361, N'https://media.vietskin.vn/media/9a2190b67477b4f49e96eba87f6d3df4xerolysvisage_1000x1000-600x855.jpg', 367)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (362, N'https://media.vietskin.vn/media/3b541c83409b7078e285fad5844c8821gentle_rejuvenation_grande.jpg', 368)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (363, N'https://media.vietskin.vn/media/1cc9a4b3689b92c8185ff32fb67f5947ageless-total-repair-creme_5_.png', 369)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (364, N'https://media.vietskin.vn/media/44cc4a9d084bc0580602f6f473875562ageless-total-repair-creme_5_.png', 370)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (365, N'https://media.vietskin.vn/media/4cbcff98c1c5c9f2d43f0737003ebe9ekem-duong-am-tre-hoa-da-ban-dem-Obagi-Gentle-Rejuvenation-Advanced-Night-Repair.jpg', 371)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (366, N'https://media.vietskin.vn/media/53e1c9bce9b56cd2bad677321d44aed8farmona_dermacos_anti_acne_matting_cream_50ml.jpeg', 372)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (367, N'https://media.vietskin.vn/media/a0f83a3f5eaaf0bbccb157b93316d2c3Công-dụng-của-kem-dưỡng-trắng-Sunfader-SPF-15.jpg', 373)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (368, N'https://media.vietskin.vn/media/630853529bfa5060c2c44c228da6caccmed15.png', 374)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (369, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 375)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (370, N'https://media.vietskin.vn/media/5a9afedcc8113480eef3ea078f434e50kem-phuc-hoi-va-tre-hoa-da-image-md-restoring-youth-repair-creme-with-adt-technology-tm.png', 376)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (371, N'https://media.vietskin.vn/media/448de953ee07dedd194b5a7829a952cdAvene_Cicalfate_Repair_Cream.png', 377)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (372, N'https://media.vietskin.vn/media/6213ad605b84ee5c41aaba95a0d4dc75kem-ziaja-med3%.png', 378)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (373, N'https://media.vietskin.vn/media/d9d8bc34e89a10bd593b49d950726f3f3.jpeg', 379)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (374, N'https://media.vietskin.vn/media/0e813bea190c0b6dafffabe11751d552sebionexhydra.jpg', 380)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (375, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 381)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (376, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 382)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (377, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 383)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (378, N'https://media.vietskin.vn/media/f4b9903403ed2ea3f598d7102e83b141lipid-extra-kem-duong-lam-diu-giam-ngua-cho-da-kho-nhay-cam-01.jpg', 384)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (379, N'https://media.vietskin.vn/media/23294ee7ea0220cc7f97eef77545d8dbecr-05-021-00c9f88e-4b6b-45b5-a917-38bc065a651d.jpg', 385)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (380, N'https://media.vietskin.vn/media/47f8d6ed0c0c6be06d8b96b58269a6cdBộ_dưỡng_trắng_da_giảm_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Dry.jpg', 386)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (381, N'https://media.vietskin.vn/media/65e5fa4e94d7c9c3f5cc85b1c7814654Bộ_dưỡng_trắng_da_trị_thâm_Obagi_Nu-Derm_Fx_Starter_System_Norm-Oily.jpg', 387)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (382, N'https://media.vietskin.vn/media/345be091ef77ea2d90a58d1e7bdb93edBộ_dưỡng_trị_nám_cho_da_dầu_Obagi_Nu-Derm_System_for_Normal_to_Oily_Skin.jpg', 388)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (383, N'https://media.vietskin.vn/media/20b6c7aad92ffbc14783ce4309e0810fBộ_dưỡng_trị_nám_cho_da_khô_Obagi_Nu-Derm_System_for_Normal_to_Dry_Skin.jpg', 389)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (384, N'https://media.vietskin.vn/media/87233deaa60880e856b42b9e3170fb61Du_trị_gàu.jpg', 390)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (385, N'https://media.vietskin.vn/media/61adfd7b7299eaf6752ddfba30e9c0ceSerum-ngăn-ngừa-rụng-tóc-Novophane-Lotion-ACM-Ipharma.jpg', 391)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (386, N'https://media.vietskin.vn/media/7adcc276945b3ed4935ad5cf30c0ae79IMAGE-SKINCARE-Vital-C-Hydrating-Water-Burst-600x600.jpg', 392)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (387, N'https://media.vietskin.vn/media/0bf93318ed6a05a09aa175bea16c160erestoring-serum-oil-free-1.jpg', 393)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (388, N'https://media.vietskin.vn/media/df4ceff3e4f903338f0924e72f8c5971iluma-intense-bleaching-serum.png', 394)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (389, N'https://media.vietskin.vn/media/6ea287b51edb8e0918a1d881e741fe1ffacial_01_42a81240508a40618e8d61ac6a93696c_master.jpg', 395)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (390, N'https://media.vietskin.vn/media/d65362d02c35a0e3ada4bbced2fcb42aObagi-Gentle-Rejuvenation-Skin-Rejuvenation-Serum.jpg', 396)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (391, N'https://media.vietskin.vn/media/4fa79e32fe3c656008c9ad70460b2f73oa_da__mo_tham_nam_suzanobagimd_retivance__skin_rejuvenating_complex-2_88bea53d2e5e458a819dad0915487898_master.jpg', 397)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (392, N'https://media.vietskin.vn/media/3e5c64ac0744b5900cee01b6b2bd4e87serum-tre-hoa-da-image-the-max-stem-cell-serum-600x600.jpg', 398)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (393, N'https://media.vietskin.vn/media/6b10adf3ff86aae70cc2420ce1076727Set_trị_nám_mini_cho_da_dầu_Obagi_Nu-Derm_Travel_Kit_Normal-Oily.jpg', 399)
GO
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (394, N'https://media.vietskin.vn/media/41bcc2f5c2321387351eca27ed5f1736Set_trị_nám_mini_cho_da_khô_Obagi_Nu-Derm_Travel_Kit_Normal-Dry.jpg', 400)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (395, N'https://media.vietskin.vn/media/6b6c5de262c4cb8934bb09290136d486image-ageless-hyaluronic6-filler-a-109n.jpg', 401)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (396, N'https://media.vietskin.vn/media/c3fa4566eb552aeb6e0c2f2bd9a4334dIMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600.jpg', 402)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (397, N'https://media.vietskin.vn/media/c1ae048c3f0f517f99cf8aeec0558cbd3-IMAGE-SKINCARE-Ageless-Total-Pure-Hyaluronic-Filler-600x600_(1).jpg', 403)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (397, N'https://media.vietskin.vn/media/747be8b89f0243a6dd6287f48b3489412-AGELESS-TOTAL-PURE-HYALURONIC-FILLER.jpg', 404)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (397, N'https://media.vietskin.vn/media/1738ed1adf078a9eddaca32ba8daecd51-hyaluronic-acid.jpg', 405)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (398, N'https://media.vietskin.vn/media/1d6a650ff28323c642f253ecbabc5e34ATOLYSgel_.jpg', 406)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (399, N'https://media.vietskin.vn/media/971efc2596b59e96a6c725cb0a44fe5dtay-te-bao-chet-lam-sang-da-iluma-intense-brightening-exfoliating-powder-600x603.png', 407)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (400, N'https://media.vietskin.vn/media/31d27e13b852954ea09b2606f5124c79acm-cicastim-arnica-soothing-cream-20-ml-rahatlatici-bakim-kremi-z.jpg', 408)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (401, N'https://media.vietskin.vn/media/cff193ca5417985297bd5e4ad9f38eefmed_300.jpeg', 409)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (402, N'https://media.vietskin.vn/media/47c1955139f62041e0d576b1ca34d8e0bath.jpeg', 410)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (403, N'https://media.vietskin.vn/media/4d15134b208f879c2d42941735760d78gel.jpg', 411)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (404, N'https://media.vietskin.vn/media/4897d0b471ed529b6962e15014638a3aObagi-Blue-Peel-Radiance-Kit.jpg', 412)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (405, N'https://media.vietskin.vn/media/83ccb1b7d090392bbedaf7b9539a6487INTERAPOTHEKGELDEBANOALOEVERA(GELIACHIẾTXUẤTLÔ_HỘI).jpeg', 413)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (406, N'https://media.vietskin.vn/media/c884614e8c0438516edbe765d5212610download.jpeg', 414)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (407, N'https://media.vietskin.vn/media/408447872875b2c31da311ab21755d5erskabidpniaoy.jpg', 415)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (408, N'https://media.vietskin.vn/media/b1f3435e5bdf2beef7ec6202ad9bab8ainterapothek_gel_spa_thermal_750_ml159754_.jpg', 416)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (409, N'https://media.vietskin.vn/media/d59cd19272ee34ac016ae7d7d6b96929Complex-spf-20-final.jpg', 417)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (410, N'https://media.vietskin.vn/media/7e5831994611a7fa1d2fcf429dec35fbkem-chong-nang-obagi-sun-shield-matte-premium-spf50.jpg', 418)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (411, N'https://media.vietskin.vn/media/e792d1f2ea5ec1cb200e7af2a4fcb21csuzan50_c4e45d6612de4b488dd9e37e2f481e7a.jpg', 419)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (412, N'https://media.vietskin.vn/media/51a6c0d0db2e4c742289b99c6c29d3fb67b4e680128f149cc9739e84deb3a3be.jpg', 420)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (413, N'https://media.vietskin.vn/media/29f6986a9be10b1dddfc8b67bb0606c5ageless-total-eye-lift-creme_2_.png', 421)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (414, N'https://media.vietskin.vn/media/c51a262b0e7f05bb8bf2ae69f4c2bb38ageless-total-eye-lift-creme_2_.png', 422)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (415, N'https://media.vietskin.vn/media/0be82c7260baaf786e7af862f98821cb1.jpg', 423)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (416, N'https://media.vietskin.vn/media/9377a2577056ca17dc49be11b050554fAGELESSTotalRetinolACrème.jpg', 424)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (417, N'https://media.vietskin.vn/media/d86f36d22baa9698e57f8df2b51b5d25Latopic_Face_and_Body_Cream_75ml', 425)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (418, N'https://media.vietskin.vn/media/d7ed272efe342c148569ee70e91fc7d7Avene_Xeracalm_AD_Cream_200ml.jpg', 426)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (419, N'https://media.vietskin.vn/media/76a802c70d90615eb76ec9bb23129bc76.png', 427)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (420, N'https://media.vietskin.vn/media/ac646e1563682a25f9a3d1ea0081594biluma-brightening-eye-creme.png', 428)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (421, N'https://media.vietskin.vn/media/10477846b11abeb5c91901f48ef51c37IMG_8634-.jpg', 429)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (422, N'https://media.vietskin.vn/media/735c6ca4d831d0e180c49fa266044ba5imgpsh_fullsize_anim_0bffa7afd5a84c0aa4302149c59fed37_master.jpg', 430)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (423, N'https://media.vietskin.vn/media/d2d12ccf4bdb46bcaf316dbc577bdc67i-conceal-flawless-foundation-spf30-kem-nen-che-khuyet-diem-28gr.jpg', 431)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (424, N'https://media.vietskin.vn/media/3101b3e927aecfadfb73af35dbc8c24cf6077968c549c59786da4383be91b7_master_c13d23072e8b4408837ab6bb7f87323c_1d3f7f989e484042ade3dffeb590dc87.jpg', 432)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (425, N'https://media.vietskin.vn/media/91c95c887295ba2708b12a49e4512c92Hydrating-Eye-Recovery-Gel-05.jpg', 433)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (426, N'https://media.vietskin.vn/media/f3767c887f580e8467f5f033336cba63kem-retinol-cong-nghe-adt-tre-hoa-da-mo-tham-nam-image-md-restoring-retinol-creme-with-adt-technology-tm.png', 434)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (427, N'https://media.vietskin.vn/media/cbe2594446b7ac26744bfa7990825fe3AGELESSTotalRetinolACrème.jpg', 435)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (428, N'https://media.vietskin.vn/media/448de953ee07dedd194b5a7829a952cdAvene_Cicalfate_Repair_Cream.png', 436)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (429, N'https://media.vietskin.vn/media/35478b3b2e6ee1a78920950eb3179a7975371_master.jpg', 437)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (430, N'https://media.vietskin.vn/media/9cb08ad1635685d506b7839496c2ff0275370.jpg', 438)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (431, N'https://media.vietskin.vn/media/f45938d1943cb5cf8567b5363fa96cf8lotion-dac-tri-danh-cho-co-the-obagi-keraphine-body-smoothing-lotion-jpg-1591604465-08062020152105.jpg', 439)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (432, N'https://media.vietskin.vn/media/7154b65cda28fc7b666adeb7e2b47e74obg-14-001-nd.jpg', 440)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (433, N'https://media.vietskin.vn/media/2a31590539ec23a4a447e81848e4ff8fOrmedic-Balancing-Gel-Masque-2-oz.jpg', 441)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (434, N'https://media.vietskin.vn/media/38a845e679c5d3072f8c18b12d6ed34aIMAGEMDRestoringOvernightRetinolMasque.jpg', 442)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (435, N'https://media.vietskin.vn/media/36ad684ba15cbfa73ad524a69baeda25rwine_beauty_1.1.jpeg', 443)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (436, N'https://media.vietskin.vn/media/0c5827359dafa4e96dccc3ca16d97384agelessovernightmasque.png', 444)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (437, N'https://media.vietskin.vn/media/566845dbe002089383f7587c2e287857agelessovernightmasque.png', 445)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (438, N'https://media.vietskin.vn/media/d764134337a3b869d83c264bcda81ed1mat-na-tre-hoa-vung-mat-flawless-rejuvenating-eye-pads.jpg', 446)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (439, N'https://media.vietskin.vn/media/c09fe0b45b578ba8f7f2e060d96e8c71Nhũ_tương_dưỡng_ẩm,_dịu_ngứa_da_dị_ứng,kích_ứng_toàn_thân_-_Latopic_Body_Emulsion', 447)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (440, N'https://media.vietskin.vn/media/189ffa39e32a8600f3dee5acc66686abnovophane-gelules_(1).jpg', 448)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (441, N'https://media.vietskin.vn/media/d9296f9d25b57524793781039784a6d1novophane-gelules.jpg', 449)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (442, N'https://media.vietskin.vn/media/5779444a7ec946ae440daf85faa5f597novoenergizing.jpg', 450)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (443, N'https://media.vietskin.vn/media/8010c15366f49b640491cf7c4c1a08f1kshampoo.jpg', 451)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (444, N'https://media.vietskin.vn/media/8125ee2e6dbd6736c6e5f3e0dc158154laboratoire-acm-novophane-p40828.jpg', 452)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (445, N'https://media.vietskin.vn/media/76801f7298727141466c8efa1de4e97cnovophane-ultra-nourishing-shampoo-711x663.png', 453)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (446, N'https://media.vietskin.vn/media/d2d9206f9c1494938bf0eac295ba7bc6urea750.jpeg', 454)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (447, N'https://media.vietskin.vn/media/fb7af6a1759177d10276125fdd2e77ceson-duong-moi-image-skincare-balancing-lip-enhancement-complex.png', 455)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (448, N'https://media.vietskin.vn/media/d84efe834a70e3a2c6b8aa642263fc18StanhomeBalanceShampoo.jpg', 456)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (449, N'https://media.vietskin.vn/media/4cd3b74fa81ecdccff42b6e789af9b33lipcare.jpg', 457)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (450, N'https://media.vietskin.vn/media/3bb83465f62d3163d214ad32f8869d501.png', 458)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (451, N'https://media.vietskin.vn/media/82733ecd64db932f85e72e76407c19f4clndau1.jpg', 459)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (452, N'https://media.vietskin.vn/media/81c81394567bc51dd5460b823839b946med_for_men.jpg', 460)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (453, N'https://media.vietskin.vn/media/593017cb210cbf14cebd985965125068med_for_women.jpeg', 461)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (454, N'https://media.vietskin.vn/media/14b3bd72a97e250d77c1595c993c5f08vital-c-hydrating-facial-oil.jpg', 462)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (455, N'https://media.vietskin.vn/media/0fd65d729e1e1b8041dea6c53d0a476fvitcolor.jpg', 463)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (456, N'https://media.vietskin.vn/media/6f6fde051475a9beab59e9021e8bd427vitex-gel.jpg', 464)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (457, N'https://media.vietskin.vn/media/b26ecfcea907dcb0b066462853f78a2evitixtabletsh30.jpg', 465)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (458, N'https://media.vietskin.vn/media/3c5935b1c43352b1c804ac6d502373e1Xịt_khoáng_-_Avene_Thermal_Spring_Water_150ml.jpg', 466)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (459, N'https://media.vietskin.vn/media/08a1d2d8499b78508f623063758793adAvène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 467)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (460, N'https://media.vietskin.vn/media/373e82205bd235ab0e58ed05c8a3b039Xịt_Khoáng_Avène_Thermal_Spring_Water_Spray_Mist_300ml.jpg', 468)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (461, N'https://media.vietskin.vn/media/5529b24cb04d6353fb4bb73dd9e58592csdacoban.jpg', 469)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (462, N'https://media.vietskin.vn/media/ef960fd16c49de6ec5a7e35b0c0ca97fdownload_(1).jpeg', 470)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (463, N'https://media.vietskin.vn/media/17e01afd161b950eea8e9948ee8eb3c7cover-3-1517310530.jpg', 471)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (464, N'https://media.vietskin.vn/media/ed67b03da5a9da9a7050471337fab0cda.jpg', 472)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (465, N'https://media.vietskin.vn/media/c55023f3feba67366a64fb62ddc4d1c4download_(2).jpeg', 473)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (466, N'https://media.vietskin.vn/media/cb86c9a82550057b1299d58472cc55c022.png', 474)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (467, N'https://media.vietskin.vn/media/6367d92a7505da1e0618f9084a4fe000tri-nam.jpg', 475)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (468, N'https://media.vietskin.vn/media/f53ad1fe54c1188c2094984a926c6f1dlieu-phap-anh-sang-ipl-2-630x418.jpg', 476)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (469, N'https://media.vietskin.vn/media/1f1904ff9a4539db77f35343b9056c19ong1372867653.jpg', 477)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (470, N'https://media.vietskin.vn/media/59b1f407d0c5c2f09095eabeaa438869peel-da-tao-song.jpg', 478)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (471, N'https://media.vietskin.vn/media/b92ebaf82f5101476f2c98019bc95666tiem-dieu-tri-nam-chuyen-sau-5-1-e1526187233795.jpg', 479)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (472, N'https://media.vietskin.vn/media/1c7a764dc3fa2ffd6556e2a32438f95fsafe_image-14-1.jpg', 480)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (473, N'https://media.vietskin.vn/media/1ffc08abeb745316a338ab938b6c5463photo-1-15208283808452076503944-15542258523541619729244.jpg', 481)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (474, N'https://media.vietskin.vn/media/7f76015cb97cf8752b6a54ec56a66a16cach-triet-long-chan-vinh-vien.jpg', 482)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (475, N'https://media.vietskin.vn/media/90ad81b0e7c77ab2f0e0bcbd5e5ac284600x320xtriet-long-mep-4.jpg.pagespeed.ic.N3Oc52M3kJ.jpg', 483)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (476, N'https://media.vietskin.vn/media/11247f9ae8a3c0754424a2e9107166db345202-triet-long-vinh-vien-opt-light-10-lan-sieu-nhanh-khong-dau-bh-3-nam-bong-spa-clinic.jpg', 484)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (477, N'https://media.vietskin.vn/media/dac2eff2a46ea8d17b8a5f8ccb848ebctriet-long-tay.jpg', 485)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (478, N'https://media.vietskin.vn/media/bbd57fab78964b71eb694c4136b49851artboard_30_db9d14af0d67497facac364ce6587410_grande.png', 486)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (479, N'https://media.vietskin.vn/media/73b1acc52ed5fffc73002a6d430a5ad71.png', 487)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (480, N'https://media.vietskin.vn/media/d2fbf9b935d22608636350e9a483cda31.jpeg', 488)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (481, N'https://media.vietskin.vn/media/b4f98d55e34b3448d9ae650edb3a732e1.jpeg', 489)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (482, N'https://media.vietskin.vn/media/ebd90535fac5ffc30fc7ed4cf340f26a1.webp', 490)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (483, N'https://media.vietskin.vn/media/125db2ffd3aec582901f1d355ed525431.jpg', 491)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (484, N'https://media.vietskin.vn/media/4ea40eaa039e8b9126e4b3213b1e3a2esalicylic-acid-trị-vảy-nến.jpg', 492)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (485, N'https://media.vietskin.vn/media/b83729a8f58a094ca4e27684afb9fbe8skinrocin-1.png', 493)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (486, N'https://media.vietskin.vn/media/5175a132070929ff78621c17f2846028sov15.jpg', 494)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (487, N'https://media.vietskin.vn/media/6e855837cc9f9134af719f72f1ebee10sov.jpg', 495)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (488, N'https://media.vietskin.vn/media/7179a2650423eacb69ca37ea76fc2062supi.jpg', 496)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (489, N'https://media.vietskin.vn/media/ab36eb0d0301b28d7043d4b4ae9e5f391.jpeg', 497)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (490, N'https://media.vietskin.vn/media/aa33bf50e440296d509c49e031d02886xamiol-gel-15g.jpg', 498)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (491, N'https://media.vietskin.vn/media/2b05d5bd6a103191f20f15cdb92db8c0Ce125.jpg', 499)
GO
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (492, N'https://media.vietskin.vn/media/d9faaf3e81839bc81faa59e96b8c9175Ce300.jpg', 500)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (493, N'https://media.vietskin.vn/media/4e4031a3c770384b51fe533e84c220ccCef.jpg', 501)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (494, N'https://media.vietskin.vn/media/b0aafc1af4d1deb61aa5ad70d674b718cetimed.png', 502)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (495, N'https://media.vietskin.vn/media/be7d82bc3c2ebc50270273e4f50340cccime.jpg', 503)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (496, N'https://media.vietskin.vn/media/0f38e931c57fadfe21899e46408ff4aacla10.jpg', 504)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (497, N'https://media.vietskin.vn/media/3b6b389b1183e101f63f25291581ec1cCon1.jpg', 505)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (498, N'https://media.vietskin.vn/media/bdaceb07e125e3cf0aa4044ca27a248b1.jpg', 506)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (499, N'https://media.vietskin.vn/media/7b4d45af4facc712e105db01ddb80d99dinpocef.jpg', 507)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (500, N'https://media.vietskin.vn/media/7cbb8932ccbb7961124fd6b3485b70c81.jpg', 508)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (501, N'https://media.vietskin.vn/media/3afd8c86acad0d09807dba6c3d564291doxycyclin.jpg', 509)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (502, N'https://media.vietskin.vn/media/8579dc0dd97c0791cb9cf081115b729fThuoc-Efferalgan-Codeine.jpg', 510)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (503, N'https://media.vietskin.vn/media/67f993527cbfb7c37d90a192504f10c4vien-nang-vitamin-e-enat-400-gia-bao-nhieu.jpg', 511)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (504, N'https://media.vietskin.vn/media/8615ccae0f5dce079dacf4e4b08c4231thuoc-epidolle_21-24519.jpg', 512)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (505, N'https://media.vietskin.vn/media/0f326f724ce0e335fe84b1cba447508eFARZINCOL_VI.jpg', 513)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (506, N'https://media.vietskin.vn/media/92f30a3326efac5c774218cae0f81a93FX.jpg', 514)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (507, N'https://media.vietskin.vn/media/14ab80913e82bd44f581baa3806b31d3fluconazol_150.jpg', 515)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (508, N'https://media.vietskin.vn/media/bca605190f7fc1a3582e78e9a66064edGadacal.jpg', 516)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (509, N'https://media.vietskin.vn/media/982d9f6eb4a6812c5d956a79cd1ad7f0Garosi.jpg', 517)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (510, N'https://media.vietskin.vn/media/1a69c6ca5f9c7ead9711043924d678baGoldesome_21-18319.jpg', 518)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (511, N'https://media.vietskin.vn/media/c49279dd819ded1e860045e277a3b055Acmolrine_-_Isotretinoin_20mg.jpg', 519)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (512, N'https://media.vietskin.vn/media/b13b3b601eaea80f2c80561ac46ee50d1.jpeg', 520)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (513, N'https://media.vietskin.vn/media/42b0583d7aef127bf3aca9caee0446a0acnotin10.jpg', 521)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (514, N'https://media.vietskin.vn/media/7c3484593ea0fabad18087fa6014e2aaacnotin_20.jpg', 522)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (515, N'https://media.vietskin.vn/media/30e9808ea7655e808d1e7998302b86b7acyclovir-400.jpg', 523)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (516, N'https://media.vietskin.vn/media/5a714c3fa2ff1f5bbf27b5730582712aAciclovic-Meyer-800.jpg', 524)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (517, N'https://media.vietskin.vn/media/5b4cd5ac4cf98df77ab646110b642cfethuoc-aerius_5mg.jpg', 525)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (518, N'https://media.vietskin.vn/media/9c1be45b5762dd857efa54ed68ab9a03thuoc-aleradin_14-16119.jpg', 526)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (519, N'https://media.vietskin.vn/media/8c713058477172a0544b127c09998b8ethuoc-Althax_9-22219.jpg', 527)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (520, N'https://media.vietskin.vn/media/48aa314038c8cdd713dc757c5d13929bAnaferon.jpg', 528)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (521, N'https://media.vietskin.vn/media/4de2d92c6ece06cbdd2a47d4c2ef3d79Arg.jpg', 529)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (522, N'https://media.vietskin.vn/media/04c433170793ea1fa21de9823fdfb55500000957-audocals-5mg-9662-5bff_large.jpg', 530)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (523, N'https://media.vietskin.vn/media/8531f97053741ca36145a87469bb2fe33606999augmentin500-3.jpg', 531)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (524, N'https://media.vietskin.vn/media/e201c95561a2ba489469e89cf993007700000967-augmentin-625mg-gsk-2x7-3769-6205_large.jpg', 532)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (525, N'https://media.vietskin.vn/media/d19705aceda08d7684d737edfb84e835axofen-50ml.jpg', 533)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (526, N'https://media.vietskin.vn/media/309c21494cadb0163379f18910f77240thuoc-azicine-250_22-181018.jpg', 534)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (527, N'https://media.vietskin.vn/media/7250e0985940483444c7cc40d92d7983Bilaxten.jpg', 535)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (528, N'https://media.vietskin.vn/media/64e0554d4e235568145f0635815126dfBrodicef_500_mg.jpg', 536)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (529, N'https://media.vietskin.vn/media/67963c7bb8aa40a0ea81a023a1748987C100''.jpg', 537)
INSERT [dbo].[Photos] ([product_id], [url], [id]) VALUES (530, N'https://media.vietskin.vn/media/2e5ffb7b30614fc074866f6a4aa6da4dCe500.png', 538)
SET IDENTITY_INSERT [dbo].[Photos] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (1, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (2, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (3, N'NT_40_LNQ', N'Image', 1, N'IIBEP', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder', N'bot tay te bao chet va lam trang da image iluma intense brightening exfoliating powder', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder được ứng dụng công nghệ hiện đại, các enzyme không chỉ loại bỏ bụi bẩn và dầu nhờn sâu tận chân lông mà còn duy trì độ ẩm cần thiết cho da lâu dài, giúp mang lại hiệu quả chống lão hóa da rõ rệt. Da mượt mà mà trắng sáng và sẵn sàng hấp thụ hoàn toàn các dưỡng chất từ tinh chất và kem dưỡng ở những bước chăm sóc kế tiếp. Đặc biệt, thành phần sản phẩm không gây nên tình trạng kích ứng da khi sử dụng thường xuyên, phù hợp với cả làn da nhạy cảm. Sau tẩy tế bào chết, làn da sẽ được kích thích tuần hoàn máu, tái tạo collagen, thúc đẩy sự đàn hồi, bạn gái sẽ cảm nhận được sự thay đổi rõ rệt như da trở nên mịn màng, bề mặt da và lỗ chân lông đảm bảo thông thoáng, sạch sẽ, từ đó ngăn chặn sự hình thành mụn hiệu quả.', N'Chai', CAST(1080000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (4, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (5, N'NT_40_LNQ', N'Khác', 1, N'DUS', N'Dermaton US', N'dermaton us', N'-Kem bôi dưỡng trắng mịn da, đem lại làn da luôn trắng hồng, mịn màng.
-Ngừa và trị tất cả các loại mụn trứng cá: mụn đầu đen, mụn đầu trắng, mụn kèm theo viêm bội nhiễm gây sưng tấy đau nhức
-Liền sẹo, ngừa vết thâm, ngừa tái phát mụn. Tẩy sạch bã nhờn
-Giảm bỏng rát trên bề mặt da khi dùng isotretinoin', N'Tuýp', CAST(67800 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (6, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP125', N'Gammaphil 125ml', N'gammaphil 125ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(59000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (7, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP150', N'Gammaphil 150ml', N'gammaphil 150ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(104000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (8, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP500', N'Gammaphil 500ml', N'gammaphil 500ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(250000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (9, N'NT_40_LNQ', N'Farmona', 1, N'f15', N'Gel chấm mụn chứa bùn hoạt tính Farmona - Dermacos Anti - acne anti - imperfection spot gel 15ml', N'gel cham mun chua bun hoat tinh farmona - dermacos anti - acne anti - imperfection spot gel 15ml', N'Gel chấm làm giảm và ngăn ngừa mụn. Làm dịu nhẹ các kích ứng, mẩn đỏ da. Giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Sản phẩm dành cho da bị mụn trứng cá.
Nhũ Bạc Colloidal Silver diệt khuẩn tới 650 loại khác nhau và kháng viêm mạnh, làm lành nhanh các tổn thương viêm do vi khuẩn, virut gây ra.
Tổ hợp AHA Lactic + Citric + Malic + Glicolic Acid ngăn ngừa biến đổi sắc tố da, hạn chế hình thành vết thâm, xám xỉn và loang lổ màu da, dưỡng ẩm, kích thích tái tạo da và ngăn ngừa hình thành sẹo.
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Đất sét Trắng Kaolin chứa gần 20 loại khoáng chất, có tác dụng diệt khuẩn, thanh lọc da, lành nhanh các tổn thương do mụn
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn.
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da.
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính.
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(247000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (10, N'NT_40_LNQ', N'Uriage', 1, N'UTI5', N'Gel rửa mặt cho da nhờn mụn, hỗn hợp- Uriage Hyseac Gel Nettoyant Cleansing Gel 150ml', N'gel rua mat cho da nhon mun, hon hop- uriage hyseac gel nettoyant cleansing gel 150ml', N'Công Dụng: Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp giúp làm sạch sâu bên trong da, điều hòa hoạt động tiết bã nhờn đồng thời làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

CHI TIẾT SẢN PHẨM 

Thể tích thực: 150ml

Xuất xứ: Pháp

Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel với thành phần làm sạch dịu nhẹ: Piroctone Olamine giúp làm sạch sâu bên trong da; Chiết xuất liễu anh thảo điều hòa hoạt động tiết bã nhờn và nước khoáng Uriage làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

Thành phần của Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

Hyseac Gel nettoyant: Giúp hỗ trợ nuôi dưỡng da và ngăn ngừa mụn chứng cá.
Nước khoáng Uriage: Có tác dụng giúp kháng khuẩn, cung cấp ẩm cho da và giúp làm dịu da.
Piroctone Olamine: Giúp làm sạch da, loại bỏ các tạp chất, bã nhờn và bụi bẩn trên da và giúp làm se khít lỗ chân lông.
Chiết xuất liễu anh thảo: Có tác dụng giúp hỗ trợ điều tiết bã nhờn và giúp ngăn ngừa mụn hiệu quả.
Thành phần khác: Aqua (Water), Sodium Laureth Sulfate, Peg-80 Glyceryl Cocoate, Sodium Cocoamphoacetate, Ppg-2 Hydroxyethyl Cocamide, Coco-glucoside, Glyceryl Oleate, Sodium Laureth-8 Sulfate, Sodium Methyl Cocoyl Taurate, Glycine, Sodium Chloride, Peg-2 Hydroxyethyl Coco-isostearamide, Citric Acid, Sodium Oleth Sulfate, Magnesium Laureth Sulfate, Parfum, Magnesium Laureth-8 Sulfate, Bepilobium Angustifolium Extract, Phenoxyethanol, Sodium Metabisulfite.

Công dụng của Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel

Giúp bỏ tạp chất, giảm sự tiết bã nhờn, thấm dầu dư thừa
Làm giảm độ sáng bóng, đặc biệt là ở trán, mũi, cằm
Làm săn các lỗ chân lông
Loại bỏ mụn đầu đen và mụn cám, kháng khuẩn, không làm khô da, cân bằng độ ẩm cho da
Giảm sự sản sinh ra mụn
Làn da trở săn chắc, khỏe mạnh và tươi tắn hơn.
Cách dùng Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

 Sử dụng vào buổi sáng và tối
Thoa một lượng nhỏ gel lên da mặt ẩm, massage nhẹ nhàng và rửa lại sạch với nước.
Đối tượng sử dụng Uriage Hyseac Gel Nettoyant Cleansing Gel

Sản phẩm thích hợp dùng cho da hỗn hợp và da nhờn mụn.
', N'Tuýp', CAST(401000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (11, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (12, N'iBeauty', N'Khác', 1, N'ID30', N'ID30 Gold USA', N'id30 gold usa', N'Viên uống trắng da, ngừa nám, chống oxi hoá, hạn chế lão hoá da, tăng khả năng chống ánh nắng mặt trời, tia UV, môi trường ô nhiễm. Ức chế sản sinh Melamin, dưỡng trắng an toàn. Ngăn ngừa lão hoá da, nám, tàn nhang, đốm đồi mồi, làm đẹp da giúp da sáng mịn', N'Hộp', CAST(800000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (13, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (14, N'NT_40_LNQ', N'Image', 1, N'ISPF32', N'Kem chống nắng dành cho da nhờn Image Skincare Prevention+ Daily Matte Moisturizer Oil Free SPF 32+', N'kem chong nang danh cho da nhon image skincare prevention+ daily matte moisturizer oil free spf 32+', N'Kem chống nắng dành cho da nhờn Image Skincare Prevention+ Daily Matte Moisturizer Oil Free SPF 32+ chuyên biệt cho da dầu mụn, giúp kiểm soát nhờn, dưỡng ẩm, cân bằng độ pH mà vẫn có thể cung cấp khả năng chống nắng phổ rộng với SPF 32+ giúp ngừa da hư tổn, sạm nám. Sản phẩm không gây bóng nhờn da, không gây mụn, cho da khô thoáng tự nhiên.
Là sản phẩm kem chống nắng thế hệ mới, không dầu, giúp da khô thoáng, mịn màng, không gây bưng bít lỗ chân lông, không gây mụn cho da. Sản phẩm với cơ chế vật lý, chống nắng phổ rộng giúp hình thành màng bảo vệ ngừa da hư tổn, sạm nám, xuất hiện đốm nâu, đồi mồi cho bề mặt da. Kem chống nắng Image Skincare còn giúp cung cấp độ ẩm cho da mềm mại, mịn màng, kết hợp công nghệ vi xốp giúp hấp thụ dầu thừa hiệu quả.
Ngoài ra, sản phẩm còn bổ sung nhiều thành phần dưỡng chất chất chống oxy hóa như Thiothaine, vitamin C hay trà xanh, có khả năng phá hủy gốc tự do để bảo vệ da, giúp ngừa thương tổn cho da một hiệu quả cao.', N'Tuýp', CAST(1300000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (15, N'NT_40_LNQ', N'Image', 1, N'RDDM', N'Kem chống nắng ngừa lão hoá IMAGE MD Restoring Daily Defense Moisturizer SPF 50 -new', N'kem chong nang ngua lao hoa image md restoring daily defense moisturizer spf 50 -new', N'Kem chống nắng ngừa lão hóa Restoring Daily Defense Moisturizer 50 sẽ là chống nắng quang phổ rộng giúp làm chậm đi quá trình lão hóa và bảo vệ làn da', N'Tuýp', CAST(1851000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (16, N'NT_40_LNQ', N'Obagi', 1, N'1160', N'Kem chống nắng Obagi Healthy Skin Protection SPF 35', N'kem chong nang obagi healthy skin protection spf 35', N'Kem Chống Nắng Obagi Healthy Skin Protection SPF35 là sản phẩm tới từ thương hiệu mỹ phẩm Obagi Medical nổi tiếng của Mỹ. Sản phẩm mang tới giải pháp hiệu quả dành cho chị em trong việc chăm sóc và bảo vệ da khỏi tia UVA, UVB. Đây là một trong số những nguyên nhân chính làm da nhanh chóng bị lão hóa và tăng sắc tố da. Hiện nay sản phẩm đang được chị em phụ nữ tin tưởng sử dụng với những đánh giá tích cực về chất lượng.

Thành phần Kem Chống Nắng Obagi Healthy Skin Protection SPF35


- Micronized Zinc Oxide

- Octinoxate

- Ngăn ngừa ảnh hưởng của tia UVA, UVB với da: Tia UVA, UVB phát ra từ ánh nắng mặt trời sẽ ảnh hưởng rất lớn tới da khiến da bị sạm đen, xuất hiện nhiều hắc tố trên da gây nên nám, tàn nhang, làm da bị lão hóa trước tuổi thậm chí có thể gây ra ung thư da. Sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF 35 khi đi ra ngoài sẽ giúp bạn ngăn chặn được những ảnh hưởng của tia UVA, UVB tới da

- Giúp da trắng sáng, mịn màng: Việc sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF35 thường xuyên còn giúp chăm sóc và dưỡng da hiệu quả, cho bạn một làn da trắng sáng, mịn màng là tâm điểm thu hút mọi ánh nhìn

- Bên cạnh đó sản phẩm còn có thể sử dụng làm lớp kem lót trang điểm

- Làm chậm quá trình lão hóa da: Với công thức Z-Cote giúp da nhanh chóng hấp thu kem chống nắng làm cho quá trình lão hóa trên da bởi các tác động từ môi trường diễn ra chậm hơn.

Hướng dẫn sử dụng Kem Chống Nắng Obagi Healthy Skin Protection SPF35

- Trước hết các bạn làm sạch da bằng sữa rửa mặt

- Sau đó thoa đều kem một lượng kem vừa đủ lên da rồi dùng tay vỗ nhẹ để kem thẩm thấu tốt hơn trên da

- Sử dụng trước khi rời khỏi nhà để đạt được hiệu quả cao nhất.

- Bảo quản sản phẩm ở nơi khô ráo, thoáng mát

- Đậy nắp lại ngay sau khi sử dụng.

- Sau khi hoạt động ngoài trời nhiều giờ các bạn nên làm sạch da và tiếp tục thoa Kem chống nắng Obagi Healthy Skin Protection SPF 35 để bảo vệ da hiệu quả.

Quy cách: 85g

Thương hiệu: Obagi

Xuất xứ: Mỹ

', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (17, N'NT_40_LNQ', N'Obagi', 1, N'1561', N'Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50', N'kem chong nang obagi mineral sunshield broad spectrum spf 50', N'Tính năng chống nắng vượt trội
Thành phần kem chống nắng chứa nhiều dưỡng chất cần thiết cho da như Zinc Oxide (giúp làm dịu da và ngăn chặn tia UVA / UVB), Titanium Dioxide (chống nắng khoáng sản cung cấp da khỏi tác hại của tia cực tím), Chiết xuất Tảo (hydrat và bảo vệ da khỏi các kích ứng), Vitamin E (ngăn chặn các gốc tự do có hại).



Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50 cho mọi loại da
Kem chống nắng thiên nhiên cho da nhạy cảm Obagi Sun Shield Mineral Broad Spectrum SPF 50 là kem chống nắng vật lý vừa giúp chống nắng da hiệu quả trước những tác động của tia UVA/UVB vừa cung cấp dưỡng chất dưỡng ẩm làm dịu da và khôi phục hàng rào bảo vệ da hiệu quả. Sản phẩm phù hợp với mọi loại da, kể cả làn da nhạy cảm nhất.

Lưu ý: Hiệu quả của sản phẩm/thuốc/điều trị… tùy thuộc vào tình trạng và đặc điểm riêng của mỗi người.

Chống nắng công nghệ tiên tiến với khả năng kháng tia hồng ngoại IR – đột phá mới của y khoa da liễu toàn cầu.
Chúng ta đã biết các loại kem chống nắng hiện nay có khả năng kháng tia cực tím từ ánh nắng mặt trời UVA và UVB, nhưng một phát hiện gần đây cho thấy tia hồng ngoại cũng là một nhân tố ảnh hưởng đến sắc tố da và hệ quả là sẽ làm cho làn da chúng ta giảm sắc tố và suy giảm sức đề kháng của da.

Công dụng:
– Kem chống nắng phổ rộng, bảo vệ da trước cả tia UVA và UVB
– Dưỡng ẩm cần thiết cho da
– Giúp phục hồi hàng rào bảo vệ da
– Làm trắng da từ bên trong.

Cách sử dụng:
– Sau khi sửa mặt sạch, lấy một lượng kem vừa đủ, apply lên mặt, cổ.
– Sử dụng hàng ngày để có chế độ chăm sóc da tốt nhất.

Dung lượng:
85g.

Thành phần:
Titanium Dioxide 4.9%, Zinc Oxide 4.7%
Water, Butyloctyl Salicylate, Cetyl Dimethicone, Dimethicone, Styrene/acrylates Copolymer, Trimethylsiloxysilicate, Dimethicone PEG-8 Laurate, Isohexadecane, Butylene Glycol, Polysorbate 60, Trisiloxane, Arachidyl Alcohol, Polyhydroxystearic Acid, Hydrated Silica, Ceramide 3, Ceramide 6-II, Ceramide 1, Niacinamide, Cholesterol, Phytosphingosine, PEG-100 Stearate, Glyceryl Stearate, Ascorbic Acid, Avena Sativa (Oat) Kernel Extract, Arachidyl Glucoside, Beeswax, Behenyl Alcohol, Benzyl Alcohol, Stearic Acid, Bisabolol, Dipotassium Glycyrrhizate, Ethylhexylgrycerin, Glycerin, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Pantothenic Acid/Yeasty Polypeptide, PEG-8, Xanthan Gum, Polyaminopropyl Biguanide, Polymethyl Methacrylate, Alumina, Potassium Sorbate, Retinyl Palmitate, Sodium Lauroyl Lactylate, Carbomer, Tocopheryl Acetate, BHT, Disodium EDTA, Methicone, Methylisothiazolinoine, Triethoxycaprylylsilane.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (18, N'NT_40_LNQ', N'Obagi', 1, N'1156', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50', N'kem chong nang obagi sun shield matte broad spectrum spf 50', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. Công thức mỏng nhẹ cung cấp chống nắng phổ rộng và thấm nhanh trên da tạo lớp finish lì và không nhờn dính. Vitamin C giúp da trắng sáng hơn, săn chắc và chống lại các gốc oxi hóa tự do.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.
- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.
- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.
- Đem lại cho bạn làn da mịn màng tươi sáng.
- Sản phẩm thích hợp với mọi loại da.

Thành phần:
Hoạt chất: Homosalate 10%, Octisalate 5%, Zinc Oxide 16.5%

Water (Aqua), C15-19 Alkane, Octyldodecyl Neopentanoate, Polymethylsilsesquioxane, Sorbitan Olivate, Silica, Polyglyceryl-6 Polyrininoleate,Sodium Chloride, Xanthan Gum, Glycerin, Hydroxyacetophenone, Disodium EDTA, 1,2-Hexanediol, Caprylyl Glycol, Sodium Hydroxide, Triethoxycaprylsilane, Polyhydroxystearic Acid, Disteardimonium Hectorite, Polyglyceryl-2 Isostearate, Euphorbia Cerifera (candelilla) Wax, Beeswax,
Dimethicone.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da, dùng ban ngày. Trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (19, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (20, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 19, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (21, N'NT_40_LNQ', N'Obagi', 1, N'1155', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40', N'kem chong nang vat ly suzanobagimd physical defense broad spectrum spf 40', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường.

Công dụng:

- Bảo vệ da bằng Titanium Dioxide và Zinc Oxide với chỉ số PA ++++
- Chống tia UVA,UVB, HEV, VIS, IR 
- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo.
- Mịn nhẹ trên da, không đóng thành vệt.
- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi.
- Bổ sung aloe vera làm dịu viêm và đỏ.
- Không gây hại tới rạn san hô khi tắm biển.

Thành phần:

Active: Titanium Dioxide (4.5%), Zinc Oxide (12.8%)

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Olerzcea Italica (Broccoli) Exrtact

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 19, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (22, N'NT_40_LNQ', N'Image', 1, N'TELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Creme', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (23, N'NT_40_LNQ', N'Image', 1, N'ATELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (24, N'NT_40_LNQ', N'Image', 1, N'ATRAC', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme', N'kem dac tri lao hoa ageless total retinol a creme', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo ', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 19, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (25, N'NT_40_LNQ', N'Ceradan', 1, N'C30g', N'Kem Dưỡng Ẩm Ceradan 30g', N'kem duõng ảm ceradan 30g', N'Ceradan là liệu pháp dưỡng ẩm dùng trong trường hợp da khô, da kích ứng, nhạy cảm. Ceradan bổ sung cách thành phần tự nhiên của da giúp phục hồi hàng rào bảo vệ da và giảm sự mất nước qua da.  Ceradan bổ sung lipid sinh lý là Ceramide, Acid béo tự do, Cholesterol với tỉ lệ tối ưu 3:1:1, cho lớp sừng của da giúp xây dựng, sửa chữa hàng rào bảo vệ của da (bệnh nhân Chàm thể tạng thường bị khiếm khuyết hàng rào bảo vệ da).
Chứa ceramide vượt trội – là thành phần chiếm tỉ lệ cao trong lipid gian bào (bệnh nhân Chàm thể tạng thường thiếu).
Glycerin trong Ceradan có tác dụng dưỡng ẩm da.
Điều chỉnh độ pH ở trong khoảng 4- 6, làm phục hồi màng acid bảo vệ da.
Ceradan giúp gắn kết các tế bào sừng có vai trò như lớp vữa, tạo thành hàng rào bảo vệ vững chắc.', N'Tuýp', CAST(254000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 19, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (26, N'NT_40_LNQ', N'Cetaphil', 1, N'Kem Dưỡng Ẩm Cetaphil Moisturizing Cream', N'Kem Dưỡng Ẩm Cetaphil Moisturizing Cream', N'kem duong am cetaphil moisturizing cream', N'Sản phẩm được các chuyên gia da liễu bào chế với thành phần giúp da mềm mại, không khô, nứt nẻ dành cho làn da. Sản phẩm chiết xuất 100% tự nhiên không chứa kiềm, không gây kích ứng cho da, ngay cả với làn da nhạy cảm, mang lại hiệu quả chăm sóc da tốt với cả vùng da mặt và vùng da toàn thân.', N'Tuýp', CAST(183000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (27, N'NT_40_LNQ', N'Obagi', 1, N'1133', N'Kem dưỡng làm dịu da Obagi Gentle Rejuvenation Skin Calming Cream', N'kem duong lam diu da obagi gentle rejuvenation skin calming cream', N'Obagi Gentle Rejuvenation Skin Calming Cream cải thiện tình trạng da trong quá trình bắt đầu lão hóa, đồng thời cung cấp độ ẩm sâu cho da khô và da nhạy cảm. Các yếu tố tăng trưởng từ thực vật là kinetin và zeatin cũng giúp giảm dấu hiệu tổn thương từ ánh nắng mặt trời, bao gồm nếp nhăn và vết thâm nám. Kem cũng giúp giảm ngứa rát và tình trạng da bị đỏ.

Công dụng:

Cung cấp độ ẩm và nước cho da
Giảm dấu hiệu lão hóa
Giảm nếp nhăn, thâm nám
Giảm thiểu kích ứng da và đỏ
Thích hợp cho da thường đến da khô, kể cả da nhạy cảm  và sau trị liệu
Thành phần nổi bật:

- Kinetin tăng cường khả năng giữ ẩm của da

- Zeatin cải thiện làn da thô ráp, khiến da đều màu và mềm mại hơn

Thành phần chi tiết:

Water (Aqua)​,​ Glyceryl Stearate​,​ Propylene Glycol​,​ Octyldodecyl Myristate,​ Stearic Acid​,​ Cetyl Alcohol​,​ PEG-12 Glyceryl Dimyristate,​ Stearyl Alcohol​,​ Lactobacillus Ferment,​ Glycine Soja (Soybean) Sterols​,​ Phenoxyethanol​,​ Laureth-23​,​ Dimethicone​,​ Carbomer​,​ Tocopheryl Acetate​,​ Ethoxydiglycol​,​ Sodium Hydroxide​,​ Ethylhexylglycerin​,​ Kinetin​,​ Zeatin​,​ Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate​,​ Disodium EDTA​,​ Panthenol​,​ Citric Acid​,​ Ascorbic Acid​,​ Hydrolyzed Elastin​,​ Soluble Collagen​,​ Aloe Barbadensis Leaf Juice​,​ Hydrochloric Acid.

Hướng dẫn sử dụng:

Cho một lượng vừa đủ vào lòng bàn tay, thoa lên da mặt và cổ vào mỗi sáng và tối hoặc theo hướng dẫn của bác sĩ.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (28, N'NT_40_LNQ', N'Obagi', 1, N'1134', N'Kem dưỡng phục hồi da ban đêm Obagi Gentle Rejuvenation Advanced Night Repair', N'kem duong phuc hoi da ban dem obagi gentle rejuvenation advanced night repair', N'Công dụng:
Obagi Gentle Rejuvenation Advanced Night Repair là một loại kem dưỡng ban đêm để phục hồi da. Sử dụng hàm lượng cao peptide, kinetin và zeatin để cải thiện làn da. Những thành phần này được chuyển sâu vào da mịn nếp nhăn ngoài giảm bớt những điểm sậm màu. Các thành phần khác làm việc với kinetin và zeatin để đảm bảo làn da cảm thấy thoải mái và khỏe mạnh. Kem này cũng có kết quả làm dịu cho những người có tấy đỏ và kích thích như đỏ da. Obagi Gentle Rejuvenation Advanced Night Repair giúp ngăn ngừa các dấu hiệu sớm của lão hóa và hỗ trợ giảm nếp nhăn. Nó được khuyến khích cho nhạy cảm, khô.

Thành phần:
Purified Water, Pentavitin (Saccharide Isomerate), Prunus Amygdalus Dulcis (Sweet Almond Oil), Cetyl Alcohol, Capric Caprylic Triglycerides, Palmitoyl Tripeptide-5, Glycerin, PEG-20 Methyl Glucose Sesquistearate, Simmondsia Chinensis (Jojoba Seed Oil), Ceramide III, Ceramide IIIB, Ceramide VI, Ceramide I, Phytosphingosine, Carbomer, Phenoxyethanol, Caprylyl Glycol, Hexylene Glycol, Diethylene Glycol Monoethyl Ether, Vitamin E, Cholesterol, Kinetin-Zeatin Complex 0.1%, Tetrasodium EDTA, Allantoin, Butylated Hydroxytoluene, Hyaluronic Acid.

Cách sử dụng:
Sau khi làm sạch da, thoa đều Obagi Gentle Rejuvenation Advanced Night Repair lên vùng mặt và cổ, massage nhẹ nhàng cho sản phẩm được hấp thụ hoàn toàn.

Dung lượng:
50g.

', N'Lọ', CAST(2300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (29, N'NT_40_LNQ', N'Farmona', 1, N'F50', N'Kem giảm bóng nhờn, ngừa mụn Farmona - Dermacos Anti - Acne Matting Cream 50ml', N'kem giam bong nhon, ngua mun farmona - dermacos anti - acne matting cream 50ml', N'Làm dịu nhẹ các kích ứng, mẩn đỏ da. Dưỡng ẩm và dưỡng da, giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Làm giảm bóng nhờn, làm giảm mụn và ngăn ngừa mụn. Chống nắng, giúp bảo vệ da trước tia cực tím và trước tác nhân có hại bên ngoài (bụi, ô nhiễm môi trường). Da trở lên mịn màng, khô thoáng cả ngày. Sản phẩm dành cho da dầu và da bị mụn trứng cá.
Phức hợp chống bóng nhờn Mattewax hạn chế tiết bã nhờn và điều hòa hoạt động tuyến bã nhờn.
Phim chống nắng UVA/UVB Titanium Dioxide
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Bơ Lô Hội Aloe Barbadensis Leaf Extract chứa nhiều loại Glicoside Aloin, Aloinozide A & B, các Polisacharide, axit amin, vitamin  C, khoáng chất, … chống viêm, khử trùng, củng cố và gia tăng hệ miễn dịch cho da, làm se mụn và thúc đẩy quá trình lành mụn, làm mềm da và kích thích tái tạo da 
Bơ & Dầu Jojoba Simmondsia Chinensis Butter and Oil  giàu axit Eikozen. Làm sạch hoàn toàn bã nhờn và dầu dư thừa trên da, hạn chế tối đa sự hình thành mụn trứng cá và mụn đầu đen. Dễ dàng thấm sâu vào da, bảo vệ da trước các tác nhân có hại và kích thích tái tạo da. 
Nguyên tố vi lượng Mg + Kẽm + Đồng + Sắt từ Nấm men tự nhiên Saccharomyces Silicon + Magnesium+Copper+Zinc+Iron Ferment  hỗ trợ các hoạt động tế bào, giúp loại bỏ các vấn đề về da. 
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA 
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn. 
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da. 
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính. 
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), 0, N'1575392400', N'1575565199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (30, N'NT_40_LNQ', N'Image', 1, N'RBC', N'Kem làm sáng da và mờ nám IMAGE MD Restoring Brightening  Crème With ADT Technology(tm) ', N'kem lam sang da va mo nam image md restoring brightening creme with adt technology(tm)', N'Kem làm sáng da và mờ nám công nghệ ADT Image MD Restoring Brightening Crème With ADT Technology TM có tác dụng ngăn ngừa dấu hiệu lão hóa da, ức chế sản xuất melanin để hình thành nám, đồi mồi trên bề mặt. Không những thế, hợp chất này còn ngăn ngừa sự rối loạn sắc tố da, cải thiện da đen sạm, góp phần làm mờ và loại bỏ nám một cách hiệu quả.', N'Hộp', CAST(3496000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (31, N'NT_40_LNQ', N'Image', 1, N'IIBEC', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème', N'kem lam sang da vung mat image iluma intense brightening eye creme', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème phối hợp các hoạt chất làm trắng sáng da mới theo công thức độc quyền của Image Skincare, mang đến giải pháp cải thiện hiệu quả các dấu hiệu xuống cấp vùng mắt như: bọng mắt, nếp nhăn, thâm quầng, trả lại khuôn mặt vẻ tươi sáng và đôi mắt tinh anh. Công nghệ Vectorize độc quyền của Image Skincare chứa các phân tử hình cầu sẽ len lỏi qua lỗ chân lông, thấm đến tận lớp hạ bì, phóng thích các hoạt chất tránh sự hao hụt hay bay hơi trên bề mặt da, mang đến hiệu quả chống lão hoá và làm sáng da vùng mắt đến 48 giờ.
Đặc biệt, các peptide chiết xuất từ tự nhiên trong Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème sẽ đi liên kết với một số tế bào nào đó và gửi tín hiệu để các tế bào này sản xuất ra collagen mới. Điều này mang tới tác dụng cải thiện rõ rệt vùng da quanh mắt thêm căng mịn, đàn hồi, cho đôi mắt trẻ trung, linh động, rạng ngời.', N'Chai', CAST(1880000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (32, N'NT_40_LNQ', N'Obagi', 1, N'1115', N' Kem làm trắng da Obagi Nuderm Sunfader SPF 15 - 57g', N'kem lam trang da obagi nuderm sunfader spf 15 - 57g', N'Obagi Nu-Derm Sunfader SPF 15 chứa hỗn hợp thành phần độc đáo giúp làm trắng sáng vùng da bị tăng sắc tố và bảo vệ da khỏi tổn hại từ ánh nắng. Octinoxate và oxybenzone cung cấp độ bảo vệ SPF 15, ngăn cản lão hóa từ ánh nắng. 

Ngoài chỉ số chống nắng SPF, Obagi Sunfader còn chứa 4% hydroquinone, thành phần vàng trong điều trị nám. Sunfader thẩm thấu mức độ tại chỗ giúp giảm đốm nâu, tàn nhang vô cùng hiệu quả.

Obagi Nu-Derm Sunfader chứa 4% hydroquinone và SPF 15 là giải pháp lý tưởng cho làn da cần đặc trị đốm nâu, tàn nhang, tăng sắc tố. Sự kết hợp kép giữa thành phần trị nám và chống nắng cho kết quả tốt nhất, cho da mịn màng, rạng rỡ, đồng màu và săn chắc.

Sử dụng kem chống nắng riêng biệt là cần thiết khi mức độ tiếp xúc với tia UV cao.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban ngày.

Thành phần
7.5% Octinoxate, 5.5% Oxybenzone, 4% Hydroquinone.', N'Lọ', CAST(2200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (33, N'NT_40_LNQ', N'Obagi', 1, N'1159', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Cool)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (cool)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Cool bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn, không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g


Active ingredients:

Homosalate 10%, Octinoxate 7.5%, Titanium dioxide 3.18%, Zinc oxide 5% 

Inactive ingredients:

Water, butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, polyglyceryl-10 pentastearate, glyceryl stearate, PEG-100 stearate, butylene glycol, pentylene glycol, behenyl alcohol, PEG-40 stearate, dimethicone, physalis angulata extract, algae extract, glycerin, iron oxides, phenoxyethanol, sodium stearoyl lactylate, polyhydroxystearic acid, mannitol, mica, hydroxyethyl acrylate/sodium acryloyldimethyl taurate copolymer, citric acid, squalane, alumina, stearic acid, xanthan gum, calcium aluminum borosilicate, diatomaceous earth, sodium polyacrylate, disodium EDTA, synthetic fluorphlogopite, polysorbate 60, ethylhexylglycerin, zinc sulfate, silica, chlorphenesin, tetrahexyldecyl ascorbate, tin oxide, tocopherol

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Cool: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (34, N'NT_40_LNQ', N'Obagi', 1, N'1153', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Warm)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (warm)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Warm bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g

Active Ingredients: 10% homosalate, 7.5% octinoxate, 5% zinc oxide, 3.22% titanium dioxide

Inactive Ingredients: Water, Butyloctyl Salicylate, Caprylic/Capric Triglyceride, Caprylyl Methicione, Polyglyceryl-10 Pentastearate, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Pentylene Glycol, Bethenyl Alcohol, Iron Oxides, PEG-40 Stearate, Dimethicone, Physalis Angulata Extract, Phenoxyethanol, Algae Extract, Glycerin, Mica, Sodium Stearoyl Lactylate, Polyhdroxystearic Acid, Mannitol, Hydroxyethyl Acrylate/Sodium Acryloyidimethyl Taurate Copolymer, Citric Acid, Squalene, Alumina, Stearic Acid, Xanthan Gum, Diatomaceous Earth, Sodium.

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Warm: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da.Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (35, N'NT_40_LNQ', N'Image', 1, N'ICFF', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30', N'kem nen che khuyet diem image skincare i conceal flawless foundation spf 30', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30 là sản phẩm trang điểm cao cấp với khả năng che khuyết điểm hoàn hảo, kết hợp chống năng tăng cường bảo vệ da, thành phần lành tính giúp phục hồi nhanh chóng da hư tổn, mỏng yếu sau điều giúp giảm.
Sản phẩm được sản xuất theo công thức đặc biệt cho lớp kem nền trang điểm siêu mỏng, mịn mà vẫn giúp che phủ khuyết điểm trên da, cho làn da hoàn hảo, sáng mịn màng không tì vết. Sản phẩm còn hỗ trợ chống nắng ngừa da sạm nám, hư tổn do ánh nắng mặt trời và các yếu tố khác từ môi trường.
Sản phẩm không chứa hóa chất, không chất bảo quản, do đó cực kỳ an toàn cho da, giúp da phục hồi nhanh chóng, sáng khỏe tự nhiên.', N'Chai', CAST(1930000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (36, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (37, N'NT_40_LNQ', N'Image', 1, N'HERG', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel', N'kem phuc hoi va chong tham quang mat image skincare vital c hydrating eye recovery gel', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel - giải pháp giúp dưỡng ẩm làm mềm da, phục hồi cấu trúc vùng da quanh mắt, cho da săn chắc, căng mịn, mờ nhăn, xóa tan quầng thâm, đánh thức làn da tràn đầy sức sống.
Là sản phẩm dưỡng da cao cấp với công nghệ hiện đại, kết hợp vitamin C và vitamin K có khả năng thẩm thấu sâu vào da, giúp ổn định mao mạch, làm sáng da, đồng thời cải thiện quầng thâm mắt, cho làn da rạng rỡ, sáng đều màu.
Sản phẩm còn giúp bổ sung hoạt chất Hyaluronic tăng cường dưỡng ẩm, giữ nước cho da, cải thiện cấu trúc da, ngăn ngừa da chùng nhão, chảy xệ, bọng mắt, nếp nhăn, vết chân chim hình thành sâu.', N'Chai', CAST(1350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (38, N'NT_40_LNQ', N'Image', 1, N'RYRC', N'Kem phục hồi và trẻ hoá da IMAGE MD Restoring Youth Repair Crème with ADT Technology(tm)', N'kem phuc hoi va tre hoa da image md restoring youth repair creme with adt technology(tm)', N'Kem phục hồi và trẻ hóa da Image MD Restoring Youth Repair Crème With ADT Technology TM chứa thành phần chính là retinol, axit glycolic và vitamin C làm tăng cường liên kết dưới da, phục hồi lại tính đàn hồi giúp cho bề mặt da dần căng mịn, trẻ trung, săn chắc và rạng rỡ chỉ sau một thời gian sử dụng.
Với cơ chế loại bỏ lớp sừng hóa, retinol giúp bề mặt da trở nên thông thoáng, tạo điều kiện thúc đẩy sản sinh tế bào mới thay thế tế bào chết ở da. Qua đó, sản phẩm sẽ loại bỏ dần vùng da khô ráp, không đều màu, nuôi dưỡng làn da mịn màng và trở nên tươi sáng.
Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ nhằm mang đến kết quả tối đa.', N'Chai', CAST(3084000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (39, N'NT_40_LNQ', N'Image', 1, N'RRC', N'Kem retinol công nghệ ADT trẻ hoá da IMAGE MD Restoring Retinol Crème With ADT Technology(tm) ', N'kem retinol cong nghe adt tre hoa da image md restoring retinol creme with adt technology(tm)', N'Kem retinol công nghệ ADT trẻ hóa da, mờ thâm nám Image MD Restoring Retinol Crème With Adt Technology TM giúp giảm thiểu sự xuất hiện của nếp nhăn và làm nổi bật tông màu da, đồng thời làm sống lại làn da. Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Chai', CAST(3290000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (40, N'NT_40_LNQ', N'Image', 1, N'IATRAC', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme', N'kem tre hoa lam mo vet tham ageless total retinol a creme', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (41, N'NT_40_LNQ', N'Ducray', 1, N'Craysoothing', N'KEM TRỊ MỤN KERACNYL PP ANTI-BLEMISH SOOTHING CREAM', N'kem tri mun keracnyl pp anti-blemish soothing cream', N'ĐẶC TÍNH : 
       •	Ducray Keracnyl PP Anti-blemish soothing cream là loại kem dưỡng da mụn giúp điều trị mụn trứng cá viêm, sưng, đỏ. 
       •	Công thức tân tiến chứa các hoạt chất có nguồn gốc từ thiên nhiên với công nghệ cải tiến Myrtacine Innovation được đăng ký bản quyền mang lại hiệu quả diệt vi khuẩn, ngăn ngừa vi khuẩn và kháng viêm, điều trị thâm mụn.
THÀNH PHẦN : 
Thành phần hoạt chất trong kem Ducray Keracnyl PP rất phong phú có chiết xuất từ thiên nhiên: 
       •	Thành phần chính của kem là Myrtacin, một hoạt chất được chiết xuất từ hoa Đào Kim Nương của vùng Địa Trung Hải, Myrtacine nồng độ đậm đặc được phát hiện ra có tác dụng tiêu diệt vi khuẩn P. acnes gây ra mụn trứng cá thậm chí Myrtacine còn xử lý được cả những chủng vi khuẩn đề kháng kháng sinh. Do đó tuýp kem Keracnyl PP thường được các bác sỹ cho dùng kèm với một loại kháng sinh dạng bôi ( kem hoặc nước) để cái này tăng cường hiệu quả tác dụng của cái kia lên. 
       •	Ngoài ra Myrtacine còn có hiệu quả kháng viêm rất cao và hiệu ứng tiêu sừng bong vẩy giúp tẩy thâm sẹo mụn nhanh chóng. 
       • 	Niacinamide: hiệu quả kháng viêm và trị thâm mụn, làm dịu da. 
       •	Sabal Serrulata chiết xuất từ cây cọ lùn vùng Nam Mỹ giúp chống bóng nhờn. 
       •	Các thành phần dưỡng ẩm trong kem: chiếm đến 23.5% giúp da được dưỡng ẩm tối ưu.', N'Tuýp', CAST(406000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (42, N'NT_40_LNQ', N'Obagi', 1, N'1175', N'Khăn ướt giúp trị mụn SUZANOBAGIMD Acne Cleansing Wipes', N'khan uot giup tri mun suzanobagimd acne cleansing wipes', N'Đối với da dầu hoặc da dễ bị mụn trứng cá, các loại khăn lau mặt này được pha chế với 2% acid salicylic để giúp điều trị và ngăn ngừa mụn trứng cá trong khi nhanh chóng và nhẹ nhàng làm sạch da.

Công dụng:

- Điều trị mụn trứng cá
- Làm khô mụn trứng cá
- Giúp ngăn ngừa mụn trứng cá mới.
- Làm sạch da nhẹ nhàng nhanh chóng.

Hướng dẫn sử dụng:


- Lau toàn bộ da mặt một đến hai lần mỗi ngày để làm sạch da và điều trị mụn.  

- Khi mới sử dụng nên dùng 1 lần/ngày để tránh khô da và kích ứng. Khi da đã quen có thể tăng lên 2 lần / ngày. 

- Nếu xảy ra hiện tượng khô hoặc bong tróc khó chịu, hãy giảm mỗi ngày một lần.

Thành phần nổi bật:

- Salicylic Acid: hoạt động như một chất tẩy tế bào chết, giúp sửa chữa và làm sạch mụn trứng cá

- Nha đam: giúp dưỡng ẩm và làm dịu da

- Chiết xuất Brassica Oleracea Italica (Bông cải xanh): chứa sulforaphane, một hợp chất giúp loại bỏ các gốc tự do

- Citrus Bioflavonoids: có đặc tính chống oxy hóa giúp bảo vệ chống lại các gốc tự do

- Witch Hazel: loại bỏ dầu thừa và tạp chất để giảm thiểu kích thước lỗ chân lông trên bề mặt', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (43, N'NT_40_LNQ', N'Obagi', 1, N'1176', N'Khăn ướt tẩy trang cho mọi loại da SUZANOBAGIMD Cleansing Wipes', N'khan uot tay trang cho moi loai da suzanobagimd cleansing wipes', N'Khăn Ướt Tẩy Trang SUZANOBAGIMD Cleansing Wipes là sản phẩm làm sạch lý tưởng giúp loại bỏ lớp trang điểm, dầu thừa, bụi bẩn nhanh chóng, hiệu quả mà vẫn vô cùng dịu nhẹ, đem lại làn da khô thoáng và mềm mịn.

Đặc điểm nổi bật:

- Không chứa các chất tẩy rửa mạnh gây tổn hại đến lớp màng ẩm tự nhiên của da

- Sử dụng những chất liệu vải vô cùng mềm mượt, có thể sử dụng cho cả những vùng da nhạy cảm quanh mắt mà không lo sợ rát da hay nổi mẩn đỏ.

- Aloe polyphenols giúp làm dịu da, bảo vệ da khỏi tác hại của tia UV và góp phần ngăn ngừa lão hoá

- Citrus Bioflavonoids duy trì và cân bằng lại da, củng cố lớp màng ẩm tự nhiên trên da và giúp các sản phẩm dưỡng sau phát huy hiệu quả tốt hơn.

- Công thức không chứa hương liệu, chất bảo quản phù hợp cho cả da nhạy cảm

Đây được coi là sản phẩm vừa hiệu quả, vừa lành tính và tiện lợi để bạn có thể mang theo trong những chuyến du lịch ngắn ngày hoặc dùng để tẩy trang giữa ngày ở công ty, hoặc trước và sau khi đến phòng tập.

Thành phần:

Citrus Bioflavonoids, Brassica Sulforaphane, Aloe polyphenols, and Antioxidants

Quy cách đóng gói: 25 tờ / gói

Hướng dẫn sử dụng:

- Mỗi lần sử dụng lấy một miếng khăn giấy lau sạch mặt và vùng cổ. Lau đến khi khăn giấy không còn bám chất dơ.

- Có thể tiếp tục rửa sạch mặt bằng sữa rửa mặt rồi dưỡng da như thông thường.

- Không giặt hay sử dụng lại.', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (44, N'NT_40_LNQ', N'Obagi', 1, N'1180', N'Lotion đặc trị dành cho cơ thể Obagi KèraPhine Body Smoothing Lotion', N'lotion dac tri danh cho co the obagi keraphine body smoothing lotion', N'Công dụng:
Thích hợp sử dụng cho người bị bệnh dày sừng nang lông (keratosis pilaris), vảy nến, nốt đỏ.
Tẩy tế bào chết và loại bỏ tế bào chết trên bề mặt da.
Giúp làn da thô ráp sần sùi được mịn màng.
Giúp làm dịu cân bằng, giảm khô da trên cánh tay.
KèraPhine được sử dụng hàng ngày giúp khôi phục lại làn da khỏe mạnh.


Thành phần:
Water (Aqua), Glycolic Acid, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Ammonium Lactate, Sodium Hydroxide, Glycerin, Dimethicone, Pentylene Glycol, Beta-Glucan, Sodium Hyaluronate Crosspolymer, Sorbitan Isostearate, Disodium EDTA, Polysorbate 60, Ethylhexylglyercin, Caprylyl Glycol, Chlorphenesin, Phenoxyethanol, Titanium Dioxide (CL 77891).


Cách dùng:
Thoa đều lên da một lần mỗi ngày hoặc theo chỉ dẫn của chuyên gia.


Dung lượng:
198ml.', N'Tuýp', CAST(1600000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (45, N'NT_40_LNQ', N'Obagi', 1, N'1136', N'Lotion dưỡng ẩm và tẩy tế bào chết SUZANOBAGIMD IDR Intensive Daily Repair', N'lotion duong am va tay te bao chet suzanobagimd idr intensive daily repair', N'Lotion dưỡng da kiêm tẩy tế bào chết hàng ngày  SUZANOBAGIMD IDR Intensive Daily Repair chứa các axit polyhydroxy (gluconolactone và axit lactobionic) giúp tẩy tế bào chết nhẹ nhàng để giảm thiểu diện mạo lỗ chân lông và các dấu hiệu lão hóa.

Công dụng:

- Giúp làm mềm và làm trẻ hóa làn da hàng ngày, chứa PHAs gluconolactone và axit lactobionic nhẹ nhàng tẩy tế bào chết để giảm thiểu các lỗ chân lông và các dấu hiệu lão hóa có thể nhìn thấy bằng cách tẩy tế bào chết nhẹ 
- Peptide giúp da săn chắc, giảm thiểu nếp nhăn.
- Công thức không gây kích ứng, không nhạy cảm có chứa Vitamin C và E. Với việc sử dụng thường xuyên, IDR sẽ lộ ra một làn da sáng hơn và tươi tắn.
- Công thức này là bác sĩ da liễu được thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.
- Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần chính:

Glucconolactone và Lactobionic Acid (PHAs), Allantoin, và Peptides

Thành phần chi tiết:

Water (aqua), Caprylic/capric Triglyceride, Gluconolactone, Lactobionic Acid, Glyceryl Stearate, Glycerin, Methyl Glucose Sesquistearate, Butyrospermum Parkii (shea) Butter, C12-15 Alkyl Benzoate, Ethylhexyl Palmitate, Cetyl Alcohol, Dimethicone, Phenoxyethanol, Xanthan Gum, Polyacrylate Crosspolymer 6, Sodium Hydroxide, Mica, Caprylyl Glycol, Panthenol, Titanium Dioxide, Ethylhexylglycerin, Disodium EDTA, Bisabolol, Tocopheryl Acetate, Hexylene Glycol, Allantoin, Camellia Oleifera (green Tea) Leaf Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Sinensis Leaf Extract, Tetrahexyldecyl Ascorbate, Sodium Hyaluronate, Myristoyl Pentapeptide-11, Myristoyl Pentapeptide-8.

Hướng dẫn sử dụng:

- Lấy 2-3 giọt thoa đều lên mặt trước khi sử dụng kem chống nắng. Nhẹ nhàng massage cho sản phẩm ngấm đều.

- Dùng hàng ngày.

Chú ý: Chỉ sử dụng bên ngoài da. Ngừng sử dụng nếu nổi ban hoặc kích ứng phát triển và kéo dài. Tránh xa vùng mắt. Tránh xa tầm tay trẻ em. Bắt buộc chống nắng khi dùng sản phẩm.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (46, N'NT_40_LNQ', N'Image', 1, N'OBGM', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque', N'mat na giam nhay cam va kich ung da image ormedic balancing gel masque', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque được tạo nên từ rất nhiều chiết xuất tự nhiên như nha đam, dầu oliu, hoa cúc, trà đen… nhẹ nhàng lấy đi các tế bào chết, làm sạch tạp chất bên trong lỗ chân lông, nhanh chóng làm dịu làn da bị kích ứng, kháng viêm, nhanh chóng phục hồi làn da bị tổn thương, mẩn đỏ và viêm sưng. Bên cạng đó, sản phẩm còn giúp bảo vệ da chống lại sự mất nước và cân bằng độ ẩm cho da.
Thành phần dầu oliu của Image Ormedic Balancing Gel Masque có cấu trúc hoá học gần giống với cấu trúc dầu tự nhiên trên da hơn bất kì loại dầu nào khác nên có tác dụng vô cùng tích cực trong việc chăm sóc da. Với thành phần giàu chất béo lành mạnh, chất chống oxy hoá như phenolic, vitamin E cùng với squalene, acidas oleic, dầu oliu giúp kích thích và chữa lành các tổn thương trên da, làm dịu các kích ứng da từ tác động của ánh nắng mặt trời.', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (47, N'NT_40_LNQ', N'Image', 1, N'RORM', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque', N'mat na ngu dem tre hoa da image md restoring overnight retinol masque', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque giúp bổ sung dưỡng chất ngăn ngừa lão hóa, cung cấp độ ẩm cho da suốt cả đêm khi ngủ. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Hộp', CAST(3710000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (48, N'NT_40_LNQ', N'Image', 1, N'TRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mmặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen Image Skincare Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (49, N'NT_40_LNQ', N'Image', 1, N'ATRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (50, N'NT_40_LNQ', N'Khác', 1, N'MNTBG', N'Mặt nạ tế bào gốc Rwine Beauty Stem Cell Placenta Mask', N'mat na te bao goc rwine beauty stem cell placenta mask', N'✅ Mặt nạ chứa nhau thai ngựa có thể làm giảm các triệu chứng nhạy cảm với mẩn đỏ và viêm. Có thể thúc đẩy quá trình chữa lành vết thương.
✅ Bên cạnh đó, cân bằng độ ẩm tương đối, giúp da mịn màng, mềm mại, ngăn ngừa khô da, làm chậm lão hóa da, nhìn thành nếp nhăn.
✅ EGF giúp giao tiếp với các tế bào của bạn để tạo ra nhiều collagen và elastin hơn.
✅ KGF Thúc đẩy tái tạo da, hỗ trợ tăng đàn hồi giúp da luôn tươi trẻ, mịn màng và săn chắc cho làn da khỏe mạnh, trẻ trung.
✅ Làm mờ vết nám, tàn nhang, vết thâm một cách hiệu quả. giúp cải thiện tone da một cách nhẹ nhàng mà hiệu quả.
✅ Cung câp nước, khóa ẩm, tăng độ đàn hồi và ngăn ngừa tình trạng khô da.
✅ Mặt nạ nhau thai có thể sử dụng cho da yếu, tổn thương do mụn, da bị hư tổn sau khi dùng kem trộn, sau điều trị laser, da xỉn màu, da nám, tàn nhang.
✅ Thành phần của mặt nạ được kiểm định rất khắt khe, đảm bảo không nhiễm hóa chất gây tổn thưởng, kích ứng da dù da mẫn cảm.
✅ Bổ sung vi khoáng giúp da khỏe mạnh, tăng đề đề kháng cho da.

', N'Miếng', CAST(50000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (51, N'NT_40_LNQ', N'Image', 1, N'IATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (52, N'NT_40_LNQ', N'Image', 1, N'ATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (53, N'NT_40_LNQ', N'Image', 1, N'FREP', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads', N'mat na tre hoa da vung mat image skincare flawless rejuvenating eye pads', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads với dưỡng chất từ nước dừa có thể dùng cho mọi lứa tuổi, cung cấp nuôi dưỡng và tái tạo vùng mắt, loại bỏ lớp trang điểm một cách nhẹ nhàng và hiệu quả nhất.
Hyaluronic và các chiết xuất từ thực vật giúp làm mờ vết nhăn và thúc đẩy quá trình trẻ hóa cho làn da. Comfrey và Chamomile có tác dụng xoa dịu và làm giảm bọng mắt cho đôi mắt tràn đầy năng lượng và không còn cảm giác mệt mỏi. Làm sạch và tái tạo da trong một bước thật đơn giản.', N'Hộp', CAST(1530000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (54, N'iBeauty', N'ACM', 1, N'ACM11', N'NOVOPHANE SEBO - REGULATING SHAMPOO Dầu gội ngăn ngừa rụng tóc, làm sạch da đầu cho da dầu nhờn', N'novophane sebo - regulating shampoo dau goi ngan ngua rung toc, lam sach da dau cho da dau nhon', N'Giảm rụng tóc, làm sạch loại bỏ tế bào chết và bã nhờn, giúp tóc khoẻ và dày hơn', N'Chai', CAST(367000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (55, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (56, N'iBeauty', N'ACM', 1, N'ACM39', N'SEBIONEX ACTIMAT TINTED ANTI-IMPERFECTION SKINCARE', N'sebionex actimat tinted anti-imperfection skincare', N'Kem bôi ngừa mụn, trứng cá, che khuyết điểm', N'Tuýp', CAST(379000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (57, N'iBeauty', N'ACM', 1, N'ACM16', N'SEBIONEX Foaming gel - Gel rửa mặt cho da mụn, da nhờn', N'sebionex foaming gel - gel rua mat cho da mun, da nhon', N'Nhẹ nhàng làm sạch da, loại bỏ bã nhờn mà không ảnh hưởng đến lớp vỏ bảo vệ của da và cân bằng PH bề mặt cho da, hoạt chất AHA có tác dụng loại bỏ tế bào chết và làm giảm tình trạng khô da, giúp ngăn ngừa mụn trứng cá', N'Tuýp', CAST(309000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (58, N'iBeauty', N'ACM', 1, N'ACM38', N'SEBIONEX HYDRA REPAIR CREAM', N'sebionex hydra repair cream', N'Sản phẩm dưỡng da dành cho da mụn, giúp cung cấp độ ẩm cho da, cho da luôn khoẻ mạnh', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (59, N'iBeauty', N'ACM', 1, N'ACM13', N'SEBIONEX. K Cream - Kem giảm mụn và ngăn ngừa nhân mụn ', N'sebionex. k cream - kem giam mun va ngan ngua nhan mun', N'Tác động AHA acid và dạng ester giúp tẩy sạch tế bào chết, giảm mức độ sừng hoá cổ nang lông, ngăn ngừa nhân mụn mới sản sinh, điều tiết chất nhờn trên da, kháng khuẩn, ngăn ngừa thâm sau mụn', N'Tuýp', CAST(299000 AS Decimal(18, 0)), 10, N'1575651600', N'1575824399', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (60, N'iBeauty', N'ACM', 1, N'ACM15', N'SEBIONEX Mattifying Sunscreen Gel SPF50+ - Kem chống nắng chuyên biệt cho da mụn, da nhờn', N'sebionex mattifying sunscreen gel spf50+ - kem chong nang chuyen biet cho da mun, da nhon', N'Chứa các hoạt chất hữu cơ và khoáng chất giúp bảo vệ tối đa trước tác động của tia UVA và UVB, đồng thời sản phẩm được thiết kế chuyên biệt cho da dầu và giúp dưỡng da cho bạn làn da khoẻ mạnh, tươi sáng', N'Tuýp', CAST(420000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (61, N'iBeauty', N'ACM', 1, N'ACM14', N'SEBIONEX. TRIO Cream - Kem giảm mụn 3 tác động: kháng khuẩn, chống viêm, giảm tiết bã nhờn ngăn ngừa nhân mụn mới sản sinh, giúp làm dịu mát, giảm thâm do mụn', N'sebionex. trio cream - kem giam mun 3 tac dong: khang khuan, chong viem, giam tiet ba nhon ngan ngua nhan mun moi san sinh, giup lam diu mat, giam tham do mun', N'Kem trị mụn Sebionex với 3 tác động giúp giảm mụn, ngăn ngừa nhân mụn mới sản sinh, điều tiết chất nhờn trên da, kháng khuẩn, làm dịu và giữ ẩm, giúp làm mềm da và giảm thâm do mụn', N'Tuýp', CAST(405000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (62, N'NT_40_LNQ', N'Image', 1, N'VCHWB', N'Serum khoán, khoá nước cho da Vital C Hydrating Water Burst ', N'serum khoan, khoa nuoc cho da vital c hydrating water burst', N'Serum khoán, khoá nước cho da, cấu trúc gel nhẹ, biến đổi gel thành nước khi thoa và massage nhẹ lên da. Sản phẩm cung cấp hàng loạt các chất chống oxy hóa, axit hyaluronic, vitamin và peptide giúp trẻ hóa làn da, căng sáng mịn, rạng rỡ và khỏe mạnh', N'Tuýp', CAST(1815000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (63, N'NT_40_LNQ', N'Image', 1, N'CLSOF', N'Serum kiểm soát nhờn & kháng CLEARCELL Restoring Serum Oil - Free', N'serum kiem soat nhon & khang clearcell restoring serum oil - free', N'Với công thức dịu nhẹ và chất serum không chứa dầu sẽ hỗ trợ tăng và cân bằng độ ẩm cho da dễ bị mụn trứng cá và không gây tắc nghẽn lỗ chân lông. và giúp làn da sáng mịn.
Công dụng:
- Với dẫn xuất Vitamin B6 giúp thu nhỏ lỗ chân lông, kiểm soát nhờn, làm sáng da và giảm sự hình thành các ổ viêm dưới da, dị ứng, loại bỏ mụn nhanh chóng.
- Chống viêm kháng khuẩn, làm khô nhân mụn từ đó giúp điều trị mụn hiệu quả.
- Ngăn ngừa và làm mờ vết thâm sẹo.
- Tái tạo nhanh những thương tổn da do mụn để lại.
- Cung cấp độ ẩm cho da, giúp da luôn mịn màng, tươi trẻ.', N'Lọ', CAST(1540000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (64, N'NT_40_LNQ', N'Image', 1, N'IIBS', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum ', N'serum lam trang sang da mo tham nam image skincare iluma intense bleaching serum', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum giúp loại bỏ lớp da sừng khô sần, xỉn màu, lão hóa và nhiều đốm nâu, cung cấp dưỡng chất cho da sáng hồng rạng rỡ từ bên trong.
Là dòng sản phẩm dưỡng da cao cấp, sử dụng thành phần điều giúp giảm nám đặc hiệu kết hợp cùng các thành phần hoạt chất làm sáng da chiết xuất tự nhiên như như Licorice, Azelaic acid (kháng khuẩn) hiệu quả trong việc làm mờ vết thâm, đốm nâu, tàn nhang, giúp làm sáng da tự nhiên.
Serum trị nám này còn được bổ sung thành phần Glycolic acid giúp nhẹ nhàng tẩy da chết, cải thiện bề mặt và cấu trúc da, hạn chế nếp nhăn hình thành, ngăn ngừa lão hóa, cho làn da tươi trẻ, rạng rỡ.', N'Chai', CAST(1300000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (65, N'NT_40_LNQ', N'Obagi', 1, N'1139', N'Serum nâng cơ chống lão hóa Obagi Elastiderm Facial Serum', N'serum nang co chong lao hoa obagi elastiderm facial serum', N'Cảm nhận vẻ đẹp của làn da có độ đàn hồi, tươi trẻ với ELASTIderm Facial Serum của Obagi. Được bào chế với công nghệ bản quyền Bi-Mineral Contour Complex™, serum thế hệ mới này giúp làn da lấy lại độ đàn hồi, cải thiện dấu hiệu lão hóa, đem lại vẻ tươi trẻ và đầy sức sống. Với các thành phần sử dụng công nghệ FlexFluid™, serum với thể chất mỏng nhẹ đem lại hiệu quả đàn hồi trên da tức thì.

Thành phần:

Phức hợp bi-mineral: kết hợp đồng, kẽm và malonic acid để làn da mịn mượt hơn
Water (Aqua), Glycerin,Methylpropanediol, Alcohol Denat., Dimethicone, Isocetyl Stearoyl Stearate, Coco-Caprylate/Caprate, Isononyl Isononanoate, Pentylene Glycol, Phenoxyethanol, Polyacrylate Crosspolymer-6, Carbomer, Malonic Acid, Sodium Hydroxide, Disodium EDTA, Amodimethicone, Zinc Carbonate, Copper Carbonate Hydroxide, T-Butyl Alcohol, Parfum.

Công dụng:

Công nghệ FlexFluid™: giúp serum mỏng nhẹ, cải thiện kết cấu da sau 2 tuần

Củng cố độ đàn hồi của da
Cải thiện kết cấu da
Giảm nhăn
Cách dùng:
Sử dụng một ngày 2 lần vào buổi sáng và tối .Buổi sáng sau khi thoa sản phẩm kế tiếp thoa kem chống nắng.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.

- Để xa tầm tay trẻ em.

', N'Lọ', CAST(4680000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (66, N'NT_40_LNQ', N'Obagi', 1, N'1138', N'Serum phục hồi tái tạo da Obagi Gentle Rejuvenation Skin Rejuvenation Serum', N'serum phuc hoi tai tao da obagi gentle rejuvenation skin rejuvenation serum', N'Obagi Gentle Rejuvenation Skin Rejuvenation Serum sử dụng công thức tiên tiến để giúp làn da phục hồi nhanh chóng. Sản phẩm hỗ trợ quá trình lành thương và phục hồi tự nhiên của da, giúp da tự sửa chữa và hạn chế các dấu hiệu lão hóa.

Các thành phần củng cố sức khỏe làn da trong serum giúp lành thương, giảm nhăn cũng như cải thiện kết cấu da, cho da mịn màng, đều màu.

Serum chống lão hóa này cũng đẩy nhanh quá trình sinh sản collagen và trẻ hóa làn da.

Serum hoàn toàn không chứa hương liệu, giảm thiểu kích ứng trên da. Sử dụng kết hợp cùng kem chống nắng để đem lại hiệu quả phục hồi, bảo vệ da tốt nhất.

Đặc điểm nổi bật

Kinetin và zeatin giảm thiểu dấu hiệu lão hóa, nếp nhăn, thâm nám
Chiết xuất táo Thụy Sĩ đẩy nhanh quá trình tái tạo tế bào để xóa nhăn và làm mịn màng kết cấu da
Peptide giúp củng cố màn da, giúp da săn chắc
Sodium Hyaluronate​ cấp ẩm sâu, làm dịu làn da khô, bong tróc
Hệ thống vận chuyển độc đáo giúp thành phần hoạt chất được phân phối đến da trong vòng 12 giờ
Thành phần chi tiết:

Water (Aqua)​,​ Biosaccharide Gum-1​,​ Methyl Gluceth-20​,​ Propanediol​,​ Butylene Glycol,​ PEG-12 Glyceryl Dimyristate,​ Sorbitan Laurate​,​ Phenoxyethanol​,​ Xanthan Gum​,​ Cellulose Gum​,​ Oryza Sativa (Rice) Extract​,​ Ethoxydiglycol​,​ Malus Domestica Fruit Cell Culture Extract​,​ Lecithin​,​ Polyglyceryl-4 Laurate,​ Kinetin​,​ Zeatin​,​ Ethylhexylglycerin​,​ Citric Acid​,​ Sodium Hyaluronate​,​ Dilauryl Citrate,​ Baicalin,​ 1,​2-Hexanediol,​ Caprylyl Glycol​,​ Glycerin​,​ Inulin Lauryl Carbamate​,​ Ergothioneine​,​ Tetrapeptide-26.', N'Lọ', CAST(2980000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (67, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (68, N'NT_40_LNQ', N'Image', 1, N'TMSCS', N'Serum trẻ hoá da The Max Stem Cell Serum', N'serum tre hoa da the max stem cell serum', N'Serum giúp giảm lão hóa da The Max Stem Cell Serum với công nghệ chăm sóc da hiện đại là giải pháp dưỡng ẩm chống lão hóa hoàn hảo, giúp da ngày càng săn chắc, căng mịn, xóa mờ dấu vết lão hóa cũng như cung cấp dưỡng chất nuôi dưỡng tế bào, DNA khỏe mạnh.
Là sản phẩm dưỡng da cao cấp, kết hợp các chuỗi peptide và Argirelene có khả năng thẩm thấu sâu vào hạ bì da, giúp kích thích tăng sinh Collagen và Elastin cho làn da căng mịn, săn chắc, đàn hồi, tái tạo nét tươi trẻ, rạng ngời cho da.
Sản phẩm còn ứng dụng công nghệ tế bào gốc và chiết xuất từ thiên nhiên giúp nhẹ nhàng nuôi dưỡng, phục hồi DNA, kích thích tế bào gốc có sẵn phát triển, tăng cường chức năng bảo vệ da ngừa hư tổn.', N'Chai', CAST(3350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (69, N'iBeauty', N'ACM', 1, N'ACM09', N'SESITÉLIAL Cleansing Gel - Gel rửa mặt', N'sesitelial cleansing gel - gel rua mat', N'Làm sạch, loại bỏ tế bào chết và bã nhờn, làm thông thoáng lỗ chân lông giúp da mịn màng tươi sáng', N'Tuýp', CAST(318000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (70, N'iBeauty', N'ACM', 1, N'ACM07', N'SESITELIAL Sunscreen Cream SPF100+ - Kem Chống Nắng', N'sesitelial sunscreen cream spf100+ - kem chong nang', N'Chống nắng UVA, UVB với SPF100+ dành cho da thường và da nhạy cảm', N'Tuýp', CAST(417000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (71, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (72, N'NT_40_LNQ', N'Stanhome', 1, N'SCS', N'Stanhome Clear Spot', N'stanhome clear spot', N'Kem bôi giúp làm dịu da, tránh nóng rát, làm sạch sâu thông thoáng chân lông, giảm sưng tấy viêm đỏ, se mụn, xẹp mụn, ngăn ngừa sự phát triển của vi khuẩn gây mụn và sự hình thành các vết thâm, sẹo.', N'Tuýp', CAST(385000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (73, N'NT_40_LNQ', N'Image', 1, N'OBFC', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser', N'sua rua mat can bang da image skincare ormedic balancing facial cleanser', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser với chiết xuất từ thành phần tự nhiên an toàn, lành tình, là giải pháp chăm sóc da hoàn hảo dành cho bạn, giúp loại bỏ nhẹ nhàng lớp dầu nhờn, bụi bẩn dư thừa, làm sáng mịn, sạch da mà không gây ra các kích ứng, đồng thời cân bằng độ ẩm, giúp duy trì làn da mềm mại, mịn màng.
Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser được đánh giá là dòng sản phẩm kết hợp hoạt chất hữu cơ và tinh chất thiên nhiên hiệu quả hiện nay, có khả năng tăng cường chống oxy hóa và bảo vệ nuôi dưỡng làn da tươi trẻ, khỏe khoắn mỗi ngày. Sản phẩm được chứng minh thích hợp với làn da nhạy cảm, da ở độ tuổi thanh thiếu niên, phụ nữ mang thai hay da sau hư tổn, kích ứng.
Với chiết xuất từ tinh chất trà xanh, hoa cúc, nha đam, dầu olive, yến mạch, sử dụng sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser còn giúp cung cấp dưỡng chất thẩm thấu sâu vào da giúp làm dịu da, là mờ thâm sạm, cho làn da tươi sáng mỗi ngày. ', N'Chai', CAST(1100000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (74, N'NT_40_LNQ', N'Farmona', 1, N'F150', N'Sữa rửa mặt cho da dầu, da mụn Farmona - Dermacos Anti - acne deep cleansing gel 150ml', N'sua rua mat cho da dau, da mun farmona - dermacos anti - acne deep cleansing gel 150ml', N'Chiết xuất tinh dầu của cây chè, cây liễu giúp se mụn nhanh, làm mỏng đi và giúp bong các nút sừng, tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Các nguyên tố vi lượng cùng bùn, muối khoáng làm sạch sâu cho da tận lỗ chân lông, hạn chế sự phát triển của các vi khuẩn gây nên tình trạng mụn trứng cá, loại  bỏ các vấn đề về da.
Chiết xuất bơ và tinh dầu giúp làm tăng hệ miễn dịch cho da. Ngoài ra, 2 thành phần còn có tác dụng làm se  các đầu mụn và phục hồi da sau mụn, làm mềm da và kích thích tái tạo da.
Các dưỡng chất thiết yếu khác có tác dụng chăm sóc làn da, làm mềm mịn và trắng sáng.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (75, N'NT_40_LNQ', N'Image', 1, N'TFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Image Ageless Skincare Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1015000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (76, N'NT_40_LNQ', N'Image', 1, N'ATFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Ageless Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1050000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (77, N'NT_40_LNQ', N'Image', 1, N'CMAS', N'Sữa rửa mặt dạng cát, điều trị mụn CLEARCELL Medicated Acne Scrub', N'sua rua mat dang cat, dieu tri mun clearcell medicated acne scrub', N'Sữa rửa mặt dạng cát, điều trị mụnt chứa Benzoyl peroxide giúp diệt vi khuẩn sinh mụn, giảm viêm, tiêu nhân mụn và các hạt tẩy muối biển cực nhỏ giúp loại bỏ lớp da chết bên ngoài cũng như các chất gây tắc nghẽn lỗ chân lông. ', N'Chai', CAST(890000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (78, N'NT_40_LNQ', N'Image', 1, N'HFC', N'Sữa rửa mặt dưỡng ẩm, phục hồi da VITAL C Hydrating Facial Cleanser', N'sua rua mat duong am, phuc hoi da vital c hydrating facial cleanser', N'Sữa rửa mặt Image Skincare Vital C Hydrating Facial Cleanser với công thức độc đáo kết hợp sử dụng nguồn vitamin C hàm lượng cao giúp làm sạch sâu đồng thời dưỡng sáng da, dưỡng ẩm hiệu quả, cung cấp dưỡng chất phục hồi cấu trúc và bề mặt da, cho da căng mịn, khỏe từ bên trong.
Là dòng sản phẩm chăm sóc da cao cấp được ứng dụng công nghệ cao tại Mỹ với khả năng bổ sung độ ẩm làm mềm da, loại bỏ da chết khô sần, xỉn màu, giúp da mềm mại, kích thích sản sinh tế bào da mới đồng thời bổ sung dưỡng chất như vitamin A, C, E...giúp phục hồi nhanh chóng làn da tổn thương, nhạy cảm, kích ứng, giúp da dịu mát, mịn màng tự nhiên.', N'Chai', CAST(999000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (79, N'NT_40_LNQ', N'Soskin', 1, N'SGPCG', N'Sữa rửa mặt loại bỏ vi khuẩn Soskin Gentle Purifying Cleansing Gel 100ml', N'sua rua mat loai bo vi khuan soskin gentle purifying cleansing gel 100ml', N'Bạn có đang sử dụng sữa rửa mặt phù hợp với làn da của mình? Những làn da khô, da dầu hay da mụn đều có loại sữa rửa mặt chuyên biệt, chứa những thành phần khác nhau và hợp với từng cấu trúc của da.

Nếu bạn thuộc da nhờn, mụn hãy lựa chọn sữa rửa mặt Soskin Gentle Purifying Cleansing Gel. Đây là sản phẩm của thương hiệu Soskin, được sản xuất từ Pháp với những nguyên liệu được điều chế từ thực vật. Soskin Gentle Purifying Cleansing Gel có tác dụng làm sạch bụi bẩn, da chết và nhờn, đặc biệt là khả năng kháng khuẩn. Điều này giúp da tránh xa vi khuẩn tấn công gây mụn và viêm da.

 

Sữa rửa mặt loại bỏ vi khuẩn Soskin Gentle Purifying Cleansing Gel với dạng gel mềm mại, khả năng tạo bọt nhiều, giúp thấm sâu vào chân lông, kể cả vùng da nhờn. Từ đó, sản phẩm cuốn trôi chất bẩn, lớp trang điểm gây tắt chân lông. Đồng thời sữa rửa mặt kiểm soát tuyến dầu, hạn chế nhờn sản sinh gây bết rít da.

Tác dụng kháng khuẩn vượt trội của Soskin Gentle Purifying Cleansing Gel giúp da ngừa viêm nhiễm, tránh vi khuẩn và nhờn kết hợp tạo nên ổ mụn. Bên cạnh đó, những lỗ chân lông to cũng được thu nhỏ, cải thiện những vết sần sùi cho làn da mịn màng, tươi tắn.

Đối với những làn da mụn, thường xuất hiện hiện mụn trứng cá, mụn đầu đen, mụn bọc thì sữa rửa mặt Soskin Gentle Purifying Cleansing Gel giúp kháng viêm và khô vùng mụn, tiêu diệt vi khuẩn tồn tại ở nhân mụn. Tiếp đó, sản phẩm cân bằng ẩm ở da khô có mụn, điều hòa lượng nhờn tránh vi khuẩn khuếch tán, nảy sinh mụn.', N'Chai', CAST(405000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (80, N'NT_40_LNQ', N'Image', 1, N'TMSCFC', N'Sữa rửa mặt phục hồi và nuôi dưỡng da The Max Stem Cell Facial Cleanser', N'sua rua mat phuc hoi va nuoi duong da the max stem cell facial cleanser', N'Sữa rửa mặt The Max Stem Cell Facial Cleanser - dòng sản phẩm chăm sóc da cao cấp với chiết xuất tự nhiên an toàn, lành tính thẩm thấu sâu làm sạch da vượt trội đồng thời dưỡng ẩm, cung cấp hoạt chất tái tạo, nuôi dưỡng da sáng khỏe tự nhiên.
Là dòng sản phẩm sữa rửa mặt chăm sóc da hằng ngày, không chứa acid, sulfate & paraben, với khả năng nhẹ nhàng làm sạch sâu bên trong lỗ chân lông, giúp lấy đi hoàn toàn bụi bẩn, bã nhờn, da chết giúp da sạch mịn, đồng thời cân bằng pH của da, ngừa da khô ráp, bong tróc hay mất đi lớp dầu tự nhiên trên bề mặt.
Thành phần tế bào gốc thực vật & các chiết xuất thực vật trong sản phẩm còn giúp nuôi dưỡng da & bảo vệ da khỏi những tác động gây hại từ môi trường như ô nhiễm môi trường, ảnh hưởng của ánh nắng mặt trời và tia UV, hỗ trợ ngừa lão hóa, giảm sự xuất hiện của nếp nhăn, kích thích tăng sinh Collagen và Elastin cho da săn chắc, căng mịn, đàn hồi.
Thành phần tế bào gốc còn là yếu tố giúp phục hồi ADN, kích thích tế bào gốc có sẵn của da phát triển.', N'Tuýp', CAST(970000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (81, N'NT_40_LNQ', N'Image', 1, N'CSGC', N'Sữa rửa mặt sạch nhờn Image Skincare Clear Cell Salicylic Gel Cleanser', N'sua rua mat sach nhon image skincare clear cell salicylic gel cleanser', N'Sữa rửa mặt dạng gel Image Skincare Clear Cell Salicylic Gel Cleanser - giải pháp chăm sóc da dầu nhờn hiệu quả, giúp loại bỏ dầu thừa, cân bằng độ ẩm, se lỗ chân lông, cho làn da căng mịn, thông thoáng, rạng rỡ tự nhiên.
Là sản phẩm chăm sóc da cao cấp với công nghệ làm sạch da tiên tiến kết hợp cùng thành phần Salicylic, giúp nhẹ nhàng thấm sâu vào từng nang lông, lấy đi bụi bẩn, bã nhờn, làm mềm và loại bỏ tế bào da chết khô sần, xỉn màu, thâm sạm, kích thích sản sinh tế bào da mới đồng thời hỗ trợ tẩy trang nhẹ, cân bằng độ pH, ngăn ngừa da khô ráp, bong tróc.
Sản phẩm giúp làm sạch da tuyệt đối, cải thiện lỗ chân lông to và ngừa mụn phát sinh.', N'Chai', CAST(1050000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (82, N'NT_40_LNQ', N'Ceradan', 1, N'C150ml', N'Sữa Tắm Dưỡng Ẩm Ceradan Wash 150ml', N'sua tam duong am ceradan wash 150ml', N'Sữa tắm dưỡng ẩm Ceradan Wash thương hiệu Hyphens Singapore dành cho da khô và da nhạy cảm, thân thiện cho da trẻ em. Sữa tắm Ceradan Wash giúp cấp ẩm cho da khô, lưu giữ hương thơm quyến rũ, nồng nàn.', N'Chai', CAST(215000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (83, N'NT_40_LNQ', N'Obagi', 1, N'1152', N' Tinh chất cấp nước phục hồi da Obagi Daily Hydro-Drops ', N'tinh chat cap nuoc phuc hoi da obagi daily hydro-drops', N'Serum cấp nước đầu tiên của Obagi với công nghệ kết hợp vitamin B3 (niacinamide) cùng các chiết xuất dầu tự nhiên giúp tăng cường độ ẩm và cấp nước cho da mà không hề làm giảm khả năng thẩm thấu của các loại đặc trị đang sử dụng như retinoids. 

Serum dạng gel chứa các hạt tinh chất tan ngay trên da và dưỡng ẩm sâu mà không để lại lớp bóng nhờn. Thích hợp với mọi loại da.

Đặc điểm nổi bật

Vitamin B3 (Niacinamide) giúp phục hồi, làm dịu và củng cố màng da, tăng cường sức chống chịu của da khi kết hợp với tretinoin/retinol. 
Niacinamide (vitamin B3) điều chỉnh sự trao đổi chất của tế bào và kích thích tái tạo, phục hồi màng lipid bằng cách sản sinh ra ceramide. Và chính nhờ khả năng kích thích sản sinh ra ceramide mà da được dưỡng ẩm, bảo vệ và ngăn ngừa tổn thương. Chưa kể là niacinamide còn cho tác dụng làm sáng da, trị thâm, trị mụn hiệu quả.

Abyssinian Oil & Hibiscus oil: dưỡng ẩm, giúp da săn chắc
Hỗn hợp chất chống oxy hóa giảm nếp nhăn, tăng cường khả năng hoạt động của kem chống nắng
Hướng dẫn sử dụng

Sau khi rửa mặt và sử dụng toner, dùng một lượng sản phẩm vừa đủ cho cả mặt, massage cho sản phẩm thẩm thấu hoàn toàn.', N'Chai', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (84, N'NT_40_LNQ', N'Image', 1, N'ATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Image Skincare Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (85, N'NT_40_LNQ', N'Image', 1, N'IATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (86, N'NT_40_LNQ', N'Image', 1, N'A6', N'Tinh chất làm đầy và căng da 6 loại hyaluronic Ageless Total Pure Hyaluronic Filler 6', N'tinh chat lam day va cang da 6 loai hyaluronic ageless total pure hyaluronic filler 6', N'Hoạt chất Hyaluronic đặc biệt có trong Ageless Total Pure Hyaluronic Filler Image Skincare giúp hỗ trợ làn da được cân bằng thẩm thấu, giúp làm mịn màng cho các nếp nhăn ,sẽ tăng cường hỗ trợ dưỡng chất giúp cải thiện nếp nhăn mà không cần tiêm chích trên da', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (87, N'NT_40_LNQ', N'Image', 1, N'HFO', N'Tinh dầu Massage chống lão hoá VITAL C Hydrating Facial Oil', N'tinh dau massage chong lao hoa vital c hydrating facial oil', N'Sự pha trộn các nguồn dầu thực vật từ thiên nhiên giúp phục hồi, nuôi dưỡng và chống lão hóa. Với mùi thơm đặc trưng mang đến cảm giác dịu nhẹ, giảm căng thẳng và mệt mỏi cho làn da.', N'Lọ', CAST(1900000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (88, N'NT_40_LNQ', N'Avène', 1, N'AVENE6', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 50ml', N'xit khoang avene thermal spring water spray mist 50ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(170000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (89, N'NT_40_LNQ', N'Ziaja', 1, N'rosa', N'Ziaja Med Kem dịu nhẹ và giảm mụn trứng cá đỏ Rosacea 50ml', N'ziaja med kem diu nhe va giam mun trung ca do rosacea 50ml', N'- Ngăn ngừa sự hình thành mụn đỏ, mụn mủ trên da.
- Làm dịu kích ứng & mẩn đỏ trên da.
- Giúp da trở nên mịn màng hơn.
- Dưỡng ẩm & làm mềm da.
- Bảo vệ da hiệu quả khỏi tia cực tím.', N'Tuýp', CAST(427000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 201, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (90, N'iBeauty', N'Lysaskin', 1, N'LK08', N'ATOLYS gel - Gel tắm dưỡng ẩm dành cho bệnh nhân viêm da cơ địa', N'atolys gel - gel tam duong am danh cho benh nhan viem da co dia', N'Gel tắm dưỡng ẩm, giảm ngứa, tái tạo lóp lipid sinh lý dành cho bệnh nhân viêm da cơ địa, viêm da tiếp xúc,da ngứa và khô', N'Chai', CAST(279000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (91, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (92, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (93, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (94, N'NT_40_LNQ', N'Khác', 1, N'DUS', N'Dermaton US', N'dermaton us', N'-Kem bôi dưỡng trắng mịn da, đem lại làn da luôn trắng hồng, mịn màng.
-Ngừa và trị tất cả các loại mụn trứng cá: mụn đầu đen, mụn đầu trắng, mụn kèm theo viêm bội nhiễm gây sưng tấy đau nhức
-Liền sẹo, ngừa vết thâm, ngừa tái phát mụn. Tẩy sạch bã nhờn
-Giảm bỏng rát trên bề mặt da khi dùng isotretinoin', N'Tuýp', CAST(67800 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (95, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP125', N'Gammaphil 125ml', N'gammaphil 125ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(59000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (96, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP150', N'Gammaphil 150ml', N'gammaphil 150ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(104000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (97, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP500', N'Gammaphil 500ml', N'gammaphil 500ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(250000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (98, N'NT_40_LNQ', N'Farmona', 1, N'f15', N'Gel chấm mụn chứa bùn hoạt tính Farmona - Dermacos Anti - acne anti - imperfection spot gel 15ml', N'gel cham mun chua bun hoat tinh farmona - dermacos anti - acne anti - imperfection spot gel 15ml', N'Gel chấm làm giảm và ngăn ngừa mụn. Làm dịu nhẹ các kích ứng, mẩn đỏ da. Giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Sản phẩm dành cho da bị mụn trứng cá.
Nhũ Bạc Colloidal Silver diệt khuẩn tới 650 loại khác nhau và kháng viêm mạnh, làm lành nhanh các tổn thương viêm do vi khuẩn, virut gây ra.
Tổ hợp AHA Lactic + Citric + Malic + Glicolic Acid ngăn ngừa biến đổi sắc tố da, hạn chế hình thành vết thâm, xám xỉn và loang lổ màu da, dưỡng ẩm, kích thích tái tạo da và ngăn ngừa hình thành sẹo.
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Đất sét Trắng Kaolin chứa gần 20 loại khoáng chất, có tác dụng diệt khuẩn, thanh lọc da, lành nhanh các tổn thương do mụn
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn.
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da.
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính.
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(247000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (99, N'NT_40_LNQ', N'Ziaja', 1, N'gel', N'Gel lau rửa da sinh lý - Med Lipid Physioderm Cleansing Gel', N'gel lau rua da sinh ly - med lipid physioderm cleansing gel', N'Làm sạch da nhẹ nhàng và hiệu quả, không gây kích ứng da và không làm khô da. Sản phẩm dùng được để tẩy trang mắt, giúp loại bỏ lớp trang điểm và bụi bẩn trên da. Làm dịu nhẹ da, dưỡng ẩm, dưỡng da và làm da mịn màng. Sản phẩm dành cho chăm sóc da mẫn cảm khi sử dụng với xà phòng và da khô.', N'Chai', CAST(300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
GO
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (100, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (101, N'iBeauty', N'Khác', 1, N'ID30', N'ID30 Gold USA', N'id30 gold usa', N'Viên uống trắng da, ngừa nám, chống oxi hoá, hạn chế lão hoá da, tăng khả năng chống ánh nắng mặt trời, tia UV, môi trường ô nhiễm. Ức chế sản sinh Melamin, dưỡng trắng an toàn. Ngăn ngừa lão hoá da, nám, tàn nhang, đốm đồi mồi, làm đẹp da giúp da sáng mịn', N'Hộp', CAST(800000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (102, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (103, N'NT_40_LNQ', N'Image', 1, N'ISPF30', N'Kem chống nắng dành cho da khô Image Skincare Preventio Daily Hydrating Moisturizer SPF 30+', N'kem chong nang danh cho da kho image skincare preventio daily hydrating moisturizer spf 30+', N'Kem chống nắng dành cho da khô Image Skincare Preventio Daily Hydrating Moisturizer SPF 30+ là sản phẩm dưỡng da chuyên dành cho da khô, với công thức đặc biệt vừa cung cấp độ ẩm ngừa da mất nước, vừa bổ sung vitamin và nhiều hoạt chất giúp chống nắng bảo vệ da, ngừa sạm nám, hư tổn, giúp da trẻ khỏe tự nhiên.
Sản phẩm là sự kết hợp hoàn hảo của công nghệ chống nắng hiện đại, kẽm Oxide và sản phẩm chống nắng với cơ chế vật lý, giúp cung cấp khả năng chống nắng phổ rộng UVA/UVB, hình thành màng chắn bảo vệ da tối ưu, ngăn ngừa da hư tổn, sạm nám, lão hóa do tác động của ánh nắng mật trời.
Sản phẩm còn giúp cung cấp độ ẩm sâu cho da khô, ngăn ngừa da bong tróc, kích ứng, mất nước. Nguồn thành phần hoạt chất chống oxy hóa mạnh như Thiothaine, vitamin C hay trà xanh còn là yếu tố hỗ trợ ngừa hư tổn da hoàn hảo.', N'Tuýp', CAST(1300000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (104, N'NT_40_LNQ', N'Image', 1, N'RDDM', N'Kem chống nắng ngừa lão hoá IMAGE MD Restoring Daily Defense Moisturizer SPF 50 -new', N'kem chong nang ngua lao hoa image md restoring daily defense moisturizer spf 50 -new', N'Kem chống nắng ngừa lão hóa Restoring Daily Defense Moisturizer 50 sẽ là chống nắng quang phổ rộng giúp làm chậm đi quá trình lão hóa và bảo vệ làn da', N'Tuýp', CAST(1851000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (105, N'NT_40_LNQ', N'Obagi', 1, N'1160', N'Kem chống nắng Obagi Healthy Skin Protection SPF 35', N'kem chong nang obagi healthy skin protection spf 35', N'Kem Chống Nắng Obagi Healthy Skin Protection SPF35 là sản phẩm tới từ thương hiệu mỹ phẩm Obagi Medical nổi tiếng của Mỹ. Sản phẩm mang tới giải pháp hiệu quả dành cho chị em trong việc chăm sóc và bảo vệ da khỏi tia UVA, UVB. Đây là một trong số những nguyên nhân chính làm da nhanh chóng bị lão hóa và tăng sắc tố da. Hiện nay sản phẩm đang được chị em phụ nữ tin tưởng sử dụng với những đánh giá tích cực về chất lượng.

Thành phần Kem Chống Nắng Obagi Healthy Skin Protection SPF35


- Micronized Zinc Oxide

- Octinoxate

- Ngăn ngừa ảnh hưởng của tia UVA, UVB với da: Tia UVA, UVB phát ra từ ánh nắng mặt trời sẽ ảnh hưởng rất lớn tới da khiến da bị sạm đen, xuất hiện nhiều hắc tố trên da gây nên nám, tàn nhang, làm da bị lão hóa trước tuổi thậm chí có thể gây ra ung thư da. Sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF 35 khi đi ra ngoài sẽ giúp bạn ngăn chặn được những ảnh hưởng của tia UVA, UVB tới da

- Giúp da trắng sáng, mịn màng: Việc sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF35 thường xuyên còn giúp chăm sóc và dưỡng da hiệu quả, cho bạn một làn da trắng sáng, mịn màng là tâm điểm thu hút mọi ánh nhìn

- Bên cạnh đó sản phẩm còn có thể sử dụng làm lớp kem lót trang điểm

- Làm chậm quá trình lão hóa da: Với công thức Z-Cote giúp da nhanh chóng hấp thu kem chống nắng làm cho quá trình lão hóa trên da bởi các tác động từ môi trường diễn ra chậm hơn.

Hướng dẫn sử dụng Kem Chống Nắng Obagi Healthy Skin Protection SPF35

- Trước hết các bạn làm sạch da bằng sữa rửa mặt

- Sau đó thoa đều kem một lượng kem vừa đủ lên da rồi dùng tay vỗ nhẹ để kem thẩm thấu tốt hơn trên da

- Sử dụng trước khi rời khỏi nhà để đạt được hiệu quả cao nhất.

- Bảo quản sản phẩm ở nơi khô ráo, thoáng mát

- Đậy nắp lại ngay sau khi sử dụng.

- Sau khi hoạt động ngoài trời nhiều giờ các bạn nên làm sạch da và tiếp tục thoa Kem chống nắng Obagi Healthy Skin Protection SPF 35 để bảo vệ da hiệu quả.

Quy cách: 85g

Thương hiệu: Obagi

Xuất xứ: Mỹ

', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (106, N'NT_40_LNQ', N'Obagi', 1, N'1561', N'Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50', N'kem chong nang obagi mineral sunshield broad spectrum spf 50', N'Tính năng chống nắng vượt trội
Thành phần kem chống nắng chứa nhiều dưỡng chất cần thiết cho da như Zinc Oxide (giúp làm dịu da và ngăn chặn tia UVA / UVB), Titanium Dioxide (chống nắng khoáng sản cung cấp da khỏi tác hại của tia cực tím), Chiết xuất Tảo (hydrat và bảo vệ da khỏi các kích ứng), Vitamin E (ngăn chặn các gốc tự do có hại).



Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50 cho mọi loại da
Kem chống nắng thiên nhiên cho da nhạy cảm Obagi Sun Shield Mineral Broad Spectrum SPF 50 là kem chống nắng vật lý vừa giúp chống nắng da hiệu quả trước những tác động của tia UVA/UVB vừa cung cấp dưỡng chất dưỡng ẩm làm dịu da và khôi phục hàng rào bảo vệ da hiệu quả. Sản phẩm phù hợp với mọi loại da, kể cả làn da nhạy cảm nhất.

Lưu ý: Hiệu quả của sản phẩm/thuốc/điều trị… tùy thuộc vào tình trạng và đặc điểm riêng của mỗi người.

Chống nắng công nghệ tiên tiến với khả năng kháng tia hồng ngoại IR – đột phá mới của y khoa da liễu toàn cầu.
Chúng ta đã biết các loại kem chống nắng hiện nay có khả năng kháng tia cực tím từ ánh nắng mặt trời UVA và UVB, nhưng một phát hiện gần đây cho thấy tia hồng ngoại cũng là một nhân tố ảnh hưởng đến sắc tố da và hệ quả là sẽ làm cho làn da chúng ta giảm sắc tố và suy giảm sức đề kháng của da.

Công dụng:
– Kem chống nắng phổ rộng, bảo vệ da trước cả tia UVA và UVB
– Dưỡng ẩm cần thiết cho da
– Giúp phục hồi hàng rào bảo vệ da
– Làm trắng da từ bên trong.

Cách sử dụng:
– Sau khi sửa mặt sạch, lấy một lượng kem vừa đủ, apply lên mặt, cổ.
– Sử dụng hàng ngày để có chế độ chăm sóc da tốt nhất.

Dung lượng:
85g.

Thành phần:
Titanium Dioxide 4.9%, Zinc Oxide 4.7%
Water, Butyloctyl Salicylate, Cetyl Dimethicone, Dimethicone, Styrene/acrylates Copolymer, Trimethylsiloxysilicate, Dimethicone PEG-8 Laurate, Isohexadecane, Butylene Glycol, Polysorbate 60, Trisiloxane, Arachidyl Alcohol, Polyhydroxystearic Acid, Hydrated Silica, Ceramide 3, Ceramide 6-II, Ceramide 1, Niacinamide, Cholesterol, Phytosphingosine, PEG-100 Stearate, Glyceryl Stearate, Ascorbic Acid, Avena Sativa (Oat) Kernel Extract, Arachidyl Glucoside, Beeswax, Behenyl Alcohol, Benzyl Alcohol, Stearic Acid, Bisabolol, Dipotassium Glycyrrhizate, Ethylhexylgrycerin, Glycerin, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Pantothenic Acid/Yeasty Polypeptide, PEG-8, Xanthan Gum, Polyaminopropyl Biguanide, Polymethyl Methacrylate, Alumina, Potassium Sorbate, Retinyl Palmitate, Sodium Lauroyl Lactylate, Carbomer, Tocopheryl Acetate, BHT, Disodium EDTA, Methicone, Methylisothiazolinoine, Triethoxycaprylylsilane.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (107, N'NT_40_LNQ', N'Obagi', 1, N'1156', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50', N'kem chong nang obagi sun shield matte broad spectrum spf 50', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. Công thức mỏng nhẹ cung cấp chống nắng phổ rộng và thấm nhanh trên da tạo lớp finish lì và không nhờn dính. Vitamin C giúp da trắng sáng hơn, săn chắc và chống lại các gốc oxi hóa tự do.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.
- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.
- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.
- Đem lại cho bạn làn da mịn màng tươi sáng.
- Sản phẩm thích hợp với mọi loại da.

Thành phần:
Hoạt chất: Homosalate 10%, Octisalate 5%, Zinc Oxide 16.5%

Water (Aqua), C15-19 Alkane, Octyldodecyl Neopentanoate, Polymethylsilsesquioxane, Sorbitan Olivate, Silica, Polyglyceryl-6 Polyrininoleate,Sodium Chloride, Xanthan Gum, Glycerin, Hydroxyacetophenone, Disodium EDTA, 1,2-Hexanediol, Caprylyl Glycol, Sodium Hydroxide, Triethoxycaprylsilane, Polyhydroxystearic Acid, Disteardimonium Hectorite, Polyglyceryl-2 Isostearate, Euphorbia Cerifera (candelilla) Wax, Beeswax,
Dimethicone.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da, dùng ban ngày. Trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (108, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (109, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (110, N'NT_40_LNQ', N'Ziaja', 1, N'ure', N'Kem mềm da Med-15% Urea Foot Cream 100ml (Kem 15% urê)', N'kem mem da med-15% urea foot cream 100ml (kem 15% ure)', N'Sản phẩm chăm sóc da chứa Urê 15% làm mềm, dưỡng ẩm, giảm khô, thô ráp và nứt nẻ da. Bảo vệ da, làm dịu nhẹ da và không gây kích ứng da. Sản phẩm dành cho da khô.
 Lưu ý: sản phẩm chứa hàm lượng Urê cao 15% nên dưỡng ẩm lâu, làm mềm và giảm lớp da bị sừng hóa, giúp giảm ngứa. Dùng để chăm sóc da bị khô do bệnh eczema, viêm da cơ địa, chàm hóa, bệnh da vảy cá.', N'Tuýp', CAST(421000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (111, N'NT_40_LNQ', N'Image', 1, N'ICFF', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30', N'kem nen che khuyet diem image skincare i conceal flawless foundation spf 30', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30 là sản phẩm trang điểm cao cấp với khả năng che khuyết điểm hoàn hảo, kết hợp chống năng tăng cường bảo vệ da, thành phần lành tính giúp phục hồi nhanh chóng da hư tổn, mỏng yếu sau điều giúp giảm.
Sản phẩm được sản xuất theo công thức đặc biệt cho lớp kem nền trang điểm siêu mỏng, mịn mà vẫn giúp che phủ khuyết điểm trên da, cho làn da hoàn hảo, sáng mịn màng không tì vết. Sản phẩm còn hỗ trợ chống nắng ngừa da sạm nám, hư tổn do ánh nắng mặt trời và các yếu tố khác từ môi trường.
Sản phẩm không chứa hóa chất, không chất bảo quản, do đó cực kỳ an toàn cho da, giúp da phục hồi nhanh chóng, sáng khỏe tự nhiên.', N'Chai', CAST(1930000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (112, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (113, N'NT_40_LNQ', N'Image', 1, N'HERG', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel', N'kem phuc hoi va chong tham quang mat image skincare vital c hydrating eye recovery gel', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel - giải pháp giúp dưỡng ẩm làm mềm da, phục hồi cấu trúc vùng da quanh mắt, cho da săn chắc, căng mịn, mờ nhăn, xóa tan quầng thâm, đánh thức làn da tràn đầy sức sống.
Là sản phẩm dưỡng da cao cấp với công nghệ hiện đại, kết hợp vitamin C và vitamin K có khả năng thẩm thấu sâu vào da, giúp ổn định mao mạch, làm sáng da, đồng thời cải thiện quầng thâm mắt, cho làn da rạng rỡ, sáng đều màu.
Sản phẩm còn giúp bổ sung hoạt chất Hyaluronic tăng cường dưỡng ẩm, giữ nước cho da, cải thiện cấu trúc da, ngăn ngừa da chùng nhão, chảy xệ, bọng mắt, nếp nhăn, vết chân chim hình thành sâu.', N'Chai', CAST(1350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (114, N'NT_40_LNQ', N'Image', 1, N'RYRC', N'Kem phục hồi và trẻ hoá da IMAGE MD Restoring Youth Repair Crème with ADT Technology(tm)', N'kem phuc hoi va tre hoa da image md restoring youth repair creme with adt technology(tm)', N'Kem phục hồi và trẻ hóa da Image MD Restoring Youth Repair Crème With ADT Technology TM chứa thành phần chính là retinol, axit glycolic và vitamin C làm tăng cường liên kết dưới da, phục hồi lại tính đàn hồi giúp cho bề mặt da dần căng mịn, trẻ trung, săn chắc và rạng rỡ chỉ sau một thời gian sử dụng.
Với cơ chế loại bỏ lớp sừng hóa, retinol giúp bề mặt da trở nên thông thoáng, tạo điều kiện thúc đẩy sản sinh tế bào mới thay thế tế bào chết ở da. Qua đó, sản phẩm sẽ loại bỏ dần vùng da khô ráp, không đều màu, nuôi dưỡng làn da mịn màng và trở nên tươi sáng.
Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ nhằm mang đến kết quả tối đa.', N'Chai', CAST(3084000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (115, N'NT_40_LNQ', N'Image', 1, N'RRC', N'Kem retinol công nghệ ADT trẻ hoá da IMAGE MD Restoring Retinol Crème With ADT Technology(tm) ', N'kem retinol cong nghe adt tre hoa da image md restoring retinol creme with adt technology(tm)', N'Kem retinol công nghệ ADT trẻ hóa da, mờ thâm nám Image MD Restoring Retinol Crème With Adt Technology TM giúp giảm thiểu sự xuất hiện của nếp nhăn và làm nổi bật tông màu da, đồng thời làm sống lại làn da. Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Chai', CAST(3290000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (116, N'NT_40_LNQ', N'Image', 1, N'IATRAC', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme', N'kem tre hoa lam mo vet tham ageless total retinol a creme', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (117, N'NT_40_LNQ', N'Obagi', 1, N'1175', N'Khăn ướt giúp trị mụn SUZANOBAGIMD Acne Cleansing Wipes', N'khan uot giup tri mun suzanobagimd acne cleansing wipes', N'Đối với da dầu hoặc da dễ bị mụn trứng cá, các loại khăn lau mặt này được pha chế với 2% acid salicylic để giúp điều trị và ngăn ngừa mụn trứng cá trong khi nhanh chóng và nhẹ nhàng làm sạch da.

Công dụng:

- Điều trị mụn trứng cá
- Làm khô mụn trứng cá
- Giúp ngăn ngừa mụn trứng cá mới.
- Làm sạch da nhẹ nhàng nhanh chóng.

Hướng dẫn sử dụng:


- Lau toàn bộ da mặt một đến hai lần mỗi ngày để làm sạch da và điều trị mụn.  

- Khi mới sử dụng nên dùng 1 lần/ngày để tránh khô da và kích ứng. Khi da đã quen có thể tăng lên 2 lần / ngày. 

- Nếu xảy ra hiện tượng khô hoặc bong tróc khó chịu, hãy giảm mỗi ngày một lần.

Thành phần nổi bật:

- Salicylic Acid: hoạt động như một chất tẩy tế bào chết, giúp sửa chữa và làm sạch mụn trứng cá

- Nha đam: giúp dưỡng ẩm và làm dịu da

- Chiết xuất Brassica Oleracea Italica (Bông cải xanh): chứa sulforaphane, một hợp chất giúp loại bỏ các gốc tự do

- Citrus Bioflavonoids: có đặc tính chống oxy hóa giúp bảo vệ chống lại các gốc tự do

- Witch Hazel: loại bỏ dầu thừa và tạp chất để giảm thiểu kích thước lỗ chân lông trên bề mặt', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (118, N'NT_40_LNQ', N'Obagi', 1, N'1176', N'Khăn ướt tẩy trang cho mọi loại da SUZANOBAGIMD Cleansing Wipes', N'khan uot tay trang cho moi loai da suzanobagimd cleansing wipes', N'Khăn Ướt Tẩy Trang SUZANOBAGIMD Cleansing Wipes là sản phẩm làm sạch lý tưởng giúp loại bỏ lớp trang điểm, dầu thừa, bụi bẩn nhanh chóng, hiệu quả mà vẫn vô cùng dịu nhẹ, đem lại làn da khô thoáng và mềm mịn.

Đặc điểm nổi bật:

- Không chứa các chất tẩy rửa mạnh gây tổn hại đến lớp màng ẩm tự nhiên của da

- Sử dụng những chất liệu vải vô cùng mềm mượt, có thể sử dụng cho cả những vùng da nhạy cảm quanh mắt mà không lo sợ rát da hay nổi mẩn đỏ.

- Aloe polyphenols giúp làm dịu da, bảo vệ da khỏi tác hại của tia UV và góp phần ngăn ngừa lão hoá

- Citrus Bioflavonoids duy trì và cân bằng lại da, củng cố lớp màng ẩm tự nhiên trên da và giúp các sản phẩm dưỡng sau phát huy hiệu quả tốt hơn.

- Công thức không chứa hương liệu, chất bảo quản phù hợp cho cả da nhạy cảm

Đây được coi là sản phẩm vừa hiệu quả, vừa lành tính và tiện lợi để bạn có thể mang theo trong những chuyến du lịch ngắn ngày hoặc dùng để tẩy trang giữa ngày ở công ty, hoặc trước và sau khi đến phòng tập.

Thành phần:

Citrus Bioflavonoids, Brassica Sulforaphane, Aloe polyphenols, and Antioxidants

Quy cách đóng gói: 25 tờ / gói

Hướng dẫn sử dụng:

- Mỗi lần sử dụng lấy một miếng khăn giấy lau sạch mặt và vùng cổ. Lau đến khi khăn giấy không còn bám chất dơ.

- Có thể tiếp tục rửa sạch mặt bằng sữa rửa mặt rồi dưỡng da như thông thường.

- Không giặt hay sử dụng lại.', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (119, N'NT_40_LNQ', N'Obagi', 1, N'1180', N'Lotion đặc trị dành cho cơ thể Obagi KèraPhine Body Smoothing Lotion', N'lotion dac tri danh cho co the obagi keraphine body smoothing lotion', N'Công dụng:
Thích hợp sử dụng cho người bị bệnh dày sừng nang lông (keratosis pilaris), vảy nến, nốt đỏ.
Tẩy tế bào chết và loại bỏ tế bào chết trên bề mặt da.
Giúp làn da thô ráp sần sùi được mịn màng.
Giúp làm dịu cân bằng, giảm khô da trên cánh tay.
KèraPhine được sử dụng hàng ngày giúp khôi phục lại làn da khỏe mạnh.


Thành phần:
Water (Aqua), Glycolic Acid, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Ammonium Lactate, Sodium Hydroxide, Glycerin, Dimethicone, Pentylene Glycol, Beta-Glucan, Sodium Hyaluronate Crosspolymer, Sorbitan Isostearate, Disodium EDTA, Polysorbate 60, Ethylhexylglyercin, Caprylyl Glycol, Chlorphenesin, Phenoxyethanol, Titanium Dioxide (CL 77891).


Cách dùng:
Thoa đều lên da một lần mỗi ngày hoặc theo chỉ dẫn của chuyên gia.


Dung lượng:
198ml.', N'Tuýp', CAST(1600000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (120, N'NT_40_LNQ', N'Obagi', 1, N'1136', N'Lotion dưỡng ẩm và tẩy tế bào chết SUZANOBAGIMD IDR Intensive Daily Repair', N'lotion duong am va tay te bao chet suzanobagimd idr intensive daily repair', N'Lotion dưỡng da kiêm tẩy tế bào chết hàng ngày  SUZANOBAGIMD IDR Intensive Daily Repair chứa các axit polyhydroxy (gluconolactone và axit lactobionic) giúp tẩy tế bào chết nhẹ nhàng để giảm thiểu diện mạo lỗ chân lông và các dấu hiệu lão hóa.

Công dụng:

- Giúp làm mềm và làm trẻ hóa làn da hàng ngày, chứa PHAs gluconolactone và axit lactobionic nhẹ nhàng tẩy tế bào chết để giảm thiểu các lỗ chân lông và các dấu hiệu lão hóa có thể nhìn thấy bằng cách tẩy tế bào chết nhẹ 
- Peptide giúp da săn chắc, giảm thiểu nếp nhăn.
- Công thức không gây kích ứng, không nhạy cảm có chứa Vitamin C và E. Với việc sử dụng thường xuyên, IDR sẽ lộ ra một làn da sáng hơn và tươi tắn.
- Công thức này là bác sĩ da liễu được thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.
- Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần chính:

Glucconolactone và Lactobionic Acid (PHAs), Allantoin, và Peptides

Thành phần chi tiết:

Water (aqua), Caprylic/capric Triglyceride, Gluconolactone, Lactobionic Acid, Glyceryl Stearate, Glycerin, Methyl Glucose Sesquistearate, Butyrospermum Parkii (shea) Butter, C12-15 Alkyl Benzoate, Ethylhexyl Palmitate, Cetyl Alcohol, Dimethicone, Phenoxyethanol, Xanthan Gum, Polyacrylate Crosspolymer 6, Sodium Hydroxide, Mica, Caprylyl Glycol, Panthenol, Titanium Dioxide, Ethylhexylglycerin, Disodium EDTA, Bisabolol, Tocopheryl Acetate, Hexylene Glycol, Allantoin, Camellia Oleifera (green Tea) Leaf Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Sinensis Leaf Extract, Tetrahexyldecyl Ascorbate, Sodium Hyaluronate, Myristoyl Pentapeptide-11, Myristoyl Pentapeptide-8.

Hướng dẫn sử dụng:

- Lấy 2-3 giọt thoa đều lên mặt trước khi sử dụng kem chống nắng. Nhẹ nhàng massage cho sản phẩm ngấm đều.

- Dùng hàng ngày.

Chú ý: Chỉ sử dụng bên ngoài da. Ngừng sử dụng nếu nổi ban hoặc kích ứng phát triển và kéo dài. Tránh xa vùng mắt. Tránh xa tầm tay trẻ em. Bắt buộc chống nắng khi dùng sản phẩm.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (121, N'NT_40_LNQ', N'Image', 1, N'OBGM', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque', N'mat na giam nhay cam va kich ung da image ormedic balancing gel masque', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque được tạo nên từ rất nhiều chiết xuất tự nhiên như nha đam, dầu oliu, hoa cúc, trà đen… nhẹ nhàng lấy đi các tế bào chết, làm sạch tạp chất bên trong lỗ chân lông, nhanh chóng làm dịu làn da bị kích ứng, kháng viêm, nhanh chóng phục hồi làn da bị tổn thương, mẩn đỏ và viêm sưng. Bên cạng đó, sản phẩm còn giúp bảo vệ da chống lại sự mất nước và cân bằng độ ẩm cho da.
Thành phần dầu oliu của Image Ormedic Balancing Gel Masque có cấu trúc hoá học gần giống với cấu trúc dầu tự nhiên trên da hơn bất kì loại dầu nào khác nên có tác dụng vô cùng tích cực trong việc chăm sóc da. Với thành phần giàu chất béo lành mạnh, chất chống oxy hoá như phenolic, vitamin E cùng với squalene, acidas oleic, dầu oliu giúp kích thích và chữa lành các tổn thương trên da, làm dịu các kích ứng da từ tác động của ánh nắng mặt trời.', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (122, N'NT_40_LNQ', N'Image', 1, N'RORM', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque', N'mat na ngu dem tre hoa da image md restoring overnight retinol masque', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque giúp bổ sung dưỡng chất ngăn ngừa lão hóa, cung cấp độ ẩm cho da suốt cả đêm khi ngủ. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Hộp', CAST(3710000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (123, N'NT_40_LNQ', N'Image', 1, N'TRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mmặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen Image Skincare Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (124, N'NT_40_LNQ', N'Khác', 1, N'MNTBG', N'Mặt nạ tế bào gốc Rwine Beauty Stem Cell Placenta Mask', N'mat na te bao goc rwine beauty stem cell placenta mask', N'✅ Mặt nạ chứa nhau thai ngựa có thể làm giảm các triệu chứng nhạy cảm với mẩn đỏ và viêm. Có thể thúc đẩy quá trình chữa lành vết thương.
✅ Bên cạnh đó, cân bằng độ ẩm tương đối, giúp da mịn màng, mềm mại, ngăn ngừa khô da, làm chậm lão hóa da, nhìn thành nếp nhăn.
✅ EGF giúp giao tiếp với các tế bào của bạn để tạo ra nhiều collagen và elastin hơn.
✅ KGF Thúc đẩy tái tạo da, hỗ trợ tăng đàn hồi giúp da luôn tươi trẻ, mịn màng và săn chắc cho làn da khỏe mạnh, trẻ trung.
✅ Làm mờ vết nám, tàn nhang, vết thâm một cách hiệu quả. giúp cải thiện tone da một cách nhẹ nhàng mà hiệu quả.
✅ Cung câp nước, khóa ẩm, tăng độ đàn hồi và ngăn ngừa tình trạng khô da.
✅ Mặt nạ nhau thai có thể sử dụng cho da yếu, tổn thương do mụn, da bị hư tổn sau khi dùng kem trộn, sau điều trị laser, da xỉn màu, da nám, tàn nhang.
✅ Thành phần của mặt nạ được kiểm định rất khắt khe, đảm bảo không nhiễm hóa chất gây tổn thưởng, kích ứng da dù da mẫn cảm.
✅ Bổ sung vi khoáng giúp da khỏe mạnh, tăng đề đề kháng cho da.

', N'Miếng', CAST(50000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (125, N'NT_40_LNQ', N'Image', 1, N'IATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (126, N'NT_40_LNQ', N'Image', 1, N'ATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (127, N'NT_40_LNQ', N'Image', 1, N'FREP', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads', N'mat na tre hoa da vung mat image skincare flawless rejuvenating eye pads', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads với dưỡng chất từ nước dừa có thể dùng cho mọi lứa tuổi, cung cấp nuôi dưỡng và tái tạo vùng mắt, loại bỏ lớp trang điểm một cách nhẹ nhàng và hiệu quả nhất.
Hyaluronic và các chiết xuất từ thực vật giúp làm mờ vết nhăn và thúc đẩy quá trình trẻ hóa cho làn da. Comfrey và Chamomile có tác dụng xoa dịu và làm giảm bọng mắt cho đôi mắt tràn đầy năng lượng và không còn cảm giác mệt mỏi. Làm sạch và tái tạo da trong một bước thật đơn giản.', N'Hộp', CAST(1530000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (128, N'NT_40_LNQ', N'Ziaja', 1, N'med3', N'Nhũ tương mềm da 3% Urê - Med 3% Urea Face Emulsion 50ml', N'nhu tuong mem da 3% ure - med 3% urea face emulsion 50ml', N'- Tích cực tái tạo hàng rào bảo vệ của Da.
- Dưỡng ẩm lâu dài và sâu và bảo vệ chống lại sự mất độ ẩm.
- Bổ sung chất béo cho Da, tăng cường hiệu quả của sự gắn kết và độ săn chắc của lớp biểu bì.
- Làm mềm, giảm độ nhám và bong tróc quá mức.
- Chất kem đặc nến giúp dưỡng ẩm 1 cách hiệu quả nhất.
', N'Tuýp', CAST(381000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (129, N'NT_40_LNQ', N'Ziaja', 1, N'nt', N'Nhũ tương mượt da toàn thân Ziaja Med - Atopic D.L. Body Emulsion 400ml', N'nhu tuong muot da toan than ziaja med - atopic d.l. body emulsion 400ml', N'Dịu nhẹ nhanh cho các tổn thương da, dưỡng ẩm sâu, giảm khô, bong tróc, mẩn ngứa, nuôi dưỡng và thúc đẩy tái tạo tế bào, làm chậm quá trình lão hoa da. Hỗ trợ tích cực điều trị bệnh ở các bệnh nhân viêm da cơ địa, viêm da dị ứng, vảy nến, á sừng, hăm tã bỉm, chốc ghẻ, "cứt trâu", giảm thiểu nguy cơ hoại tử da ở bệnh nhân sau phẫu thuật, nằm tại chỗ, sau bỏng, chấn thương...và chăm sóc đối với da khô, da nhạy cảm ở trẻ em và người lớn.', N'Chai', CAST(430000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (130, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (131, N'iBeauty', N'ACM', 1, N'ACM39', N'SEBIONEX ACTIMAT TINTED ANTI-IMPERFECTION SKINCARE', N'sebionex actimat tinted anti-imperfection skincare', N'Kem bôi ngừa mụn, trứng cá, che khuyết điểm', N'Tuýp', CAST(379000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (132, N'iBeauty', N'ACM', 1, N'ACM38', N'SEBIONEX HYDRA REPAIR CREAM', N'sebionex hydra repair cream', N'Sản phẩm dưỡng da dành cho da mụn, giúp cung cấp độ ẩm cho da, cho da luôn khoẻ mạnh', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (133, N'NT_40_LNQ', N'Image', 1, N'VCHWB', N'Serum khoán, khoá nước cho da Vital C Hydrating Water Burst ', N'serum khoan, khoa nuoc cho da vital c hydrating water burst', N'Serum khoán, khoá nước cho da, cấu trúc gel nhẹ, biến đổi gel thành nước khi thoa và massage nhẹ lên da. Sản phẩm cung cấp hàng loạt các chất chống oxy hóa, axit hyaluronic, vitamin và peptide giúp trẻ hóa làn da, căng sáng mịn, rạng rỡ và khỏe mạnh', N'Tuýp', CAST(1815000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (134, N'NT_40_LNQ', N'Image', 1, N'IIBS', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum ', N'serum lam trang sang da mo tham nam image skincare iluma intense bleaching serum', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum giúp loại bỏ lớp da sừng khô sần, xỉn màu, lão hóa và nhiều đốm nâu, cung cấp dưỡng chất cho da sáng hồng rạng rỡ từ bên trong.
Là dòng sản phẩm dưỡng da cao cấp, sử dụng thành phần điều giúp giảm nám đặc hiệu kết hợp cùng các thành phần hoạt chất làm sáng da chiết xuất tự nhiên như như Licorice, Azelaic acid (kháng khuẩn) hiệu quả trong việc làm mờ vết thâm, đốm nâu, tàn nhang, giúp làm sáng da tự nhiên.
Serum trị nám này còn được bổ sung thành phần Glycolic acid giúp nhẹ nhàng tẩy da chết, cải thiện bề mặt và cấu trúc da, hạn chế nếp nhăn hình thành, ngăn ngừa lão hóa, cho làn da tươi trẻ, rạng rỡ.', N'Chai', CAST(1300000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (135, N'NT_40_LNQ', N'Obagi', 1, N'1139', N'Serum nâng cơ chống lão hóa Obagi Elastiderm Facial Serum', N'serum nang co chong lao hoa obagi elastiderm facial serum', N'Cảm nhận vẻ đẹp của làn da có độ đàn hồi, tươi trẻ với ELASTIderm Facial Serum của Obagi. Được bào chế với công nghệ bản quyền Bi-Mineral Contour Complex™, serum thế hệ mới này giúp làn da lấy lại độ đàn hồi, cải thiện dấu hiệu lão hóa, đem lại vẻ tươi trẻ và đầy sức sống. Với các thành phần sử dụng công nghệ FlexFluid™, serum với thể chất mỏng nhẹ đem lại hiệu quả đàn hồi trên da tức thì.

Thành phần:

Phức hợp bi-mineral: kết hợp đồng, kẽm và malonic acid để làn da mịn mượt hơn
Water (Aqua), Glycerin,Methylpropanediol, Alcohol Denat., Dimethicone, Isocetyl Stearoyl Stearate, Coco-Caprylate/Caprate, Isononyl Isononanoate, Pentylene Glycol, Phenoxyethanol, Polyacrylate Crosspolymer-6, Carbomer, Malonic Acid, Sodium Hydroxide, Disodium EDTA, Amodimethicone, Zinc Carbonate, Copper Carbonate Hydroxide, T-Butyl Alcohol, Parfum.

Công dụng:

Công nghệ FlexFluid™: giúp serum mỏng nhẹ, cải thiện kết cấu da sau 2 tuần

Củng cố độ đàn hồi của da
Cải thiện kết cấu da
Giảm nhăn
Cách dùng:
Sử dụng một ngày 2 lần vào buổi sáng và tối .Buổi sáng sau khi thoa sản phẩm kế tiếp thoa kem chống nắng.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.

- Để xa tầm tay trẻ em.

', N'Lọ', CAST(4680000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (136, N'NT_40_LNQ', N'Obagi', 1, N'1138', N'Serum phục hồi tái tạo da Obagi Gentle Rejuvenation Skin Rejuvenation Serum', N'serum phuc hoi tai tao da obagi gentle rejuvenation skin rejuvenation serum', N'Obagi Gentle Rejuvenation Skin Rejuvenation Serum sử dụng công thức tiên tiến để giúp làn da phục hồi nhanh chóng. Sản phẩm hỗ trợ quá trình lành thương và phục hồi tự nhiên của da, giúp da tự sửa chữa và hạn chế các dấu hiệu lão hóa.

Các thành phần củng cố sức khỏe làn da trong serum giúp lành thương, giảm nhăn cũng như cải thiện kết cấu da, cho da mịn màng, đều màu.

Serum chống lão hóa này cũng đẩy nhanh quá trình sinh sản collagen và trẻ hóa làn da.

Serum hoàn toàn không chứa hương liệu, giảm thiểu kích ứng trên da. Sử dụng kết hợp cùng kem chống nắng để đem lại hiệu quả phục hồi, bảo vệ da tốt nhất.

Đặc điểm nổi bật

Kinetin và zeatin giảm thiểu dấu hiệu lão hóa, nếp nhăn, thâm nám
Chiết xuất táo Thụy Sĩ đẩy nhanh quá trình tái tạo tế bào để xóa nhăn và làm mịn màng kết cấu da
Peptide giúp củng cố màn da, giúp da săn chắc
Sodium Hyaluronate​ cấp ẩm sâu, làm dịu làn da khô, bong tróc
Hệ thống vận chuyển độc đáo giúp thành phần hoạt chất được phân phối đến da trong vòng 12 giờ
Thành phần chi tiết:

Water (Aqua)​,​ Biosaccharide Gum-1​,​ Methyl Gluceth-20​,​ Propanediol​,​ Butylene Glycol,​ PEG-12 Glyceryl Dimyristate,​ Sorbitan Laurate​,​ Phenoxyethanol​,​ Xanthan Gum​,​ Cellulose Gum​,​ Oryza Sativa (Rice) Extract​,​ Ethoxydiglycol​,​ Malus Domestica Fruit Cell Culture Extract​,​ Lecithin​,​ Polyglyceryl-4 Laurate,​ Kinetin​,​ Zeatin​,​ Ethylhexylglycerin​,​ Citric Acid​,​ Sodium Hyaluronate​,​ Dilauryl Citrate,​ Baicalin,​ 1,​2-Hexanediol,​ Caprylyl Glycol​,​ Glycerin​,​ Inulin Lauryl Carbamate​,​ Ergothioneine​,​ Tetrapeptide-26.', N'Lọ', CAST(2980000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (137, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (138, N'NT_40_LNQ', N'Image', 1, N'TMSCS', N'Serum trẻ hoá da The Max Stem Cell Serum', N'serum tre hoa da the max stem cell serum', N'Serum giúp giảm lão hóa da The Max Stem Cell Serum với công nghệ chăm sóc da hiện đại là giải pháp dưỡng ẩm chống lão hóa hoàn hảo, giúp da ngày càng săn chắc, căng mịn, xóa mờ dấu vết lão hóa cũng như cung cấp dưỡng chất nuôi dưỡng tế bào, DNA khỏe mạnh.
Là sản phẩm dưỡng da cao cấp, kết hợp các chuỗi peptide và Argirelene có khả năng thẩm thấu sâu vào hạ bì da, giúp kích thích tăng sinh Collagen và Elastin cho làn da căng mịn, săn chắc, đàn hồi, tái tạo nét tươi trẻ, rạng ngời cho da.
Sản phẩm còn ứng dụng công nghệ tế bào gốc và chiết xuất từ thiên nhiên giúp nhẹ nhàng nuôi dưỡng, phục hồi DNA, kích thích tế bào gốc có sẵn phát triển, tăng cường chức năng bảo vệ da ngừa hư tổn.', N'Chai', CAST(3350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (139, N'iBeauty', N'ACM', 1, N'ACM09', N'SESITÉLIAL Cleansing Gel - Gel rửa mặt', N'sesitelial cleansing gel - gel rua mat', N'Làm sạch, loại bỏ tế bào chết và bã nhờn, làm thông thoáng lỗ chân lông giúp da mịn màng tươi sáng', N'Tuýp', CAST(318000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (140, N'iBeauty', N'ACM', 1, N'ACM07', N'SESITELIAL Sunscreen Cream SPF100+ - Kem Chống Nắng', N'sesitelial sunscreen cream spf100+ - kem chong nang', N'Chống nắng UVA, UVB với SPF100+ dành cho da thường và da nhạy cảm', N'Tuýp', CAST(417000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (141, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (142, N'NT_40_LNQ', N'Stanhome', 1, N'SCS', N'Stanhome Clear Spot', N'stanhome clear spot', N'Kem bôi giúp làm dịu da, tránh nóng rát, làm sạch sâu thông thoáng chân lông, giảm sưng tấy viêm đỏ, se mụn, xẹp mụn, ngăn ngừa sự phát triển của vi khuẩn gây mụn và sự hình thành các vết thâm, sẹo.', N'Tuýp', CAST(385000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (143, N'NT_40_LNQ', N'Stanhome', 1, N'SLE', N'Stanhome Lipid Extra', N'stanhome lipid extra', N'Kem dưỡng phục hồi cho da khô, rất khô, mẩn đỏ, mẩn ngứa da mặt, cơ thể, làm dịu cảm giác bứt rứt, căng tức dưới da, thúc đẩy tái tạo tế bào', N'Tuýp', CAST(529000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (144, N'NT_40_LNQ', N'Image', 1, N'OBFC', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser', N'sua rua mat can bang da image skincare ormedic balancing facial cleanser', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser với chiết xuất từ thành phần tự nhiên an toàn, lành tình, là giải pháp chăm sóc da hoàn hảo dành cho bạn, giúp loại bỏ nhẹ nhàng lớp dầu nhờn, bụi bẩn dư thừa, làm sáng mịn, sạch da mà không gây ra các kích ứng, đồng thời cân bằng độ ẩm, giúp duy trì làn da mềm mại, mịn màng.
Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser được đánh giá là dòng sản phẩm kết hợp hoạt chất hữu cơ và tinh chất thiên nhiên hiệu quả hiện nay, có khả năng tăng cường chống oxy hóa và bảo vệ nuôi dưỡng làn da tươi trẻ, khỏe khoắn mỗi ngày. Sản phẩm được chứng minh thích hợp với làn da nhạy cảm, da ở độ tuổi thanh thiếu niên, phụ nữ mang thai hay da sau hư tổn, kích ứng.
Với chiết xuất từ tinh chất trà xanh, hoa cúc, nha đam, dầu olive, yến mạch, sử dụng sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser còn giúp cung cấp dưỡng chất thẩm thấu sâu vào da giúp làm dịu da, là mờ thâm sạm, cho làn da tươi sáng mỗi ngày. ', N'Chai', CAST(1100000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (145, N'NT_40_LNQ', N'Image', 1, N'TFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Image Ageless Skincare Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1015000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (146, N'NT_40_LNQ', N'Image', 1, N'ATFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Ageless Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1050000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (147, N'NT_40_LNQ', N'Image', 1, N'CMAS', N'Sữa rửa mặt dạng cát, điều trị mụn CLEARCELL Medicated Acne Scrub', N'sua rua mat dang cat, dieu tri mun clearcell medicated acne scrub', N'Sữa rửa mặt dạng cát, điều trị mụnt chứa Benzoyl peroxide giúp diệt vi khuẩn sinh mụn, giảm viêm, tiêu nhân mụn và các hạt tẩy muối biển cực nhỏ giúp loại bỏ lớp da chết bên ngoài cũng như các chất gây tắc nghẽn lỗ chân lông. ', N'Chai', CAST(890000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (148, N'NT_40_LNQ', N'Image', 1, N'HFC', N'Sữa rửa mặt dưỡng ẩm, phục hồi da VITAL C Hydrating Facial Cleanser', N'sua rua mat duong am, phuc hoi da vital c hydrating facial cleanser', N'Sữa rửa mặt Image Skincare Vital C Hydrating Facial Cleanser với công thức độc đáo kết hợp sử dụng nguồn vitamin C hàm lượng cao giúp làm sạch sâu đồng thời dưỡng sáng da, dưỡng ẩm hiệu quả, cung cấp dưỡng chất phục hồi cấu trúc và bề mặt da, cho da căng mịn, khỏe từ bên trong.
Là dòng sản phẩm chăm sóc da cao cấp được ứng dụng công nghệ cao tại Mỹ với khả năng bổ sung độ ẩm làm mềm da, loại bỏ da chết khô sần, xỉn màu, giúp da mềm mại, kích thích sản sinh tế bào da mới đồng thời bổ sung dưỡng chất như vitamin A, C, E...giúp phục hồi nhanh chóng làn da tổn thương, nhạy cảm, kích ứng, giúp da dịu mát, mịn màng tự nhiên.', N'Chai', CAST(999000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (149, N'NT_40_LNQ', N'Image', 1, N'TMSCFC', N'Sữa rửa mặt phục hồi và nuôi dưỡng da The Max Stem Cell Facial Cleanser', N'sua rua mat phuc hoi va nuoi duong da the max stem cell facial cleanser', N'Sữa rửa mặt The Max Stem Cell Facial Cleanser - dòng sản phẩm chăm sóc da cao cấp với chiết xuất tự nhiên an toàn, lành tính thẩm thấu sâu làm sạch da vượt trội đồng thời dưỡng ẩm, cung cấp hoạt chất tái tạo, nuôi dưỡng da sáng khỏe tự nhiên.
Là dòng sản phẩm sữa rửa mặt chăm sóc da hằng ngày, không chứa acid, sulfate & paraben, với khả năng nhẹ nhàng làm sạch sâu bên trong lỗ chân lông, giúp lấy đi hoàn toàn bụi bẩn, bã nhờn, da chết giúp da sạch mịn, đồng thời cân bằng pH của da, ngừa da khô ráp, bong tróc hay mất đi lớp dầu tự nhiên trên bề mặt.
Thành phần tế bào gốc thực vật & các chiết xuất thực vật trong sản phẩm còn giúp nuôi dưỡng da & bảo vệ da khỏi những tác động gây hại từ môi trường như ô nhiễm môi trường, ảnh hưởng của ánh nắng mặt trời và tia UV, hỗ trợ ngừa lão hóa, giảm sự xuất hiện của nếp nhăn, kích thích tăng sinh Collagen và Elastin cho da săn chắc, căng mịn, đàn hồi.
Thành phần tế bào gốc còn là yếu tố giúp phục hồi ADN, kích thích tế bào gốc có sẵn của da phát triển.', N'Tuýp', CAST(970000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (150, N'NT_40_LNQ', N'Ceradan', 1, N'C150ml', N'Sữa Tắm Dưỡng Ẩm Ceradan Wash 150ml', N'sua tam duong am ceradan wash 150ml', N'Sữa tắm dưỡng ẩm Ceradan Wash thương hiệu Hyphens Singapore dành cho da khô và da nhạy cảm, thân thiện cho da trẻ em. Sữa tắm Ceradan Wash giúp cấp ẩm cho da khô, lưu giữ hương thơm quyến rũ, nồng nàn.', N'Chai', CAST(215000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (151, N'NT_40_LNQ', N'Obagi', 1, N'1152', N' Tinh chất cấp nước phục hồi da Obagi Daily Hydro-Drops ', N'tinh chat cap nuoc phuc hoi da obagi daily hydro-drops', N'Serum cấp nước đầu tiên của Obagi với công nghệ kết hợp vitamin B3 (niacinamide) cùng các chiết xuất dầu tự nhiên giúp tăng cường độ ẩm và cấp nước cho da mà không hề làm giảm khả năng thẩm thấu của các loại đặc trị đang sử dụng như retinoids. 

Serum dạng gel chứa các hạt tinh chất tan ngay trên da và dưỡng ẩm sâu mà không để lại lớp bóng nhờn. Thích hợp với mọi loại da.

Đặc điểm nổi bật

Vitamin B3 (Niacinamide) giúp phục hồi, làm dịu và củng cố màng da, tăng cường sức chống chịu của da khi kết hợp với tretinoin/retinol. 
Niacinamide (vitamin B3) điều chỉnh sự trao đổi chất của tế bào và kích thích tái tạo, phục hồi màng lipid bằng cách sản sinh ra ceramide. Và chính nhờ khả năng kích thích sản sinh ra ceramide mà da được dưỡng ẩm, bảo vệ và ngăn ngừa tổn thương. Chưa kể là niacinamide còn cho tác dụng làm sáng da, trị thâm, trị mụn hiệu quả.

Abyssinian Oil & Hibiscus oil: dưỡng ẩm, giúp da săn chắc
Hỗn hợp chất chống oxy hóa giảm nếp nhăn, tăng cường khả năng hoạt động của kem chống nắng
Hướng dẫn sử dụng

Sau khi rửa mặt và sử dụng toner, dùng một lượng sản phẩm vừa đủ cho cả mặt, massage cho sản phẩm thẩm thấu hoàn toàn.', N'Chai', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (152, N'NT_40_LNQ', N'Image', 1, N'ATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Image Skincare Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (153, N'NT_40_LNQ', N'Image', 1, N'IATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (154, N'NT_40_LNQ', N'Image', 1, N'A6', N'Tinh chất làm đầy và căng da 6 loại hyaluronic Ageless Total Pure Hyaluronic Filler 6', N'tinh chat lam day va cang da 6 loai hyaluronic ageless total pure hyaluronic filler 6', N'Hoạt chất Hyaluronic đặc biệt có trong Ageless Total Pure Hyaluronic Filler Image Skincare giúp hỗ trợ làn da được cân bằng thẩm thấu, giúp làm mịn màng cho các nếp nhăn ,sẽ tăng cường hỗ trợ dưỡng chất giúp cải thiện nếp nhăn mà không cần tiêm chích trên da', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (155, N'NT_40_LNQ', N'Image', 1, N'HFO', N'Tinh dầu Massage chống lão hoá VITAL C Hydrating Facial Oil', N'tinh dau massage chong lao hoa vital c hydrating facial oil', N'Sự pha trộn các nguồn dầu thực vật từ thiên nhiên giúp phục hồi, nuôi dưỡng và chống lão hóa. Với mùi thơm đặc trưng mang đến cảm giác dịu nhẹ, giảm căng thẳng và mệt mỏi cho làn da.', N'Lọ', CAST(1900000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (156, N'NT_40_LNQ', N'Avène', 1, N'AVENE3', N'Xịt khoáng - Avene Thermal Spring Water 150ml', N'xit khoang - avene thermal spring water 150ml', N'Nguồn khoáng êm dịu cho làn da nhạy cảm, làm dịu, chống kích ứng, kháng viêm và các gốc tự do.

CHI TIẾT SẢN PHẨM 

Ra đời năm 1990, Avène nhanh chóng nhận được sự ủng hộ của nhiều khách hàng và trở thành thương hiệu cực kỳ nổi tiếng trong lĩnh vực chăm sóc làn da nhạy cảm. Trải qua hơn 300 công trình nghiên cứu sinh học, dược lý và kiểm nghiệm lâm sàng nghiêm ngặt, sản phẩm của Avène là sự kết hợp chặt chẽ giữa quy trình sản xuất mỹ phẩm và dược phẩm để đảm bảo chất lượng tối ưu cho dòng sản phẩm độc quyền bắt nguồn từ suối khoáng thiên nhiên.

Nguồn nước khoáng đã làm nên tên tuổi Avène nằm ở dãy núi Cévennes, Pháp. Tại đây, các dòng nước mưa thấm sâu xuống lòng đất, chảy xuyên qua "bộ lọc" tự nhiên của dãy núi và hấp thụ mọi khoáng chất cũng như thành phần vi lượng thiên nhiên quý hiếm trong hơn 40 năm trước khi trở thành dòng suối khoáng Sanite-Odile nổi tiếng, cũng là thành phần chính làm nên mỹ phẩm chứa khoáng nổi tiếng của Avène, được các bác sĩ da liễu trên toàn thế giới xác nhận và khuyên dùng. 

Chi tiết:

Làm dịu vết ửng đỏ

Làm giảm cảm giác ngứa

Độ khoáng thấp không làm khô da

Giàu silicat và nguyên tố vi lượng

pH 7,5 cân bằng hoàn hảo cho da

sản xuất và đóng gói vô trùng, đảm bảo vô trùng trong quá trình sử dụng

không chất bảo quản

Các chỉ định hằng ngày:

+Da mặt :

Làm dịu và làm mịn làn da nhạy cảm (đỏ, kích ứng do dao cạo…)

Hoàn tất tẩy trang

Cố định lớp trang điểm

Khi đi du lịch

+Thân thể :

Giảm các loại sưng, ngứa (eczéma, thuốc trị trứng cá…)

Sau tẩy lông

Sau ra nắng

Bỏng nhẹ

Da em bé (hăm tã, vệ sinh da…)

Sau khi chơi thể thao

Phun sương đều lên mặt, để yên khoảng 10 giây rồi dùng bông chậm nhẹ lên mặt', N'Chai', CAST(280000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (157, N'NT_40_LNQ', N'Avène', 1, N'AVENE5', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 300ml', N'xit khoang avene thermal spring water spray mist 300ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(370000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (158, N'NT_40_LNQ', N'Avène', 1, N'AVENE6', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 50ml', N'xit khoang avene thermal spring water spray mist 50ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(170000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (159, N'NT_40_LNQ', N'Image', 1, N'IIBEP', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder', N'bot tay te bao chet va lam trang da image iluma intense brightening exfoliating powder', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder được ứng dụng công nghệ hiện đại, các enzyme không chỉ loại bỏ bụi bẩn và dầu nhờn sâu tận chân lông mà còn duy trì độ ẩm cần thiết cho da lâu dài, giúp mang lại hiệu quả chống lão hóa da rõ rệt. Da mượt mà mà trắng sáng và sẵn sàng hấp thụ hoàn toàn các dưỡng chất từ tinh chất và kem dưỡng ở những bước chăm sóc kế tiếp. Đặc biệt, thành phần sản phẩm không gây nên tình trạng kích ứng da khi sử dụng thường xuyên, phù hợp với cả làn da nhạy cảm. Sau tẩy tế bào chết, làn da sẽ được kích thích tuần hoàn máu, tái tạo collagen, thúc đẩy sự đàn hồi, bạn gái sẽ cảm nhận được sự thay đổi rõ rệt như da trở nên mịn màng, bề mặt da và lỗ chân lông đảm bảo thông thoáng, sạch sẽ, từ đó ngăn chặn sự hình thành mụn hiệu quả.', N'Chai', CAST(1080000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (160, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (161, N'NT_40_LNQ', N'Khác', 1, N'DUS', N'Dermaton US', N'dermaton us', N'-Kem bôi dưỡng trắng mịn da, đem lại làn da luôn trắng hồng, mịn màng.
-Ngừa và trị tất cả các loại mụn trứng cá: mụn đầu đen, mụn đầu trắng, mụn kèm theo viêm bội nhiễm gây sưng tấy đau nhức
-Liền sẹo, ngừa vết thâm, ngừa tái phát mụn. Tẩy sạch bã nhờn
-Giảm bỏng rát trên bề mặt da khi dùng isotretinoin', N'Tuýp', CAST(67800 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (162, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP125', N'Gammaphil 125ml', N'gammaphil 125ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(59000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (163, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP150', N'Gammaphil 150ml', N'gammaphil 150ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(104000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (164, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP500', N'Gammaphil 500ml', N'gammaphil 500ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(250000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (165, N'NT_40_LNQ', N'Farmona', 1, N'f15', N'Gel chấm mụn chứa bùn hoạt tính Farmona - Dermacos Anti - acne anti - imperfection spot gel 15ml', N'gel cham mun chua bun hoat tinh farmona - dermacos anti - acne anti - imperfection spot gel 15ml', N'Gel chấm làm giảm và ngăn ngừa mụn. Làm dịu nhẹ các kích ứng, mẩn đỏ da. Giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Sản phẩm dành cho da bị mụn trứng cá.
Nhũ Bạc Colloidal Silver diệt khuẩn tới 650 loại khác nhau và kháng viêm mạnh, làm lành nhanh các tổn thương viêm do vi khuẩn, virut gây ra.
Tổ hợp AHA Lactic + Citric + Malic + Glicolic Acid ngăn ngừa biến đổi sắc tố da, hạn chế hình thành vết thâm, xám xỉn và loang lổ màu da, dưỡng ẩm, kích thích tái tạo da và ngăn ngừa hình thành sẹo.
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Đất sét Trắng Kaolin chứa gần 20 loại khoáng chất, có tác dụng diệt khuẩn, thanh lọc da, lành nhanh các tổn thương do mụn
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn.
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da.
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính.
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(247000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (166, N'NT_40_LNQ', N'Uriage', 1, N'UTI5', N'Gel rửa mặt cho da nhờn mụn, hỗn hợp- Uriage Hyseac Gel Nettoyant Cleansing Gel 150ml', N'gel rua mat cho da nhon mun, hon hop- uriage hyseac gel nettoyant cleansing gel 150ml', N'Công Dụng: Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp giúp làm sạch sâu bên trong da, điều hòa hoạt động tiết bã nhờn đồng thời làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

CHI TIẾT SẢN PHẨM 

Thể tích thực: 150ml

Xuất xứ: Pháp

Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel với thành phần làm sạch dịu nhẹ: Piroctone Olamine giúp làm sạch sâu bên trong da; Chiết xuất liễu anh thảo điều hòa hoạt động tiết bã nhờn và nước khoáng Uriage làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

Thành phần của Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

Hyseac Gel nettoyant: Giúp hỗ trợ nuôi dưỡng da và ngăn ngừa mụn chứng cá.
Nước khoáng Uriage: Có tác dụng giúp kháng khuẩn, cung cấp ẩm cho da và giúp làm dịu da.
Piroctone Olamine: Giúp làm sạch da, loại bỏ các tạp chất, bã nhờn và bụi bẩn trên da và giúp làm se khít lỗ chân lông.
Chiết xuất liễu anh thảo: Có tác dụng giúp hỗ trợ điều tiết bã nhờn và giúp ngăn ngừa mụn hiệu quả.
Thành phần khác: Aqua (Water), Sodium Laureth Sulfate, Peg-80 Glyceryl Cocoate, Sodium Cocoamphoacetate, Ppg-2 Hydroxyethyl Cocamide, Coco-glucoside, Glyceryl Oleate, Sodium Laureth-8 Sulfate, Sodium Methyl Cocoyl Taurate, Glycine, Sodium Chloride, Peg-2 Hydroxyethyl Coco-isostearamide, Citric Acid, Sodium Oleth Sulfate, Magnesium Laureth Sulfate, Parfum, Magnesium Laureth-8 Sulfate, Bepilobium Angustifolium Extract, Phenoxyethanol, Sodium Metabisulfite.

Công dụng của Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel

Giúp bỏ tạp chất, giảm sự tiết bã nhờn, thấm dầu dư thừa
Làm giảm độ sáng bóng, đặc biệt là ở trán, mũi, cằm
Làm săn các lỗ chân lông
Loại bỏ mụn đầu đen và mụn cám, kháng khuẩn, không làm khô da, cân bằng độ ẩm cho da
Giảm sự sản sinh ra mụn
Làn da trở săn chắc, khỏe mạnh và tươi tắn hơn.
Cách dùng Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

 Sử dụng vào buổi sáng và tối
Thoa một lượng nhỏ gel lên da mặt ẩm, massage nhẹ nhàng và rửa lại sạch với nước.
Đối tượng sử dụng Uriage Hyseac Gel Nettoyant Cleansing Gel

Sản phẩm thích hợp dùng cho da hỗn hợp và da nhờn mụn.
', N'Tuýp', CAST(401000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (167, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (168, N'iBeauty', N'Khác', 1, N'ID30', N'ID30 Gold USA', N'id30 gold usa', N'Viên uống trắng da, ngừa nám, chống oxi hoá, hạn chế lão hoá da, tăng khả năng chống ánh nắng mặt trời, tia UV, môi trường ô nhiễm. Ức chế sản sinh Melamin, dưỡng trắng an toàn. Ngăn ngừa lão hoá da, nám, tàn nhang, đốm đồi mồi, làm đẹp da giúp da sáng mịn', N'Hộp', CAST(800000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (169, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (170, N'NT_40_LNQ', N'Image', 1, N'ISPF50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50', N'kem chong nang danh cho da hon hop image skincare prevention+ daily ultimate protection moisturizer spf 50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50 - giải pháp chống nắng phổ rộng, giúp ngừa da sạm nám, hư tổn, lão hóa, nuôi dưỡng da trẻ khỏe dài lâu.
Là sản phẩm chống nắng phổ rộng cả UVA/UVB, kết hợp công nghệ chống nắng hiện đại cùng cơ chế vật lý vừa giúp dưỡng ẩm làm mềm da, ngừa da khô ráp, bong tróc, kích ứng, vừa làm dịu da, giúp duy trì trạng thái tự nhiên.
Sản phẩm còn giúp bổ sung nguồn dưỡng chất chiết xuất từ thiên nhiên như chiết xuất tế bào gốc hạt nho, vitamin C, Roxisome, Photosome...giúp thẩm thấu sâu vào da, nuôi dưỡng làn da khỏe mạnh từ bên trong, giảm các tổn thương do ánh nắng mặt trời gây ra, đồng thời phục hồi, sữa chữa nhanh chóng các tổn thương DNA.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (171, N'NT_40_LNQ', N'Image', 1, N'RDDM', N'Kem chống nắng ngừa lão hoá IMAGE MD Restoring Daily Defense Moisturizer SPF 50 -new', N'kem chong nang ngua lao hoa image md restoring daily defense moisturizer spf 50 -new', N'Kem chống nắng ngừa lão hóa Restoring Daily Defense Moisturizer 50 sẽ là chống nắng quang phổ rộng giúp làm chậm đi quá trình lão hóa và bảo vệ làn da', N'Tuýp', CAST(1851000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (172, N'NT_40_LNQ', N'Obagi', 1, N'1160', N'Kem chống nắng Obagi Healthy Skin Protection SPF 35', N'kem chong nang obagi healthy skin protection spf 35', N'Kem Chống Nắng Obagi Healthy Skin Protection SPF35 là sản phẩm tới từ thương hiệu mỹ phẩm Obagi Medical nổi tiếng của Mỹ. Sản phẩm mang tới giải pháp hiệu quả dành cho chị em trong việc chăm sóc và bảo vệ da khỏi tia UVA, UVB. Đây là một trong số những nguyên nhân chính làm da nhanh chóng bị lão hóa và tăng sắc tố da. Hiện nay sản phẩm đang được chị em phụ nữ tin tưởng sử dụng với những đánh giá tích cực về chất lượng.

Thành phần Kem Chống Nắng Obagi Healthy Skin Protection SPF35


- Micronized Zinc Oxide

- Octinoxate

- Ngăn ngừa ảnh hưởng của tia UVA, UVB với da: Tia UVA, UVB phát ra từ ánh nắng mặt trời sẽ ảnh hưởng rất lớn tới da khiến da bị sạm đen, xuất hiện nhiều hắc tố trên da gây nên nám, tàn nhang, làm da bị lão hóa trước tuổi thậm chí có thể gây ra ung thư da. Sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF 35 khi đi ra ngoài sẽ giúp bạn ngăn chặn được những ảnh hưởng của tia UVA, UVB tới da

- Giúp da trắng sáng, mịn màng: Việc sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF35 thường xuyên còn giúp chăm sóc và dưỡng da hiệu quả, cho bạn một làn da trắng sáng, mịn màng là tâm điểm thu hút mọi ánh nhìn

- Bên cạnh đó sản phẩm còn có thể sử dụng làm lớp kem lót trang điểm

- Làm chậm quá trình lão hóa da: Với công thức Z-Cote giúp da nhanh chóng hấp thu kem chống nắng làm cho quá trình lão hóa trên da bởi các tác động từ môi trường diễn ra chậm hơn.

Hướng dẫn sử dụng Kem Chống Nắng Obagi Healthy Skin Protection SPF35

- Trước hết các bạn làm sạch da bằng sữa rửa mặt

- Sau đó thoa đều kem một lượng kem vừa đủ lên da rồi dùng tay vỗ nhẹ để kem thẩm thấu tốt hơn trên da

- Sử dụng trước khi rời khỏi nhà để đạt được hiệu quả cao nhất.

- Bảo quản sản phẩm ở nơi khô ráo, thoáng mát

- Đậy nắp lại ngay sau khi sử dụng.

- Sau khi hoạt động ngoài trời nhiều giờ các bạn nên làm sạch da và tiếp tục thoa Kem chống nắng Obagi Healthy Skin Protection SPF 35 để bảo vệ da hiệu quả.

Quy cách: 85g

Thương hiệu: Obagi

Xuất xứ: Mỹ

', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (173, N'NT_40_LNQ', N'Obagi', 1, N'1561', N'Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50', N'kem chong nang obagi mineral sunshield broad spectrum spf 50', N'Tính năng chống nắng vượt trội
Thành phần kem chống nắng chứa nhiều dưỡng chất cần thiết cho da như Zinc Oxide (giúp làm dịu da và ngăn chặn tia UVA / UVB), Titanium Dioxide (chống nắng khoáng sản cung cấp da khỏi tác hại của tia cực tím), Chiết xuất Tảo (hydrat và bảo vệ da khỏi các kích ứng), Vitamin E (ngăn chặn các gốc tự do có hại).



Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50 cho mọi loại da
Kem chống nắng thiên nhiên cho da nhạy cảm Obagi Sun Shield Mineral Broad Spectrum SPF 50 là kem chống nắng vật lý vừa giúp chống nắng da hiệu quả trước những tác động của tia UVA/UVB vừa cung cấp dưỡng chất dưỡng ẩm làm dịu da và khôi phục hàng rào bảo vệ da hiệu quả. Sản phẩm phù hợp với mọi loại da, kể cả làn da nhạy cảm nhất.

Lưu ý: Hiệu quả của sản phẩm/thuốc/điều trị… tùy thuộc vào tình trạng và đặc điểm riêng của mỗi người.

Chống nắng công nghệ tiên tiến với khả năng kháng tia hồng ngoại IR – đột phá mới của y khoa da liễu toàn cầu.
Chúng ta đã biết các loại kem chống nắng hiện nay có khả năng kháng tia cực tím từ ánh nắng mặt trời UVA và UVB, nhưng một phát hiện gần đây cho thấy tia hồng ngoại cũng là một nhân tố ảnh hưởng đến sắc tố da và hệ quả là sẽ làm cho làn da chúng ta giảm sắc tố và suy giảm sức đề kháng của da.

Công dụng:
– Kem chống nắng phổ rộng, bảo vệ da trước cả tia UVA và UVB
– Dưỡng ẩm cần thiết cho da
– Giúp phục hồi hàng rào bảo vệ da
– Làm trắng da từ bên trong.

Cách sử dụng:
– Sau khi sửa mặt sạch, lấy một lượng kem vừa đủ, apply lên mặt, cổ.
– Sử dụng hàng ngày để có chế độ chăm sóc da tốt nhất.

Dung lượng:
85g.

Thành phần:
Titanium Dioxide 4.9%, Zinc Oxide 4.7%
Water, Butyloctyl Salicylate, Cetyl Dimethicone, Dimethicone, Styrene/acrylates Copolymer, Trimethylsiloxysilicate, Dimethicone PEG-8 Laurate, Isohexadecane, Butylene Glycol, Polysorbate 60, Trisiloxane, Arachidyl Alcohol, Polyhydroxystearic Acid, Hydrated Silica, Ceramide 3, Ceramide 6-II, Ceramide 1, Niacinamide, Cholesterol, Phytosphingosine, PEG-100 Stearate, Glyceryl Stearate, Ascorbic Acid, Avena Sativa (Oat) Kernel Extract, Arachidyl Glucoside, Beeswax, Behenyl Alcohol, Benzyl Alcohol, Stearic Acid, Bisabolol, Dipotassium Glycyrrhizate, Ethylhexylgrycerin, Glycerin, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Pantothenic Acid/Yeasty Polypeptide, PEG-8, Xanthan Gum, Polyaminopropyl Biguanide, Polymethyl Methacrylate, Alumina, Potassium Sorbate, Retinyl Palmitate, Sodium Lauroyl Lactylate, Carbomer, Tocopheryl Acetate, BHT, Disodium EDTA, Methicone, Methylisothiazolinoine, Triethoxycaprylylsilane.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (174, N'NT_40_LNQ', N'Obagi', 1, N'1156', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50', N'kem chong nang obagi sun shield matte broad spectrum spf 50', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. Công thức mỏng nhẹ cung cấp chống nắng phổ rộng và thấm nhanh trên da tạo lớp finish lì và không nhờn dính. Vitamin C giúp da trắng sáng hơn, săn chắc và chống lại các gốc oxi hóa tự do.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.
- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.
- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.
- Đem lại cho bạn làn da mịn màng tươi sáng.
- Sản phẩm thích hợp với mọi loại da.

Thành phần:
Hoạt chất: Homosalate 10%, Octisalate 5%, Zinc Oxide 16.5%

Water (Aqua), C15-19 Alkane, Octyldodecyl Neopentanoate, Polymethylsilsesquioxane, Sorbitan Olivate, Silica, Polyglyceryl-6 Polyrininoleate,Sodium Chloride, Xanthan Gum, Glycerin, Hydroxyacetophenone, Disodium EDTA, 1,2-Hexanediol, Caprylyl Glycol, Sodium Hydroxide, Triethoxycaprylsilane, Polyhydroxystearic Acid, Disteardimonium Hectorite, Polyglyceryl-2 Isostearate, Euphorbia Cerifera (candelilla) Wax, Beeswax,
Dimethicone.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da, dùng ban ngày. Trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (175, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (176, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (177, N'NT_40_LNQ', N'Obagi', 1, N'1155', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40', N'kem chong nang vat ly suzanobagimd physical defense broad spectrum spf 40', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường.

Công dụng:

- Bảo vệ da bằng Titanium Dioxide và Zinc Oxide với chỉ số PA ++++
- Chống tia UVA,UVB, HEV, VIS, IR 
- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo.
- Mịn nhẹ trên da, không đóng thành vệt.
- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi.
- Bổ sung aloe vera làm dịu viêm và đỏ.
- Không gây hại tới rạn san hô khi tắm biển.

Thành phần:

Active: Titanium Dioxide (4.5%), Zinc Oxide (12.8%)

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Olerzcea Italica (Broccoli) Exrtact

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (178, N'NT_40_LNQ', N'Image', 1, N'TELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Creme', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 202, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (179, N'NT_40_LNQ', N'Image', 1, N'IIBEP', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder', N'bot tay te bao chet va lam trang da image iluma intense brightening exfoliating powder', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder được ứng dụng công nghệ hiện đại, các enzyme không chỉ loại bỏ bụi bẩn và dầu nhờn sâu tận chân lông mà còn duy trì độ ẩm cần thiết cho da lâu dài, giúp mang lại hiệu quả chống lão hóa da rõ rệt. Da mượt mà mà trắng sáng và sẵn sàng hấp thụ hoàn toàn các dưỡng chất từ tinh chất và kem dưỡng ở những bước chăm sóc kế tiếp. Đặc biệt, thành phần sản phẩm không gây nên tình trạng kích ứng da khi sử dụng thường xuyên, phù hợp với cả làn da nhạy cảm. Sau tẩy tế bào chết, làn da sẽ được kích thích tuần hoàn máu, tái tạo collagen, thúc đẩy sự đàn hồi, bạn gái sẽ cảm nhận được sự thay đổi rõ rệt như da trở nên mịn màng, bề mặt da và lỗ chân lông đảm bảo thông thoáng, sạch sẽ, từ đó ngăn chặn sự hình thành mụn hiệu quả.', N'Chai', CAST(1080000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (180, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (181, N'NT_40_LNQ', N'Khác', 1, N'DUS', N'Dermaton US', N'dermaton us', N'-Kem bôi dưỡng trắng mịn da, đem lại làn da luôn trắng hồng, mịn màng.
-Ngừa và trị tất cả các loại mụn trứng cá: mụn đầu đen, mụn đầu trắng, mụn kèm theo viêm bội nhiễm gây sưng tấy đau nhức
-Liền sẹo, ngừa vết thâm, ngừa tái phát mụn. Tẩy sạch bã nhờn
-Giảm bỏng rát trên bề mặt da khi dùng isotretinoin', N'Tuýp', CAST(67800 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (182, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP125', N'Gammaphil 125ml', N'gammaphil 125ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(59000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (183, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP150', N'Gammaphil 150ml', N'gammaphil 150ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(104000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (184, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP500', N'Gammaphil 500ml', N'gammaphil 500ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(250000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (185, N'NT_40_LNQ', N'Farmona', 1, N'f15', N'Gel chấm mụn chứa bùn hoạt tính Farmona - Dermacos Anti - acne anti - imperfection spot gel 15ml', N'gel cham mun chua bun hoat tinh farmona - dermacos anti - acne anti - imperfection spot gel 15ml', N'Gel chấm làm giảm và ngăn ngừa mụn. Làm dịu nhẹ các kích ứng, mẩn đỏ da. Giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Sản phẩm dành cho da bị mụn trứng cá.
Nhũ Bạc Colloidal Silver diệt khuẩn tới 650 loại khác nhau và kháng viêm mạnh, làm lành nhanh các tổn thương viêm do vi khuẩn, virut gây ra.
Tổ hợp AHA Lactic + Citric + Malic + Glicolic Acid ngăn ngừa biến đổi sắc tố da, hạn chế hình thành vết thâm, xám xỉn và loang lổ màu da, dưỡng ẩm, kích thích tái tạo da và ngăn ngừa hình thành sẹo.
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Đất sét Trắng Kaolin chứa gần 20 loại khoáng chất, có tác dụng diệt khuẩn, thanh lọc da, lành nhanh các tổn thương do mụn
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn.
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da.
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính.
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(247000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (186, N'NT_40_LNQ', N'Uriage', 1, N'UTI5', N'Gel rửa mặt cho da nhờn mụn, hỗn hợp- Uriage Hyseac Gel Nettoyant Cleansing Gel 150ml', N'gel rua mat cho da nhon mun, hon hop- uriage hyseac gel nettoyant cleansing gel 150ml', N'Công Dụng: Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp giúp làm sạch sâu bên trong da, điều hòa hoạt động tiết bã nhờn đồng thời làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

CHI TIẾT SẢN PHẨM 

Thể tích thực: 150ml

Xuất xứ: Pháp

Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel với thành phần làm sạch dịu nhẹ: Piroctone Olamine giúp làm sạch sâu bên trong da; Chiết xuất liễu anh thảo điều hòa hoạt động tiết bã nhờn và nước khoáng Uriage làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

Thành phần của Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

Hyseac Gel nettoyant: Giúp hỗ trợ nuôi dưỡng da và ngăn ngừa mụn chứng cá.
Nước khoáng Uriage: Có tác dụng giúp kháng khuẩn, cung cấp ẩm cho da và giúp làm dịu da.
Piroctone Olamine: Giúp làm sạch da, loại bỏ các tạp chất, bã nhờn và bụi bẩn trên da và giúp làm se khít lỗ chân lông.
Chiết xuất liễu anh thảo: Có tác dụng giúp hỗ trợ điều tiết bã nhờn và giúp ngăn ngừa mụn hiệu quả.
Thành phần khác: Aqua (Water), Sodium Laureth Sulfate, Peg-80 Glyceryl Cocoate, Sodium Cocoamphoacetate, Ppg-2 Hydroxyethyl Cocamide, Coco-glucoside, Glyceryl Oleate, Sodium Laureth-8 Sulfate, Sodium Methyl Cocoyl Taurate, Glycine, Sodium Chloride, Peg-2 Hydroxyethyl Coco-isostearamide, Citric Acid, Sodium Oleth Sulfate, Magnesium Laureth Sulfate, Parfum, Magnesium Laureth-8 Sulfate, Bepilobium Angustifolium Extract, Phenoxyethanol, Sodium Metabisulfite.

Công dụng của Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel

Giúp bỏ tạp chất, giảm sự tiết bã nhờn, thấm dầu dư thừa
Làm giảm độ sáng bóng, đặc biệt là ở trán, mũi, cằm
Làm săn các lỗ chân lông
Loại bỏ mụn đầu đen và mụn cám, kháng khuẩn, không làm khô da, cân bằng độ ẩm cho da
Giảm sự sản sinh ra mụn
Làn da trở săn chắc, khỏe mạnh và tươi tắn hơn.
Cách dùng Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

 Sử dụng vào buổi sáng và tối
Thoa một lượng nhỏ gel lên da mặt ẩm, massage nhẹ nhàng và rửa lại sạch với nước.
Đối tượng sử dụng Uriage Hyseac Gel Nettoyant Cleansing Gel

Sản phẩm thích hợp dùng cho da hỗn hợp và da nhờn mụn.
', N'Tuýp', CAST(401000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (187, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (188, N'iBeauty', N'Khác', 1, N'ID30', N'ID30 Gold USA', N'id30 gold usa', N'Viên uống trắng da, ngừa nám, chống oxi hoá, hạn chế lão hoá da, tăng khả năng chống ánh nắng mặt trời, tia UV, môi trường ô nhiễm. Ức chế sản sinh Melamin, dưỡng trắng an toàn. Ngăn ngừa lão hoá da, nám, tàn nhang, đốm đồi mồi, làm đẹp da giúp da sáng mịn', N'Hộp', CAST(800000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (189, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (190, N'NT_40_LNQ', N'Image', 1, N'ISPF50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50', N'kem chong nang danh cho da hon hop image skincare prevention+ daily ultimate protection moisturizer spf 50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50 - giải pháp chống nắng phổ rộng, giúp ngừa da sạm nám, hư tổn, lão hóa, nuôi dưỡng da trẻ khỏe dài lâu.
Là sản phẩm chống nắng phổ rộng cả UVA/UVB, kết hợp công nghệ chống nắng hiện đại cùng cơ chế vật lý vừa giúp dưỡng ẩm làm mềm da, ngừa da khô ráp, bong tróc, kích ứng, vừa làm dịu da, giúp duy trì trạng thái tự nhiên.
Sản phẩm còn giúp bổ sung nguồn dưỡng chất chiết xuất từ thiên nhiên như chiết xuất tế bào gốc hạt nho, vitamin C, Roxisome, Photosome...giúp thẩm thấu sâu vào da, nuôi dưỡng làn da khỏe mạnh từ bên trong, giảm các tổn thương do ánh nắng mặt trời gây ra, đồng thời phục hồi, sữa chữa nhanh chóng các tổn thương DNA.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (191, N'NT_40_LNQ', N'Image', 1, N'RDDM', N'Kem chống nắng ngừa lão hoá IMAGE MD Restoring Daily Defense Moisturizer SPF 50 -new', N'kem chong nang ngua lao hoa image md restoring daily defense moisturizer spf 50 -new', N'Kem chống nắng ngừa lão hóa Restoring Daily Defense Moisturizer 50 sẽ là chống nắng quang phổ rộng giúp làm chậm đi quá trình lão hóa và bảo vệ làn da', N'Tuýp', CAST(1851000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (192, N'NT_40_LNQ', N'Obagi', 1, N'1160', N'Kem chống nắng Obagi Healthy Skin Protection SPF 35', N'kem chong nang obagi healthy skin protection spf 35', N'Kem Chống Nắng Obagi Healthy Skin Protection SPF35 là sản phẩm tới từ thương hiệu mỹ phẩm Obagi Medical nổi tiếng của Mỹ. Sản phẩm mang tới giải pháp hiệu quả dành cho chị em trong việc chăm sóc và bảo vệ da khỏi tia UVA, UVB. Đây là một trong số những nguyên nhân chính làm da nhanh chóng bị lão hóa và tăng sắc tố da. Hiện nay sản phẩm đang được chị em phụ nữ tin tưởng sử dụng với những đánh giá tích cực về chất lượng.

Thành phần Kem Chống Nắng Obagi Healthy Skin Protection SPF35


- Micronized Zinc Oxide

- Octinoxate

- Ngăn ngừa ảnh hưởng của tia UVA, UVB với da: Tia UVA, UVB phát ra từ ánh nắng mặt trời sẽ ảnh hưởng rất lớn tới da khiến da bị sạm đen, xuất hiện nhiều hắc tố trên da gây nên nám, tàn nhang, làm da bị lão hóa trước tuổi thậm chí có thể gây ra ung thư da. Sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF 35 khi đi ra ngoài sẽ giúp bạn ngăn chặn được những ảnh hưởng của tia UVA, UVB tới da

- Giúp da trắng sáng, mịn màng: Việc sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF35 thường xuyên còn giúp chăm sóc và dưỡng da hiệu quả, cho bạn một làn da trắng sáng, mịn màng là tâm điểm thu hút mọi ánh nhìn

- Bên cạnh đó sản phẩm còn có thể sử dụng làm lớp kem lót trang điểm

- Làm chậm quá trình lão hóa da: Với công thức Z-Cote giúp da nhanh chóng hấp thu kem chống nắng làm cho quá trình lão hóa trên da bởi các tác động từ môi trường diễn ra chậm hơn.

Hướng dẫn sử dụng Kem Chống Nắng Obagi Healthy Skin Protection SPF35

- Trước hết các bạn làm sạch da bằng sữa rửa mặt

- Sau đó thoa đều kem một lượng kem vừa đủ lên da rồi dùng tay vỗ nhẹ để kem thẩm thấu tốt hơn trên da

- Sử dụng trước khi rời khỏi nhà để đạt được hiệu quả cao nhất.

- Bảo quản sản phẩm ở nơi khô ráo, thoáng mát

- Đậy nắp lại ngay sau khi sử dụng.

- Sau khi hoạt động ngoài trời nhiều giờ các bạn nên làm sạch da và tiếp tục thoa Kem chống nắng Obagi Healthy Skin Protection SPF 35 để bảo vệ da hiệu quả.

Quy cách: 85g

Thương hiệu: Obagi

Xuất xứ: Mỹ

', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (193, N'NT_40_LNQ', N'Obagi', 1, N'1561', N'Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50', N'kem chong nang obagi mineral sunshield broad spectrum spf 50', N'Tính năng chống nắng vượt trội
Thành phần kem chống nắng chứa nhiều dưỡng chất cần thiết cho da như Zinc Oxide (giúp làm dịu da và ngăn chặn tia UVA / UVB), Titanium Dioxide (chống nắng khoáng sản cung cấp da khỏi tác hại của tia cực tím), Chiết xuất Tảo (hydrat và bảo vệ da khỏi các kích ứng), Vitamin E (ngăn chặn các gốc tự do có hại).



Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50 cho mọi loại da
Kem chống nắng thiên nhiên cho da nhạy cảm Obagi Sun Shield Mineral Broad Spectrum SPF 50 là kem chống nắng vật lý vừa giúp chống nắng da hiệu quả trước những tác động của tia UVA/UVB vừa cung cấp dưỡng chất dưỡng ẩm làm dịu da và khôi phục hàng rào bảo vệ da hiệu quả. Sản phẩm phù hợp với mọi loại da, kể cả làn da nhạy cảm nhất.

Lưu ý: Hiệu quả của sản phẩm/thuốc/điều trị… tùy thuộc vào tình trạng và đặc điểm riêng của mỗi người.

Chống nắng công nghệ tiên tiến với khả năng kháng tia hồng ngoại IR – đột phá mới của y khoa da liễu toàn cầu.
Chúng ta đã biết các loại kem chống nắng hiện nay có khả năng kháng tia cực tím từ ánh nắng mặt trời UVA và UVB, nhưng một phát hiện gần đây cho thấy tia hồng ngoại cũng là một nhân tố ảnh hưởng đến sắc tố da và hệ quả là sẽ làm cho làn da chúng ta giảm sắc tố và suy giảm sức đề kháng của da.

Công dụng:
– Kem chống nắng phổ rộng, bảo vệ da trước cả tia UVA và UVB
– Dưỡng ẩm cần thiết cho da
– Giúp phục hồi hàng rào bảo vệ da
– Làm trắng da từ bên trong.

Cách sử dụng:
– Sau khi sửa mặt sạch, lấy một lượng kem vừa đủ, apply lên mặt, cổ.
– Sử dụng hàng ngày để có chế độ chăm sóc da tốt nhất.

Dung lượng:
85g.

Thành phần:
Titanium Dioxide 4.9%, Zinc Oxide 4.7%
Water, Butyloctyl Salicylate, Cetyl Dimethicone, Dimethicone, Styrene/acrylates Copolymer, Trimethylsiloxysilicate, Dimethicone PEG-8 Laurate, Isohexadecane, Butylene Glycol, Polysorbate 60, Trisiloxane, Arachidyl Alcohol, Polyhydroxystearic Acid, Hydrated Silica, Ceramide 3, Ceramide 6-II, Ceramide 1, Niacinamide, Cholesterol, Phytosphingosine, PEG-100 Stearate, Glyceryl Stearate, Ascorbic Acid, Avena Sativa (Oat) Kernel Extract, Arachidyl Glucoside, Beeswax, Behenyl Alcohol, Benzyl Alcohol, Stearic Acid, Bisabolol, Dipotassium Glycyrrhizate, Ethylhexylgrycerin, Glycerin, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Pantothenic Acid/Yeasty Polypeptide, PEG-8, Xanthan Gum, Polyaminopropyl Biguanide, Polymethyl Methacrylate, Alumina, Potassium Sorbate, Retinyl Palmitate, Sodium Lauroyl Lactylate, Carbomer, Tocopheryl Acetate, BHT, Disodium EDTA, Methicone, Methylisothiazolinoine, Triethoxycaprylylsilane.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (194, N'NT_40_LNQ', N'Obagi', 1, N'1156', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50', N'kem chong nang obagi sun shield matte broad spectrum spf 50', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. Công thức mỏng nhẹ cung cấp chống nắng phổ rộng và thấm nhanh trên da tạo lớp finish lì và không nhờn dính. Vitamin C giúp da trắng sáng hơn, săn chắc và chống lại các gốc oxi hóa tự do.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.
- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.
- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.
- Đem lại cho bạn làn da mịn màng tươi sáng.
- Sản phẩm thích hợp với mọi loại da.

Thành phần:
Hoạt chất: Homosalate 10%, Octisalate 5%, Zinc Oxide 16.5%

Water (Aqua), C15-19 Alkane, Octyldodecyl Neopentanoate, Polymethylsilsesquioxane, Sorbitan Olivate, Silica, Polyglyceryl-6 Polyrininoleate,Sodium Chloride, Xanthan Gum, Glycerin, Hydroxyacetophenone, Disodium EDTA, 1,2-Hexanediol, Caprylyl Glycol, Sodium Hydroxide, Triethoxycaprylsilane, Polyhydroxystearic Acid, Disteardimonium Hectorite, Polyglyceryl-2 Isostearate, Euphorbia Cerifera (candelilla) Wax, Beeswax,
Dimethicone.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da, dùng ban ngày. Trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (195, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (196, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (197, N'NT_40_LNQ', N'Obagi', 1, N'1155', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40', N'kem chong nang vat ly suzanobagimd physical defense broad spectrum spf 40', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường.

Công dụng:

- Bảo vệ da bằng Titanium Dioxide và Zinc Oxide với chỉ số PA ++++
- Chống tia UVA,UVB, HEV, VIS, IR 
- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo.
- Mịn nhẹ trên da, không đóng thành vệt.
- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi.
- Bổ sung aloe vera làm dịu viêm và đỏ.
- Không gây hại tới rạn san hô khi tắm biển.

Thành phần:

Active: Titanium Dioxide (4.5%), Zinc Oxide (12.8%)

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Olerzcea Italica (Broccoli) Exrtact

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (198, N'NT_40_LNQ', N'Image', 1, N'TELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Creme', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (199, N'NT_40_LNQ', N'Image', 1, N'ATELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
GO
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (200, N'NT_40_LNQ', N'Image', 1, N'ATRAC', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme', N'kem dac tri lao hoa ageless total retinol a creme', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo ', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (201, N'NT_40_LNQ', N'Ceradan', 1, N'C30g', N'Kem Dưỡng Ẩm Ceradan 30g', N'kem duõng ảm ceradan 30g', N'Ceradan là liệu pháp dưỡng ẩm dùng trong trường hợp da khô, da kích ứng, nhạy cảm. Ceradan bổ sung cách thành phần tự nhiên của da giúp phục hồi hàng rào bảo vệ da và giảm sự mất nước qua da.  Ceradan bổ sung lipid sinh lý là Ceramide, Acid béo tự do, Cholesterol với tỉ lệ tối ưu 3:1:1, cho lớp sừng của da giúp xây dựng, sửa chữa hàng rào bảo vệ của da (bệnh nhân Chàm thể tạng thường bị khiếm khuyết hàng rào bảo vệ da).
Chứa ceramide vượt trội – là thành phần chiếm tỉ lệ cao trong lipid gian bào (bệnh nhân Chàm thể tạng thường thiếu).
Glycerin trong Ceradan có tác dụng dưỡng ẩm da.
Điều chỉnh độ pH ở trong khoảng 4- 6, làm phục hồi màng acid bảo vệ da.
Ceradan giúp gắn kết các tế bào sừng có vai trò như lớp vữa, tạo thành hàng rào bảo vệ vững chắc.', N'Tuýp', CAST(254000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (202, N'NT_40_LNQ', N'Cetaphil', 1, N'Kem Dưỡng Ẩm Cetaphil Moisturizing Cream', N'Kem Dưỡng Ẩm Cetaphil Moisturizing Cream', N'kem duong am cetaphil moisturizing cream', N'Sản phẩm được các chuyên gia da liễu bào chế với thành phần giúp da mềm mại, không khô, nứt nẻ dành cho làn da. Sản phẩm chiết xuất 100% tự nhiên không chứa kiềm, không gây kích ứng cho da, ngay cả với làn da nhạy cảm, mang lại hiệu quả chăm sóc da tốt với cả vùng da mặt và vùng da toàn thân.', N'Tuýp', CAST(183000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (203, N'NT_40_LNQ', N'Obagi', 1, N'1133', N'Kem dưỡng làm dịu da Obagi Gentle Rejuvenation Skin Calming Cream', N'kem duong lam diu da obagi gentle rejuvenation skin calming cream', N'Obagi Gentle Rejuvenation Skin Calming Cream cải thiện tình trạng da trong quá trình bắt đầu lão hóa, đồng thời cung cấp độ ẩm sâu cho da khô và da nhạy cảm. Các yếu tố tăng trưởng từ thực vật là kinetin và zeatin cũng giúp giảm dấu hiệu tổn thương từ ánh nắng mặt trời, bao gồm nếp nhăn và vết thâm nám. Kem cũng giúp giảm ngứa rát và tình trạng da bị đỏ.

Công dụng:

Cung cấp độ ẩm và nước cho da
Giảm dấu hiệu lão hóa
Giảm nếp nhăn, thâm nám
Giảm thiểu kích ứng da và đỏ
Thích hợp cho da thường đến da khô, kể cả da nhạy cảm  và sau trị liệu
Thành phần nổi bật:

- Kinetin tăng cường khả năng giữ ẩm của da

- Zeatin cải thiện làn da thô ráp, khiến da đều màu và mềm mại hơn

Thành phần chi tiết:

Water (Aqua)​,​ Glyceryl Stearate​,​ Propylene Glycol​,​ Octyldodecyl Myristate,​ Stearic Acid​,​ Cetyl Alcohol​,​ PEG-12 Glyceryl Dimyristate,​ Stearyl Alcohol​,​ Lactobacillus Ferment,​ Glycine Soja (Soybean) Sterols​,​ Phenoxyethanol​,​ Laureth-23​,​ Dimethicone​,​ Carbomer​,​ Tocopheryl Acetate​,​ Ethoxydiglycol​,​ Sodium Hydroxide​,​ Ethylhexylglycerin​,​ Kinetin​,​ Zeatin​,​ Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate​,​ Disodium EDTA​,​ Panthenol​,​ Citric Acid​,​ Ascorbic Acid​,​ Hydrolyzed Elastin​,​ Soluble Collagen​,​ Aloe Barbadensis Leaf Juice​,​ Hydrochloric Acid.

Hướng dẫn sử dụng:

Cho một lượng vừa đủ vào lòng bàn tay, thoa lên da mặt và cổ vào mỗi sáng và tối hoặc theo hướng dẫn của bác sĩ.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (204, N'NT_40_LNQ', N'Obagi', 1, N'1134', N'Kem dưỡng phục hồi da ban đêm Obagi Gentle Rejuvenation Advanced Night Repair', N'kem duong phuc hoi da ban dem obagi gentle rejuvenation advanced night repair', N'Công dụng:
Obagi Gentle Rejuvenation Advanced Night Repair là một loại kem dưỡng ban đêm để phục hồi da. Sử dụng hàm lượng cao peptide, kinetin và zeatin để cải thiện làn da. Những thành phần này được chuyển sâu vào da mịn nếp nhăn ngoài giảm bớt những điểm sậm màu. Các thành phần khác làm việc với kinetin và zeatin để đảm bảo làn da cảm thấy thoải mái và khỏe mạnh. Kem này cũng có kết quả làm dịu cho những người có tấy đỏ và kích thích như đỏ da. Obagi Gentle Rejuvenation Advanced Night Repair giúp ngăn ngừa các dấu hiệu sớm của lão hóa và hỗ trợ giảm nếp nhăn. Nó được khuyến khích cho nhạy cảm, khô.

Thành phần:
Purified Water, Pentavitin (Saccharide Isomerate), Prunus Amygdalus Dulcis (Sweet Almond Oil), Cetyl Alcohol, Capric Caprylic Triglycerides, Palmitoyl Tripeptide-5, Glycerin, PEG-20 Methyl Glucose Sesquistearate, Simmondsia Chinensis (Jojoba Seed Oil), Ceramide III, Ceramide IIIB, Ceramide VI, Ceramide I, Phytosphingosine, Carbomer, Phenoxyethanol, Caprylyl Glycol, Hexylene Glycol, Diethylene Glycol Monoethyl Ether, Vitamin E, Cholesterol, Kinetin-Zeatin Complex 0.1%, Tetrasodium EDTA, Allantoin, Butylated Hydroxytoluene, Hyaluronic Acid.

Cách sử dụng:
Sau khi làm sạch da, thoa đều Obagi Gentle Rejuvenation Advanced Night Repair lên vùng mặt và cổ, massage nhẹ nhàng cho sản phẩm được hấp thụ hoàn toàn.

Dung lượng:
50g.

', N'Lọ', CAST(2300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (205, N'NT_40_LNQ', N'Farmona', 1, N'F50', N'Kem giảm bóng nhờn, ngừa mụn Farmona - Dermacos Anti - Acne Matting Cream 50ml', N'kem giam bong nhon, ngua mun farmona - dermacos anti - acne matting cream 50ml', N'Làm dịu nhẹ các kích ứng, mẩn đỏ da. Dưỡng ẩm và dưỡng da, giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Làm giảm bóng nhờn, làm giảm mụn và ngăn ngừa mụn. Chống nắng, giúp bảo vệ da trước tia cực tím và trước tác nhân có hại bên ngoài (bụi, ô nhiễm môi trường). Da trở lên mịn màng, khô thoáng cả ngày. Sản phẩm dành cho da dầu và da bị mụn trứng cá.
Phức hợp chống bóng nhờn Mattewax hạn chế tiết bã nhờn và điều hòa hoạt động tuyến bã nhờn.
Phim chống nắng UVA/UVB Titanium Dioxide
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Bơ Lô Hội Aloe Barbadensis Leaf Extract chứa nhiều loại Glicoside Aloin, Aloinozide A & B, các Polisacharide, axit amin, vitamin  C, khoáng chất, … chống viêm, khử trùng, củng cố và gia tăng hệ miễn dịch cho da, làm se mụn và thúc đẩy quá trình lành mụn, làm mềm da và kích thích tái tạo da 
Bơ & Dầu Jojoba Simmondsia Chinensis Butter and Oil  giàu axit Eikozen. Làm sạch hoàn toàn bã nhờn và dầu dư thừa trên da, hạn chế tối đa sự hình thành mụn trứng cá và mụn đầu đen. Dễ dàng thấm sâu vào da, bảo vệ da trước các tác nhân có hại và kích thích tái tạo da. 
Nguyên tố vi lượng Mg + Kẽm + Đồng + Sắt từ Nấm men tự nhiên Saccharomyces Silicon + Magnesium+Copper+Zinc+Iron Ferment  hỗ trợ các hoạt động tế bào, giúp loại bỏ các vấn đề về da. 
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA 
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn. 
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da. 
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính. 
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), 0, N'1575392400', N'1575565199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (206, N'NT_40_LNQ', N'Image', 1, N'RBC', N'Kem làm sáng da và mờ nám IMAGE MD Restoring Brightening  Crème With ADT Technology(tm) ', N'kem lam sang da va mo nam image md restoring brightening creme with adt technology(tm)', N'Kem làm sáng da và mờ nám công nghệ ADT Image MD Restoring Brightening Crème With ADT Technology TM có tác dụng ngăn ngừa dấu hiệu lão hóa da, ức chế sản xuất melanin để hình thành nám, đồi mồi trên bề mặt. Không những thế, hợp chất này còn ngăn ngừa sự rối loạn sắc tố da, cải thiện da đen sạm, góp phần làm mờ và loại bỏ nám một cách hiệu quả.', N'Hộp', CAST(3496000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (207, N'NT_40_LNQ', N'Image', 1, N'IIBEC', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème', N'kem lam sang da vung mat image iluma intense brightening eye creme', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème phối hợp các hoạt chất làm trắng sáng da mới theo công thức độc quyền của Image Skincare, mang đến giải pháp cải thiện hiệu quả các dấu hiệu xuống cấp vùng mắt như: bọng mắt, nếp nhăn, thâm quầng, trả lại khuôn mặt vẻ tươi sáng và đôi mắt tinh anh. Công nghệ Vectorize độc quyền của Image Skincare chứa các phân tử hình cầu sẽ len lỏi qua lỗ chân lông, thấm đến tận lớp hạ bì, phóng thích các hoạt chất tránh sự hao hụt hay bay hơi trên bề mặt da, mang đến hiệu quả chống lão hoá và làm sáng da vùng mắt đến 48 giờ.
Đặc biệt, các peptide chiết xuất từ tự nhiên trong Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème sẽ đi liên kết với một số tế bào nào đó và gửi tín hiệu để các tế bào này sản xuất ra collagen mới. Điều này mang tới tác dụng cải thiện rõ rệt vùng da quanh mắt thêm căng mịn, đàn hồi, cho đôi mắt trẻ trung, linh động, rạng ngời.', N'Chai', CAST(1880000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (208, N'NT_40_LNQ', N'Obagi', 1, N'1115', N' Kem làm trắng da Obagi Nuderm Sunfader SPF 15 - 57g', N'kem lam trang da obagi nuderm sunfader spf 15 - 57g', N'Obagi Nu-Derm Sunfader SPF 15 chứa hỗn hợp thành phần độc đáo giúp làm trắng sáng vùng da bị tăng sắc tố và bảo vệ da khỏi tổn hại từ ánh nắng. Octinoxate và oxybenzone cung cấp độ bảo vệ SPF 15, ngăn cản lão hóa từ ánh nắng. 

Ngoài chỉ số chống nắng SPF, Obagi Sunfader còn chứa 4% hydroquinone, thành phần vàng trong điều trị nám. Sunfader thẩm thấu mức độ tại chỗ giúp giảm đốm nâu, tàn nhang vô cùng hiệu quả.

Obagi Nu-Derm Sunfader chứa 4% hydroquinone và SPF 15 là giải pháp lý tưởng cho làn da cần đặc trị đốm nâu, tàn nhang, tăng sắc tố. Sự kết hợp kép giữa thành phần trị nám và chống nắng cho kết quả tốt nhất, cho da mịn màng, rạng rỡ, đồng màu và săn chắc.

Sử dụng kem chống nắng riêng biệt là cần thiết khi mức độ tiếp xúc với tia UV cao.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban ngày.

Thành phần
7.5% Octinoxate, 5.5% Oxybenzone, 4% Hydroquinone.', N'Lọ', CAST(2200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (209, N'NT_40_LNQ', N'Obagi', 1, N'1159', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Cool)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (cool)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Cool bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn, không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g


Active ingredients:

Homosalate 10%, Octinoxate 7.5%, Titanium dioxide 3.18%, Zinc oxide 5% 

Inactive ingredients:

Water, butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, polyglyceryl-10 pentastearate, glyceryl stearate, PEG-100 stearate, butylene glycol, pentylene glycol, behenyl alcohol, PEG-40 stearate, dimethicone, physalis angulata extract, algae extract, glycerin, iron oxides, phenoxyethanol, sodium stearoyl lactylate, polyhydroxystearic acid, mannitol, mica, hydroxyethyl acrylate/sodium acryloyldimethyl taurate copolymer, citric acid, squalane, alumina, stearic acid, xanthan gum, calcium aluminum borosilicate, diatomaceous earth, sodium polyacrylate, disodium EDTA, synthetic fluorphlogopite, polysorbate 60, ethylhexylglycerin, zinc sulfate, silica, chlorphenesin, tetrahexyldecyl ascorbate, tin oxide, tocopherol

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Cool: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (210, N'NT_40_LNQ', N'Obagi', 1, N'1153', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Warm)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (warm)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Warm bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g

Active Ingredients: 10% homosalate, 7.5% octinoxate, 5% zinc oxide, 3.22% titanium dioxide

Inactive Ingredients: Water, Butyloctyl Salicylate, Caprylic/Capric Triglyceride, Caprylyl Methicione, Polyglyceryl-10 Pentastearate, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Pentylene Glycol, Bethenyl Alcohol, Iron Oxides, PEG-40 Stearate, Dimethicone, Physalis Angulata Extract, Phenoxyethanol, Algae Extract, Glycerin, Mica, Sodium Stearoyl Lactylate, Polyhdroxystearic Acid, Mannitol, Hydroxyethyl Acrylate/Sodium Acryloyidimethyl Taurate Copolymer, Citric Acid, Squalene, Alumina, Stearic Acid, Xanthan Gum, Diatomaceous Earth, Sodium.

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Warm: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da.Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (211, N'NT_40_LNQ', N'Image', 1, N'ICFF', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30', N'kem nen che khuyet diem image skincare i conceal flawless foundation spf 30', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30 là sản phẩm trang điểm cao cấp với khả năng che khuyết điểm hoàn hảo, kết hợp chống năng tăng cường bảo vệ da, thành phần lành tính giúp phục hồi nhanh chóng da hư tổn, mỏng yếu sau điều giúp giảm.
Sản phẩm được sản xuất theo công thức đặc biệt cho lớp kem nền trang điểm siêu mỏng, mịn mà vẫn giúp che phủ khuyết điểm trên da, cho làn da hoàn hảo, sáng mịn màng không tì vết. Sản phẩm còn hỗ trợ chống nắng ngừa da sạm nám, hư tổn do ánh nắng mặt trời và các yếu tố khác từ môi trường.
Sản phẩm không chứa hóa chất, không chất bảo quản, do đó cực kỳ an toàn cho da, giúp da phục hồi nhanh chóng, sáng khỏe tự nhiên.', N'Chai', CAST(1930000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (212, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (213, N'NT_40_LNQ', N'Image', 1, N'HERG', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel', N'kem phuc hoi va chong tham quang mat image skincare vital c hydrating eye recovery gel', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel - giải pháp giúp dưỡng ẩm làm mềm da, phục hồi cấu trúc vùng da quanh mắt, cho da săn chắc, căng mịn, mờ nhăn, xóa tan quầng thâm, đánh thức làn da tràn đầy sức sống.
Là sản phẩm dưỡng da cao cấp với công nghệ hiện đại, kết hợp vitamin C và vitamin K có khả năng thẩm thấu sâu vào da, giúp ổn định mao mạch, làm sáng da, đồng thời cải thiện quầng thâm mắt, cho làn da rạng rỡ, sáng đều màu.
Sản phẩm còn giúp bổ sung hoạt chất Hyaluronic tăng cường dưỡng ẩm, giữ nước cho da, cải thiện cấu trúc da, ngăn ngừa da chùng nhão, chảy xệ, bọng mắt, nếp nhăn, vết chân chim hình thành sâu.', N'Chai', CAST(1350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (214, N'NT_40_LNQ', N'Image', 1, N'RYRC', N'Kem phục hồi và trẻ hoá da IMAGE MD Restoring Youth Repair Crème with ADT Technology(tm)', N'kem phuc hoi va tre hoa da image md restoring youth repair creme with adt technology(tm)', N'Kem phục hồi và trẻ hóa da Image MD Restoring Youth Repair Crème With ADT Technology TM chứa thành phần chính là retinol, axit glycolic và vitamin C làm tăng cường liên kết dưới da, phục hồi lại tính đàn hồi giúp cho bề mặt da dần căng mịn, trẻ trung, săn chắc và rạng rỡ chỉ sau một thời gian sử dụng.
Với cơ chế loại bỏ lớp sừng hóa, retinol giúp bề mặt da trở nên thông thoáng, tạo điều kiện thúc đẩy sản sinh tế bào mới thay thế tế bào chết ở da. Qua đó, sản phẩm sẽ loại bỏ dần vùng da khô ráp, không đều màu, nuôi dưỡng làn da mịn màng và trở nên tươi sáng.
Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ nhằm mang đến kết quả tối đa.', N'Chai', CAST(3084000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (215, N'NT_40_LNQ', N'Image', 1, N'RRC', N'Kem retinol công nghệ ADT trẻ hoá da IMAGE MD Restoring Retinol Crème With ADT Technology(tm) ', N'kem retinol cong nghe adt tre hoa da image md restoring retinol creme with adt technology(tm)', N'Kem retinol công nghệ ADT trẻ hóa da, mờ thâm nám Image MD Restoring Retinol Crème With Adt Technology TM giúp giảm thiểu sự xuất hiện của nếp nhăn và làm nổi bật tông màu da, đồng thời làm sống lại làn da. Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Chai', CAST(3290000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (216, N'NT_40_LNQ', N'Image', 1, N'IATRAC', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme', N'kem tre hoa lam mo vet tham ageless total retinol a creme', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (217, N'NT_40_LNQ', N'Obagi', 1, N'1175', N'Khăn ướt giúp trị mụn SUZANOBAGIMD Acne Cleansing Wipes', N'khan uot giup tri mun suzanobagimd acne cleansing wipes', N'Đối với da dầu hoặc da dễ bị mụn trứng cá, các loại khăn lau mặt này được pha chế với 2% acid salicylic để giúp điều trị và ngăn ngừa mụn trứng cá trong khi nhanh chóng và nhẹ nhàng làm sạch da.

Công dụng:

- Điều trị mụn trứng cá
- Làm khô mụn trứng cá
- Giúp ngăn ngừa mụn trứng cá mới.
- Làm sạch da nhẹ nhàng nhanh chóng.

Hướng dẫn sử dụng:


- Lau toàn bộ da mặt một đến hai lần mỗi ngày để làm sạch da và điều trị mụn.  

- Khi mới sử dụng nên dùng 1 lần/ngày để tránh khô da và kích ứng. Khi da đã quen có thể tăng lên 2 lần / ngày. 

- Nếu xảy ra hiện tượng khô hoặc bong tróc khó chịu, hãy giảm mỗi ngày một lần.

Thành phần nổi bật:

- Salicylic Acid: hoạt động như một chất tẩy tế bào chết, giúp sửa chữa và làm sạch mụn trứng cá

- Nha đam: giúp dưỡng ẩm và làm dịu da

- Chiết xuất Brassica Oleracea Italica (Bông cải xanh): chứa sulforaphane, một hợp chất giúp loại bỏ các gốc tự do

- Citrus Bioflavonoids: có đặc tính chống oxy hóa giúp bảo vệ chống lại các gốc tự do

- Witch Hazel: loại bỏ dầu thừa và tạp chất để giảm thiểu kích thước lỗ chân lông trên bề mặt', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (218, N'NT_40_LNQ', N'Obagi', 1, N'1176', N'Khăn ướt tẩy trang cho mọi loại da SUZANOBAGIMD Cleansing Wipes', N'khan uot tay trang cho moi loai da suzanobagimd cleansing wipes', N'Khăn Ướt Tẩy Trang SUZANOBAGIMD Cleansing Wipes là sản phẩm làm sạch lý tưởng giúp loại bỏ lớp trang điểm, dầu thừa, bụi bẩn nhanh chóng, hiệu quả mà vẫn vô cùng dịu nhẹ, đem lại làn da khô thoáng và mềm mịn.

Đặc điểm nổi bật:

- Không chứa các chất tẩy rửa mạnh gây tổn hại đến lớp màng ẩm tự nhiên của da

- Sử dụng những chất liệu vải vô cùng mềm mượt, có thể sử dụng cho cả những vùng da nhạy cảm quanh mắt mà không lo sợ rát da hay nổi mẩn đỏ.

- Aloe polyphenols giúp làm dịu da, bảo vệ da khỏi tác hại của tia UV và góp phần ngăn ngừa lão hoá

- Citrus Bioflavonoids duy trì và cân bằng lại da, củng cố lớp màng ẩm tự nhiên trên da và giúp các sản phẩm dưỡng sau phát huy hiệu quả tốt hơn.

- Công thức không chứa hương liệu, chất bảo quản phù hợp cho cả da nhạy cảm

Đây được coi là sản phẩm vừa hiệu quả, vừa lành tính và tiện lợi để bạn có thể mang theo trong những chuyến du lịch ngắn ngày hoặc dùng để tẩy trang giữa ngày ở công ty, hoặc trước và sau khi đến phòng tập.

Thành phần:

Citrus Bioflavonoids, Brassica Sulforaphane, Aloe polyphenols, and Antioxidants

Quy cách đóng gói: 25 tờ / gói

Hướng dẫn sử dụng:

- Mỗi lần sử dụng lấy một miếng khăn giấy lau sạch mặt và vùng cổ. Lau đến khi khăn giấy không còn bám chất dơ.

- Có thể tiếp tục rửa sạch mặt bằng sữa rửa mặt rồi dưỡng da như thông thường.

- Không giặt hay sử dụng lại.', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (219, N'NT_40_LNQ', N'Obagi', 1, N'1180', N'Lotion đặc trị dành cho cơ thể Obagi KèraPhine Body Smoothing Lotion', N'lotion dac tri danh cho co the obagi keraphine body smoothing lotion', N'Công dụng:
Thích hợp sử dụng cho người bị bệnh dày sừng nang lông (keratosis pilaris), vảy nến, nốt đỏ.
Tẩy tế bào chết và loại bỏ tế bào chết trên bề mặt da.
Giúp làn da thô ráp sần sùi được mịn màng.
Giúp làm dịu cân bằng, giảm khô da trên cánh tay.
KèraPhine được sử dụng hàng ngày giúp khôi phục lại làn da khỏe mạnh.


Thành phần:
Water (Aqua), Glycolic Acid, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Ammonium Lactate, Sodium Hydroxide, Glycerin, Dimethicone, Pentylene Glycol, Beta-Glucan, Sodium Hyaluronate Crosspolymer, Sorbitan Isostearate, Disodium EDTA, Polysorbate 60, Ethylhexylglyercin, Caprylyl Glycol, Chlorphenesin, Phenoxyethanol, Titanium Dioxide (CL 77891).


Cách dùng:
Thoa đều lên da một lần mỗi ngày hoặc theo chỉ dẫn của chuyên gia.


Dung lượng:
198ml.', N'Tuýp', CAST(1600000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (220, N'NT_40_LNQ', N'Obagi', 1, N'1136', N'Lotion dưỡng ẩm và tẩy tế bào chết SUZANOBAGIMD IDR Intensive Daily Repair', N'lotion duong am va tay te bao chet suzanobagimd idr intensive daily repair', N'Lotion dưỡng da kiêm tẩy tế bào chết hàng ngày  SUZANOBAGIMD IDR Intensive Daily Repair chứa các axit polyhydroxy (gluconolactone và axit lactobionic) giúp tẩy tế bào chết nhẹ nhàng để giảm thiểu diện mạo lỗ chân lông và các dấu hiệu lão hóa.

Công dụng:

- Giúp làm mềm và làm trẻ hóa làn da hàng ngày, chứa PHAs gluconolactone và axit lactobionic nhẹ nhàng tẩy tế bào chết để giảm thiểu các lỗ chân lông và các dấu hiệu lão hóa có thể nhìn thấy bằng cách tẩy tế bào chết nhẹ 
- Peptide giúp da săn chắc, giảm thiểu nếp nhăn.
- Công thức không gây kích ứng, không nhạy cảm có chứa Vitamin C và E. Với việc sử dụng thường xuyên, IDR sẽ lộ ra một làn da sáng hơn và tươi tắn.
- Công thức này là bác sĩ da liễu được thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.
- Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần chính:

Glucconolactone và Lactobionic Acid (PHAs), Allantoin, và Peptides

Thành phần chi tiết:

Water (aqua), Caprylic/capric Triglyceride, Gluconolactone, Lactobionic Acid, Glyceryl Stearate, Glycerin, Methyl Glucose Sesquistearate, Butyrospermum Parkii (shea) Butter, C12-15 Alkyl Benzoate, Ethylhexyl Palmitate, Cetyl Alcohol, Dimethicone, Phenoxyethanol, Xanthan Gum, Polyacrylate Crosspolymer 6, Sodium Hydroxide, Mica, Caprylyl Glycol, Panthenol, Titanium Dioxide, Ethylhexylglycerin, Disodium EDTA, Bisabolol, Tocopheryl Acetate, Hexylene Glycol, Allantoin, Camellia Oleifera (green Tea) Leaf Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Sinensis Leaf Extract, Tetrahexyldecyl Ascorbate, Sodium Hyaluronate, Myristoyl Pentapeptide-11, Myristoyl Pentapeptide-8.

Hướng dẫn sử dụng:

- Lấy 2-3 giọt thoa đều lên mặt trước khi sử dụng kem chống nắng. Nhẹ nhàng massage cho sản phẩm ngấm đều.

- Dùng hàng ngày.

Chú ý: Chỉ sử dụng bên ngoài da. Ngừng sử dụng nếu nổi ban hoặc kích ứng phát triển và kéo dài. Tránh xa vùng mắt. Tránh xa tầm tay trẻ em. Bắt buộc chống nắng khi dùng sản phẩm.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (221, N'NT_40_LNQ', N'Image', 1, N'OBGM', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque', N'mat na giam nhay cam va kich ung da image ormedic balancing gel masque', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque được tạo nên từ rất nhiều chiết xuất tự nhiên như nha đam, dầu oliu, hoa cúc, trà đen… nhẹ nhàng lấy đi các tế bào chết, làm sạch tạp chất bên trong lỗ chân lông, nhanh chóng làm dịu làn da bị kích ứng, kháng viêm, nhanh chóng phục hồi làn da bị tổn thương, mẩn đỏ và viêm sưng. Bên cạng đó, sản phẩm còn giúp bảo vệ da chống lại sự mất nước và cân bằng độ ẩm cho da.
Thành phần dầu oliu của Image Ormedic Balancing Gel Masque có cấu trúc hoá học gần giống với cấu trúc dầu tự nhiên trên da hơn bất kì loại dầu nào khác nên có tác dụng vô cùng tích cực trong việc chăm sóc da. Với thành phần giàu chất béo lành mạnh, chất chống oxy hoá như phenolic, vitamin E cùng với squalene, acidas oleic, dầu oliu giúp kích thích và chữa lành các tổn thương trên da, làm dịu các kích ứng da từ tác động của ánh nắng mặt trời.', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (222, N'NT_40_LNQ', N'Image', 1, N'RORM', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque', N'mat na ngu dem tre hoa da image md restoring overnight retinol masque', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque giúp bổ sung dưỡng chất ngăn ngừa lão hóa, cung cấp độ ẩm cho da suốt cả đêm khi ngủ. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Hộp', CAST(3710000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (223, N'NT_40_LNQ', N'Image', 1, N'TRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mmặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen Image Skincare Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (224, N'NT_40_LNQ', N'Khác', 1, N'MNTBG', N'Mặt nạ tế bào gốc Rwine Beauty Stem Cell Placenta Mask', N'mat na te bao goc rwine beauty stem cell placenta mask', N'✅ Mặt nạ chứa nhau thai ngựa có thể làm giảm các triệu chứng nhạy cảm với mẩn đỏ và viêm. Có thể thúc đẩy quá trình chữa lành vết thương.
✅ Bên cạnh đó, cân bằng độ ẩm tương đối, giúp da mịn màng, mềm mại, ngăn ngừa khô da, làm chậm lão hóa da, nhìn thành nếp nhăn.
✅ EGF giúp giao tiếp với các tế bào của bạn để tạo ra nhiều collagen và elastin hơn.
✅ KGF Thúc đẩy tái tạo da, hỗ trợ tăng đàn hồi giúp da luôn tươi trẻ, mịn màng và săn chắc cho làn da khỏe mạnh, trẻ trung.
✅ Làm mờ vết nám, tàn nhang, vết thâm một cách hiệu quả. giúp cải thiện tone da một cách nhẹ nhàng mà hiệu quả.
✅ Cung câp nước, khóa ẩm, tăng độ đàn hồi và ngăn ngừa tình trạng khô da.
✅ Mặt nạ nhau thai có thể sử dụng cho da yếu, tổn thương do mụn, da bị hư tổn sau khi dùng kem trộn, sau điều trị laser, da xỉn màu, da nám, tàn nhang.
✅ Thành phần của mặt nạ được kiểm định rất khắt khe, đảm bảo không nhiễm hóa chất gây tổn thưởng, kích ứng da dù da mẫn cảm.
✅ Bổ sung vi khoáng giúp da khỏe mạnh, tăng đề đề kháng cho da.

', N'Miếng', CAST(50000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (225, N'NT_40_LNQ', N'Image', 1, N'IATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (226, N'NT_40_LNQ', N'Image', 1, N'ATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (227, N'NT_40_LNQ', N'Image', 1, N'FREP', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads', N'mat na tre hoa da vung mat image skincare flawless rejuvenating eye pads', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads với dưỡng chất từ nước dừa có thể dùng cho mọi lứa tuổi, cung cấp nuôi dưỡng và tái tạo vùng mắt, loại bỏ lớp trang điểm một cách nhẹ nhàng và hiệu quả nhất.
Hyaluronic và các chiết xuất từ thực vật giúp làm mờ vết nhăn và thúc đẩy quá trình trẻ hóa cho làn da. Comfrey và Chamomile có tác dụng xoa dịu và làm giảm bọng mắt cho đôi mắt tràn đầy năng lượng và không còn cảm giác mệt mỏi. Làm sạch và tái tạo da trong một bước thật đơn giản.', N'Hộp', CAST(1530000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (228, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (229, N'iBeauty', N'ACM', 1, N'ACM39', N'SEBIONEX ACTIMAT TINTED ANTI-IMPERFECTION SKINCARE', N'sebionex actimat tinted anti-imperfection skincare', N'Kem bôi ngừa mụn, trứng cá, che khuyết điểm', N'Tuýp', CAST(379000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (230, N'iBeauty', N'ACM', 1, N'ACM38', N'SEBIONEX HYDRA REPAIR CREAM', N'sebionex hydra repair cream', N'Sản phẩm dưỡng da dành cho da mụn, giúp cung cấp độ ẩm cho da, cho da luôn khoẻ mạnh', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (231, N'NT_40_LNQ', N'Image', 1, N'VCHWB', N'Serum khoán, khoá nước cho da Vital C Hydrating Water Burst ', N'serum khoan, khoa nuoc cho da vital c hydrating water burst', N'Serum khoán, khoá nước cho da, cấu trúc gel nhẹ, biến đổi gel thành nước khi thoa và massage nhẹ lên da. Sản phẩm cung cấp hàng loạt các chất chống oxy hóa, axit hyaluronic, vitamin và peptide giúp trẻ hóa làn da, căng sáng mịn, rạng rỡ và khỏe mạnh', N'Tuýp', CAST(1815000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (232, N'NT_40_LNQ', N'Image', 1, N'CLSOF', N'Serum kiểm soát nhờn & kháng CLEARCELL Restoring Serum Oil - Free', N'serum kiem soat nhon & khang clearcell restoring serum oil - free', N'Với công thức dịu nhẹ và chất serum không chứa dầu sẽ hỗ trợ tăng và cân bằng độ ẩm cho da dễ bị mụn trứng cá và không gây tắc nghẽn lỗ chân lông. và giúp làn da sáng mịn.
Công dụng:
- Với dẫn xuất Vitamin B6 giúp thu nhỏ lỗ chân lông, kiểm soát nhờn, làm sáng da và giảm sự hình thành các ổ viêm dưới da, dị ứng, loại bỏ mụn nhanh chóng.
- Chống viêm kháng khuẩn, làm khô nhân mụn từ đó giúp điều trị mụn hiệu quả.
- Ngăn ngừa và làm mờ vết thâm sẹo.
- Tái tạo nhanh những thương tổn da do mụn để lại.
- Cung cấp độ ẩm cho da, giúp da luôn mịn màng, tươi trẻ.', N'Lọ', CAST(1540000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (233, N'NT_40_LNQ', N'Image', 1, N'IIBS', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum ', N'serum lam trang sang da mo tham nam image skincare iluma intense bleaching serum', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum giúp loại bỏ lớp da sừng khô sần, xỉn màu, lão hóa và nhiều đốm nâu, cung cấp dưỡng chất cho da sáng hồng rạng rỡ từ bên trong.
Là dòng sản phẩm dưỡng da cao cấp, sử dụng thành phần điều giúp giảm nám đặc hiệu kết hợp cùng các thành phần hoạt chất làm sáng da chiết xuất tự nhiên như như Licorice, Azelaic acid (kháng khuẩn) hiệu quả trong việc làm mờ vết thâm, đốm nâu, tàn nhang, giúp làm sáng da tự nhiên.
Serum trị nám này còn được bổ sung thành phần Glycolic acid giúp nhẹ nhàng tẩy da chết, cải thiện bề mặt và cấu trúc da, hạn chế nếp nhăn hình thành, ngăn ngừa lão hóa, cho làn da tươi trẻ, rạng rỡ.', N'Chai', CAST(1300000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (234, N'NT_40_LNQ', N'Obagi', 1, N'1139', N'Serum nâng cơ chống lão hóa Obagi Elastiderm Facial Serum', N'serum nang co chong lao hoa obagi elastiderm facial serum', N'Cảm nhận vẻ đẹp của làn da có độ đàn hồi, tươi trẻ với ELASTIderm Facial Serum của Obagi. Được bào chế với công nghệ bản quyền Bi-Mineral Contour Complex™, serum thế hệ mới này giúp làn da lấy lại độ đàn hồi, cải thiện dấu hiệu lão hóa, đem lại vẻ tươi trẻ và đầy sức sống. Với các thành phần sử dụng công nghệ FlexFluid™, serum với thể chất mỏng nhẹ đem lại hiệu quả đàn hồi trên da tức thì.

Thành phần:

Phức hợp bi-mineral: kết hợp đồng, kẽm và malonic acid để làn da mịn mượt hơn
Water (Aqua), Glycerin,Methylpropanediol, Alcohol Denat., Dimethicone, Isocetyl Stearoyl Stearate, Coco-Caprylate/Caprate, Isononyl Isononanoate, Pentylene Glycol, Phenoxyethanol, Polyacrylate Crosspolymer-6, Carbomer, Malonic Acid, Sodium Hydroxide, Disodium EDTA, Amodimethicone, Zinc Carbonate, Copper Carbonate Hydroxide, T-Butyl Alcohol, Parfum.

Công dụng:

Công nghệ FlexFluid™: giúp serum mỏng nhẹ, cải thiện kết cấu da sau 2 tuần

Củng cố độ đàn hồi của da
Cải thiện kết cấu da
Giảm nhăn
Cách dùng:
Sử dụng một ngày 2 lần vào buổi sáng và tối .Buổi sáng sau khi thoa sản phẩm kế tiếp thoa kem chống nắng.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.

- Để xa tầm tay trẻ em.

', N'Lọ', CAST(4680000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (235, N'NT_40_LNQ', N'Obagi', 1, N'1138', N'Serum phục hồi tái tạo da Obagi Gentle Rejuvenation Skin Rejuvenation Serum', N'serum phuc hoi tai tao da obagi gentle rejuvenation skin rejuvenation serum', N'Obagi Gentle Rejuvenation Skin Rejuvenation Serum sử dụng công thức tiên tiến để giúp làn da phục hồi nhanh chóng. Sản phẩm hỗ trợ quá trình lành thương và phục hồi tự nhiên của da, giúp da tự sửa chữa và hạn chế các dấu hiệu lão hóa.

Các thành phần củng cố sức khỏe làn da trong serum giúp lành thương, giảm nhăn cũng như cải thiện kết cấu da, cho da mịn màng, đều màu.

Serum chống lão hóa này cũng đẩy nhanh quá trình sinh sản collagen và trẻ hóa làn da.

Serum hoàn toàn không chứa hương liệu, giảm thiểu kích ứng trên da. Sử dụng kết hợp cùng kem chống nắng để đem lại hiệu quả phục hồi, bảo vệ da tốt nhất.

Đặc điểm nổi bật

Kinetin và zeatin giảm thiểu dấu hiệu lão hóa, nếp nhăn, thâm nám
Chiết xuất táo Thụy Sĩ đẩy nhanh quá trình tái tạo tế bào để xóa nhăn và làm mịn màng kết cấu da
Peptide giúp củng cố màn da, giúp da săn chắc
Sodium Hyaluronate​ cấp ẩm sâu, làm dịu làn da khô, bong tróc
Hệ thống vận chuyển độc đáo giúp thành phần hoạt chất được phân phối đến da trong vòng 12 giờ
Thành phần chi tiết:

Water (Aqua)​,​ Biosaccharide Gum-1​,​ Methyl Gluceth-20​,​ Propanediol​,​ Butylene Glycol,​ PEG-12 Glyceryl Dimyristate,​ Sorbitan Laurate​,​ Phenoxyethanol​,​ Xanthan Gum​,​ Cellulose Gum​,​ Oryza Sativa (Rice) Extract​,​ Ethoxydiglycol​,​ Malus Domestica Fruit Cell Culture Extract​,​ Lecithin​,​ Polyglyceryl-4 Laurate,​ Kinetin​,​ Zeatin​,​ Ethylhexylglycerin​,​ Citric Acid​,​ Sodium Hyaluronate​,​ Dilauryl Citrate,​ Baicalin,​ 1,​2-Hexanediol,​ Caprylyl Glycol​,​ Glycerin​,​ Inulin Lauryl Carbamate​,​ Ergothioneine​,​ Tetrapeptide-26.', N'Lọ', CAST(2980000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (236, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (237, N'NT_40_LNQ', N'Image', 1, N'TMSCS', N'Serum trẻ hoá da The Max Stem Cell Serum', N'serum tre hoa da the max stem cell serum', N'Serum giúp giảm lão hóa da The Max Stem Cell Serum với công nghệ chăm sóc da hiện đại là giải pháp dưỡng ẩm chống lão hóa hoàn hảo, giúp da ngày càng săn chắc, căng mịn, xóa mờ dấu vết lão hóa cũng như cung cấp dưỡng chất nuôi dưỡng tế bào, DNA khỏe mạnh.
Là sản phẩm dưỡng da cao cấp, kết hợp các chuỗi peptide và Argirelene có khả năng thẩm thấu sâu vào hạ bì da, giúp kích thích tăng sinh Collagen và Elastin cho làn da căng mịn, săn chắc, đàn hồi, tái tạo nét tươi trẻ, rạng ngời cho da.
Sản phẩm còn ứng dụng công nghệ tế bào gốc và chiết xuất từ thiên nhiên giúp nhẹ nhàng nuôi dưỡng, phục hồi DNA, kích thích tế bào gốc có sẵn phát triển, tăng cường chức năng bảo vệ da ngừa hư tổn.', N'Chai', CAST(3350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (238, N'iBeauty', N'ACM', 1, N'ACM09', N'SESITÉLIAL Cleansing Gel - Gel rửa mặt', N'sesitelial cleansing gel - gel rua mat', N'Làm sạch, loại bỏ tế bào chết và bã nhờn, làm thông thoáng lỗ chân lông giúp da mịn màng tươi sáng', N'Tuýp', CAST(318000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (239, N'iBeauty', N'ACM', 1, N'ACM07', N'SESITELIAL Sunscreen Cream SPF100+ - Kem Chống Nắng', N'sesitelial sunscreen cream spf100+ - kem chong nang', N'Chống nắng UVA, UVB với SPF100+ dành cho da thường và da nhạy cảm', N'Tuýp', CAST(417000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (240, N'NT_40_LNQ', N'Stanhome', 1, N'SCS', N'Stanhome Clear Spot', N'stanhome clear spot', N'Kem bôi giúp làm dịu da, tránh nóng rát, làm sạch sâu thông thoáng chân lông, giảm sưng tấy viêm đỏ, se mụn, xẹp mụn, ngăn ngừa sự phát triển của vi khuẩn gây mụn và sự hình thành các vết thâm, sẹo.', N'Tuýp', CAST(385000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (241, N'NT_40_LNQ', N'Image', 1, N'OBFC', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser', N'sua rua mat can bang da image skincare ormedic balancing facial cleanser', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser với chiết xuất từ thành phần tự nhiên an toàn, lành tình, là giải pháp chăm sóc da hoàn hảo dành cho bạn, giúp loại bỏ nhẹ nhàng lớp dầu nhờn, bụi bẩn dư thừa, làm sáng mịn, sạch da mà không gây ra các kích ứng, đồng thời cân bằng độ ẩm, giúp duy trì làn da mềm mại, mịn màng.
Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser được đánh giá là dòng sản phẩm kết hợp hoạt chất hữu cơ và tinh chất thiên nhiên hiệu quả hiện nay, có khả năng tăng cường chống oxy hóa và bảo vệ nuôi dưỡng làn da tươi trẻ, khỏe khoắn mỗi ngày. Sản phẩm được chứng minh thích hợp với làn da nhạy cảm, da ở độ tuổi thanh thiếu niên, phụ nữ mang thai hay da sau hư tổn, kích ứng.
Với chiết xuất từ tinh chất trà xanh, hoa cúc, nha đam, dầu olive, yến mạch, sử dụng sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser còn giúp cung cấp dưỡng chất thẩm thấu sâu vào da giúp làm dịu da, là mờ thâm sạm, cho làn da tươi sáng mỗi ngày. ', N'Chai', CAST(1100000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (242, N'NT_40_LNQ', N'Farmona', 1, N'F150', N'Sữa rửa mặt cho da dầu, da mụn Farmona - Dermacos Anti - acne deep cleansing gel 150ml', N'sua rua mat cho da dau, da mun farmona - dermacos anti - acne deep cleansing gel 150ml', N'Chiết xuất tinh dầu của cây chè, cây liễu giúp se mụn nhanh, làm mỏng đi và giúp bong các nút sừng, tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Các nguyên tố vi lượng cùng bùn, muối khoáng làm sạch sâu cho da tận lỗ chân lông, hạn chế sự phát triển của các vi khuẩn gây nên tình trạng mụn trứng cá, loại  bỏ các vấn đề về da.
Chiết xuất bơ và tinh dầu giúp làm tăng hệ miễn dịch cho da. Ngoài ra, 2 thành phần còn có tác dụng làm se  các đầu mụn và phục hồi da sau mụn, làm mềm da và kích thích tái tạo da.
Các dưỡng chất thiết yếu khác có tác dụng chăm sóc làn da, làm mềm mịn và trắng sáng.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (243, N'NT_40_LNQ', N'Image', 1, N'ATFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Ageless Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1050000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (244, N'NT_40_LNQ', N'Image', 1, N'TFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Image Ageless Skincare Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1015000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (245, N'NT_40_LNQ', N'Image', 1, N'CMAS', N'Sữa rửa mặt dạng cát, điều trị mụn CLEARCELL Medicated Acne Scrub', N'sua rua mat dang cat, dieu tri mun clearcell medicated acne scrub', N'Sữa rửa mặt dạng cát, điều trị mụnt chứa Benzoyl peroxide giúp diệt vi khuẩn sinh mụn, giảm viêm, tiêu nhân mụn và các hạt tẩy muối biển cực nhỏ giúp loại bỏ lớp da chết bên ngoài cũng như các chất gây tắc nghẽn lỗ chân lông. ', N'Chai', CAST(890000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (246, N'NT_40_LNQ', N'Image', 1, N'HFC', N'Sữa rửa mặt dưỡng ẩm, phục hồi da VITAL C Hydrating Facial Cleanser', N'sua rua mat duong am, phuc hoi da vital c hydrating facial cleanser', N'Sữa rửa mặt Image Skincare Vital C Hydrating Facial Cleanser với công thức độc đáo kết hợp sử dụng nguồn vitamin C hàm lượng cao giúp làm sạch sâu đồng thời dưỡng sáng da, dưỡng ẩm hiệu quả, cung cấp dưỡng chất phục hồi cấu trúc và bề mặt da, cho da căng mịn, khỏe từ bên trong.
Là dòng sản phẩm chăm sóc da cao cấp được ứng dụng công nghệ cao tại Mỹ với khả năng bổ sung độ ẩm làm mềm da, loại bỏ da chết khô sần, xỉn màu, giúp da mềm mại, kích thích sản sinh tế bào da mới đồng thời bổ sung dưỡng chất như vitamin A, C, E...giúp phục hồi nhanh chóng làn da tổn thương, nhạy cảm, kích ứng, giúp da dịu mát, mịn màng tự nhiên.', N'Chai', CAST(999000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (247, N'NT_40_LNQ', N'Image', 1, N'TMSCFC', N'Sữa rửa mặt phục hồi và nuôi dưỡng da The Max Stem Cell Facial Cleanser', N'sua rua mat phuc hoi va nuoi duong da the max stem cell facial cleanser', N'Sữa rửa mặt The Max Stem Cell Facial Cleanser - dòng sản phẩm chăm sóc da cao cấp với chiết xuất tự nhiên an toàn, lành tính thẩm thấu sâu làm sạch da vượt trội đồng thời dưỡng ẩm, cung cấp hoạt chất tái tạo, nuôi dưỡng da sáng khỏe tự nhiên.
Là dòng sản phẩm sữa rửa mặt chăm sóc da hằng ngày, không chứa acid, sulfate & paraben, với khả năng nhẹ nhàng làm sạch sâu bên trong lỗ chân lông, giúp lấy đi hoàn toàn bụi bẩn, bã nhờn, da chết giúp da sạch mịn, đồng thời cân bằng pH của da, ngừa da khô ráp, bong tróc hay mất đi lớp dầu tự nhiên trên bề mặt.
Thành phần tế bào gốc thực vật & các chiết xuất thực vật trong sản phẩm còn giúp nuôi dưỡng da & bảo vệ da khỏi những tác động gây hại từ môi trường như ô nhiễm môi trường, ảnh hưởng của ánh nắng mặt trời và tia UV, hỗ trợ ngừa lão hóa, giảm sự xuất hiện của nếp nhăn, kích thích tăng sinh Collagen và Elastin cho da săn chắc, căng mịn, đàn hồi.
Thành phần tế bào gốc còn là yếu tố giúp phục hồi ADN, kích thích tế bào gốc có sẵn của da phát triển.', N'Tuýp', CAST(970000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (248, N'NT_40_LNQ', N'Ceradan', 1, N'C150ml', N'Sữa Tắm Dưỡng Ẩm Ceradan Wash 150ml', N'sua tam duong am ceradan wash 150ml', N'Sữa tắm dưỡng ẩm Ceradan Wash thương hiệu Hyphens Singapore dành cho da khô và da nhạy cảm, thân thiện cho da trẻ em. Sữa tắm Ceradan Wash giúp cấp ẩm cho da khô, lưu giữ hương thơm quyến rũ, nồng nàn.', N'Chai', CAST(215000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (249, N'NT_40_LNQ', N'Obagi', 1, N'1152', N' Tinh chất cấp nước phục hồi da Obagi Daily Hydro-Drops ', N'tinh chat cap nuoc phuc hoi da obagi daily hydro-drops', N'Serum cấp nước đầu tiên của Obagi với công nghệ kết hợp vitamin B3 (niacinamide) cùng các chiết xuất dầu tự nhiên giúp tăng cường độ ẩm và cấp nước cho da mà không hề làm giảm khả năng thẩm thấu của các loại đặc trị đang sử dụng như retinoids. 

Serum dạng gel chứa các hạt tinh chất tan ngay trên da và dưỡng ẩm sâu mà không để lại lớp bóng nhờn. Thích hợp với mọi loại da.

Đặc điểm nổi bật

Vitamin B3 (Niacinamide) giúp phục hồi, làm dịu và củng cố màng da, tăng cường sức chống chịu của da khi kết hợp với tretinoin/retinol. 
Niacinamide (vitamin B3) điều chỉnh sự trao đổi chất của tế bào và kích thích tái tạo, phục hồi màng lipid bằng cách sản sinh ra ceramide. Và chính nhờ khả năng kích thích sản sinh ra ceramide mà da được dưỡng ẩm, bảo vệ và ngăn ngừa tổn thương. Chưa kể là niacinamide còn cho tác dụng làm sáng da, trị thâm, trị mụn hiệu quả.

Abyssinian Oil & Hibiscus oil: dưỡng ẩm, giúp da săn chắc
Hỗn hợp chất chống oxy hóa giảm nếp nhăn, tăng cường khả năng hoạt động của kem chống nắng
Hướng dẫn sử dụng

Sau khi rửa mặt và sử dụng toner, dùng một lượng sản phẩm vừa đủ cho cả mặt, massage cho sản phẩm thẩm thấu hoàn toàn.', N'Chai', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (250, N'NT_40_LNQ', N'Image', 1, N'ATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Image Skincare Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (251, N'NT_40_LNQ', N'Image', 1, N'IATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (252, N'NT_40_LNQ', N'Image', 1, N'A6', N'Tinh chất làm đầy và căng da 6 loại hyaluronic Ageless Total Pure Hyaluronic Filler 6', N'tinh chat lam day va cang da 6 loai hyaluronic ageless total pure hyaluronic filler 6', N'Hoạt chất Hyaluronic đặc biệt có trong Ageless Total Pure Hyaluronic Filler Image Skincare giúp hỗ trợ làn da được cân bằng thẩm thấu, giúp làm mịn màng cho các nếp nhăn ,sẽ tăng cường hỗ trợ dưỡng chất giúp cải thiện nếp nhăn mà không cần tiêm chích trên da', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (253, N'NT_40_LNQ', N'Image', 1, N'HFO', N'Tinh dầu Massage chống lão hoá VITAL C Hydrating Facial Oil', N'tinh dau massage chong lao hoa vital c hydrating facial oil', N'Sự pha trộn các nguồn dầu thực vật từ thiên nhiên giúp phục hồi, nuôi dưỡng và chống lão hóa. Với mùi thơm đặc trưng mang đến cảm giác dịu nhẹ, giảm căng thẳng và mệt mỏi cho làn da.', N'Lọ', CAST(1900000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (254, N'NT_40_LNQ', N'Avène', 1, N'AVENE3', N'Xịt khoáng - Avene Thermal Spring Water 150ml', N'xit khoang - avene thermal spring water 150ml', N'Nguồn khoáng êm dịu cho làn da nhạy cảm, làm dịu, chống kích ứng, kháng viêm và các gốc tự do.

CHI TIẾT SẢN PHẨM 

Ra đời năm 1990, Avène nhanh chóng nhận được sự ủng hộ của nhiều khách hàng và trở thành thương hiệu cực kỳ nổi tiếng trong lĩnh vực chăm sóc làn da nhạy cảm. Trải qua hơn 300 công trình nghiên cứu sinh học, dược lý và kiểm nghiệm lâm sàng nghiêm ngặt, sản phẩm của Avène là sự kết hợp chặt chẽ giữa quy trình sản xuất mỹ phẩm và dược phẩm để đảm bảo chất lượng tối ưu cho dòng sản phẩm độc quyền bắt nguồn từ suối khoáng thiên nhiên.

Nguồn nước khoáng đã làm nên tên tuổi Avène nằm ở dãy núi Cévennes, Pháp. Tại đây, các dòng nước mưa thấm sâu xuống lòng đất, chảy xuyên qua "bộ lọc" tự nhiên của dãy núi và hấp thụ mọi khoáng chất cũng như thành phần vi lượng thiên nhiên quý hiếm trong hơn 40 năm trước khi trở thành dòng suối khoáng Sanite-Odile nổi tiếng, cũng là thành phần chính làm nên mỹ phẩm chứa khoáng nổi tiếng của Avène, được các bác sĩ da liễu trên toàn thế giới xác nhận và khuyên dùng. 

Chi tiết:

Làm dịu vết ửng đỏ

Làm giảm cảm giác ngứa

Độ khoáng thấp không làm khô da

Giàu silicat và nguyên tố vi lượng

pH 7,5 cân bằng hoàn hảo cho da

sản xuất và đóng gói vô trùng, đảm bảo vô trùng trong quá trình sử dụng

không chất bảo quản

Các chỉ định hằng ngày:

+Da mặt :

Làm dịu và làm mịn làn da nhạy cảm (đỏ, kích ứng do dao cạo…)

Hoàn tất tẩy trang

Cố định lớp trang điểm

Khi đi du lịch

+Thân thể :

Giảm các loại sưng, ngứa (eczéma, thuốc trị trứng cá…)

Sau tẩy lông

Sau ra nắng

Bỏng nhẹ

Da em bé (hăm tã, vệ sinh da…)

Sau khi chơi thể thao

Phun sương đều lên mặt, để yên khoảng 10 giây rồi dùng bông chậm nhẹ lên mặt', N'Chai', CAST(280000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (255, N'NT_40_LNQ', N'Avène', 1, N'AVENE5', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 300ml', N'xit khoang avene thermal spring water spray mist 300ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(370000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (256, N'NT_40_LNQ', N'Avène', 1, N'AVENE6', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 50ml', N'xit khoang avene thermal spring water spray mist 50ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(170000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (257, N'NT_40_LNQ', N'Ziaja', 1, N'rosa', N'Ziaja Med Kem dịu nhẹ và giảm mụn trứng cá đỏ Rosacea 50ml', N'ziaja med kem diu nhe va giam mun trung ca do rosacea 50ml', N'- Ngăn ngừa sự hình thành mụn đỏ, mụn mủ trên da.
- Làm dịu kích ứng & mẩn đỏ trên da.
- Giúp da trở nên mịn màng hơn.
- Dưỡng ẩm & làm mềm da.
- Bảo vệ da hiệu quả khỏi tia cực tím.', N'Tuýp', CAST(427000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 203, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (258, N'NT_40_LNQ', N'Biocharm', 1, N'BIO1', N'Biocharm acne cream - Kem đặc trị mụn 25ml', N'biocharm acne cream - kem dac tri mun 25ml', N'Công Dụng: Kết hợp công thức độc quyền cùng thành phần tự nhiên, Biocharm có tác dụng:
Đặc trị các loại mụn thể nặng như mụn trứng cá, mụn bọc, mụn viêm , mụn đầu trắng, mụn đầu đen, mụn mủ, mụn sưng tấy viêm nhiễm, mụn phát ban trứng cá, làm mờ sẹo thâm, giảm dầu trên da.
Ngừa sẹo và thâm mụn hiệu quả.

', N'Tuýp', CAST(288000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (259, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (260, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (261, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (262, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (263, N'NT_40_LNQ', N'Khác', 1, N'DUS', N'Dermaton US', N'dermaton us', N'-Kem bôi dưỡng trắng mịn da, đem lại làn da luôn trắng hồng, mịn màng.
-Ngừa và trị tất cả các loại mụn trứng cá: mụn đầu đen, mụn đầu trắng, mụn kèm theo viêm bội nhiễm gây sưng tấy đau nhức
-Liền sẹo, ngừa vết thâm, ngừa tái phát mụn. Tẩy sạch bã nhờn
-Giảm bỏng rát trên bề mặt da khi dùng isotretinoin', N'Tuýp', CAST(67800 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (264, N'NT_40_LNQ', N'Farmona', 1, N'f15', N'Gel chấm mụn chứa bùn hoạt tính Farmona - Dermacos Anti - acne anti - imperfection spot gel 15ml', N'gel cham mun chua bun hoat tinh farmona - dermacos anti - acne anti - imperfection spot gel 15ml', N'Gel chấm làm giảm và ngăn ngừa mụn. Làm dịu nhẹ các kích ứng, mẩn đỏ da. Giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Sản phẩm dành cho da bị mụn trứng cá.
Nhũ Bạc Colloidal Silver diệt khuẩn tới 650 loại khác nhau và kháng viêm mạnh, làm lành nhanh các tổn thương viêm do vi khuẩn, virut gây ra.
Tổ hợp AHA Lactic + Citric + Malic + Glicolic Acid ngăn ngừa biến đổi sắc tố da, hạn chế hình thành vết thâm, xám xỉn và loang lổ màu da, dưỡng ẩm, kích thích tái tạo da và ngăn ngừa hình thành sẹo.
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Đất sét Trắng Kaolin chứa gần 20 loại khoáng chất, có tác dụng diệt khuẩn, thanh lọc da, lành nhanh các tổn thương do mụn
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn.
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da.
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính.
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(247000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (265, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (266, N'NT_40_LNQ', N'Khác', 1, N'DE15g', N'Kem trị mụn Derma forte 15g ', N'kem tri mun derma forte 15g', N'Derma forte chứa hoạt chất Azelaic acid, có tác dụng ức chế quá trình sừng hóa và tiêu diệt vi khuẩn P. acnes, tụ cầu da. Thuốc được sử dụng để điều trị và ngăn ngừa mụn trứng cá, mụn viêm, liền sẹo và giảm thâm sau mụn.', N'Tuýp', CAST(99500 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (267, N'NT_40_LNQ', N'Obagi', 1, N'1175', N'Khăn ướt giúp trị mụn SUZANOBAGIMD Acne Cleansing Wipes', N'khan uot giup tri mun suzanobagimd acne cleansing wipes', N'Đối với da dầu hoặc da dễ bị mụn trứng cá, các loại khăn lau mặt này được pha chế với 2% acid salicylic để giúp điều trị và ngăn ngừa mụn trứng cá trong khi nhanh chóng và nhẹ nhàng làm sạch da.

Công dụng:

- Điều trị mụn trứng cá
- Làm khô mụn trứng cá
- Giúp ngăn ngừa mụn trứng cá mới.
- Làm sạch da nhẹ nhàng nhanh chóng.

Hướng dẫn sử dụng:


- Lau toàn bộ da mặt một đến hai lần mỗi ngày để làm sạch da và điều trị mụn.  

- Khi mới sử dụng nên dùng 1 lần/ngày để tránh khô da và kích ứng. Khi da đã quen có thể tăng lên 2 lần / ngày. 

- Nếu xảy ra hiện tượng khô hoặc bong tróc khó chịu, hãy giảm mỗi ngày một lần.

Thành phần nổi bật:

- Salicylic Acid: hoạt động như một chất tẩy tế bào chết, giúp sửa chữa và làm sạch mụn trứng cá

- Nha đam: giúp dưỡng ẩm và làm dịu da

- Chiết xuất Brassica Oleracea Italica (Bông cải xanh): chứa sulforaphane, một hợp chất giúp loại bỏ các gốc tự do

- Citrus Bioflavonoids: có đặc tính chống oxy hóa giúp bảo vệ chống lại các gốc tự do

- Witch Hazel: loại bỏ dầu thừa và tạp chất để giảm thiểu kích thước lỗ chân lông trên bề mặt', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (268, N'NT_40_LNQ', N'Obagi', 1, N'1176', N'Khăn ướt tẩy trang cho mọi loại da SUZANOBAGIMD Cleansing Wipes', N'khan uot tay trang cho moi loai da suzanobagimd cleansing wipes', N'Khăn Ướt Tẩy Trang SUZANOBAGIMD Cleansing Wipes là sản phẩm làm sạch lý tưởng giúp loại bỏ lớp trang điểm, dầu thừa, bụi bẩn nhanh chóng, hiệu quả mà vẫn vô cùng dịu nhẹ, đem lại làn da khô thoáng và mềm mịn.

Đặc điểm nổi bật:

- Không chứa các chất tẩy rửa mạnh gây tổn hại đến lớp màng ẩm tự nhiên của da

- Sử dụng những chất liệu vải vô cùng mềm mượt, có thể sử dụng cho cả những vùng da nhạy cảm quanh mắt mà không lo sợ rát da hay nổi mẩn đỏ.

- Aloe polyphenols giúp làm dịu da, bảo vệ da khỏi tác hại của tia UV và góp phần ngăn ngừa lão hoá

- Citrus Bioflavonoids duy trì và cân bằng lại da, củng cố lớp màng ẩm tự nhiên trên da và giúp các sản phẩm dưỡng sau phát huy hiệu quả tốt hơn.

- Công thức không chứa hương liệu, chất bảo quản phù hợp cho cả da nhạy cảm

Đây được coi là sản phẩm vừa hiệu quả, vừa lành tính và tiện lợi để bạn có thể mang theo trong những chuyến du lịch ngắn ngày hoặc dùng để tẩy trang giữa ngày ở công ty, hoặc trước và sau khi đến phòng tập.

Thành phần:

Citrus Bioflavonoids, Brassica Sulforaphane, Aloe polyphenols, and Antioxidants

Quy cách đóng gói: 25 tờ / gói

Hướng dẫn sử dụng:

- Mỗi lần sử dụng lấy một miếng khăn giấy lau sạch mặt và vùng cổ. Lau đến khi khăn giấy không còn bám chất dơ.

- Có thể tiếp tục rửa sạch mặt bằng sữa rửa mặt rồi dưỡng da như thông thường.

- Không giặt hay sử dụng lại.', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (269, N'NT_40_LNQ', N'Image', 1, N'TRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen Ageless Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mmặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen Image Skincare Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (270, N'NT_40_LNQ', N'Image', 1, N'ATRM', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque', N'mat na sang da, dieu tri mun cam dau den ageless total resurfacing masque', N'Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque với khả năng loại bỏ da chết nhẹ nhàng, kích thích sản sinh tế bào da mới, cho làn da sáng mịn màng, hỗ trợ kiểm soát nhờn, se lỗ chân lông và ngừa mụn hình thành.
Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque là dòng sản phẩm hỗ trợ dưỡng da hoàn hảo, giúp ngừa lão hóa và cải thiện bề mặt da hiệu quả nhờ sở hữu các thành phần hoạt chất quan trọng trong việc loại bỏ da chết, lớp da sừng lão hóa như AHAs, BHA. Mặt nạ sáng da, điều trị mụn cám đầu đen AGELESS Total Resurfacing Masque còn chứa thành phần enzyme chiết xuất từ trái cây có khả năng nhẹ nhàng làm sạch da, hút dầu nhờn, loại bỏ bụi bẩn, cung cấp dưỡng chất giúp da sáng màu, mềm mại và mịn màng tự nhiên ', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (271, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (272, N'iBeauty', N'ACM', 1, N'ACM39', N'SEBIONEX ACTIMAT TINTED ANTI-IMPERFECTION SKINCARE', N'sebionex actimat tinted anti-imperfection skincare', N'Kem bôi ngừa mụn, trứng cá, che khuyết điểm', N'Tuýp', CAST(379000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (273, N'iBeauty', N'ACM', 1, N'ACM38', N'SEBIONEX HYDRA REPAIR CREAM', N'sebionex hydra repair cream', N'Sản phẩm dưỡng da dành cho da mụn, giúp cung cấp độ ẩm cho da, cho da luôn khoẻ mạnh', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (274, N'iBeauty', N'ACM', 1, N'ACM13', N'SEBIONEX. K Cream - Kem giảm mụn và ngăn ngừa nhân mụn ', N'sebionex. k cream - kem giam mun va ngan ngua nhan mun', N'Tác động AHA acid và dạng ester giúp tẩy sạch tế bào chết, giảm mức độ sừng hoá cổ nang lông, ngăn ngừa nhân mụn mới sản sinh, điều tiết chất nhờn trên da, kháng khuẩn, ngăn ngừa thâm sau mụn', N'Tuýp', CAST(299000 AS Decimal(18, 0)), 10, N'1575651600', N'1575824399', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (275, N'iBeauty', N'ACM', 1, N'ACM14', N'SEBIONEX. TRIO Cream - Kem giảm mụn 3 tác động: kháng khuẩn, chống viêm, giảm tiết bã nhờn ngăn ngừa nhân mụn mới sản sinh, giúp làm dịu mát, giảm thâm do mụn', N'sebionex. trio cream - kem giam mun 3 tac dong: khang khuan, chong viem, giam tiet ba nhon ngan ngua nhan mun moi san sinh, giup lam diu mat, giam tham do mun', N'Kem trị mụn Sebionex với 3 tác động giúp giảm mụn, ngăn ngừa nhân mụn mới sản sinh, điều tiết chất nhờn trên da, kháng khuẩn, làm dịu và giữ ẩm, giúp làm mềm da và giảm thâm do mụn', N'Tuýp', CAST(405000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (276, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (277, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (278, N'NT_40_LNQ', N'Stanhome', 1, N'SCS', N'Stanhome Clear Spot', N'stanhome clear spot', N'Kem bôi giúp làm dịu da, tránh nóng rát, làm sạch sâu thông thoáng chân lông, giảm sưng tấy viêm đỏ, se mụn, xẹp mụn, ngăn ngừa sự phát triển của vi khuẩn gây mụn và sự hình thành các vết thâm, sẹo.', N'Tuýp', CAST(385000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (279, N'NT_40_LNQ', N'Image', 1, N'CMAS', N'Sữa rửa mặt dạng cát, điều trị mụn CLEARCELL Medicated Acne Scrub', N'sua rua mat dang cat, dieu tri mun clearcell medicated acne scrub', N'Sữa rửa mặt dạng cát, điều trị mụnt chứa Benzoyl peroxide giúp diệt vi khuẩn sinh mụn, giảm viêm, tiêu nhân mụn và các hạt tẩy muối biển cực nhỏ giúp loại bỏ lớp da chết bên ngoài cũng như các chất gây tắc nghẽn lỗ chân lông. ', N'Chai', CAST(890000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (280, N'NT_40_LNQ', N'Ziaja', 1, N'rosa', N'Ziaja Med Kem dịu nhẹ và giảm mụn trứng cá đỏ Rosacea 50ml', N'ziaja med kem diu nhe va giam mun trung ca do rosacea 50ml', N'- Ngăn ngừa sự hình thành mụn đỏ, mụn mủ trên da.
- Làm dịu kích ứng & mẩn đỏ trên da.
- Giúp da trở nên mịn màng hơn.
- Dưỡng ẩm & làm mềm da.
- Bảo vệ da hiệu quả khỏi tia cực tím.', N'Tuýp', CAST(427000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 204, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (281, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (282, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (283, N'iBeauty', N'ACM', 1, N'ACM22', N'CICASTIM SOOTHING REPAIR CREAM - Kem giảm kích ứng, kháng khuẩn, thúc đẩy nhanh liền sẹo cho da trầy xước, bỏng nhẹ do nhiệt (bỏng, sau điều trị Laser), mẩn ngứa, côn trùng đốt, dị ứng', N'cicastim soothing repair cream - kem giam kich ung, khang khuan, thuc day nhanh lien seo cho da tray xuoc, bong nhe do nhiet (bong, sau dieu tri laser), man ngua, con trung dot, di ung', N'Phục hồi da bị hư tổn, làm dịu vùng da bị tổn thương, thúc đẩy tái tạo lại lóp biểu bì, làm giảm, làm nhanh liền sẹo', N'Tuýp', CAST(173000 AS Decimal(18, 0)), 10, N'1575651600', N'1575824399', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (284, N'NT_40_LNQ', N'Avène', 1, N'AVENE1', N'Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream', N'kem tri tham lanh da chong nhiem khuan avene cicalfate repair cream', N'Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

CHI TIẾT SẢN PHẨM 

Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream

Tại Việt Nam, Avène là cái tên rất hay gặp trong đơn thuốc mà các bác sĩ da liễu kê cho bệnh nhân của mình, phổ biến nhất là kem chống nắng và kem dưỡng ẩm. Lợi thế của Avene là sử dụng nước từ dòng suối khoáng Sanite-Odile nổi tiếng của Pháp để sản xuất ra dòng sản phẩm chứa khoáng dịu nhẹ chữa lành mọi thương tổn dành riêng cho da nhạy cảm.

THÀNH PHẦN



Sucralfate: 1%
Đồng Sulfate: 0.2%
Kẽm Sulfate: 0.1%
Kẽm Oxit: 4%
Nước khoáng Avene: 45%
Kem làm lành da, chống nhiễm khuẩn Cicalfate của Avene là sản phẩm được tạo nên bởi nhiều hoạt chất đặc biệt giúp làm lành các thương tổn trên da.


(*) Hoạt chất Sulcralfate có dạng vi hạt siêu mịn sẽ hồi phục và kích thích tái tạo da, giúp da mau lành vết thương và lành sẹo.


(*) Trong khi đó, sự phối hợp giữa Đồng Sulfate, Kẽm Sulfate và Kẽm Oxit có tác dụng chống nhiễm khuẩn, giúp bảo vệ hiệu quả làn da đang bị tổn thương.


(*) Và tất nhiên không thể thiếu nước khoáng Avène, là thành phần quan trọng giúp làm dịu da, chống kích ứng, mang đến cảm giác thực sự êm ái và dễ chịu cho làn da của bạn.


(*) Avene Cicalfate Repair Creamkhông chứa hương liệu, chất bảo quản nên phù hợp với mọi làn da, đặc biệt kể cả da nhạy cảm của trẻ sơ sinh.

CÔNG DỤNG


Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

Avene Cicalfate Repair Cream còn dùng được cho trẻ sơ sinh, vết hăm tã ở trẻ, vết bỏng, vết mổ, đúng là một loại kem rất cần thiết phải có trong tủ thuốc của mỗi gia đình.

Avene Cicalfate Repair Creamkhông chỉ giúp làm da dịu mát, chống kích ứng, mà những hoạt chất đặc biệt còn hỗ trợ hồi phục da, kích thích tái tạo da, làm lành vết thương và lành sẹo nhanh chóng, làm dịu vết mẩn đỏ chỉ trong vài ngày sử dụng.

HƯỚNG DẪN SỬ DỤNG


Sản phẩm phù hợp nhất với các làn da bị tổn thương hoặc kích ứng sau các can thiệp thẩm mỹ (chiếu laser, phẫu thuật thẩm mỹ, tẩy lông…), da bị viêm, chàm, nứt nẻ, hăm tã, chốc vẩy hoặc tổn thương làm trầy xước da.

Dùng 1-2 lần/ ngày vào buổi sáng và/ hoặc tối. Sau khi làm sạch da và lau khô, thoa kem làm lành da, chống nhiễm khuẩn Cicalfate lên các vùng da bị tổn thương.


* Không thoa kem khi vết thương còn ướt và rỉ dịch.
', N'Tuýp', CAST(391000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (285, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (286, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (287, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 205, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (288, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (289, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (290, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (291, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (292, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (293, N'iBeauty', N'Khác', 1, N'ID30', N'ID30 Gold USA', N'id30 gold usa', N'Viên uống trắng da, ngừa nám, chống oxi hoá, hạn chế lão hoá da, tăng khả năng chống ánh nắng mặt trời, tia UV, môi trường ô nhiễm. Ức chế sản sinh Melamin, dưỡng trắng an toàn. Ngăn ngừa lão hoá da, nám, tàn nhang, đốm đồi mồi, làm đẹp da giúp da sáng mịn', N'Hộp', CAST(800000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (294, N'NT_40_LNQ', N'Obagi', 1, N'1133', N'Kem dưỡng làm dịu da Obagi Gentle Rejuvenation Skin Calming Cream', N'kem duong lam diu da obagi gentle rejuvenation skin calming cream', N'Obagi Gentle Rejuvenation Skin Calming Cream cải thiện tình trạng da trong quá trình bắt đầu lão hóa, đồng thời cung cấp độ ẩm sâu cho da khô và da nhạy cảm. Các yếu tố tăng trưởng từ thực vật là kinetin và zeatin cũng giúp giảm dấu hiệu tổn thương từ ánh nắng mặt trời, bao gồm nếp nhăn và vết thâm nám. Kem cũng giúp giảm ngứa rát và tình trạng da bị đỏ.

Công dụng:

Cung cấp độ ẩm và nước cho da
Giảm dấu hiệu lão hóa
Giảm nếp nhăn, thâm nám
Giảm thiểu kích ứng da và đỏ
Thích hợp cho da thường đến da khô, kể cả da nhạy cảm  và sau trị liệu
Thành phần nổi bật:

- Kinetin tăng cường khả năng giữ ẩm của da

- Zeatin cải thiện làn da thô ráp, khiến da đều màu và mềm mại hơn

Thành phần chi tiết:

Water (Aqua)​,​ Glyceryl Stearate​,​ Propylene Glycol​,​ Octyldodecyl Myristate,​ Stearic Acid​,​ Cetyl Alcohol​,​ PEG-12 Glyceryl Dimyristate,​ Stearyl Alcohol​,​ Lactobacillus Ferment,​ Glycine Soja (Soybean) Sterols​,​ Phenoxyethanol​,​ Laureth-23​,​ Dimethicone​,​ Carbomer​,​ Tocopheryl Acetate​,​ Ethoxydiglycol​,​ Sodium Hydroxide​,​ Ethylhexylglycerin​,​ Kinetin​,​ Zeatin​,​ Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate​,​ Disodium EDTA​,​ Panthenol​,​ Citric Acid​,​ Ascorbic Acid​,​ Hydrolyzed Elastin​,​ Soluble Collagen​,​ Aloe Barbadensis Leaf Juice​,​ Hydrochloric Acid.

Hướng dẫn sử dụng:

Cho một lượng vừa đủ vào lòng bàn tay, thoa lên da mặt và cổ vào mỗi sáng và tối hoặc theo hướng dẫn của bác sĩ.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (295, N'NT_40_LNQ', N'Image', 1, N'RBC', N'Kem làm sáng da và mờ nám IMAGE MD Restoring Brightening  Crème With ADT Technology(tm) ', N'kem lam sang da va mo nam image md restoring brightening creme with adt technology(tm)', N'Kem làm sáng da và mờ nám công nghệ ADT Image MD Restoring Brightening Crème With ADT Technology TM có tác dụng ngăn ngừa dấu hiệu lão hóa da, ức chế sản xuất melanin để hình thành nám, đồi mồi trên bề mặt. Không những thế, hợp chất này còn ngăn ngừa sự rối loạn sắc tố da, cải thiện da đen sạm, góp phần làm mờ và loại bỏ nám một cách hiệu quả.', N'Hộp', CAST(3496000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (296, N'NT_40_LNQ', N'Obagi', 1, N'1115', N' Kem làm trắng da Obagi Nuderm Sunfader SPF 15 - 57g', N'kem lam trang da obagi nuderm sunfader spf 15 - 57g', N'Obagi Nu-Derm Sunfader SPF 15 chứa hỗn hợp thành phần độc đáo giúp làm trắng sáng vùng da bị tăng sắc tố và bảo vệ da khỏi tổn hại từ ánh nắng. Octinoxate và oxybenzone cung cấp độ bảo vệ SPF 15, ngăn cản lão hóa từ ánh nắng. 

Ngoài chỉ số chống nắng SPF, Obagi Sunfader còn chứa 4% hydroquinone, thành phần vàng trong điều trị nám. Sunfader thẩm thấu mức độ tại chỗ giúp giảm đốm nâu, tàn nhang vô cùng hiệu quả.

Obagi Nu-Derm Sunfader chứa 4% hydroquinone và SPF 15 là giải pháp lý tưởng cho làn da cần đặc trị đốm nâu, tàn nhang, tăng sắc tố. Sự kết hợp kép giữa thành phần trị nám và chống nắng cho kết quả tốt nhất, cho da mịn màng, rạng rỡ, đồng màu và săn chắc.

Sử dụng kem chống nắng riêng biệt là cần thiết khi mức độ tiếp xúc với tia UV cao.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban ngày.

Thành phần
7.5% Octinoxate, 5.5% Oxybenzone, 4% Hydroquinone.', N'Lọ', CAST(2200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (297, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (298, N'iBeauty', N'Lysaskin', 1, N'LK10', N'Kem trị nám CLARILYS', N'kem tri nam clarilys', N'Kem trị nám, đốm tàn nhang kèm theo tác dụng lột nhẹ và dưỡng ẩm cho da', N'Tuýp', CAST(567000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (299, N'NT_40_LNQ', N'SKINMD', 1, N'SK15ml', N'Kem trị nám Skinmd Pure Whitenol Intensive cream 15ml ', N'kem tri nam skinmd pure whitenol intensive cream 15ml', N'- Tái tạo tế bào gốc, chống lão hoá, trị nám, tàn nhang.

- Làm mờ nếp nhăn, vết chân chim và bọng mắt.

- Tăng khả năng đàn hồi, cải thiện làn da tối màu.

- Mang lại làn da trắng sáng, tươi trẻ và đều màu.', N'Tuýp', CAST(824000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
GO
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (300, N'NT_40_LNQ', N'Obagi', 1, N'0003', N'Nước hoa hồng Obagi Nuderm Toner #2 ( cho mọi loại da )', N'nuoc hoa hong obagi nuderm toner #2 ( cho moi loai da )', N'Nước hoa hồng se khít lỗ chân lông Obagi Nu-Derm Toner là sản phẩm chất lượng của thương hiệu Obagi Medical, sử dụng những thành phần từ thực vật tự nhiên có khả năng làm sạch và dưỡng ẩm, giúp da tái cân bằng và trở nên  khỏe mạnh, hồng hào. Để làm được điều đó, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner với thành phần chính là chiết xuất nước cây phỉ, có thuộc tính làm se da, hút bỏ lượng dầu thừa trong lỗ chân lông, giảm sưng đỏ, hạn chế mụn trứng cá mà không làm khô da. Bên cạnh đó nó còn là một chất chống oxi hóa mạnh mẽ, làm dịu làn da bị cháy nắng, kích thích lưu thông tuần hoàn máu làm cho da hồng hào hơn. Nhờ thế, nước hoa hồng se khít chân lông Obagi Nu-Derm Toner thanh lọc nang lông, làm sạch bụi bẩn và dầu nhờn tồn đọng gây bít chân lông, duy trì bề mặt da thông thoáng, khỏe mạnh.

Công dụng:
– Cân bằng độ pH của da
– Làm sạch lỗ chân lông.
– Đem lại cho bạn làn da mịn màng, không tì vết.
– Sử dụng dài lâu sẽ giúp làn da trắng sáng hồng hào tự nhiên.
– Sản phẩm thích hợp cho mọi loại da.


Đối tượng sử dụng:
- Khách hàng sở hữu làn da dầu, nhờn.
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.

Hướng dẫn sử dụng:
– Lấy một lượng vừa đủ, cho sản phẩm ra bông cotton thoa đều lên khắp mặt và cổ.
– Tránh để sản phẩm rơi vào vùng mắt.
– Dùng sản phẩm cho cả ngày và đêm.

Dung tích:
198ml

Thành phần:
Nước tinh khiết, lô hộ Barbadensis, Hamamelis Virginiana (chiết xuất nước cây phỉ), Potassium Alum, Sodium PCA, Panthenol, DMDM Hydantion, Polysorbate 80, Allantoin, Salvia Officinalis (chiết xuất cây xô thơm), chiết xuất cây vòi voi, chiết xuất hoa cúc Calendula, Saponins, Iodopropynyl Butylcarbamate, Fragrance, FD&C Blue No. 1.', N'Chai', CAST(960000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (301, N'NT_40_LNQ', N'Image', 1, N'IIBS', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum ', N'serum lam trang sang da mo tham nam image skincare iluma intense bleaching serum', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum giúp loại bỏ lớp da sừng khô sần, xỉn màu, lão hóa và nhiều đốm nâu, cung cấp dưỡng chất cho da sáng hồng rạng rỡ từ bên trong.
Là dòng sản phẩm dưỡng da cao cấp, sử dụng thành phần điều giúp giảm nám đặc hiệu kết hợp cùng các thành phần hoạt chất làm sáng da chiết xuất tự nhiên như như Licorice, Azelaic acid (kháng khuẩn) hiệu quả trong việc làm mờ vết thâm, đốm nâu, tàn nhang, giúp làm sáng da tự nhiên.
Serum trị nám này còn được bổ sung thành phần Glycolic acid giúp nhẹ nhàng tẩy da chết, cải thiện bề mặt và cấu trúc da, hạn chế nếp nhăn hình thành, ngăn ngừa lão hóa, cho làn da tươi trẻ, rạng rỡ.', N'Chai', CAST(1300000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (302, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (303, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (304, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 206, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (305, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (306, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (307, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (308, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (309, N'iBeauty', N'ACM', 1, N'ACM40', N'DEPIWHITE M SPF 50 - Kem chống nắng chuyên biệt cho da nám, tăng sắc tố', N'depiwhite m spf 50 - kem chong nang chuyen biet cho da nam, tang sac to', N'Là kem chống nắng vùng bức xạ UVA, UVB và được mở rộng phổ chống nắng sang cả vùng ánh sáng nhìn thấy với các bức xạ từ 400-480nm, giúp tăng cường tối đa khả năng ngăn ngừa ảnh hưởng của ánh sáng mặt trời tới việc kích thích tăng sắc tố ở người có da nám, tàn nhang	', N'Tuýp', CAST(483000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (310, N'NT_40_LNQ', N'Image', 1, N'ISPF50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50', N'kem chong nang danh cho da hon hop image skincare prevention+ daily ultimate protection moisturizer spf 50', N'Kem chống nắng dành cho da hỗn hợp Image Skincare Prevention+ Daily Ultimate Protection Moisturizer SPF 50 - giải pháp chống nắng phổ rộng, giúp ngừa da sạm nám, hư tổn, lão hóa, nuôi dưỡng da trẻ khỏe dài lâu.
Là sản phẩm chống nắng phổ rộng cả UVA/UVB, kết hợp công nghệ chống nắng hiện đại cùng cơ chế vật lý vừa giúp dưỡng ẩm làm mềm da, ngừa da khô ráp, bong tróc, kích ứng, vừa làm dịu da, giúp duy trì trạng thái tự nhiên.
Sản phẩm còn giúp bổ sung nguồn dưỡng chất chiết xuất từ thiên nhiên như chiết xuất tế bào gốc hạt nho, vitamin C, Roxisome, Photosome...giúp thẩm thấu sâu vào da, nuôi dưỡng làn da khỏe mạnh từ bên trong, giảm các tổn thương do ánh nắng mặt trời gây ra, đồng thời phục hồi, sữa chữa nhanh chóng các tổn thương DNA.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (311, N'NT_40_LNQ', N'Image', 1, N'ISPF30', N'Kem chống nắng dành cho da khô Image Skincare Preventio Daily Hydrating Moisturizer SPF 30+', N'kem chong nang danh cho da kho image skincare preventio daily hydrating moisturizer spf 30+', N'Kem chống nắng dành cho da khô Image Skincare Preventio Daily Hydrating Moisturizer SPF 30+ là sản phẩm dưỡng da chuyên dành cho da khô, với công thức đặc biệt vừa cung cấp độ ẩm ngừa da mất nước, vừa bổ sung vitamin và nhiều hoạt chất giúp chống nắng bảo vệ da, ngừa sạm nám, hư tổn, giúp da trẻ khỏe tự nhiên.
Sản phẩm là sự kết hợp hoàn hảo của công nghệ chống nắng hiện đại, kẽm Oxide và sản phẩm chống nắng với cơ chế vật lý, giúp cung cấp khả năng chống nắng phổ rộng UVA/UVB, hình thành màng chắn bảo vệ da tối ưu, ngăn ngừa da hư tổn, sạm nám, lão hóa do tác động của ánh nắng mật trời.
Sản phẩm còn giúp cung cấp độ ẩm sâu cho da khô, ngăn ngừa da bong tróc, kích ứng, mất nước. Nguồn thành phần hoạt chất chống oxy hóa mạnh như Thiothaine, vitamin C hay trà xanh còn là yếu tố hỗ trợ ngừa hư tổn da hoàn hảo.', N'Tuýp', CAST(1300000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (312, N'NT_40_LNQ', N'Image', 1, N'ISPF32', N'Kem chống nắng dành cho da nhờn Image Skincare Prevention+ Daily Matte Moisturizer Oil Free SPF 32+', N'kem chong nang danh cho da nhon image skincare prevention+ daily matte moisturizer oil free spf 32+', N'Kem chống nắng dành cho da nhờn Image Skincare Prevention+ Daily Matte Moisturizer Oil Free SPF 32+ chuyên biệt cho da dầu mụn, giúp kiểm soát nhờn, dưỡng ẩm, cân bằng độ pH mà vẫn có thể cung cấp khả năng chống nắng phổ rộng với SPF 32+ giúp ngừa da hư tổn, sạm nám. Sản phẩm không gây bóng nhờn da, không gây mụn, cho da khô thoáng tự nhiên.
Là sản phẩm kem chống nắng thế hệ mới, không dầu, giúp da khô thoáng, mịn màng, không gây bưng bít lỗ chân lông, không gây mụn cho da. Sản phẩm với cơ chế vật lý, chống nắng phổ rộng giúp hình thành màng bảo vệ ngừa da hư tổn, sạm nám, xuất hiện đốm nâu, đồi mồi cho bề mặt da. Kem chống nắng Image Skincare còn giúp cung cấp độ ẩm cho da mềm mại, mịn màng, kết hợp công nghệ vi xốp giúp hấp thụ dầu thừa hiệu quả.
Ngoài ra, sản phẩm còn bổ sung nhiều thành phần dưỡng chất chất chống oxy hóa như Thiothaine, vitamin C hay trà xanh, có khả năng phá hủy gốc tự do để bảo vệ da, giúp ngừa thương tổn cho da một hiệu quả cao.', N'Tuýp', CAST(1300000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (313, N'NT_40_LNQ', N'Image', 1, N'RDDM', N'Kem chống nắng ngừa lão hoá IMAGE MD Restoring Daily Defense Moisturizer SPF 50 -new', N'kem chong nang ngua lao hoa image md restoring daily defense moisturizer spf 50 -new', N'Kem chống nắng ngừa lão hóa Restoring Daily Defense Moisturizer 50 sẽ là chống nắng quang phổ rộng giúp làm chậm đi quá trình lão hóa và bảo vệ làn da', N'Tuýp', CAST(1851000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (314, N'NT_40_LNQ', N'Obagi', 1, N'1160', N'Kem chống nắng Obagi Healthy Skin Protection SPF 35', N'kem chong nang obagi healthy skin protection spf 35', N'Kem Chống Nắng Obagi Healthy Skin Protection SPF35 là sản phẩm tới từ thương hiệu mỹ phẩm Obagi Medical nổi tiếng của Mỹ. Sản phẩm mang tới giải pháp hiệu quả dành cho chị em trong việc chăm sóc và bảo vệ da khỏi tia UVA, UVB. Đây là một trong số những nguyên nhân chính làm da nhanh chóng bị lão hóa và tăng sắc tố da. Hiện nay sản phẩm đang được chị em phụ nữ tin tưởng sử dụng với những đánh giá tích cực về chất lượng.

Thành phần Kem Chống Nắng Obagi Healthy Skin Protection SPF35


- Micronized Zinc Oxide

- Octinoxate

- Ngăn ngừa ảnh hưởng của tia UVA, UVB với da: Tia UVA, UVB phát ra từ ánh nắng mặt trời sẽ ảnh hưởng rất lớn tới da khiến da bị sạm đen, xuất hiện nhiều hắc tố trên da gây nên nám, tàn nhang, làm da bị lão hóa trước tuổi thậm chí có thể gây ra ung thư da. Sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF 35 khi đi ra ngoài sẽ giúp bạn ngăn chặn được những ảnh hưởng của tia UVA, UVB tới da

- Giúp da trắng sáng, mịn màng: Việc sử dụng Kem chống nắng Obagi Healthy Skin Protection SPF35 thường xuyên còn giúp chăm sóc và dưỡng da hiệu quả, cho bạn một làn da trắng sáng, mịn màng là tâm điểm thu hút mọi ánh nhìn

- Bên cạnh đó sản phẩm còn có thể sử dụng làm lớp kem lót trang điểm

- Làm chậm quá trình lão hóa da: Với công thức Z-Cote giúp da nhanh chóng hấp thu kem chống nắng làm cho quá trình lão hóa trên da bởi các tác động từ môi trường diễn ra chậm hơn.

Hướng dẫn sử dụng Kem Chống Nắng Obagi Healthy Skin Protection SPF35

- Trước hết các bạn làm sạch da bằng sữa rửa mặt

- Sau đó thoa đều kem một lượng kem vừa đủ lên da rồi dùng tay vỗ nhẹ để kem thẩm thấu tốt hơn trên da

- Sử dụng trước khi rời khỏi nhà để đạt được hiệu quả cao nhất.

- Bảo quản sản phẩm ở nơi khô ráo, thoáng mát

- Đậy nắp lại ngay sau khi sử dụng.

- Sau khi hoạt động ngoài trời nhiều giờ các bạn nên làm sạch da và tiếp tục thoa Kem chống nắng Obagi Healthy Skin Protection SPF 35 để bảo vệ da hiệu quả.

Quy cách: 85g

Thương hiệu: Obagi

Xuất xứ: Mỹ

', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (315, N'NT_40_LNQ', N'Obagi', 1, N'1561', N'Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50', N'kem chong nang obagi mineral sunshield broad spectrum spf 50', N'Tính năng chống nắng vượt trội
Thành phần kem chống nắng chứa nhiều dưỡng chất cần thiết cho da như Zinc Oxide (giúp làm dịu da và ngăn chặn tia UVA / UVB), Titanium Dioxide (chống nắng khoáng sản cung cấp da khỏi tác hại của tia cực tím), Chiết xuất Tảo (hydrat và bảo vệ da khỏi các kích ứng), Vitamin E (ngăn chặn các gốc tự do có hại).



Kem chống nắng Obagi Mineral Sunshield Broad Spectrum SPF 50 cho mọi loại da
Kem chống nắng thiên nhiên cho da nhạy cảm Obagi Sun Shield Mineral Broad Spectrum SPF 50 là kem chống nắng vật lý vừa giúp chống nắng da hiệu quả trước những tác động của tia UVA/UVB vừa cung cấp dưỡng chất dưỡng ẩm làm dịu da và khôi phục hàng rào bảo vệ da hiệu quả. Sản phẩm phù hợp với mọi loại da, kể cả làn da nhạy cảm nhất.

Lưu ý: Hiệu quả của sản phẩm/thuốc/điều trị… tùy thuộc vào tình trạng và đặc điểm riêng của mỗi người.

Chống nắng công nghệ tiên tiến với khả năng kháng tia hồng ngoại IR – đột phá mới của y khoa da liễu toàn cầu.
Chúng ta đã biết các loại kem chống nắng hiện nay có khả năng kháng tia cực tím từ ánh nắng mặt trời UVA và UVB, nhưng một phát hiện gần đây cho thấy tia hồng ngoại cũng là một nhân tố ảnh hưởng đến sắc tố da và hệ quả là sẽ làm cho làn da chúng ta giảm sắc tố và suy giảm sức đề kháng của da.

Công dụng:
– Kem chống nắng phổ rộng, bảo vệ da trước cả tia UVA và UVB
– Dưỡng ẩm cần thiết cho da
– Giúp phục hồi hàng rào bảo vệ da
– Làm trắng da từ bên trong.

Cách sử dụng:
– Sau khi sửa mặt sạch, lấy một lượng kem vừa đủ, apply lên mặt, cổ.
– Sử dụng hàng ngày để có chế độ chăm sóc da tốt nhất.

Dung lượng:
85g.

Thành phần:
Titanium Dioxide 4.9%, Zinc Oxide 4.7%
Water, Butyloctyl Salicylate, Cetyl Dimethicone, Dimethicone, Styrene/acrylates Copolymer, Trimethylsiloxysilicate, Dimethicone PEG-8 Laurate, Isohexadecane, Butylene Glycol, Polysorbate 60, Trisiloxane, Arachidyl Alcohol, Polyhydroxystearic Acid, Hydrated Silica, Ceramide 3, Ceramide 6-II, Ceramide 1, Niacinamide, Cholesterol, Phytosphingosine, PEG-100 Stearate, Glyceryl Stearate, Ascorbic Acid, Avena Sativa (Oat) Kernel Extract, Arachidyl Glucoside, Beeswax, Behenyl Alcohol, Benzyl Alcohol, Stearic Acid, Bisabolol, Dipotassium Glycyrrhizate, Ethylhexylgrycerin, Glycerin, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Pantothenic Acid/Yeasty Polypeptide, PEG-8, Xanthan Gum, Polyaminopropyl Biguanide, Polymethyl Methacrylate, Alumina, Potassium Sorbate, Retinyl Palmitate, Sodium Lauroyl Lactylate, Carbomer, Tocopheryl Acetate, BHT, Disodium EDTA, Methicone, Methylisothiazolinoine, Triethoxycaprylylsilane.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (316, N'NT_40_LNQ', N'Obagi', 1, N'1156', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50', N'kem chong nang obagi sun shield matte broad spectrum spf 50', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. Công thức mỏng nhẹ cung cấp chống nắng phổ rộng và thấm nhanh trên da tạo lớp finish lì và không nhờn dính. Vitamin C giúp da trắng sáng hơn, săn chắc và chống lại các gốc oxi hóa tự do.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.
- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.
- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.
- Đem lại cho bạn làn da mịn màng tươi sáng.
- Sản phẩm thích hợp với mọi loại da.

Thành phần:
Hoạt chất: Homosalate 10%, Octisalate 5%, Zinc Oxide 16.5%

Water (Aqua), C15-19 Alkane, Octyldodecyl Neopentanoate, Polymethylsilsesquioxane, Sorbitan Olivate, Silica, Polyglyceryl-6 Polyrininoleate,Sodium Chloride, Xanthan Gum, Glycerin, Hydroxyacetophenone, Disodium EDTA, 1,2-Hexanediol, Caprylyl Glycol, Sodium Hydroxide, Triethoxycaprylsilane, Polyhydroxystearic Acid, Disteardimonium Hectorite, Polyglyceryl-2 Isostearate, Euphorbia Cerifera (candelilla) Wax, Beeswax,
Dimethicone.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da, dùng ban ngày. Trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (317, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (318, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (319, N'NT_40_LNQ', N'Obagi', 1, N'1155', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40', N'kem chong nang vat ly suzanobagimd physical defense broad spectrum spf 40', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường.

Công dụng:

- Bảo vệ da bằng Titanium Dioxide và Zinc Oxide với chỉ số PA ++++
- Chống tia UVA,UVB, HEV, VIS, IR 
- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo.
- Mịn nhẹ trên da, không đóng thành vệt.
- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi.
- Bổ sung aloe vera làm dịu viêm và đỏ.
- Không gây hại tới rạn san hô khi tắm biển.

Thành phần:

Active: Titanium Dioxide (4.5%), Zinc Oxide (12.8%)

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Olerzcea Italica (Broccoli) Exrtact

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (320, N'NT_40_LNQ', N'Obagi', 1, N'1115', N' Kem làm trắng da Obagi Nuderm Sunfader SPF 15 - 57g', N'kem lam trang da obagi nuderm sunfader spf 15 - 57g', N'Obagi Nu-Derm Sunfader SPF 15 chứa hỗn hợp thành phần độc đáo giúp làm trắng sáng vùng da bị tăng sắc tố và bảo vệ da khỏi tổn hại từ ánh nắng. Octinoxate và oxybenzone cung cấp độ bảo vệ SPF 15, ngăn cản lão hóa từ ánh nắng. 

Ngoài chỉ số chống nắng SPF, Obagi Sunfader còn chứa 4% hydroquinone, thành phần vàng trong điều trị nám. Sunfader thẩm thấu mức độ tại chỗ giúp giảm đốm nâu, tàn nhang vô cùng hiệu quả.

Obagi Nu-Derm Sunfader chứa 4% hydroquinone và SPF 15 là giải pháp lý tưởng cho làn da cần đặc trị đốm nâu, tàn nhang, tăng sắc tố. Sự kết hợp kép giữa thành phần trị nám và chống nắng cho kết quả tốt nhất, cho da mịn màng, rạng rỡ, đồng màu và săn chắc.

Sử dụng kem chống nắng riêng biệt là cần thiết khi mức độ tiếp xúc với tia UV cao.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban ngày.

Thành phần
7.5% Octinoxate, 5.5% Oxybenzone, 4% Hydroquinone.', N'Lọ', CAST(2200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (321, N'NT_40_LNQ', N'Obagi', 1, N'1159', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Cool)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (cool)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Cool bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn, không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g


Active ingredients:

Homosalate 10%, Octinoxate 7.5%, Titanium dioxide 3.18%, Zinc oxide 5% 

Inactive ingredients:

Water, butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, polyglyceryl-10 pentastearate, glyceryl stearate, PEG-100 stearate, butylene glycol, pentylene glycol, behenyl alcohol, PEG-40 stearate, dimethicone, physalis angulata extract, algae extract, glycerin, iron oxides, phenoxyethanol, sodium stearoyl lactylate, polyhydroxystearic acid, mannitol, mica, hydroxyethyl acrylate/sodium acryloyldimethyl taurate copolymer, citric acid, squalane, alumina, stearic acid, xanthan gum, calcium aluminum borosilicate, diatomaceous earth, sodium polyacrylate, disodium EDTA, synthetic fluorphlogopite, polysorbate 60, ethylhexylglycerin, zinc sulfate, silica, chlorphenesin, tetrahexyldecyl ascorbate, tin oxide, tocopherol

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Cool: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (322, N'NT_40_LNQ', N'Obagi', 1, N'1153', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Warm)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (warm)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Warm bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g

Active Ingredients: 10% homosalate, 7.5% octinoxate, 5% zinc oxide, 3.22% titanium dioxide

Inactive Ingredients: Water, Butyloctyl Salicylate, Caprylic/Capric Triglyceride, Caprylyl Methicione, Polyglyceryl-10 Pentastearate, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Pentylene Glycol, Bethenyl Alcohol, Iron Oxides, PEG-40 Stearate, Dimethicone, Physalis Angulata Extract, Phenoxyethanol, Algae Extract, Glycerin, Mica, Sodium Stearoyl Lactylate, Polyhdroxystearic Acid, Mannitol, Hydroxyethyl Acrylate/Sodium Acryloyidimethyl Taurate Copolymer, Citric Acid, Squalene, Alumina, Stearic Acid, Xanthan Gum, Diatomaceous Earth, Sodium.

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Warm: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da.Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (323, N'iBeauty', N'ACM', 1, N'ACM15', N'SEBIONEX Mattifying Sunscreen Gel SPF50+ - Kem chống nắng chuyên biệt cho da mụn, da nhờn', N'sebionex mattifying sunscreen gel spf50+ - kem chong nang chuyen biet cho da mun, da nhon', N'Chứa các hoạt chất hữu cơ và khoáng chất giúp bảo vệ tối đa trước tác động của tia UVA và UVB, đồng thời sản phẩm được thiết kế chuyên biệt cho da dầu và giúp dưỡng da cho bạn làn da khoẻ mạnh, tươi sáng', N'Tuýp', CAST(420000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (324, N'iBeauty', N'ACM', 1, N'ACM07', N'SESITELIAL Sunscreen Cream SPF100+ - Kem Chống Nắng', N'sesitelial sunscreen cream spf100+ - kem chong nang', N'Chống nắng UVA, UVB với SPF100+ dành cho da thường và da nhạy cảm', N'Tuýp', CAST(417000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (325, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (326, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 207, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (327, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (328, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (329, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (330, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (331, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP125', N'Gammaphil 125ml', N'gammaphil 125ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(59000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (332, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP150', N'Gammaphil 150ml', N'gammaphil 150ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(104000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (333, N'NT_40_LNQ', N'Gammaphil', 1, N'GMP500', N'Gammaphil 500ml', N'gammaphil 500ml', N'Sữa rửa dùng trên mặt, tay và toàn thân:
-Đối với ngừoi lớn: sát khuẩn, chống khô da, tẩy nhờn mụn, chống lây nhiễm do tiếp xúc
-Đối với trẻ em, trẻ sơ sinh: ngừa rôm sảy, ngứa da, khô da, tránh hăm da

', N'Chai', CAST(250000 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (334, N'NT_40_LNQ', N'Uriage', 1, N'UTI5', N'Gel rửa mặt cho da nhờn mụn, hỗn hợp- Uriage Hyseac Gel Nettoyant Cleansing Gel 150ml', N'gel rua mat cho da nhon mun, hon hop- uriage hyseac gel nettoyant cleansing gel 150ml', N'Công Dụng: Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp giúp làm sạch sâu bên trong da, điều hòa hoạt động tiết bã nhờn đồng thời làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

CHI TIẾT SẢN PHẨM 

Thể tích thực: 150ml

Xuất xứ: Pháp

Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel với thành phần làm sạch dịu nhẹ: Piroctone Olamine giúp làm sạch sâu bên trong da; Chiết xuất liễu anh thảo điều hòa hoạt động tiết bã nhờn và nước khoáng Uriage làm dịu, cho làn da sạch nhờn, sáng và mềm mại.

Thành phần của Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

Hyseac Gel nettoyant: Giúp hỗ trợ nuôi dưỡng da và ngăn ngừa mụn chứng cá.
Nước khoáng Uriage: Có tác dụng giúp kháng khuẩn, cung cấp ẩm cho da và giúp làm dịu da.
Piroctone Olamine: Giúp làm sạch da, loại bỏ các tạp chất, bã nhờn và bụi bẩn trên da và giúp làm se khít lỗ chân lông.
Chiết xuất liễu anh thảo: Có tác dụng giúp hỗ trợ điều tiết bã nhờn và giúp ngăn ngừa mụn hiệu quả.
Thành phần khác: Aqua (Water), Sodium Laureth Sulfate, Peg-80 Glyceryl Cocoate, Sodium Cocoamphoacetate, Ppg-2 Hydroxyethyl Cocamide, Coco-glucoside, Glyceryl Oleate, Sodium Laureth-8 Sulfate, Sodium Methyl Cocoyl Taurate, Glycine, Sodium Chloride, Peg-2 Hydroxyethyl Coco-isostearamide, Citric Acid, Sodium Oleth Sulfate, Magnesium Laureth Sulfate, Parfum, Magnesium Laureth-8 Sulfate, Bepilobium Angustifolium Extract, Phenoxyethanol, Sodium Metabisulfite.

Công dụng của Gel rửa mặt cho da nhờn mụn, hỗn hợp Uriage Hyseac Gel Nettoyant Cleansing Gel

Giúp bỏ tạp chất, giảm sự tiết bã nhờn, thấm dầu dư thừa
Làm giảm độ sáng bóng, đặc biệt là ở trán, mũi, cằm
Làm săn các lỗ chân lông
Loại bỏ mụn đầu đen và mụn cám, kháng khuẩn, không làm khô da, cân bằng độ ẩm cho da
Giảm sự sản sinh ra mụn
Làn da trở săn chắc, khỏe mạnh và tươi tắn hơn.
Cách dùng Uriage Hyseac Gel Nettoyant Cleansing Gel - Gel rửa mặt cho da nhờn mụn, hỗn hợp

 Sử dụng vào buổi sáng và tối
Thoa một lượng nhỏ gel lên da mặt ẩm, massage nhẹ nhàng và rửa lại sạch với nước.
Đối tượng sử dụng Uriage Hyseac Gel Nettoyant Cleansing Gel

Sản phẩm thích hợp dùng cho da hỗn hợp và da nhờn mụn.
', N'Tuýp', CAST(401000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (335, N'iBeauty', N'ACM', 1, N'ACM16', N'SEBIONEX Foaming gel - Gel rửa mặt cho da mụn, da nhờn', N'sebionex foaming gel - gel rua mat cho da mun, da nhon', N'Nhẹ nhàng làm sạch da, loại bỏ bã nhờn mà không ảnh hưởng đến lớp vỏ bảo vệ của da và cân bằng PH bề mặt cho da, hoạt chất AHA có tác dụng loại bỏ tế bào chết và làm giảm tình trạng khô da, giúp ngăn ngừa mụn trứng cá', N'Tuýp', CAST(309000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (336, N'iBeauty', N'ACM', 1, N'ACM09', N'SESITÉLIAL Cleansing Gel - Gel rửa mặt', N'sesitelial cleansing gel - gel rua mat', N'Làm sạch, loại bỏ tế bào chết và bã nhờn, làm thông thoáng lỗ chân lông giúp da mịn màng tươi sáng', N'Tuýp', CAST(318000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (337, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (338, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (339, N'NT_40_LNQ', N'Image', 1, N'OBFC', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser', N'sua rua mat can bang da image skincare ormedic balancing facial cleanser', N'Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser với chiết xuất từ thành phần tự nhiên an toàn, lành tình, là giải pháp chăm sóc da hoàn hảo dành cho bạn, giúp loại bỏ nhẹ nhàng lớp dầu nhờn, bụi bẩn dư thừa, làm sáng mịn, sạch da mà không gây ra các kích ứng, đồng thời cân bằng độ ẩm, giúp duy trì làn da mềm mại, mịn màng.
Sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser được đánh giá là dòng sản phẩm kết hợp hoạt chất hữu cơ và tinh chất thiên nhiên hiệu quả hiện nay, có khả năng tăng cường chống oxy hóa và bảo vệ nuôi dưỡng làn da tươi trẻ, khỏe khoắn mỗi ngày. Sản phẩm được chứng minh thích hợp với làn da nhạy cảm, da ở độ tuổi thanh thiếu niên, phụ nữ mang thai hay da sau hư tổn, kích ứng.
Với chiết xuất từ tinh chất trà xanh, hoa cúc, nha đam, dầu olive, yến mạch, sử dụng sữa rửa mặt cân bằng da Image Skincare Ormedic Balancing Facial Cleanser còn giúp cung cấp dưỡng chất thẩm thấu sâu vào da giúp làm dịu da, là mờ thâm sạm, cho làn da tươi sáng mỗi ngày. ', N'Chai', CAST(1100000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (340, N'NT_40_LNQ', N'Farmona', 1, N'F150', N'Sữa rửa mặt cho da dầu, da mụn Farmona - Dermacos Anti - acne deep cleansing gel 150ml', N'sua rua mat cho da dau, da mun farmona - dermacos anti - acne deep cleansing gel 150ml', N'Chiết xuất tinh dầu của cây chè, cây liễu giúp se mụn nhanh, làm mỏng đi và giúp bong các nút sừng, tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Các nguyên tố vi lượng cùng bùn, muối khoáng làm sạch sâu cho da tận lỗ chân lông, hạn chế sự phát triển của các vi khuẩn gây nên tình trạng mụn trứng cá, loại  bỏ các vấn đề về da.
Chiết xuất bơ và tinh dầu giúp làm tăng hệ miễn dịch cho da. Ngoài ra, 2 thành phần còn có tác dụng làm se  các đầu mụn và phục hồi da sau mụn, làm mềm da và kích thích tái tạo da.
Các dưỡng chất thiết yếu khác có tác dụng chăm sóc làn da, làm mềm mịn và trắng sáng.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (341, N'NT_40_LNQ', N'Image', 1, N'TFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Image Ageless Skincare Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1015000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (342, N'NT_40_LNQ', N'Image', 1, N'ATFC', N'Sữa rửa mặt chống lão hoá làm sáng da AGELESS Total Facial Cleanser', N'sua rua mat chong lao hoa lam sang da ageless total facial cleanser', N'Sữa rửa mặt Ageless Total Facial Cleanser với công thức kết hợp hoàn hảo của AHAs và các hoạt chất đặc biệt là giải pháp làm sạch sâu, lấy đi mọi bụi bẩn, da chết, cho làn da sáng mịn màng, khỏe khoắn, mềm mại mỗi ngày ', N'Chai', CAST(1050000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (343, N'NT_40_LNQ', N'Image', 1, N'CMAS', N'Sữa rửa mặt dạng cát, điều trị mụn CLEARCELL Medicated Acne Scrub', N'sua rua mat dang cat, dieu tri mun clearcell medicated acne scrub', N'Sữa rửa mặt dạng cát, điều trị mụnt chứa Benzoyl peroxide giúp diệt vi khuẩn sinh mụn, giảm viêm, tiêu nhân mụn và các hạt tẩy muối biển cực nhỏ giúp loại bỏ lớp da chết bên ngoài cũng như các chất gây tắc nghẽn lỗ chân lông. ', N'Chai', CAST(890000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (344, N'NT_40_LNQ', N'Image', 1, N'HFC', N'Sữa rửa mặt dưỡng ẩm, phục hồi da VITAL C Hydrating Facial Cleanser', N'sua rua mat duong am, phuc hoi da vital c hydrating facial cleanser', N'Sữa rửa mặt Image Skincare Vital C Hydrating Facial Cleanser với công thức độc đáo kết hợp sử dụng nguồn vitamin C hàm lượng cao giúp làm sạch sâu đồng thời dưỡng sáng da, dưỡng ẩm hiệu quả, cung cấp dưỡng chất phục hồi cấu trúc và bề mặt da, cho da căng mịn, khỏe từ bên trong.
Là dòng sản phẩm chăm sóc da cao cấp được ứng dụng công nghệ cao tại Mỹ với khả năng bổ sung độ ẩm làm mềm da, loại bỏ da chết khô sần, xỉn màu, giúp da mềm mại, kích thích sản sinh tế bào da mới đồng thời bổ sung dưỡng chất như vitamin A, C, E...giúp phục hồi nhanh chóng làn da tổn thương, nhạy cảm, kích ứng, giúp da dịu mát, mịn màng tự nhiên.', N'Chai', CAST(999000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (345, N'NT_40_LNQ', N'Soskin', 1, N'SGPCG', N'Sữa rửa mặt loại bỏ vi khuẩn Soskin Gentle Purifying Cleansing Gel 100ml', N'sua rua mat loai bo vi khuan soskin gentle purifying cleansing gel 100ml', N'Bạn có đang sử dụng sữa rửa mặt phù hợp với làn da của mình? Những làn da khô, da dầu hay da mụn đều có loại sữa rửa mặt chuyên biệt, chứa những thành phần khác nhau và hợp với từng cấu trúc của da.

Nếu bạn thuộc da nhờn, mụn hãy lựa chọn sữa rửa mặt Soskin Gentle Purifying Cleansing Gel. Đây là sản phẩm của thương hiệu Soskin, được sản xuất từ Pháp với những nguyên liệu được điều chế từ thực vật. Soskin Gentle Purifying Cleansing Gel có tác dụng làm sạch bụi bẩn, da chết và nhờn, đặc biệt là khả năng kháng khuẩn. Điều này giúp da tránh xa vi khuẩn tấn công gây mụn và viêm da.

 

Sữa rửa mặt loại bỏ vi khuẩn Soskin Gentle Purifying Cleansing Gel với dạng gel mềm mại, khả năng tạo bọt nhiều, giúp thấm sâu vào chân lông, kể cả vùng da nhờn. Từ đó, sản phẩm cuốn trôi chất bẩn, lớp trang điểm gây tắt chân lông. Đồng thời sữa rửa mặt kiểm soát tuyến dầu, hạn chế nhờn sản sinh gây bết rít da.

Tác dụng kháng khuẩn vượt trội của Soskin Gentle Purifying Cleansing Gel giúp da ngừa viêm nhiễm, tránh vi khuẩn và nhờn kết hợp tạo nên ổ mụn. Bên cạnh đó, những lỗ chân lông to cũng được thu nhỏ, cải thiện những vết sần sùi cho làn da mịn màng, tươi tắn.

Đối với những làn da mụn, thường xuất hiện hiện mụn trứng cá, mụn đầu đen, mụn bọc thì sữa rửa mặt Soskin Gentle Purifying Cleansing Gel giúp kháng viêm và khô vùng mụn, tiêu diệt vi khuẩn tồn tại ở nhân mụn. Tiếp đó, sản phẩm cân bằng ẩm ở da khô có mụn, điều hòa lượng nhờn tránh vi khuẩn khuếch tán, nảy sinh mụn.', N'Chai', CAST(405000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (346, N'NT_40_LNQ', N'Image', 1, N'TMSCFC', N'Sữa rửa mặt phục hồi và nuôi dưỡng da The Max Stem Cell Facial Cleanser', N'sua rua mat phuc hoi va nuoi duong da the max stem cell facial cleanser', N'Sữa rửa mặt The Max Stem Cell Facial Cleanser - dòng sản phẩm chăm sóc da cao cấp với chiết xuất tự nhiên an toàn, lành tính thẩm thấu sâu làm sạch da vượt trội đồng thời dưỡng ẩm, cung cấp hoạt chất tái tạo, nuôi dưỡng da sáng khỏe tự nhiên.
Là dòng sản phẩm sữa rửa mặt chăm sóc da hằng ngày, không chứa acid, sulfate & paraben, với khả năng nhẹ nhàng làm sạch sâu bên trong lỗ chân lông, giúp lấy đi hoàn toàn bụi bẩn, bã nhờn, da chết giúp da sạch mịn, đồng thời cân bằng pH của da, ngừa da khô ráp, bong tróc hay mất đi lớp dầu tự nhiên trên bề mặt.
Thành phần tế bào gốc thực vật & các chiết xuất thực vật trong sản phẩm còn giúp nuôi dưỡng da & bảo vệ da khỏi những tác động gây hại từ môi trường như ô nhiễm môi trường, ảnh hưởng của ánh nắng mặt trời và tia UV, hỗ trợ ngừa lão hóa, giảm sự xuất hiện của nếp nhăn, kích thích tăng sinh Collagen và Elastin cho da săn chắc, căng mịn, đàn hồi.
Thành phần tế bào gốc còn là yếu tố giúp phục hồi ADN, kích thích tế bào gốc có sẵn của da phát triển.', N'Tuýp', CAST(970000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (347, N'NT_40_LNQ', N'Image', 1, N'CSGC', N'Sữa rửa mặt sạch nhờn Image Skincare Clear Cell Salicylic Gel Cleanser', N'sua rua mat sach nhon image skincare clear cell salicylic gel cleanser', N'Sữa rửa mặt dạng gel Image Skincare Clear Cell Salicylic Gel Cleanser - giải pháp chăm sóc da dầu nhờn hiệu quả, giúp loại bỏ dầu thừa, cân bằng độ ẩm, se lỗ chân lông, cho làn da căng mịn, thông thoáng, rạng rỡ tự nhiên.
Là sản phẩm chăm sóc da cao cấp với công nghệ làm sạch da tiên tiến kết hợp cùng thành phần Salicylic, giúp nhẹ nhàng thấm sâu vào từng nang lông, lấy đi bụi bẩn, bã nhờn, làm mềm và loại bỏ tế bào da chết khô sần, xỉn màu, thâm sạm, kích thích sản sinh tế bào da mới đồng thời hỗ trợ tẩy trang nhẹ, cân bằng độ pH, ngăn ngừa da khô ráp, bong tróc.
Sản phẩm giúp làm sạch da tuyệt đối, cải thiện lỗ chân lông to và ngừa mụn phát sinh.', N'Chai', CAST(1050000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 208, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (348, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (349, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (350, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (351, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (352, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (353, N'NT_40_LNQ', N'A-derma', 1, N'ec5', N'Kem dưỡng ẩm A Derma Exomega Control Emollient Cream 50ml', N'kem duong am a derma exomega control emollient cream 50ml', N'Kem dưỡng ẩm A Derma Exomega Control Emollient Cream là kem dưỡng ẩm vô trùng dùng cho da mặt và thân thể, giúp giảm ngứa, giảm khô da, dịu kích ứng trong trường hợp viêm da cơ địa hay da quá khô. Dùng cho trẻ sơ sinh, trẻ em và người lớn. ', N'Tuýp', CAST(322000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (354, N'iBeauty', N'Lysaskin', 1, N'LK04', N'Kem dưỡng ẩm ATOLYS Soin Emulsion', N'kem duong am atolys soin emulsion', N'Sản phẩm dưỡng ẩm sâu, giảm ngứa, kháng khuẩn', N'Chai', CAST(425000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (355, N'NT_40_LNQ', N'Ceradan', 1, N'C30g', N'Kem Dưỡng Ẩm Ceradan 30g', N'kem duõng ảm ceradan 30g', N'Ceradan là liệu pháp dưỡng ẩm dùng trong trường hợp da khô, da kích ứng, nhạy cảm. Ceradan bổ sung cách thành phần tự nhiên của da giúp phục hồi hàng rào bảo vệ da và giảm sự mất nước qua da.  Ceradan bổ sung lipid sinh lý là Ceramide, Acid béo tự do, Cholesterol với tỉ lệ tối ưu 3:1:1, cho lớp sừng của da giúp xây dựng, sửa chữa hàng rào bảo vệ của da (bệnh nhân Chàm thể tạng thường bị khiếm khuyết hàng rào bảo vệ da).
Chứa ceramide vượt trội – là thành phần chiếm tỉ lệ cao trong lipid gian bào (bệnh nhân Chàm thể tạng thường thiếu).
Glycerin trong Ceradan có tác dụng dưỡng ẩm da.
Điều chỉnh độ pH ở trong khoảng 4- 6, làm phục hồi màng acid bảo vệ da.
Ceradan giúp gắn kết các tế bào sừng có vai trò như lớp vữa, tạo thành hàng rào bảo vệ vững chắc.', N'Tuýp', CAST(254000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (356, N'NT_40_LNQ', N'Latopic', 1, N'LATO2', N'Kem dưỡng ẩm, dịu ngứa da dị ứng, kích ứng - Latopic Face and Body Cream 75ml ', N'kem duong am, diu ngua da di ung, kich ung - latopic face and body cream 75ml', N'Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da mặt và toàn thân.

CHI TIẾT SẢN PHẨM 

Thành phần
Chất chuyển hóa Lactobacillus sp., phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ), polidocanol, panthenol, bơ hạt mỡ, lanolin, vitamin E, dầu oliu, allantoin, caprylic acid và capric acid.
Sản phẩm không chứa SLS, SLES, chất bảo quản, parabens, xà phòng.

Công dụng
Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da mặt và toàn thân.

Chất chuyển hóa Lactobacillus sp có tác dụng kháng khuẩn, giúp ngăn ngừa sự phát triển của tụ cầu vàng (Staphylococcus aureus) gây viêm ở những người bị viêm da cơ địa, viêm da tiếp xúc dị ứng.

Phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ) giúp làm dịu ngứa nhanh chóng.

Cùng với các thành phần hoạt tính được lựa chọn đặc biệt, mang lại tác động toàn diện:

Làm dịu nhẹ da và giảm kích ứng da
Làm ẩm, làm mềm và gia tăng độ đàn hồi da
Tái tạo cấu trúc màng lipid tự nhiên của lớp biểu bì da
Thúc đẩy quá trình tái tạo lớp biểu bì da bị tổn thương
Bảo vệ da trước các tác động bất lợi của môi trường: nhiệt độ, gió, ô nhiễm môi trường.
Hướng dẫn sử dụng
Thoa đều và nhẹ nhàng một lớp kem mỏng lên da sau khi được làm sạch, đặc biệt tại những vùng đặc biệt khô và bị kích ứng cho đến khi thấm hết. Tránh vùng mắt. Để đạt hiệu quả tốt nhất, sử dụng kem ít nhất 2 lần/ngày.


Dạng bào chế
Kem bôi da

Quy cách đóng gói
Hộp 1 tuýp 75ml
Nhà sản xuất: Viện công nghệ sinh học, vắc-xin & huyết thanh BIOMED (IBSS BIOMED S.A.) 

Nước sản xuất: Ba Lan', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (357, N'iBeauty', N'Lysaskin', 1, N'LK03', N'Kem dưỡng ẩm XEROLYS +', N'kem duong am xerolys +', N'Dưỡng ẩm cho da cực khô, vẩy cá, da lão hoá. Dưỡng ẩm sâu, giảm sừng hoá, giảm ngứa, tái tạo lớp lipid sinh lý của da dành cho da khô, da khô bệnh lý, eczema, viêm da cơ địa, chàm hoá, bệnh vảy cá ở mức độ trung bình và nặng', N'Chai', CAST(410000 AS Decimal(18, 0)), 10, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (358, N'iBeauty', N'Lysaskin', 1, N'LK02', N'Kem dưỡng ẩm XEROLYS 10', N'kem duong am xerolys 10', N'Dưỡng ẩm sâu, giảm sừng hoá, giảm ngứa, tái tạo lớp lipid sinh lý của da dành cho da khô, da khô bệnh lý, eczema, viêm da cơ địa, chàm hoá, bệnh vảy da cá ở mức độ trung bình và nặng', N'Chai', CAST(397000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (359, N'iBeauty', N'Lysaskin', 1, N'LK01', N'Kem dưỡng ẩm XEROLYS 5', N'kem duong am xerolys 5', N'Kem dưỡng ẩm sâu, giảm ngứa, tái tạo lớp lipid sinh lý cho da, dành cho da khô, ngứa ở mức độ nhẹ và vừa', N'Chai', CAST(305000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (360, N'iBeauty', N'Lysaskin', 1, N'LK06', N'Kem dưỡng ẩm XEROLYS 50', N'kem duong am xerolys 50', N'Bạt sừng, tiêu sừng mạnh và dưỡng ẩm mạnh mẽ', N'Tuýp', CAST(363000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (361, N'iBeauty', N'Lysaskin', 1, N'LK07', N'Kem dưỡng ẩm XEROLYS VISAGE', N'kem duong am xerolys visage', N'Dưỡng ẩm kéo dài, phục hồi và tái tạo lớp màng lipid cho da', N'Tuýp', CAST(245000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (362, N'NT_40_LNQ', N'Obagi', 1, N'1133', N'Kem dưỡng làm dịu da Obagi Gentle Rejuvenation Skin Calming Cream', N'kem duong lam diu da obagi gentle rejuvenation skin calming cream', N'Obagi Gentle Rejuvenation Skin Calming Cream cải thiện tình trạng da trong quá trình bắt đầu lão hóa, đồng thời cung cấp độ ẩm sâu cho da khô và da nhạy cảm. Các yếu tố tăng trưởng từ thực vật là kinetin và zeatin cũng giúp giảm dấu hiệu tổn thương từ ánh nắng mặt trời, bao gồm nếp nhăn và vết thâm nám. Kem cũng giúp giảm ngứa rát và tình trạng da bị đỏ.

Công dụng:

Cung cấp độ ẩm và nước cho da
Giảm dấu hiệu lão hóa
Giảm nếp nhăn, thâm nám
Giảm thiểu kích ứng da và đỏ
Thích hợp cho da thường đến da khô, kể cả da nhạy cảm  và sau trị liệu
Thành phần nổi bật:

- Kinetin tăng cường khả năng giữ ẩm của da

- Zeatin cải thiện làn da thô ráp, khiến da đều màu và mềm mại hơn

Thành phần chi tiết:

Water (Aqua)​,​ Glyceryl Stearate​,​ Propylene Glycol​,​ Octyldodecyl Myristate,​ Stearic Acid​,​ Cetyl Alcohol​,​ PEG-12 Glyceryl Dimyristate,​ Stearyl Alcohol​,​ Lactobacillus Ferment,​ Glycine Soja (Soybean) Sterols​,​ Phenoxyethanol​,​ Laureth-23​,​ Dimethicone​,​ Carbomer​,​ Tocopheryl Acetate​,​ Ethoxydiglycol​,​ Sodium Hydroxide​,​ Ethylhexylglycerin​,​ Kinetin​,​ Zeatin​,​ Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate​,​ Disodium EDTA​,​ Panthenol​,​ Citric Acid​,​ Ascorbic Acid​,​ Hydrolyzed Elastin​,​ Soluble Collagen​,​ Aloe Barbadensis Leaf Juice​,​ Hydrochloric Acid.

Hướng dẫn sử dụng:

Cho một lượng vừa đủ vào lòng bàn tay, thoa lên da mặt và cổ vào mỗi sáng và tối hoặc theo hướng dẫn của bác sĩ.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (363, N'NT_40_LNQ', N'Image', 1, N'ATRC', N'Kem dưỡng ngừa lão hóa dành cho da khô Ageless Total Repair Crème', N'kem duong ngua lao hoa danh cho da kho ageless total repair creme', N'Kem dưỡng ngừa lão hóa dành cho da khô Ageless Total Repair Crème kết hợp sử dụng hoạt chất Glycolic Acid, Retinol, Hyaluronic Acid và nguồn vitamin dồi dào (vitamin A, E, C...) nhằm gia tăng khả năng dưỡng ẩm, giữ nước, cải thiện bề mặt da, cho da mềm mịn nhanh chóng. Các hoạt chất này thẩm thấu sâu còn giúp kích thích tăng sinh Collagen, cải thiện độ đàn hồi da, phục hồi độ săn chắc, cho da căng mịn, ngừa nếp nhăn, tình trạng da chùng nhão, chảy xệ.', N'Hộp', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (364, N'NT_40_LNQ', N'Image', 1, N'IATRC', N'Kem dưỡng ngừa lão hóa dành cho da khô AGELESS Total Repair Crème', N'kem duong ngua lao hoa danh cho da kho ageless total repair creme', N'Kem dưỡng ngừa lão hóa dành cho da khô AGELESS Total Repair Crème kết hợp sử dụng hoạt chất Glycolic Acid, Retinol, Hyaluronic Acid và nguồn vitamin dồi dào (vitamin A, E, C...) nhằm gia tăng khả năng dưỡng ẩm, giữ nước, cải thiện bề mặt da, cho da mềm mịn nhanh chóng. Các hoạt chất này thẩm thấu sâu còn giúp kích thích tăng sinh Collagen, cải thiện độ đàn hồi da, phục hồi độ săn chắc, cho da căng mịn, ngừa nếp nhăn, tình trạng da chùng nhão, chảy xệ.', N'Hộp', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (365, N'NT_40_LNQ', N'Obagi', 1, N'1134', N'Kem dưỡng phục hồi da ban đêm Obagi Gentle Rejuvenation Advanced Night Repair', N'kem duong phuc hoi da ban dem obagi gentle rejuvenation advanced night repair', N'Công dụng:
Obagi Gentle Rejuvenation Advanced Night Repair là một loại kem dưỡng ban đêm để phục hồi da. Sử dụng hàm lượng cao peptide, kinetin và zeatin để cải thiện làn da. Những thành phần này được chuyển sâu vào da mịn nếp nhăn ngoài giảm bớt những điểm sậm màu. Các thành phần khác làm việc với kinetin và zeatin để đảm bảo làn da cảm thấy thoải mái và khỏe mạnh. Kem này cũng có kết quả làm dịu cho những người có tấy đỏ và kích thích như đỏ da. Obagi Gentle Rejuvenation Advanced Night Repair giúp ngăn ngừa các dấu hiệu sớm của lão hóa và hỗ trợ giảm nếp nhăn. Nó được khuyến khích cho nhạy cảm, khô.

Thành phần:
Purified Water, Pentavitin (Saccharide Isomerate), Prunus Amygdalus Dulcis (Sweet Almond Oil), Cetyl Alcohol, Capric Caprylic Triglycerides, Palmitoyl Tripeptide-5, Glycerin, PEG-20 Methyl Glucose Sesquistearate, Simmondsia Chinensis (Jojoba Seed Oil), Ceramide III, Ceramide IIIB, Ceramide VI, Ceramide I, Phytosphingosine, Carbomer, Phenoxyethanol, Caprylyl Glycol, Hexylene Glycol, Diethylene Glycol Monoethyl Ether, Vitamin E, Cholesterol, Kinetin-Zeatin Complex 0.1%, Tetrasodium EDTA, Allantoin, Butylated Hydroxytoluene, Hyaluronic Acid.

Cách sử dụng:
Sau khi làm sạch da, thoa đều Obagi Gentle Rejuvenation Advanced Night Repair lên vùng mặt và cổ, massage nhẹ nhàng cho sản phẩm được hấp thụ hoàn toàn.

Dung lượng:
50g.

', N'Lọ', CAST(2300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (366, N'NT_40_LNQ', N'Farmona', 1, N'F50', N'Kem giảm bóng nhờn, ngừa mụn Farmona - Dermacos Anti - Acne Matting Cream 50ml', N'kem giam bong nhon, ngua mun farmona - dermacos anti - acne matting cream 50ml', N'Làm dịu nhẹ các kích ứng, mẩn đỏ da. Dưỡng ẩm và dưỡng da, giúp làm mờ vết thâm và giúp giảm nguy cơ để lại sẹo do mụn trứng cá. Làm giảm bóng nhờn, làm giảm mụn và ngăn ngừa mụn. Chống nắng, giúp bảo vệ da trước tia cực tím và trước tác nhân có hại bên ngoài (bụi, ô nhiễm môi trường). Da trở lên mịn màng, khô thoáng cả ngày. Sản phẩm dành cho da dầu và da bị mụn trứng cá.
Phức hợp chống bóng nhờn Mattewax hạn chế tiết bã nhờn và điều hòa hoạt động tuyến bã nhờn.
Phim chống nắng UVA/UVB Titanium Dioxide
Chiết xuất thảo dược Liễu trắng Salix Alba hàm lượng cao axit Salicylic tự nhiên, hoạt chất có tác dụng chống viêm sưng, giảm đau, se mụn nhanh, làm mỏng và bong các nút sừng, làm tan tế bào chết và làm sạch bã nhờn trên da, làm thông thoáng và se khít lỗ chân lông.
Bơ Lô Hội Aloe Barbadensis Leaf Extract chứa nhiều loại Glicoside Aloin, Aloinozide A & B, các Polisacharide, axit amin, vitamin  C, khoáng chất, … chống viêm, khử trùng, củng cố và gia tăng hệ miễn dịch cho da, làm se mụn và thúc đẩy quá trình lành mụn, làm mềm da và kích thích tái tạo da 
Bơ & Dầu Jojoba Simmondsia Chinensis Butter and Oil  giàu axit Eikozen. Làm sạch hoàn toàn bã nhờn và dầu dư thừa trên da, hạn chế tối đa sự hình thành mụn trứng cá và mụn đầu đen. Dễ dàng thấm sâu vào da, bảo vệ da trước các tác nhân có hại và kích thích tái tạo da. 
Nguyên tố vi lượng Mg + Kẽm + Đồng + Sắt từ Nấm men tự nhiên Saccharomyces Silicon + Magnesium+Copper+Zinc+Iron Ferment  hỗ trợ các hoạt động tế bào, giúp loại bỏ các vấn đề về da. 
Bùn “Vàng đen” Peat Extract chứa hàm lượng cao axit Humic và muối khoáng có tác dụng làm sạch sâu da, hạn chế tối đa sự phát triển của các loại vi khuẩn gây viêm da và mụn.
Phức hợp Kẽm hoạt tính – PCA 
Kẽm hoạt tính ức chế hoạt động của 5-α-reductase nên ức chế và điều hòa hoạt động của tuyến bã nhờn hiệu quả, thúc đẩy làm lành nhanh mụn và các tổn thương do mụn. 
PCA giữ ẩm tự nhiên cho da, làm gia tăng độ ổn định và sinh khả dụng cho Kẽm hoạt tính.
Phức hợp Silica hoạt tính – Glicoprotein tự nhiên 
Silica hoạt tính kháng viêm, làm lành nhanh các tổn thương, dưỡng ẩm và kích thích tái tạo da. 
Glicoprotein tự nhiên làm gia tăng độ ổn định và sinh khả dụng cho Silica hoạt tính. 
PHA Gluconolactone chống oxy hóa, củng cố hệ miễn dịch làm da bớt nhạy cảm và bị kích ứng, hạn chế sự tác động của tia cực tím, kích thích sinh tổng hợp Collagen và Elastin, cải thiện và gia tăng độ đàn hồi của da, làm chậm quá trình lão hóa da, hạn chế sự mất nước qua da, dưỡng ẩm sâu, làm da săn chắc, mịn màng và tươi sáng.
Nước Hamamelis Witch Hazel Water dưỡng ẩm sâu cho da, làm da láng mịn tự nhiên đặc biệt cho da dày, da thô ráp, da dầu, da hỗn hợp, da dễ bị kích ứng, sẩn mụn và mụn trứng cá do có tác dụng làm se khít lỗ chân lông, điều hòa và giữ vững độ cân bằng, cải thiện hệ miễn dịch của da.', N'Tuýp', CAST(350000 AS Decimal(18, 0)), 0, N'1575392400', N'1575565199', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (367, N'NT_40_LNQ', N'Obagi', 1, N'1115', N' Kem làm trắng da Obagi Nuderm Sunfader SPF 15 - 57g', N'kem lam trang da obagi nuderm sunfader spf 15 - 57g', N'Obagi Nu-Derm Sunfader SPF 15 chứa hỗn hợp thành phần độc đáo giúp làm trắng sáng vùng da bị tăng sắc tố và bảo vệ da khỏi tổn hại từ ánh nắng. Octinoxate và oxybenzone cung cấp độ bảo vệ SPF 15, ngăn cản lão hóa từ ánh nắng. 

Ngoài chỉ số chống nắng SPF, Obagi Sunfader còn chứa 4% hydroquinone, thành phần vàng trong điều trị nám. Sunfader thẩm thấu mức độ tại chỗ giúp giảm đốm nâu, tàn nhang vô cùng hiệu quả.

Obagi Nu-Derm Sunfader chứa 4% hydroquinone và SPF 15 là giải pháp lý tưởng cho làn da cần đặc trị đốm nâu, tàn nhang, tăng sắc tố. Sự kết hợp kép giữa thành phần trị nám và chống nắng cho kết quả tốt nhất, cho da mịn màng, rạng rỡ, đồng màu và săn chắc.

Sử dụng kem chống nắng riêng biệt là cần thiết khi mức độ tiếp xúc với tia UV cao.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban ngày.

Thành phần
7.5% Octinoxate, 5.5% Oxybenzone, 4% Hydroquinone.', N'Lọ', CAST(2200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (368, N'NT_40_LNQ', N'Ziaja', 1, N'ure', N'Kem mềm da Med-15% Urea Foot Cream 100ml (Kem 15% urê)', N'kem mem da med-15% urea foot cream 100ml (kem 15% ure)', N'Sản phẩm chăm sóc da chứa Urê 15% làm mềm, dưỡng ẩm, giảm khô, thô ráp và nứt nẻ da. Bảo vệ da, làm dịu nhẹ da và không gây kích ứng da. Sản phẩm dành cho da khô.
 Lưu ý: sản phẩm chứa hàm lượng Urê cao 15% nên dưỡng ẩm lâu, làm mềm và giảm lớp da bị sừng hóa, giúp giảm ngứa. Dùng để chăm sóc da bị khô do bệnh eczema, viêm da cơ địa, chàm hóa, bệnh da vảy cá.', N'Tuýp', CAST(421000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (369, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (370, N'NT_40_LNQ', N'Image', 1, N'RYRC', N'Kem phục hồi và trẻ hoá da IMAGE MD Restoring Youth Repair Crème with ADT Technology(tm)', N'kem phuc hoi va tre hoa da image md restoring youth repair creme with adt technology(tm)', N'Kem phục hồi và trẻ hóa da Image MD Restoring Youth Repair Crème With ADT Technology TM chứa thành phần chính là retinol, axit glycolic và vitamin C làm tăng cường liên kết dưới da, phục hồi lại tính đàn hồi giúp cho bề mặt da dần căng mịn, trẻ trung, săn chắc và rạng rỡ chỉ sau một thời gian sử dụng.
Với cơ chế loại bỏ lớp sừng hóa, retinol giúp bề mặt da trở nên thông thoáng, tạo điều kiện thúc đẩy sản sinh tế bào mới thay thế tế bào chết ở da. Qua đó, sản phẩm sẽ loại bỏ dần vùng da khô ráp, không đều màu, nuôi dưỡng làn da mịn màng và trở nên tươi sáng.
Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ nhằm mang đến kết quả tối đa.', N'Chai', CAST(3084000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (371, N'NT_40_LNQ', N'Avène', 1, N'AVENE1', N'Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream', N'kem tri tham lanh da chong nhiem khuan avene cicalfate repair cream', N'Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

CHI TIẾT SẢN PHẨM 

Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream

Tại Việt Nam, Avène là cái tên rất hay gặp trong đơn thuốc mà các bác sĩ da liễu kê cho bệnh nhân của mình, phổ biến nhất là kem chống nắng và kem dưỡng ẩm. Lợi thế của Avene là sử dụng nước từ dòng suối khoáng Sanite-Odile nổi tiếng của Pháp để sản xuất ra dòng sản phẩm chứa khoáng dịu nhẹ chữa lành mọi thương tổn dành riêng cho da nhạy cảm.

THÀNH PHẦN



Sucralfate: 1%
Đồng Sulfate: 0.2%
Kẽm Sulfate: 0.1%
Kẽm Oxit: 4%
Nước khoáng Avene: 45%
Kem làm lành da, chống nhiễm khuẩn Cicalfate của Avene là sản phẩm được tạo nên bởi nhiều hoạt chất đặc biệt giúp làm lành các thương tổn trên da.


(*) Hoạt chất Sulcralfate có dạng vi hạt siêu mịn sẽ hồi phục và kích thích tái tạo da, giúp da mau lành vết thương và lành sẹo.


(*) Trong khi đó, sự phối hợp giữa Đồng Sulfate, Kẽm Sulfate và Kẽm Oxit có tác dụng chống nhiễm khuẩn, giúp bảo vệ hiệu quả làn da đang bị tổn thương.


(*) Và tất nhiên không thể thiếu nước khoáng Avène, là thành phần quan trọng giúp làm dịu da, chống kích ứng, mang đến cảm giác thực sự êm ái và dễ chịu cho làn da của bạn.


(*) Avene Cicalfate Repair Creamkhông chứa hương liệu, chất bảo quản nên phù hợp với mọi làn da, đặc biệt kể cả da nhạy cảm của trẻ sơ sinh.

CÔNG DỤNG


Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

Avene Cicalfate Repair Cream còn dùng được cho trẻ sơ sinh, vết hăm tã ở trẻ, vết bỏng, vết mổ, đúng là một loại kem rất cần thiết phải có trong tủ thuốc của mỗi gia đình.

Avene Cicalfate Repair Creamkhông chỉ giúp làm da dịu mát, chống kích ứng, mà những hoạt chất đặc biệt còn hỗ trợ hồi phục da, kích thích tái tạo da, làm lành vết thương và lành sẹo nhanh chóng, làm dịu vết mẩn đỏ chỉ trong vài ngày sử dụng.

HƯỚNG DẪN SỬ DỤNG


Sản phẩm phù hợp nhất với các làn da bị tổn thương hoặc kích ứng sau các can thiệp thẩm mỹ (chiếu laser, phẫu thuật thẩm mỹ, tẩy lông…), da bị viêm, chàm, nứt nẻ, hăm tã, chốc vẩy hoặc tổn thương làm trầy xước da.

Dùng 1-2 lần/ ngày vào buổi sáng và/ hoặc tối. Sau khi làm sạch da và lau khô, thoa kem làm lành da, chống nhiễm khuẩn Cicalfate lên các vùng da bị tổn thương.


* Không thoa kem khi vết thương còn ướt và rỉ dịch.
', N'Tuýp', CAST(391000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (372, N'NT_40_LNQ', N'Ziaja', 1, N'med3', N'Nhũ tương mềm da 3% Urê - Med 3% Urea Face Emulsion 50ml', N'nhu tuong mem da 3% ure - med 3% urea face emulsion 50ml', N'- Tích cực tái tạo hàng rào bảo vệ của Da.
- Dưỡng ẩm lâu dài và sâu và bảo vệ chống lại sự mất độ ẩm.
- Bổ sung chất béo cho Da, tăng cường hiệu quả của sự gắn kết và độ săn chắc của lớp biểu bì.
- Làm mềm, giảm độ nhám và bong tróc quá mức.
- Chất kem đặc nến giúp dưỡng ẩm 1 cách hiệu quả nhất.
', N'Tuýp', CAST(381000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (373, N'NT_40_LNQ', N'Ziaja', 1, N'nt', N'Nhũ tương mượt da toàn thân Ziaja Med - Atopic D.L. Body Emulsion 400ml', N'nhu tuong muot da toan than ziaja med - atopic d.l. body emulsion 400ml', N'Dịu nhẹ nhanh cho các tổn thương da, dưỡng ẩm sâu, giảm khô, bong tróc, mẩn ngứa, nuôi dưỡng và thúc đẩy tái tạo tế bào, làm chậm quá trình lão hoa da. Hỗ trợ tích cực điều trị bệnh ở các bệnh nhân viêm da cơ địa, viêm da dị ứng, vảy nến, á sừng, hăm tã bỉm, chốc ghẻ, "cứt trâu", giảm thiểu nguy cơ hoại tử da ở bệnh nhân sau phẫu thuật, nằm tại chỗ, sau bỏng, chấn thương...và chăm sóc đối với da khô, da nhạy cảm ở trẻ em và người lớn.', N'Chai', CAST(430000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (374, N'iBeauty', N'ACM', 1, N'ACM38', N'SEBIONEX HYDRA REPAIR CREAM', N'sebionex hydra repair cream', N'Sản phẩm dưỡng da dành cho da mụn, giúp cung cấp độ ẩm cho da, cho da luôn khoẻ mạnh', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (375, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (376, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (377, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (378, N'NT_40_LNQ', N'Stanhome', 1, N'SLE', N'Stanhome Lipid Extra', N'stanhome lipid extra', N'Kem dưỡng phục hồi cho da khô, rất khô, mẩn đỏ, mẩn ngứa da mặt, cơ thể, làm dịu cảm giác bứt rứt, căng tức dưới da, thúc đẩy tái tạo tế bào', N'Tuýp', CAST(529000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (379, N'NT_40_LNQ', N'Eucerin', 1, N'EPL', N'Sữa Dưỡng Thể Cho Da Nhạy Cảm Eucerin pH5 Lotion 250ml', N'sua duong the cho da nhay cam eucerin ph5 lotion 250ml', N'- Sữa Dưỡng Thể Cho Da Nhạy Cảm Eucerin pH5 thuộc dòng sản phẩm Eucerin cho da nhạy cảm giúp duy trì độ pH lý tưởng của làn da ở mức pH5.
- Sữa giúp giảm ngứa, phù hợp cho làn da trước đó đã bị tổn thương.
- Công thức pH5 Enzyme Protetction có trong sữa dưỡng thể Eucerin pH5 Lotion thấm sâu nhẹ nhàng, nâng cao khả năng tự bảo vệ của làn da.
- Cải thiện làn da khô, dễ bị tổn thương chỉ sau một thời gian ngắn sử dụng.
- Không có dấu hiệu dị ứng qua các nghiên cứu lâm sàng.
- Không bọt, không hương liệu, không phẩm màu thích hợp cho da dễ bị kích ứng.
- Hiệu quả được chứng minh ngay cả với da bị thương tổn.', N'Chai', CAST(210000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 209, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (380, N'NT_40_LNQ', N'Obagi', 1, N'0009', N'Bộ dưỡng trắng da giảm thâm Obagi Nu-Derm Fx Starter System Norm-Dry', N'bo duong trang da giam tham obagi nu-derm fx starter system norm-dry', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả giảm thâm nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.


Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (381, N'NT_40_LNQ', N'Obagi', 1, N'0008', N'Bộ dưỡng trắng da trị thâm Obagi Nu-Derm Fx Starter System Norm-Oily', N'bo duong trang da tri tham obagi nu-derm fx starter system norm-oily', N'Obagi Nu-derm Fx System với nồng độ vàng 7% Arbutin chính là bộ sản phẩm ​gồm bảy bước để làm trắng da, trị thâm mụn, sạm da, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ sản phẩm 7 bước được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trắng da, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 

1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear Fx với 7% Arbutin
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blend Fx với 7% Arbutin
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Arbutin 7%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết', N'Hộp', CAST(10300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (382, N'NT_40_LNQ', N'Obagi', 1, N'0007', N'Bộ dưỡng trị nám cho da dầu Obagi Nu-Derm System for Normal to Oily Skin', N'bo duong tri nam cho da dau obagi nu-derm system for normal to oily skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Foaming Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm Forte
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (383, N'NT_40_LNQ', N'Obagi', 1, N'0006', N'Bộ dưỡng trị nám cho da khô Obagi Nu-Derm System for Normal to Dry Skin', N'bo duong tri nam cho da kho obagi nu-derm system for normal to dry skin', N'Obagi Nu-derm System với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 7 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ trị nám Obagi Nu-derm System 
Bộ sản phẩm trị nám bao gồm
1. Sữa rửa mặt Obagi Gentle Cleanser
2. Obagi toner dưỡng ẩm cân bằng pH, tái tạo màng da 
3. Đặc trị ban ngày Obagi Clear với 4% Hydroquinone
4. Tẩy da chết Obagi Nu-derm Exfoderm
5. Đặc trị ban đêm Obagi Blender với 4% Hydroquinone
6. Dưỡng ẩm Obagi Hydrate làm dịu da
7. Kem chống nắng Obagi Matte phổ rộng bảo vệ toàn diện

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(10500000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (384, N'NT_40_LNQ', N'Ducray', 1, N'Ducraysampoo', N'Dầu gội trị gàu nặng Ducray Kelual DS Shampoo 100ml', N'dau goi tri gau nang ducray kelual ds shampoo 100ml', N'Dầu gội trị gàu nặng Ducray Kelual DS Shampoo đặc trị da đầu bị gàu nặng tái phát, điều trị tình trạng ngứa và đỏ da đầu. Sản phẩm giúp làm sạch nhẹ nhàng, không làm tổn thương vùng da đầu, mang lại cảm giác dễ chịu khi sử dụng. Dành cho da đầu nhờn, bị gàu và rụng tóc.

Hướng dẫn sử dụng và bảo quản

Làm ướt tóc
Lấy một lượng vừa đủ ra lòng bàn tay, tạo bọt
Mát xa lên tóc trong khoảng 3 phút
Xả sạch lại với nước
Bảo quản nơi khô ráo thoáng mát, tránh ảnh nắng trực tiếp và nhiệt độ cao
Thông tin thương hiệu

Đầu năm 1930 tại Pháp, Albert Ducray đã cho ra đời sản phẩm dầu gội đầu tiên với thương hiệu Lik Savons chiết xuất từ tự nhiên mang đến mái tóc dày dặn, mềm mượt, chắc khỏe. Kể từ đó, dòng sản phẩm chăm sóc tóc của Ducray nhanh chóng được biết đến và ưa chuộng. Năm 1985 đánh dấu sự bùng nổ của thị trường chăm sóc da và Ducray là một trong những thương hiệu tiên phong với sản phẩm dưỡng ẩm cho mặt và cơ thể. Đến nay, Ducray có mặt trên toàn thế giới và có tới hơn 60 sản phẩm chăm sóc da, chăm sóc tóc và da đầu, phục vụ cho mọi đối tượng và đáp ứng nhu cầu làm đẹp với chất lượng tốt nhất bởi những tiêu chuẩn khắt khe nhằm đảm bảo tối đa lợi ích của người tiêu dùng.', N'Chai', CAST(395000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (385, N'iBeauty', N'ACM', 1, N'ACM18', N'NOVOPHANE LOTION - Serum bổ sung dinh dưỡng dưỡng tóc, ngăn ngừa rụng tóc, tóc bạc sớm, tóc gẫy, tóc yếu', N'novophane lotion - serum bo sung dinh duong duong toc, ngan ngua rung toc, toc bac som, toc gay, toc yeu', N'Giúp kích thích sự tăng trưởng, nuôi dưỡng và bảo vệ tóc nhò sự kết hợp của các thành phần hoạt động như vitamin C, E, B5, B6, PP, H và các loại tinh dầu, làm giảm rụng tóc hiệu quả', N'Chai', CAST(567000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (386, N'NT_40_LNQ', N'Image', 1, N'VCHWB', N'Serum khoán, khoá nước cho da Vital C Hydrating Water Burst ', N'serum khoan, khoa nuoc cho da vital c hydrating water burst', N'Serum khoán, khoá nước cho da, cấu trúc gel nhẹ, biến đổi gel thành nước khi thoa và massage nhẹ lên da. Sản phẩm cung cấp hàng loạt các chất chống oxy hóa, axit hyaluronic, vitamin và peptide giúp trẻ hóa làn da, căng sáng mịn, rạng rỡ và khỏe mạnh', N'Tuýp', CAST(1815000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (387, N'NT_40_LNQ', N'Image', 1, N'CLSOF', N'Serum kiểm soát nhờn & kháng CLEARCELL Restoring Serum Oil - Free', N'serum kiem soat nhon & khang clearcell restoring serum oil - free', N'Với công thức dịu nhẹ và chất serum không chứa dầu sẽ hỗ trợ tăng và cân bằng độ ẩm cho da dễ bị mụn trứng cá và không gây tắc nghẽn lỗ chân lông. và giúp làn da sáng mịn.
Công dụng:
- Với dẫn xuất Vitamin B6 giúp thu nhỏ lỗ chân lông, kiểm soát nhờn, làm sáng da và giảm sự hình thành các ổ viêm dưới da, dị ứng, loại bỏ mụn nhanh chóng.
- Chống viêm kháng khuẩn, làm khô nhân mụn từ đó giúp điều trị mụn hiệu quả.
- Ngăn ngừa và làm mờ vết thâm sẹo.
- Tái tạo nhanh những thương tổn da do mụn để lại.
- Cung cấp độ ẩm cho da, giúp da luôn mịn màng, tươi trẻ.', N'Lọ', CAST(1540000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (388, N'NT_40_LNQ', N'Image', 1, N'IIBS', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum ', N'serum lam trang sang da mo tham nam image skincare iluma intense bleaching serum', N'Serum làm trắng sáng da mờ thâm nám Image Skincare Iluma Intense Bleaching Serum giúp loại bỏ lớp da sừng khô sần, xỉn màu, lão hóa và nhiều đốm nâu, cung cấp dưỡng chất cho da sáng hồng rạng rỡ từ bên trong.
Là dòng sản phẩm dưỡng da cao cấp, sử dụng thành phần điều giúp giảm nám đặc hiệu kết hợp cùng các thành phần hoạt chất làm sáng da chiết xuất tự nhiên như như Licorice, Azelaic acid (kháng khuẩn) hiệu quả trong việc làm mờ vết thâm, đốm nâu, tàn nhang, giúp làm sáng da tự nhiên.
Serum trị nám này còn được bổ sung thành phần Glycolic acid giúp nhẹ nhàng tẩy da chết, cải thiện bề mặt và cấu trúc da, hạn chế nếp nhăn hình thành, ngăn ngừa lão hóa, cho làn da tươi trẻ, rạng rỡ.', N'Chai', CAST(1300000 AS Decimal(18, 0)), NULL, N'1575651600', N'1575824399', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (389, N'NT_40_LNQ', N'Obagi', 1, N'1139', N'Serum nâng cơ chống lão hóa Obagi Elastiderm Facial Serum', N'serum nang co chong lao hoa obagi elastiderm facial serum', N'Cảm nhận vẻ đẹp của làn da có độ đàn hồi, tươi trẻ với ELASTIderm Facial Serum của Obagi. Được bào chế với công nghệ bản quyền Bi-Mineral Contour Complex™, serum thế hệ mới này giúp làn da lấy lại độ đàn hồi, cải thiện dấu hiệu lão hóa, đem lại vẻ tươi trẻ và đầy sức sống. Với các thành phần sử dụng công nghệ FlexFluid™, serum với thể chất mỏng nhẹ đem lại hiệu quả đàn hồi trên da tức thì.

Thành phần:

Phức hợp bi-mineral: kết hợp đồng, kẽm và malonic acid để làn da mịn mượt hơn
Water (Aqua), Glycerin,Methylpropanediol, Alcohol Denat., Dimethicone, Isocetyl Stearoyl Stearate, Coco-Caprylate/Caprate, Isononyl Isononanoate, Pentylene Glycol, Phenoxyethanol, Polyacrylate Crosspolymer-6, Carbomer, Malonic Acid, Sodium Hydroxide, Disodium EDTA, Amodimethicone, Zinc Carbonate, Copper Carbonate Hydroxide, T-Butyl Alcohol, Parfum.

Công dụng:

Công nghệ FlexFluid™: giúp serum mỏng nhẹ, cải thiện kết cấu da sau 2 tuần

Củng cố độ đàn hồi của da
Cải thiện kết cấu da
Giảm nhăn
Cách dùng:
Sử dụng một ngày 2 lần vào buổi sáng và tối .Buổi sáng sau khi thoa sản phẩm kế tiếp thoa kem chống nắng.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.

- Để xa tầm tay trẻ em.

', N'Lọ', CAST(4680000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (390, N'NT_40_LNQ', N'Obagi', 1, N'1138', N'Serum phục hồi tái tạo da Obagi Gentle Rejuvenation Skin Rejuvenation Serum', N'serum phuc hoi tai tao da obagi gentle rejuvenation skin rejuvenation serum', N'Obagi Gentle Rejuvenation Skin Rejuvenation Serum sử dụng công thức tiên tiến để giúp làn da phục hồi nhanh chóng. Sản phẩm hỗ trợ quá trình lành thương và phục hồi tự nhiên của da, giúp da tự sửa chữa và hạn chế các dấu hiệu lão hóa.

Các thành phần củng cố sức khỏe làn da trong serum giúp lành thương, giảm nhăn cũng như cải thiện kết cấu da, cho da mịn màng, đều màu.

Serum chống lão hóa này cũng đẩy nhanh quá trình sinh sản collagen và trẻ hóa làn da.

Serum hoàn toàn không chứa hương liệu, giảm thiểu kích ứng trên da. Sử dụng kết hợp cùng kem chống nắng để đem lại hiệu quả phục hồi, bảo vệ da tốt nhất.

Đặc điểm nổi bật

Kinetin và zeatin giảm thiểu dấu hiệu lão hóa, nếp nhăn, thâm nám
Chiết xuất táo Thụy Sĩ đẩy nhanh quá trình tái tạo tế bào để xóa nhăn và làm mịn màng kết cấu da
Peptide giúp củng cố màn da, giúp da săn chắc
Sodium Hyaluronate​ cấp ẩm sâu, làm dịu làn da khô, bong tróc
Hệ thống vận chuyển độc đáo giúp thành phần hoạt chất được phân phối đến da trong vòng 12 giờ
Thành phần chi tiết:

Water (Aqua)​,​ Biosaccharide Gum-1​,​ Methyl Gluceth-20​,​ Propanediol​,​ Butylene Glycol,​ PEG-12 Glyceryl Dimyristate,​ Sorbitan Laurate​,​ Phenoxyethanol​,​ Xanthan Gum​,​ Cellulose Gum​,​ Oryza Sativa (Rice) Extract​,​ Ethoxydiglycol​,​ Malus Domestica Fruit Cell Culture Extract​,​ Lecithin​,​ Polyglyceryl-4 Laurate,​ Kinetin​,​ Zeatin​,​ Ethylhexylglycerin​,​ Citric Acid​,​ Sodium Hyaluronate​,​ Dilauryl Citrate,​ Baicalin,​ 1,​2-Hexanediol,​ Caprylyl Glycol​,​ Glycerin​,​ Inulin Lauryl Carbamate​,​ Ergothioneine​,​ Tetrapeptide-26.', N'Lọ', CAST(2980000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (391, N'NT_40_LNQ', N'Obagi', 1, N'1178', N'Serum trẻ hóa da, chống oxy hóa cho da nhạy cảm SUZANOBAGIMD RETIVANCE® Skin Rejuvenating Complex', N'serum tre hoa da, chong oxy hoa cho da nhay cam suzanobagimd retivance® skin rejuvenating complex', N'SUZANOBAGIMD Retivance Skin Rejuvenating Complex có tính năng kết hợp tiên tiến của 0.1% Retinaldehyde và chất chống oxy hóa Vitamin C và E, đã được nghiên cứu lâm sàng để giúp làm giảm thiểu các dấu hiệu lão hóa, giúp phục hồi tái tạo và trẻ hóa da cho làn da tươi sáng, rạng rỡ.

Công dụng:

- Hỗ trợ trị nám và làm đều màu da

- Tái tạo và trẻ hóa da.
- Kích thích collagen với peptide.
- Cải thiện sắc tố và đồng đều màu da.
- Giảm nhăn và nếp nhăn.
- Giảm thiểu kích ứng da và đỏ.
- Làm sáng, da khỏe hơn, tươi sáng hơn.
- Obagi SUZANOBAGIMD Retivance Skin Rejuvenating Complex thích hợp cho mọi loại da.

- Trị mụn

Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần nổi bật:

- Retinaldehyde 0.1%: tiền chất vitamin A giúp cải thiện sự xuất hiện của độ cứng và độ đàn hồi và làm giảm sự xuất hiện của nếp nhăn và độ nhám tốt, trong khi được dung nạp tốt bởi bệnh nhân. Hoạt chất này là hoạt chất được nghiên cứu lâm sàng cho tác dụng tương đương với Tretinoin nhưng ít gây kích ứng hơn cho da nhạy cảm. Thành phần này có tác dụng kích thích sản sinh Collagen và Elastin, tăng khả năng tái tạo tế bào, giảm nếp nhăn và mang lại làn da tươi sáng.

- Chiết xuất hoa Chamomilla Recutita (matricaria): hoạt động như một tác nhân làm dịu giúp giảm sự xuất hiện của mẩn đỏ

Thành phần chi tiết:

0.1% Retinaldehyde, Spent Grain Wax, Wheat Germ Oil, Palmitoyl Tripeptide-5, Safflower Seed Oil, Chammomilla Recutita Flower Extract, and Antioxidants

Công thức này được bác sĩ da liễu thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.', N'Tuýp', CAST(3000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (392, N'NT_40_LNQ', N'Image', 1, N'TMSCS', N'Serum trẻ hoá da The Max Stem Cell Serum', N'serum tre hoa da the max stem cell serum', N'Serum giúp giảm lão hóa da The Max Stem Cell Serum với công nghệ chăm sóc da hiện đại là giải pháp dưỡng ẩm chống lão hóa hoàn hảo, giúp da ngày càng săn chắc, căng mịn, xóa mờ dấu vết lão hóa cũng như cung cấp dưỡng chất nuôi dưỡng tế bào, DNA khỏe mạnh.
Là sản phẩm dưỡng da cao cấp, kết hợp các chuỗi peptide và Argirelene có khả năng thẩm thấu sâu vào hạ bì da, giúp kích thích tăng sinh Collagen và Elastin cho làn da căng mịn, săn chắc, đàn hồi, tái tạo nét tươi trẻ, rạng ngời cho da.
Sản phẩm còn ứng dụng công nghệ tế bào gốc và chiết xuất từ thiên nhiên giúp nhẹ nhàng nuôi dưỡng, phục hồi DNA, kích thích tế bào gốc có sẵn phát triển, tăng cường chức năng bảo vệ da ngừa hư tổn.', N'Chai', CAST(3350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (393, N'NT_40_LNQ', N'Obagi', 1, N'0005', N'Set trị nám mini cho da dầu Obagi Nu-Derm Travel Kit Normal-Oily', N'set tri nam mini cho da dau obagi nu-derm travel kit normal-oily', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da dầu, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Foaming Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® Forte 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (394, N'NT_40_LNQ', N'Obagi', 1, N'0004', N'Set trị nám mini cho da khô Obagi Nu-Derm Travel Kit Normal-Dry', N'set tri nam mini cho da kho obagi nu-derm travel kit normal-dry', N'Bộ sản phẩm dưỡng bào chế cho da thường đến da khô, giúp trị thâm nám và tái tạo làn da lão hóa. Obagi Nu-derm Travel Kit với nồng độ vàng 4% Hydroquinone chính là bộ sản phẩm ​gồm bảy bước để điều trị nám, ngăn ngừa quá trình lão hóa và tái tạo làn da của bạn. Bộ trị nám gồm nhiều sản phẩm được kết hợp với nhau để cho hiệu quả trị nám tối ưu. 4 sản phẩm này được thiết kế tác động lên làn da theo nhiều cách, vừa giữ da khỏe mạnh vừa đảm bảo được hiệu quả trị nám, bảo vệ da lâu dài.

Bộ travel size bao gồm

- Gentle Cleanser 60ml
- Toner 60ml
- Clear (Full size 57g)
- Exfoderm® 28.5g
- Blender® 28.5g
- Sun Shield Matte Broad Spectrum 28g

Thành phần:

– Hydroquinone 4%

– AHA

– Các hoạt chống chống oxy hóa

– Các hoạt chất chống nắng

Tác dụng

– Kích thích sự phát triển tế bào trong lớp bì, hạ bì

– Tăng tốc độ phục hồi của tế bào sừng

– Giảm hủy hoại Collagen

– Tăng tuần hoàn máu

– Cải thiện kết cấu tế bào

– Làm giảm sự hình thành các hắc tố melanin

– Làm bình thường hóa quá trình chuyển hóa và thay thế tế bào chết

Chỉ định

– Sử dụng trong các trường hợp lão hóa da (các vết thâm, đồi mồi, tàn nhang, các nếp nhăn da…) từ trung bình đến nặng

– Sạm (nám) da

– Lỗ chân lông to

– Làm mềm, mịn da

– Ngăn mụn trứng cá

– Màu da không đồng đều

– Hỗ trợ khi làm Blue Peel', N'Hộp', CAST(5700000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (395, N'NT_40_LNQ', N'Image', 1, N'ATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Image Skincare Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (396, N'NT_40_LNQ', N'Image', 1, N'IATPHF', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler', N'tinh chat duong da duong am ageless total pure hyaluronic filler', N'Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler - giải pháp nuôi dưỡng da hoàn hảo với khả năng giữ nước hiệu quả vượt trội giúp da mềm mại, mịn màng, căng ượt, xóa tan những dấu vết thời gian, cho làn da tươi trẻ, rạng ngời không tì vết.
Tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler là dòng sản phẩm chăm sóc da chống lão hóa cao cấp, kết hợp thành phần hoạt chất Hyaluronic Acid 15‰ cùng nguồn vitain E tinh khiết dồi dào thẩm thấu sâu vào da giúp tăng cường giữ ẩm bề mặt, giữ nước dưới da, cho làn da cảm giác căng mượt tự nhiên, ngừa da khô ráp, lão hóa, hình thành nếp nhăn.
Sử dụng tinh chất dưỡng da dưỡng ẩm Ageless Total Pure Hyaluronic Filler còn là giải pháp nuôi dưỡng da tiện lợi từ bên trong, có khả năng hỗ trợ giảm viêm da, tăng cường chống oxy hoá, bảo vệ da khỏi tác động từ các yếu tố ngoài môi trường, cho làn da khỏe mạnh, săn chắc.', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (397, N'NT_40_LNQ', N'Image', 1, N'A6', N'Tinh chất làm đầy và căng da 6 loại hyaluronic Ageless Total Pure Hyaluronic Filler 6', N'tinh chat lam day va cang da 6 loai hyaluronic ageless total pure hyaluronic filler 6', N'Hoạt chất Hyaluronic đặc biệt có trong Ageless Total Pure Hyaluronic Filler Image Skincare giúp hỗ trợ làn da được cân bằng thẩm thấu, giúp làm mịn màng cho các nếp nhăn ,sẽ tăng cường hỗ trợ dưỡng chất giúp cải thiện nếp nhăn mà không cần tiêm chích trên da', N'Lọ', CAST(2685000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 210, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (398, N'iBeauty', N'Lysaskin', 1, N'LK08', N'ATOLYS gel - Gel tắm dưỡng ẩm dành cho bệnh nhân viêm da cơ địa', N'atolys gel - gel tam duong am danh cho benh nhan viem da co dia', N'Gel tắm dưỡng ẩm, giảm ngứa, tái tạo lóp lipid sinh lý dành cho bệnh nhân viêm da cơ địa, viêm da tiếp xúc,da ngứa và khô', N'Chai', CAST(279000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (399, N'NT_40_LNQ', N'Image', 1, N'IIBEP', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder', N'bot tay te bao chet va lam trang da image iluma intense brightening exfoliating powder', N'Bột tẩy tế bào chết và làm trắng da Image Iluma Intense Brightening Exfoliating Powder được ứng dụng công nghệ hiện đại, các enzyme không chỉ loại bỏ bụi bẩn và dầu nhờn sâu tận chân lông mà còn duy trì độ ẩm cần thiết cho da lâu dài, giúp mang lại hiệu quả chống lão hóa da rõ rệt. Da mượt mà mà trắng sáng và sẵn sàng hấp thụ hoàn toàn các dưỡng chất từ tinh chất và kem dưỡng ở những bước chăm sóc kế tiếp. Đặc biệt, thành phần sản phẩm không gây nên tình trạng kích ứng da khi sử dụng thường xuyên, phù hợp với cả làn da nhạy cảm. Sau tẩy tế bào chết, làn da sẽ được kích thích tuần hoàn máu, tái tạo collagen, thúc đẩy sự đàn hồi, bạn gái sẽ cảm nhận được sự thay đổi rõ rệt như da trở nên mịn màng, bề mặt da và lỗ chân lông đảm bảo thông thoáng, sạch sẽ, từ đó ngăn chặn sự hình thành mụn hiệu quả.', N'Chai', CAST(1080000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
GO
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (400, N'iBeauty', N'ACM', 1, N'ACM23', N'CICASTIM ARNICA CREAM - Giảm bầm tím trên da do va đập, sau phẫu thuật thẩm mỹ, vết xuất huyết dưới da', N'cicastim arnica cream - giam bam tim tren da do va dap, sau phau thuat tham my, vet xuat huyet duoi da', N'Chiết xuất từ hoa Arnica Motana và các thành phần khác giúp làm mờ, giảm vết thâm và bầm tím trên da', N'Tuýp', CAST(289000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (401, N'NT_40_LNQ', N'Med+', 1, N'med300', N'Dầu gội sạch gàu, ngăn rụng tóc - Radical Med Anti - Hair Loss Shampoo 300ml', N'dau goi sach gau, ngan rung toc - radical med anti - hair loss shampoo 300ml', N'Dầu gội sạch gàu, ngừa rụng tóc Radical Med Anti-Hair Loss Shampoo giúp làm sạch tóc và da đầu hiệu quả, hỗ trợ làm giảm nguy cơ gãy, rụng tóc một cách đắc lực. Dầu gội sạch gàu, ngừa rụng tóc Radical Med Anti-Hair Loss Shampoo còn cung cấp dưỡng chất cần thiết cho tóc và da đầu, giúp dưỡng ẩm, chăm sóc tóc và da đầu, mang lại mái tóc chắc khỏe, bóng mượt và dễ chải.
Sử dụng dầu gội sạch gàu, ngừa rụng tóc Radical Med Anti-Hair Loss Shampoo thường xuyên sẽ giúp nuôi dưỡng nang tóc, làm chắc khỏe tóc từ gốc, neo chắc sợi tóc vào da đầu, tái tạo tóc, giảm gãy rụng, dưỡng ẩm và làm tóc bóng mượt tự nhiên.', N'Lọ', CAST(505000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (402, N'NT_40_LNQ', N'Ziaja', 1, N'dt', N'Dầu tắm dưỡng ẩm dịu nhẹ Ziaja Med Atopic S.D.F Bath & Shower Oil Softening 270ml', N'dau tam duong am diu nhe ziaja med atopic s.d.f bath & shower oil softening 270ml', N'- Làm sạch nhẹ nhàng hiệu quả.
- Dầu tắm Ziaja Med Atopy thay thế hoàn toàn sữa tắm thông thường.
- Dịu nhẹ tức thì mẩn ngứa khó chịu (tấy đỏ, mụn, vảy).
- Dầu tắm Ziaja Med Atopy củng cố hàng rào bảo vệ da.
- Giúp tăng khả năng miễn dịch của da.
- Ziaja Med Atopy dưỡng ẩm sâu và lâu.', N'Chai', CAST(427000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (403, N'NT_40_LNQ', N'Ziaja', 1, N'gel', N'Gel lau rửa da sinh lý - Med Lipid Physioderm Cleansing Gel', N'gel lau rua da sinh ly - med lipid physioderm cleansing gel', N'Làm sạch da nhẹ nhàng và hiệu quả, không gây kích ứng da và không làm khô da. Sản phẩm dùng được để tẩy trang mắt, giúp loại bỏ lớp trang điểm và bụi bẩn trên da. Làm dịu nhẹ da, dưỡng ẩm, dưỡng da và làm da mịn màng. Sản phẩm dành cho chăm sóc da mẫn cảm khi sử dụng với xà phòng và da khô.', N'Chai', CAST(300000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (404, N'NT_40_LNQ', N'Obagi', 1, N'1174', N' Hệ thống thay da sinh học Obagi Blue Peel Radiance Kit', N'he thong thay da sinh hoc obagi blue peel radiance kit', N'Công dụng:
- Làm đầy nếp nhăn và gấp trên bề mặt da.
- Cải thiện sắc tố biểu bì để da trở nên trắng sáng, đều màu.
- Làm thoáng chân lông, giảm mụn cám, mụn trứng cá ở bề mặt da.
- Dung dịch làm tróc da, thích hợp cho mọi làn da, có thế dùng cho ở mặt, ngực, cổ, tay, chân, lưng.

Thành phần:
Salicylic Acid, lactic, glycolic acids, chiết xuất vỏ cây liễu và rễ cam thảo.

Cách sử dụng:
- Thực hiện theo tư vấn của bác sĩ.
- Hoặc: nếu áp dụng tại nhà, bạn cần lưu ý và tìm hiểu kĩ về làn da của mình trước khi dùng (da bạn có đang mắc phải những căn bệnh gì không, da quá mỏng hoặc dễ dị ứng…)
+ Dùng Dung dịch làm tróc da, chống lão hóa Obagi Blue Peel Radiance 2 tuần 1 lần. Sau khi làm sạch da và để khô, thoa dung dịch lên vùng da cần sửa chữa (tránh tiếp xúc vùng mắt, môi, đầu mũi), để yên từ 20-30 phút thì làm sạch lại với nước (lúc đó da có cảm giác bỏng nhẹ).
+ Ban đầu, da chúng ta sẽ hơi sưng và bong tróc da từ 2-3 ngày đầu, sau đó da sẽ bắt đầu mọc da non và lành trong 7-10 ngày sau đó. 
+ Sử dụng dung dịch chống lão hóa sẽ thấy hiệu quả ngay từ lần dùng đầu tiên, sau đó cách 2-3 tuần áp dụng 1 lần cho hết liệu trình để đạt hiệu quả tối ưu. Nên dùng kem chống nắng mọi lúc và kem dưỡng theo sự chỉ dẫn của bác sĩ.


Dung lượng:
Hộp 6 lọ x 8ml.', N'Lọ', CAST(7000000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (405, N'iBeauty', N'Interapothek', 1, N'IA05', N'INTERAPOTHEK GEL DE BANO ALOE VERA - GEL IA CHIẾT XUẤT LÔ HỘI				', N'interapothek gel de bano aloe vera - gel ia chiet xuat lo hoi', N'Gel tắm dưỡng ẩm và dưỡng da giúp da mềm mịn', N'Chai', CAST(132000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (406, N'iBeauty', N'Interapothek', 1, N'IA08', N'INTERAPOTHEK GEL DE BANO CON TE VERDE (GEL IA CHIẾT XUẤT TRÀ XANH) 				', N'interapothek gel de bano con te verde (gel ia chiet xuat tra xanh)', N'Sữa tắm có tác dụng làm sạch và dưỡng ẩm cho da, thích hợp cho da khô', N'Chai', CAST(132000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (407, N'iBeauty', N'Interapothek', 1, N'IA07', N'INTERAPOTHEK GEL DE BANO PROTEINAS DE LECHE - GEL IA CHIẾT XUẤT PROTEIN SỮA				', N'interapothek gel de bano proteinas de leche - gel ia chiet xuat protein sua', N'Gel tắm dưỡng ẩm và dưỡng da chiết xuất protein sữa giúp da mềm mịn, dùng cho mọi loại da', N'Chai', CAST(132000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (408, N'iBeauty', N'Interapothek', 1, N'IA09', N'INTERAPOTHEK GEL DE BANO SPA - GEL IA SPA				', N'interapothek gel de bano spa - gel ia spa', N'Gel tắm dưỡng ẩm cho da, giúp da mềm mịn', N'Chai', CAST(132000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (409, N'NT_40_LNQ', N'Obagi', 1, N'1161', N' Kem chăm sóc da sau điều trị SUZANOBAGIMD SOOTHING COMPLEX Calming Lotion Broad Spectrum SPF 25', N'kem cham soc da sau dieu tri suzanobagimd soothing complex calming lotion broad spectrum spf 25', N'Kem chăm sóc da sau điều trị với thành phần dưỡng ẩm và giảm viêm giúp làm dịu làn da khô hoặc bị tổn thương, đồng thời bảo vệ và làm mờ các khuyết điểm nhỏ với tông màu sáng.

Soothing Complex được bào chế hướng tới mọi loại da, trong đó có những làn da cực kì nhạy cảm, dễ viêm, mụn và những làn da sau trị liệu, laser, thẩm mỹ. Chỉ số chống nắng SPF25 giúp giảm tác hại từ môi trường, tránh da bị đỏ rát, viêm hoặc ngứa và kích ứng.

Kem có thể sử dụng hàng ngày để làm dịu da, nuôi dưỡng và bảo vệ làn da nhạy cảm.

Công dụng:

- Thành phần làm dịu làn da nhạy cảm sau điều trị và cung cấp môi trường ẩm đẩy nhanh quá trình lành thương, hydrat hóa, không gây kích ứng, cho da bị tổn thương mau chóng phục hồi.

- Thể chất dịu nhẹ phù hợp với làn da khô, hỗn hợp, da sau điều trị với các thành phần làm dịu và dưỡng ẩm.

- Hiệu ứng che phủ nhẹ giúp làm mờ các khuyết điểm trên da.

- Sản phẩm có thể được sử dụng cùng bộ SuzanObagiMD hoặc tích hợp với hệ thống Obagi cho một chế độ chăm sóc da phù hợp nhất với từng người dùng.

Sử dụng kèm các liệu trình thẩm mỹ và điều trị

Soothing Complex chứa các thành phần kích thích phục hồi da yếu sau các liệu pháp thẩm mỹ như:

- Tiêm filler và/ hoặc Botox

- Lăn kim

- Microdermabrasion

- Peel da nông

- Laser không xâm lấn

- Trị liệu giãn mạch

- Liệu trình IPL

- Liệu trình BBL

và các liệu trình thẩm mỹ khác.

Thành phần nổi bật:

- Allantoin & Sodium Hyaluronate giảm viêm và tăng cường cấp ẩm cho da

- Vitamin K & bromelain giảm thâm và đẩy nhanh quá trình tái tạo da.

- Hỗn hợp các chất chống oxy hóa bảo vệ da và chống lại ảnh hưởng của gốc tự do từ tia UV và các tác nhân môi trường.

- Titanium dioxide 4.8% thành phần chống nắng SPF 25 phổ rộng Broad Spectrum cung cấp sự bảo vệ UVA và UVB mà không gây kích ứng.

Thành phần chi tiết:

Aqua (water), Caprylic/capric Triglyceride, Titanium Dioxide, Glycerin, Octyldodecyl Stearoyl Stearate, Cyclopentasiloxane, Butyloctyl Salicylate, Cyclohexasiloxane, Cetyl Alcohol, Butyrospermum Parkii (shea) Butter, Propanediol, Sodium Stearoyl Glutamate, Polyhydroxystearic Acid, Ranunculus Ficaria Extract, Cetearyl Glucoside, Cetearyl Alcohol, Phytonadione, Ananas Sativus (pineapple) Fruit Juice, Dimethicone, Methylcellulose, Microcrystalline Cellulose, Glyceryl Stearate, Aluminum Stearate, Sorbitan Stearate, Alumina, Benzyl Alcohol, Aloe Barbadensis Leaf Extract, Benzoic Acid, Cellulose Gum, Iron Oxides, Allantoin, Disodium EDTA, Butylene Glycol, Bioflavonoids, Chondrus Crispus, Sorbic Acid, Sodium Hydroxide, Phenoxyethanol, Bromelain, Brassica Oleracea Italica (broccoli) Extract, Cucumis Sativus (cucumber) Fruit Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Oleifera (green Tea) Leaf Extract, Glucose, Xanthan Gum, Sodium Hyaluronate, Sodium Benzoate, Boswellia Serrata Extract, Honey Extract, Camellia Sinensis Leaf Extract, Aspalathus Linearis Leaf Extract, Tetrapeptide-14.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (410, N'NT_40_LNQ', N'Obagi', 1, N'1157', N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', N'kem chong nang obagi sun shield matte broad spectrum spf 50 premium', N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi các bức xạ mặt trời, ngăn ngừa cháy nắng, lão hóa da và ngăn ngừa nguy cơ ung thư da. 

Khác với bản thông thường, phiên bản Matte Premium có công thức thông minh thoáng nhẹ, giúp da nhanh chóng hấp thu và để lại lớp nền mỏng, mờ, không bóng nhờn. Ngoài ra, chống nắng còn được bổ sung các thành phần làm dịu da, cùng Vitamin C& E cho da trẻ hoá và săn chắc.

Công dụng:
- Chống nắng, kết hợp làm sáng da và bảo vệ da khỏi tăng sắc tố.

- Ngăn ngừa UVA, UVB làm tổn hại lớp thượng bì, trung bì.

- Bảo vệ da và phòng chống những tác động của ánh nắng mỗi ngày.

- Đem lại cho bạn làn da mịn màng tươi sáng.

- Không chứa paraben và hương liệu

- Sản phẩm thích hợp với mọi loại da. 

Thành phần:
Aqua, Homosalate, Ethylhexyl methoxycinnamate, Zinc oxide, Butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, titanium dioxide, behenyl alcohol, polyglyceryl-10 pentastearate, glyceryl stearate, peg-100 stearate, butylene glycol, pentylene glycol, physalis angulata extract, dimethicone, peg-40 stearate, lithothammion calcareum extract, diatomaceous earth, glycerin, mannitol, polyhydroxystearic acid, hydroxyethyl acrylate/sodium acryloyldimethyl, taurate copolymer, squalane, sodium polyacrylate, xanthan gum, chlorphenesin, alumina, stearic acid, sodium stearoyl lactylate, zinc sulfate, phenoxyethanol, ethyhexylglycerin, polysorbate 60, sorbitan isostearate, citric acid, disodium edta, tetrahexyldecyl ascorbate, tocopherol.

Cách dùng:
Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Dùng ban ngày trước khi ra nắng 15 phút.

Bảo quản:
- Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.
- Để xa tầm tay trẻ em.

Trọng lượng:
85g.', N'Tuýp', CAST(1350000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (411, N'NT_40_LNQ', N'Obagi', 1, N'1154', N'Kem chống nắng vật lý có màu SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50', N'kem chong nang vat ly co mau suzanobagimd physical defense tinted broad spectrum spf 50', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Tinted Broad Spectrum SPF 50 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường. Có màu tự nhiên để phù hợp với mọi tông da.

Công dụng:

- Bảo vệ da bằng titan dioxide và kẽm oxit với chỉ số PA ++++

- Chống tia UVA, UVB, HEV, VIS, IR 

- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo

- Mịn nhẹ trên da, không đóng thành vệt

- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi

- Bổ sung aloe vera làm dịu viêm và đỏ

- Không gây hại tới rạn san hô khi tắm biển.

- Công thức có màu da tự nhiên phù hợp với mọi tông da 



Thành phần:

Active: Titanium Dioxide - 5.8%, Zinc Oxide - 14.4%

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Oleracea Italica (Broccoli) Extract) Bioflavonoids, Dipotassium Glycyrrhizate, Polyglyceryl-2 Dipolyhydroxystearate, Sodium Steroyl Glutamate, Sodium C14-16 Olefin Sulfonate Stearic Acid

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (412, N'NT_40_LNQ', N'Obagi', 1, N'1155', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40', N'kem chong nang vat ly suzanobagimd physical defense broad spectrum spf 40', N'Kem chống nắng vật lý SuzanObagiMD Physical Defense Broad Spectrum SPF 40 ngăn ngừa tổn thương da từ mặt trời, ánh sáng xanh, ánh sáng vô hình và ánh sáng hồng ngoại.

Ánh sáng mặt trời được biết là làm tăng tốc độ lão hóa da. Tuy nhiên, tia UVA và UVB chỉ là hai trong số năm yếu tố gây hại từ ánh mặt trời. 3 yếu tố khác chính là ánh sáng nhìn thấy năng lượng cao (HEV), ánh sáng nhìn thấy (VIS) và bức xạ hồng ngoại (IR), tất cả đều được xem là có khả năng đẩy nhanh tốc độ lão hóa da. Công thức chống nắng mới dựa trên vi khoáng, có phổ chống nắng rộng cung cấp khả năng chống nắng tiên tiến, trong khi các chất chống oxy hóa mạnh chống lại tác hại của gốc tự do từ các nguồn sáng khác và oxy hóa từ môi trường.

Công dụng:

- Bảo vệ da bằng Titanium Dioxide và Zinc Oxide với chỉ số PA ++++
- Chống tia UVA,UVB, HEV, VIS, IR 
- Công thức không có chất chống nắng hóa học, paraben, mùi tổng hợp và màu nhân tạo.
- Mịn nhẹ trên da, không đóng thành vệt.
- Không gây dị ứng, không gây mụn, không gây mẫn cảm, không gây kích ứng và không có chất tạo mùi.
- Bổ sung aloe vera làm dịu viêm và đỏ.
- Không gây hại tới rạn san hô khi tắm biển.

Thành phần:

Active: Titanium Dioxide (4.5%), Zinc Oxide (12.8%)

Inactive: Water (Aqua), Caprylic/Capric Triglyceride, Dicaprylyl Carbonate, Glycerin, Cetearyl Alcohol, Dimethicone, Propanediol, Polyhydroxystearic Acid, Cetearyl Glucoside, Aloe Barbadensis Leaf Extract, Brassica Olerzcea Italica (Broccoli) Exrtact

Hướng dẫn sử dụng:

- Thoa lên da 15 phút trước khi ra nắng hoặc tiếp xúc các thiết bị điện tử phát ánh sáng xanh.

- Sử dụng kèm kem chống nắng chống nước nếu bơi hoặc đổ mồ hôi.

- Thoa lại sau 2 tiếng.

- Đối với trẻ dưới sáu tháng tuổi: tham khảo ý kiến bác sĩ.

- Bảo quản ở nhiệt độ phòng.

Trọng lượng: 96.3g', N'Tuýp', CAST(1380000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (413, N'NT_40_LNQ', N'Image', 1, N'TELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Creme', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (414, N'NT_40_LNQ', N'Image', 1, N'ATELC', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème', N'kem chong nhan tham vung mat ageless total eye lift creme', N'Kem chống nhăn thâm vùng mắt AGELESS Total Eye Lift Crème - giải pháp giúp loại bỏ nếp nhăn, làm sáng da vùng mắt, cải thiện cấu trúc, cho da săn chắc, căng mịn, trẻ hóa, xua tan nỗi lo lão hóa cho phái nữ, giúp bạn lấy lại vẻ đẹp tự nhiên cho đôi mắt tinh anh.
Kem chống nhăn thâm vùng mắt Ageless Total Eye Lift Creme là sản phẩm kết hợp giữa hoạt chất hàng đầu Retinol và Acid Glycolic, được chứng minh hữu hiệu trong việc cải thiện độ đàn hồi cho da săn chắc, hạn chế tình trạng da chùng nhão, nếp nhăn li ti, vết chân chim hình thành, hiện tượng sụp mí xuất hiện', N'Chai', CAST(1451000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (415, N'NT_40_LNQ', N'Khác', 1, N'AT150ml', N'Kem chống rạn da toàn thân Maternea - Anti Stretch Mark Body Cream 150ml ', N'kem chong ran da toan than maternea - anti stretch mark body cream 150ml', N'tinh dầu thực vật và các Vitamin, kem chống rạn da toàn thân Maternea có độ thẩm thấu cao giúp ngăn ngừa tình trạng rạn da, tái tạo và làm mờ dần các vết rạn đã hình thành từ trước, cung cấp và duy trì độ đàn hồi của da, đồng thời dưỡng ẩm sâu, bảo vệ cho làn da mềm mại, mịn màng. Phức hợp các hoạt chất đặc biệt Regestril™ có tác dụng lâm sàng, kích thích tái tạo mô tế bào từ sâu bên trong, nơi hình thành các vết rạn da bằng việc thúc đẩy quá trình tái tạo và kích hoạt sản sinh Collagen and Elastin giúp ngăn ngừa và làm giảm sự xuất hiện của các vết rạn.
', N'Chai', CAST(670000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (416, N'NT_40_LNQ', N'Image', 1, N'ATRAC', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme', N'kem dac tri lao hoa ageless total retinol a creme', N'Kem đặc trị lão hoá Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo ', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (417, N'NT_40_LNQ', N'Latopic', 1, N'LATO2', N'Kem dưỡng ẩm, dịu ngứa da dị ứng, kích ứng - Latopic Face and Body Cream 75ml ', N'kem duong am, diu ngua da di ung, kich ung - latopic face and body cream 75ml', N'Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da mặt và toàn thân.

CHI TIẾT SẢN PHẨM 

Thành phần
Chất chuyển hóa Lactobacillus sp., phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ), polidocanol, panthenol, bơ hạt mỡ, lanolin, vitamin E, dầu oliu, allantoin, caprylic acid và capric acid.
Sản phẩm không chứa SLS, SLES, chất bảo quản, parabens, xà phòng.

Công dụng
Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da mặt và toàn thân.

Chất chuyển hóa Lactobacillus sp có tác dụng kháng khuẩn, giúp ngăn ngừa sự phát triển của tụ cầu vàng (Staphylococcus aureus) gây viêm ở những người bị viêm da cơ địa, viêm da tiếp xúc dị ứng.

Phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ) giúp làm dịu ngứa nhanh chóng.

Cùng với các thành phần hoạt tính được lựa chọn đặc biệt, mang lại tác động toàn diện:

Làm dịu nhẹ da và giảm kích ứng da
Làm ẩm, làm mềm và gia tăng độ đàn hồi da
Tái tạo cấu trúc màng lipid tự nhiên của lớp biểu bì da
Thúc đẩy quá trình tái tạo lớp biểu bì da bị tổn thương
Bảo vệ da trước các tác động bất lợi của môi trường: nhiệt độ, gió, ô nhiễm môi trường.
Hướng dẫn sử dụng
Thoa đều và nhẹ nhàng một lớp kem mỏng lên da sau khi được làm sạch, đặc biệt tại những vùng đặc biệt khô và bị kích ứng cho đến khi thấm hết. Tránh vùng mắt. Để đạt hiệu quả tốt nhất, sử dụng kem ít nhất 2 lần/ngày.


Dạng bào chế
Kem bôi da

Quy cách đóng gói
Hộp 1 tuýp 75ml
Nhà sản xuất: Viện công nghệ sinh học, vắc-xin & huyết thanh BIOMED (IBSS BIOMED S.A.) 

Nước sản xuất: Ba Lan', N'Tuýp', CAST(345000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (418, N'NT_40_LNQ', N'Avène', 1, N'AVENE7', N'Kem giảm ngứa, rát, viêm da cơ địa - Avene Xeracalm AD Cream 200ml', N'kem giam ngua, rat, viem da co dia - avene xeracalm ad cream 200ml', N'Avène XeraCalm AD Lipid-Replenishing Cream là dòng kem dưỡng ẩm cực tốt cho da nhạy cảm, đạt giải thưởng sản phẩm làm đẹp ALLURE''s 2016. Được bổ sung nước khoáng Avène, lipid kết hợp với công thức I-modulia kháng viêm, kem XeraCalm AD Lipid-Replenishing tác động trực tiếp tới vùng da bị viêm, ngứa, mẩn đỏ. Đặc biệt, sản phẩm không chứa chất bảo quản, không paraben, chất tạo hương nhân tạo nên an toàn với mọi lứa tuổi.

CHI TIẾT SẢN PHẨM 

Công dụng kem giảm ngứa da Avène XeraCalm AD Lipid-Replenishing Cream
- Giúp giữ ẩm cho da với độ PH phù hợp, không nhờn dính

- Giúp phục hồi hàng rào bảo vệ tự nhiên của da, giảm ngứa, giảm viêm

- Công thức vô trùng 100% phù hợp với làn da nhạy cảm, da bị viêm

- Thích hợp cho cả trẻ em và người lớn

Thành phần chính Kem giảm ngứa da Avène XeraCalm AD Lipid-Replenishing Cream
- Nước khoáng Avène: làm dịu da, giảm kích ứng, kháng viêm

- I-modulia®: chiết xuất Aquaphilus dolomiea giúp giảm viêm, giảm ngứa, kháng khuẩn

- Cer-Omega: hồi phục và nuôi dưỡng da, củng cố hàng rào bảo vệ da

- Chất béo: dầu anh thảo và các chất béo giúp làm mềm da, giảm khô da

Thành phần khác: Arginine, Tocopherol, …Khả năng dung nạp rất cao

Đối tượng sử dụng kem giảm ngứa da Avène XeraCalm AD Lipid-Replenishing Cream
- Người già bị ngứa do da khô

- Bị ngứa do thay đổi nội tiết

- Khô da nặng do khí hậu

- Khô da do dùng thuốc điều trị

- Mề đay

- Bệnh vảy cá

- Viêm da thể tạng

- Eczema

Hướng dẫn sử dụng Kem Giảm Ngứa Da Avène XeraCalm AD Lipid-Replenishing Cream 200ml
Thoa 1,2 lần 1ngày lên vùng da khô ngứa. Dùng cho trẻ nhỏ và người lớn.

Để tăng hiệu quả, nên sử dụng chung với sản phẩm xịt khoáng và Dầu Tắm Làm Mềm Da Giảm Khô Ngứa Cho Da Nhạy Cảm XeraCalm AD Lipid-Replenishing Cleansing Oil

Loạị bỏ phần kem còn thừa trên nắp tuýp và đóng nắp tuýp lại sau khi sử dụng.

Lưu ý: Chỉ dùng ngoài da.', N'Tuýp', CAST(639000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (419, N'NT_40_LNQ', N'Ziaja', 1, N'ko', N'Kem kẽm oxit - Ziaja Dermatological Base with Zinc oxide 80g', N'kem kem oxit - ziaja dermatological base with zinc oxide 80g', N'Kẽm oxit được sử dụng để điều trị và ngăn ngừa chứng hăm tã và các kích ứng da nhẹ khác như các vết bỏng, vết cắt, hoặc vết xước. Thuốc hoạt động bằng cách tạo một lớp màng bảo vệ trên da để bảo vệ da khỏi các chất kích thích hoặc độ ẩm.', N'Lọ', CAST(495000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (420, N'NT_40_LNQ', N'Image', 1, N'IIBEC', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème', N'kem lam sang da vung mat image iluma intense brightening eye creme', N'Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème phối hợp các hoạt chất làm trắng sáng da mới theo công thức độc quyền của Image Skincare, mang đến giải pháp cải thiện hiệu quả các dấu hiệu xuống cấp vùng mắt như: bọng mắt, nếp nhăn, thâm quầng, trả lại khuôn mặt vẻ tươi sáng và đôi mắt tinh anh. Công nghệ Vectorize độc quyền của Image Skincare chứa các phân tử hình cầu sẽ len lỏi qua lỗ chân lông, thấm đến tận lớp hạ bì, phóng thích các hoạt chất tránh sự hao hụt hay bay hơi trên bề mặt da, mang đến hiệu quả chống lão hoá và làm sáng da vùng mắt đến 48 giờ.
Đặc biệt, các peptide chiết xuất từ tự nhiên trong Kem làm sáng da vùng mắt Image Iluma Intense Brightening Eye Crème sẽ đi liên kết với một số tế bào nào đó và gửi tín hiệu để các tế bào này sản xuất ra collagen mới. Điều này mang tới tác dụng cải thiện rõ rệt vùng da quanh mắt thêm căng mịn, đàn hồi, cho đôi mắt trẻ trung, linh động, rạng ngời.', N'Chai', CAST(1880000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (421, N'NT_40_LNQ', N'Obagi', 1, N'1159', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Cool)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (cool)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Cool bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn, không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g


Active ingredients:

Homosalate 10%, Octinoxate 7.5%, Titanium dioxide 3.18%, Zinc oxide 5% 

Inactive ingredients:

Water, butyloctyl salicylate, caprylic/capric triglyceride, caprylyl methicone, polyglyceryl-10 pentastearate, glyceryl stearate, PEG-100 stearate, butylene glycol, pentylene glycol, behenyl alcohol, PEG-40 stearate, dimethicone, physalis angulata extract, algae extract, glycerin, iron oxides, phenoxyethanol, sodium stearoyl lactylate, polyhydroxystearic acid, mannitol, mica, hydroxyethyl acrylate/sodium acryloyldimethyl taurate copolymer, citric acid, squalane, alumina, stearic acid, xanthan gum, calcium aluminum borosilicate, diatomaceous earth, sodium polyacrylate, disodium EDTA, synthetic fluorphlogopite, polysorbate 60, ethylhexylglycerin, zinc sulfate, silica, chlorphenesin, tetrahexyldecyl ascorbate, tin oxide, tocopherol

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Cool: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da. Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (422, N'NT_40_LNQ', N'Obagi', 1, N'1153', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 (Warm)', N'kem lot chong nang che khuyet diem obagi tint spf 50 (warm)', N'Kem lót chống nắng che khuyết điểm Obagi Tint SPF 50 Warm bảo vệ làn da khỏi ánh nắng mặt trời, giúp da tránh khỏi quá trình oxy hóa có nguồn gốc phát ra từ nhiệt. Kem giúp da đều màu, cho tông màu da trắng hồng tự nhiên, không gây mụn không hương liệu, không kích ứng, đã được bác sỹ da liễu của Mỹ thử nghiệm an toàn.

Khối lượng:
85 g

Active Ingredients: 10% homosalate, 7.5% octinoxate, 5% zinc oxide, 3.22% titanium dioxide

Inactive Ingredients: Water, Butyloctyl Salicylate, Caprylic/Capric Triglyceride, Caprylyl Methicione, Polyglyceryl-10 Pentastearate, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Pentylene Glycol, Bethenyl Alcohol, Iron Oxides, PEG-40 Stearate, Dimethicone, Physalis Angulata Extract, Phenoxyethanol, Algae Extract, Glycerin, Mica, Sodium Stearoyl Lactylate, Polyhdroxystearic Acid, Mannitol, Hydroxyethyl Acrylate/Sodium Acryloyidimethyl Taurate Copolymer, Citric Acid, Squalene, Alumina, Stearic Acid, Xanthan Gum, Diatomaceous Earth, Sodium.

Công dụng:
Kem chống nắng Obagi Tint SPF 50 Warm: Kem chống nắng phổ rộng chống tia UVA và UVB - giúp bảo vệ da khỏi sự hư tổn ở lớp thượng bì, trung bì, hiệu quả và độ an toàn tương đối cao, ngoài ra công nghệ mới có thể chống tia hồng ngoại ngăn lão hóa da.

Cách dùng:
– Lượng vừa đủ, thoa nhẹ nhàng lên khắp mặt (trừ mí mắt), dùng tay vỗ nhẹ lên da.Thoa trước khi ra nắng 15p, thoa lại sau 2h khi tiếp xúc trực tiếp với nắng
– Dùng ban ngày.', N'Tuýp', CAST(1200000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (423, N'NT_40_LNQ', N'Image', 1, N'ICFF', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30', N'kem nen che khuyet diem image skincare i conceal flawless foundation spf 30', N'Kem nền che khuyết điểm Image Skincare I Conceal Flawless Foundation SPF 30 là sản phẩm trang điểm cao cấp với khả năng che khuyết điểm hoàn hảo, kết hợp chống năng tăng cường bảo vệ da, thành phần lành tính giúp phục hồi nhanh chóng da hư tổn, mỏng yếu sau điều giúp giảm.
Sản phẩm được sản xuất theo công thức đặc biệt cho lớp kem nền trang điểm siêu mỏng, mịn mà vẫn giúp che phủ khuyết điểm trên da, cho làn da hoàn hảo, sáng mịn màng không tì vết. Sản phẩm còn hỗ trợ chống nắng ngừa da sạm nám, hư tổn do ánh nắng mặt trời và các yếu tố khác từ môi trường.
Sản phẩm không chứa hóa chất, không chất bảo quản, do đó cực kỳ an toàn cho da, giúp da phục hồi nhanh chóng, sáng khỏe tự nhiên.', N'Chai', CAST(1930000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (424, N'NT_40_LNQ', N'Obagi', 1, N'1116', N' Kem phục hồi tái tạo da Obagi Blender #5 ( cho mọi loại da )', N'kem phuc hoi tai tao da obagi blender #5 ( cho moi loai da )', N'Kem phục hồi tái tạo da Obagi Blender #5,hỗ trợ Ức chế tận gốc tế bào tạo sắc tố,hỗ trợ làm cho màu sắc da đồng đều tươi sáng và rạng tỡ. Kích thích sự phát triển tế bào hạ bì, trung bì. Phục hồi các lớp da sừng, tăng tuần hoàn máu, ngăn ngừa mụn. 

Công dụng:
Làm bong tróc các tế bào chết trên bề mặt da, giúp cho các hoạt chất trong hệ thống điều trị thấm sâu hơn. Làm mềm và cân bằng sắc tố da.

Đối tượng sử dụng:
- Phụ nữ bị nám khó điều trị và da bị lão hóa.
- Phụ nữ bị thay đổi làn da do thay đổi nội tiết tố.
- Đang trong quá trình điều trị Nám sâu, nám hỗn hợp và da bị lão hóa.
- Cho mọi loại da.

Hướng dẫn sử dụng:
– Lấy lượng khoảng 1 đốt ngón tay trỏ, thoa nhẹ nhàng đều thuốc lên khắp vùng da cần điều trị.
– Dùng tay vỗ nhẹ lên mặt để thuốc thấm sâu vào da mặt.
– Lắc đều sản phẩm trước khi dùng.
– Dùng ban đêm.

Khối lượng:
57g', N'Lọ', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (425, N'NT_40_LNQ', N'Image', 1, N'HERG', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel', N'kem phuc hoi va chong tham quang mat image skincare vital c hydrating eye recovery gel', N'Kem phục hồi và chống thâm quầng mắt Image Skincare Vital C Hydrating Eye Recovery Gel - giải pháp giúp dưỡng ẩm làm mềm da, phục hồi cấu trúc vùng da quanh mắt, cho da săn chắc, căng mịn, mờ nhăn, xóa tan quầng thâm, đánh thức làn da tràn đầy sức sống.
Là sản phẩm dưỡng da cao cấp với công nghệ hiện đại, kết hợp vitamin C và vitamin K có khả năng thẩm thấu sâu vào da, giúp ổn định mao mạch, làm sáng da, đồng thời cải thiện quầng thâm mắt, cho làn da rạng rỡ, sáng đều màu.
Sản phẩm còn giúp bổ sung hoạt chất Hyaluronic tăng cường dưỡng ẩm, giữ nước cho da, cải thiện cấu trúc da, ngăn ngừa da chùng nhão, chảy xệ, bọng mắt, nếp nhăn, vết chân chim hình thành sâu.', N'Chai', CAST(1350000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (426, N'NT_40_LNQ', N'Image', 1, N'RRC', N'Kem retinol công nghệ ADT trẻ hoá da IMAGE MD Restoring Retinol Crème With ADT Technology(tm) ', N'kem retinol cong nghe adt tre hoa da image md restoring retinol creme with adt technology(tm)', N'Kem retinol công nghệ ADT trẻ hóa da, mờ thâm nám Image MD Restoring Retinol Crème With Adt Technology TM giúp giảm thiểu sự xuất hiện của nếp nhăn và làm nổi bật tông màu da, đồng thời làm sống lại làn da. Các thành phần hoạt tính được đưa vào các lớp sâu hơn của da thông qua công nghệ phân phối chăm sóc da tiên tiến IMAGE Skincare. Không chứa paraben. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Chai', CAST(3290000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (427, N'NT_40_LNQ', N'Image', 1, N'IATRAC', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme', N'kem tre hoa lam mo vet tham ageless total retinol a creme', N'Kem trẻ hóa làm mờ vết thâm Ageless Total Retinol A Creme là dòng sản phẩm dưỡng da cao cấp có khả năng thẩm thấu nhanh và sâu vào da, nhẹ nhàng làm mềm, loại bỏ đi lớp da sừng khô sần, lão hóa, làm mờ thâm sạm, dưỡng da sáng màu, hỗ trợ tăng sinh Collagen giúp da săn chắc, đồng thời dưỡng ẩm cho da mềm mượt, căng mịn hoàn hảo', N'Chai', CAST(2272000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (428, N'NT_40_LNQ', N'Avène', 1, N'AVENE1', N'Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream', N'kem tri tham lanh da chong nhiem khuan avene cicalfate repair cream', N'Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

CHI TIẾT SẢN PHẨM 

Kem trị thâm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream

Tại Việt Nam, Avène là cái tên rất hay gặp trong đơn thuốc mà các bác sĩ da liễu kê cho bệnh nhân của mình, phổ biến nhất là kem chống nắng và kem dưỡng ẩm. Lợi thế của Avene là sử dụng nước từ dòng suối khoáng Sanite-Odile nổi tiếng của Pháp để sản xuất ra dòng sản phẩm chứa khoáng dịu nhẹ chữa lành mọi thương tổn dành riêng cho da nhạy cảm.

THÀNH PHẦN



Sucralfate: 1%
Đồng Sulfate: 0.2%
Kẽm Sulfate: 0.1%
Kẽm Oxit: 4%
Nước khoáng Avene: 45%
Kem làm lành da, chống nhiễm khuẩn Cicalfate của Avene là sản phẩm được tạo nên bởi nhiều hoạt chất đặc biệt giúp làm lành các thương tổn trên da.


(*) Hoạt chất Sulcralfate có dạng vi hạt siêu mịn sẽ hồi phục và kích thích tái tạo da, giúp da mau lành vết thương và lành sẹo.


(*) Trong khi đó, sự phối hợp giữa Đồng Sulfate, Kẽm Sulfate và Kẽm Oxit có tác dụng chống nhiễm khuẩn, giúp bảo vệ hiệu quả làn da đang bị tổn thương.


(*) Và tất nhiên không thể thiếu nước khoáng Avène, là thành phần quan trọng giúp làm dịu da, chống kích ứng, mang đến cảm giác thực sự êm ái và dễ chịu cho làn da của bạn.


(*) Avene Cicalfate Repair Creamkhông chứa hương liệu, chất bảo quản nên phù hợp với mọi làn da, đặc biệt kể cả da nhạy cảm của trẻ sơ sinh.

CÔNG DỤNG


Kem trị thâm làm lành da chống nhiễm khuẩn Avene Cicalfate Repair Cream làm lành da, hồi phục da, làm lành sẹo, giúp làm lành vết thương do tác nhân bên ngoài, trị thâm sau mụn, hồi phục da bị tổn thương sau Laser, phẫu thuật thẩm mỹ…

Avene Cicalfate Repair Cream còn dùng được cho trẻ sơ sinh, vết hăm tã ở trẻ, vết bỏng, vết mổ, đúng là một loại kem rất cần thiết phải có trong tủ thuốc của mỗi gia đình.

Avene Cicalfate Repair Creamkhông chỉ giúp làm da dịu mát, chống kích ứng, mà những hoạt chất đặc biệt còn hỗ trợ hồi phục da, kích thích tái tạo da, làm lành vết thương và lành sẹo nhanh chóng, làm dịu vết mẩn đỏ chỉ trong vài ngày sử dụng.

HƯỚNG DẪN SỬ DỤNG


Sản phẩm phù hợp nhất với các làn da bị tổn thương hoặc kích ứng sau các can thiệp thẩm mỹ (chiếu laser, phẫu thuật thẩm mỹ, tẩy lông…), da bị viêm, chàm, nứt nẻ, hăm tã, chốc vẩy hoặc tổn thương làm trầy xước da.

Dùng 1-2 lần/ ngày vào buổi sáng và/ hoặc tối. Sau khi làm sạch da và lau khô, thoa kem làm lành da, chống nhiễm khuẩn Cicalfate lên các vùng da bị tổn thương.


* Không thoa kem khi vết thương còn ướt và rỉ dịch.
', N'Tuýp', CAST(391000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (429, N'NT_40_LNQ', N'Obagi', 1, N'1175', N'Khăn ướt giúp trị mụn SUZANOBAGIMD Acne Cleansing Wipes', N'khan uot giup tri mun suzanobagimd acne cleansing wipes', N'Đối với da dầu hoặc da dễ bị mụn trứng cá, các loại khăn lau mặt này được pha chế với 2% acid salicylic để giúp điều trị và ngăn ngừa mụn trứng cá trong khi nhanh chóng và nhẹ nhàng làm sạch da.

Công dụng:

- Điều trị mụn trứng cá
- Làm khô mụn trứng cá
- Giúp ngăn ngừa mụn trứng cá mới.
- Làm sạch da nhẹ nhàng nhanh chóng.

Hướng dẫn sử dụng:


- Lau toàn bộ da mặt một đến hai lần mỗi ngày để làm sạch da và điều trị mụn.  

- Khi mới sử dụng nên dùng 1 lần/ngày để tránh khô da và kích ứng. Khi da đã quen có thể tăng lên 2 lần / ngày. 

- Nếu xảy ra hiện tượng khô hoặc bong tróc khó chịu, hãy giảm mỗi ngày một lần.

Thành phần nổi bật:

- Salicylic Acid: hoạt động như một chất tẩy tế bào chết, giúp sửa chữa và làm sạch mụn trứng cá

- Nha đam: giúp dưỡng ẩm và làm dịu da

- Chiết xuất Brassica Oleracea Italica (Bông cải xanh): chứa sulforaphane, một hợp chất giúp loại bỏ các gốc tự do

- Citrus Bioflavonoids: có đặc tính chống oxy hóa giúp bảo vệ chống lại các gốc tự do

- Witch Hazel: loại bỏ dầu thừa và tạp chất để giảm thiểu kích thước lỗ chân lông trên bề mặt', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (430, N'NT_40_LNQ', N'Obagi', 1, N'1176', N'Khăn ướt tẩy trang cho mọi loại da SUZANOBAGIMD Cleansing Wipes', N'khan uot tay trang cho moi loai da suzanobagimd cleansing wipes', N'Khăn Ướt Tẩy Trang SUZANOBAGIMD Cleansing Wipes là sản phẩm làm sạch lý tưởng giúp loại bỏ lớp trang điểm, dầu thừa, bụi bẩn nhanh chóng, hiệu quả mà vẫn vô cùng dịu nhẹ, đem lại làn da khô thoáng và mềm mịn.

Đặc điểm nổi bật:

- Không chứa các chất tẩy rửa mạnh gây tổn hại đến lớp màng ẩm tự nhiên của da

- Sử dụng những chất liệu vải vô cùng mềm mượt, có thể sử dụng cho cả những vùng da nhạy cảm quanh mắt mà không lo sợ rát da hay nổi mẩn đỏ.

- Aloe polyphenols giúp làm dịu da, bảo vệ da khỏi tác hại của tia UV và góp phần ngăn ngừa lão hoá

- Citrus Bioflavonoids duy trì và cân bằng lại da, củng cố lớp màng ẩm tự nhiên trên da và giúp các sản phẩm dưỡng sau phát huy hiệu quả tốt hơn.

- Công thức không chứa hương liệu, chất bảo quản phù hợp cho cả da nhạy cảm

Đây được coi là sản phẩm vừa hiệu quả, vừa lành tính và tiện lợi để bạn có thể mang theo trong những chuyến du lịch ngắn ngày hoặc dùng để tẩy trang giữa ngày ở công ty, hoặc trước và sau khi đến phòng tập.

Thành phần:

Citrus Bioflavonoids, Brassica Sulforaphane, Aloe polyphenols, and Antioxidants

Quy cách đóng gói: 25 tờ / gói

Hướng dẫn sử dụng:

- Mỗi lần sử dụng lấy một miếng khăn giấy lau sạch mặt và vùng cổ. Lau đến khi khăn giấy không còn bám chất dơ.

- Có thể tiếp tục rửa sạch mặt bằng sữa rửa mặt rồi dưỡng da như thông thường.

- Không giặt hay sử dụng lại.', N'Gói', CAST(550000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (431, N'NT_40_LNQ', N'Obagi', 1, N'1180', N'Lotion đặc trị dành cho cơ thể Obagi KèraPhine Body Smoothing Lotion', N'lotion dac tri danh cho co the obagi keraphine body smoothing lotion', N'Công dụng:
Thích hợp sử dụng cho người bị bệnh dày sừng nang lông (keratosis pilaris), vảy nến, nốt đỏ.
Tẩy tế bào chết và loại bỏ tế bào chết trên bề mặt da.
Giúp làn da thô ráp sần sùi được mịn màng.
Giúp làm dịu cân bằng, giảm khô da trên cánh tay.
KèraPhine được sử dụng hàng ngày giúp khôi phục lại làn da khỏe mạnh.


Thành phần:
Water (Aqua), Glycolic Acid, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Ammonium Lactate, Sodium Hydroxide, Glycerin, Dimethicone, Pentylene Glycol, Beta-Glucan, Sodium Hyaluronate Crosspolymer, Sorbitan Isostearate, Disodium EDTA, Polysorbate 60, Ethylhexylglyercin, Caprylyl Glycol, Chlorphenesin, Phenoxyethanol, Titanium Dioxide (CL 77891).


Cách dùng:
Thoa đều lên da một lần mỗi ngày hoặc theo chỉ dẫn của chuyên gia.


Dung lượng:
198ml.', N'Tuýp', CAST(1600000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (432, N'NT_40_LNQ', N'Obagi', 1, N'1136', N'Lotion dưỡng ẩm và tẩy tế bào chết SUZANOBAGIMD IDR Intensive Daily Repair', N'lotion duong am va tay te bao chet suzanobagimd idr intensive daily repair', N'Lotion dưỡng da kiêm tẩy tế bào chết hàng ngày  SUZANOBAGIMD IDR Intensive Daily Repair chứa các axit polyhydroxy (gluconolactone và axit lactobionic) giúp tẩy tế bào chết nhẹ nhàng để giảm thiểu diện mạo lỗ chân lông và các dấu hiệu lão hóa.

Công dụng:

- Giúp làm mềm và làm trẻ hóa làn da hàng ngày, chứa PHAs gluconolactone và axit lactobionic nhẹ nhàng tẩy tế bào chết để giảm thiểu các lỗ chân lông và các dấu hiệu lão hóa có thể nhìn thấy bằng cách tẩy tế bào chết nhẹ 
- Peptide giúp da săn chắc, giảm thiểu nếp nhăn.
- Công thức không gây kích ứng, không nhạy cảm có chứa Vitamin C và E. Với việc sử dụng thường xuyên, IDR sẽ lộ ra một làn da sáng hơn và tươi tắn.
- Công thức này là bác sĩ da liễu được thử nghiệm, giảm dị ứng, không nhạy cảm, không gây kích ứng, và không mùi thơm và paraben.
- Sản phẩm có thể được sử dụng cùng nhau hoặc tích hợp với hệ thống Obagi hoặc sản phẩm cho một chế độ chăm sóc da hoàn toàn tùy chỉnh.

Thành phần chính:

Glucconolactone và Lactobionic Acid (PHAs), Allantoin, và Peptides

Thành phần chi tiết:

Water (aqua), Caprylic/capric Triglyceride, Gluconolactone, Lactobionic Acid, Glyceryl Stearate, Glycerin, Methyl Glucose Sesquistearate, Butyrospermum Parkii (shea) Butter, C12-15 Alkyl Benzoate, Ethylhexyl Palmitate, Cetyl Alcohol, Dimethicone, Phenoxyethanol, Xanthan Gum, Polyacrylate Crosspolymer 6, Sodium Hydroxide, Mica, Caprylyl Glycol, Panthenol, Titanium Dioxide, Ethylhexylglycerin, Disodium EDTA, Bisabolol, Tocopheryl Acetate, Hexylene Glycol, Allantoin, Camellia Oleifera (green Tea) Leaf Extract, Chamomilla Recutita (matricaria) Flower Extract, Camellia Sinensis Leaf Extract, Tetrahexyldecyl Ascorbate, Sodium Hyaluronate, Myristoyl Pentapeptide-11, Myristoyl Pentapeptide-8.

Hướng dẫn sử dụng:

- Lấy 2-3 giọt thoa đều lên mặt trước khi sử dụng kem chống nắng. Nhẹ nhàng massage cho sản phẩm ngấm đều.

- Dùng hàng ngày.

Chú ý: Chỉ sử dụng bên ngoài da. Ngừng sử dụng nếu nổi ban hoặc kích ứng phát triển và kéo dài. Tránh xa vùng mắt. Tránh xa tầm tay trẻ em. Bắt buộc chống nắng khi dùng sản phẩm.', N'Tuýp', CAST(1900000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (433, N'NT_40_LNQ', N'Image', 1, N'OBGM', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque', N'mat na giam nhay cam va kich ung da image ormedic balancing gel masque', N'Mặt nạ giảm nhạy cảm và kích ứng da Image Ormedic Balancing Gel Masque được tạo nên từ rất nhiều chiết xuất tự nhiên như nha đam, dầu oliu, hoa cúc, trà đen… nhẹ nhàng lấy đi các tế bào chết, làm sạch tạp chất bên trong lỗ chân lông, nhanh chóng làm dịu làn da bị kích ứng, kháng viêm, nhanh chóng phục hồi làn da bị tổn thương, mẩn đỏ và viêm sưng. Bên cạng đó, sản phẩm còn giúp bảo vệ da chống lại sự mất nước và cân bằng độ ẩm cho da.
Thành phần dầu oliu của Image Ormedic Balancing Gel Masque có cấu trúc hoá học gần giống với cấu trúc dầu tự nhiên trên da hơn bất kì loại dầu nào khác nên có tác dụng vô cùng tích cực trong việc chăm sóc da. Với thành phần giàu chất béo lành mạnh, chất chống oxy hoá như phenolic, vitamin E cùng với squalene, acidas oleic, dầu oliu giúp kích thích và chữa lành các tổn thương trên da, làm dịu các kích ứng da từ tác động của ánh nắng mặt trời.', N'Tuýp', CAST(1250000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (434, N'NT_40_LNQ', N'Image', 1, N'RORM', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque', N'mat na ngu dem tre hoa da image md restoring overnight retinol masque', N'Mặt nạ ngủ đêm trẻ hóa da Image MD Restoring Overnight Retinol Masque giúp bổ sung dưỡng chất ngăn ngừa lão hóa, cung cấp độ ẩm cho da suốt cả đêm khi ngủ. Được xây dựng bởi các bác sĩ phẫu thuật thẩm mỹ cho kết quả tối đa.', N'Hộp', CAST(3710000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (435, N'NT_40_LNQ', N'Khác', 1, N'MNTBG', N'Mặt nạ tế bào gốc Rwine Beauty Stem Cell Placenta Mask', N'mat na te bao goc rwine beauty stem cell placenta mask', N'✅ Mặt nạ chứa nhau thai ngựa có thể làm giảm các triệu chứng nhạy cảm với mẩn đỏ và viêm. Có thể thúc đẩy quá trình chữa lành vết thương.
✅ Bên cạnh đó, cân bằng độ ẩm tương đối, giúp da mịn màng, mềm mại, ngăn ngừa khô da, làm chậm lão hóa da, nhìn thành nếp nhăn.
✅ EGF giúp giao tiếp với các tế bào của bạn để tạo ra nhiều collagen và elastin hơn.
✅ KGF Thúc đẩy tái tạo da, hỗ trợ tăng đàn hồi giúp da luôn tươi trẻ, mịn màng và săn chắc cho làn da khỏe mạnh, trẻ trung.
✅ Làm mờ vết nám, tàn nhang, vết thâm một cách hiệu quả. giúp cải thiện tone da một cách nhẹ nhàng mà hiệu quả.
✅ Cung câp nước, khóa ẩm, tăng độ đàn hồi và ngăn ngừa tình trạng khô da.
✅ Mặt nạ nhau thai có thể sử dụng cho da yếu, tổn thương do mụn, da bị hư tổn sau khi dùng kem trộn, sau điều trị laser, da xỉn màu, da nám, tàn nhang.
✅ Thành phần của mặt nạ được kiểm định rất khắt khe, đảm bảo không nhiễm hóa chất gây tổn thưởng, kích ứng da dù da mẫn cảm.
✅ Bổ sung vi khoáng giúp da khỏe mạnh, tăng đề đề kháng cho da.

', N'Miếng', CAST(50000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (436, N'NT_40_LNQ', N'Image', 1, N'IATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (437, N'NT_40_LNQ', N'Image', 1, N'ATORM', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque', N'mat na tre hoa da ngu dem ageless total overnight retinol masque', N'Mặt nạ trẻ hoá da ngủ đêm Ageless Total Overnight Retinol Masque là sản phẩm cao cấp đồng hành cùng bạn qua mỗi tối, giúp tái tạo lại vẻ ngoài rạng rỡ của làn da; tăng sự săn chắc, đàn hồi; giảm sự xuất hiện của đường nhăn và nếp nhăn và cải thiện sự không hoàn hảo của da; cung cấp độ ẩm và các dưỡng chất mang đến làn da tươi trẻ ngay trong giấc ngủ', N'Hộp', CAST(2830000 AS Decimal(18, 0)), NULL, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (438, N'NT_40_LNQ', N'Image', 1, N'FREP', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads', N'mat na tre hoa da vung mat image skincare flawless rejuvenating eye pads', N'Mặt nạ trẻ hóa da vùng mắt Image Skincare Flawless Rejuvenating Eye Pads với dưỡng chất từ nước dừa có thể dùng cho mọi lứa tuổi, cung cấp nuôi dưỡng và tái tạo vùng mắt, loại bỏ lớp trang điểm một cách nhẹ nhàng và hiệu quả nhất.
Hyaluronic và các chiết xuất từ thực vật giúp làm mờ vết nhăn và thúc đẩy quá trình trẻ hóa cho làn da. Comfrey và Chamomile có tác dụng xoa dịu và làm giảm bọng mắt cho đôi mắt tràn đầy năng lượng và không còn cảm giác mệt mỏi. Làm sạch và tái tạo da trong một bước thật đơn giản.', N'Hộp', CAST(1530000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (439, N'NT_40_LNQ', N'Latopic', 1, N'LAT200', N'Nhũ tương dưỡng ẩm, dịu ngứa da dị ứng/kích ứng toàn thân - Latopic Body Emulsion 200ml ', N'nhu tuong duong am, diu ngua da di ung/kich ung toan than - latopic body emulsion 200ml', N'Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da toàn thân.

Thành phần
Chất chuyển hóa Lactobacillus sp., phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ), polidocanol, panthenol, bơ hạt mỡ, lanolin, vitamin E, dầu oliu, allantoin, caprylic acid và capric acid. 

Sản phẩm không chứa SLS, SLES, chất bảo quản, parabens, xà phòng.

Công dụng
Hỗ trợ điều trị viêm da cơ địa, viêm da tiếp xúc dị ứng, chàm eczema, mày đay, mẩn đỏ, da khô, nhạy cảm và da bị kích ứng cho vùng da toàn thân.

Chất chuyển hóa Lactobacillus sp. có tác dụng kháng khuẩn, giúp ngăn ngừa sự phát triển của tụ cầu vàng (Staphylococcus aureus) gây viêm ở những người bị viêm da cơ địa, viêm da tiếp xúc dị ứng.

Phức hợp chống ngứa (chiết xuất từ hạt lúa mạch, dầu argan, chiết xuất từ bơ cây hạt mỡ) làm dịu ngứa nhanh chóng.

Cùng với các thành phần hoạt tính được lựa chọn đặc biệt, mang lại tác động toàn diện:

• Làm dịu nhẹ da và giảm kích ứng da

• Dưỡng ẩm da toàn thân, làm giảm cảm giác căng, khô ráp cho da

• Tạo lớp màng che phủ giúp bảo vệ da và giảm tình trạng mất nước qua da

• Tái tạo cấu trúc màng lipid lớp biểu bì da.

Hướng dẫn sử dụng
Thoa đều và nhẹ nhàng một lớp nhũ tương mỏng lên da toàn thân sau khi được làm sạch, còn hơi ẩm cho đến khi thấm hết. Nên sử dụng sản phẩm đều đặn sau mỗi lần tắm với Nhũ tương tắm dành cho da dị ứng/kích ứng.


Dạng bào chế
Nhũ tương bôi da

Quy cách đóng gói
Hộp 1 tuýp 200ml

Xuất xứ
Nhà sản xuất: Viện công nghệ sinh học, vắc-xin & huyết thanh BIOMED (IBSS BIOMED S.A.)

Nước sản xuất: Ba Lan', N'Tuýp', CAST(503000 AS Decimal(18, 0)), NULL, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (440, N'iBeauty', N'ACM', 1, N'ACM28', N'NOVOPHANE CAPSULES - Viên uống chống rụng tóc', N'novophane capsules - vien uong chong rung toc', N'Giúp tăng cường sức khoẻ của tóc, giúp kích thích mọc tóc, tóc chắc khoẻ suôn mượt. Giúp giảm ảnh hưởng của tóc do sủ dụng hoá chất, dưỡng móng', N'Viên', CAST(546000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (441, N'iBeauty', N'ACM', 1, N'ACM21', N'NOVOPHANE DS SHAMPOO - Dầu gội, giúp làm sạch da đầu, giảm ngứa và ngăn ngừa gàu', N'novophane ds shampoo - dau goi, giup lam sach da dau, giam ngua va ngan ngua gau', N'Chứa các thành phần Olamine piroctone, Zinc pyrithione, Salicylic acid, Sodium lactate giúp trị gàu 1 cách hiệu quả và ngăn không cho gàu quay trở lại', N'Chai', CAST(315000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (442, N'iBeauty', N'ACM', 1, N'ACM19', N'NOVOPHANE ENERGIZING SHAMPOO - Dầu gội bổ sung dưỡng chất, vitamin, cung cấp năng lượng cho tóc yếu, tóc gẫy, tóc khô', N'novophane energizing shampoo - dau goi bo sung duong chat, vitamin, cung cap nang luong cho toc yeu, toc gay, toc kho', N'Cung cấp năng lượng từ 6 loại Vitamin tạo ra tác dụng hiệp đồng trong việc làm sạch nhẹ nhàng và làm khoẻ tóc', N'Chai', CAST(357000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (443, N'iBeauty', N'ACM', 1, N'ACM12', N'NOVOPHANE K Shampoo - Dầu gội cho người bị gàu (nhẹ, nặng) và giảm ngứa da đầu', N'novophane k shampoo - dau goi cho nguoi bi gau (nhe, nang) va giam ngua da dau', N'Thành phần Olamine piroctone, Zinc pyrithione, Salicylic acid, Sodium lactate, lactic acid giúp trị gàu một cách hiệu quả và ngăn không cho gàu quay trở lại', N'Chai', CAST(336000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (444, N'iBeauty', N'ACM', 1, N'ACM11', N'NOVOPHANE SEBO - REGULATING SHAMPOO Dầu gội ngăn ngừa rụng tóc, làm sạch da đầu cho da dầu nhờn', N'novophane sebo - regulating shampoo dau goi ngan ngua rung toc, lam sach da dau cho da dau nhon', N'Giảm rụng tóc, làm sạch loại bỏ tế bào chết và bã nhờn, giúp tóc khoẻ và dày hơn', N'Chai', CAST(367000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (445, N'iBeauty', N'ACM', 1, N'ACM20', N'NOVOPHANE ULTRA - NOURISHING SHAMPOO - Dầu gội siêu dưỡng tóc, làm sạch da đầu, cung cấp dưỡng chất, giúp ngăn ngừa rụng tóc cho tóc bị tổn thương, tóc nhuộm, sấy nhiều lần', N'novophane ultra - nourishing shampoo - dau goi sieu duong toc, lam sach da dau, cung cap duong chat, giup ngan ngua rung toc cho toc bi ton thuong, toc nhuom, say nhieu lan', N'Làm sạch tóc và da đầu, giúp nhanh chóng phục hồi, nuôi dưỡng và bảo vệ mái tóc, ngăn ngửa rụng tóc, đặc biệt dùng cho tóc khô và hư tổn', N'Chai', CAST(336000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (446, N'NT_40_LNQ', N'UREA', 1, N'INT02', N'SHOWER GEL UREA 10% 750ml', N'shower gel urea 10% 750ml', N'Gel tắm dưỡng ẩm, làm mềm, giảm ngứa cho da vảy nến, viêm da cơ địa, da chàm', N'Chai', CAST(285000 AS Decimal(18, 0)), 0, N'1572541200', N'1575133199', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (447, N'NT_40_LNQ', N'Image', 1, N'OLEC', N'Son dưỡng môi chiết xuất từ thiên nhiên ORMEDIC lip enhance complex - Care for skin', N'son duong moi chiet xuat tu thien nhien ormedic lip enhance complex - care for skin', N'Với hỗn hợp polyopeptide, sản phẩm giúp dưỡng ẩm, ngăn ngừa môi khô nứt nẻ. Đặc biệt thành phần Palmitoyl oligopeptide giúp giảm nhăn, cho làn môi căng bóng trẻ trung. Sản phẩm thích hợp với người phun xăm môi.', N'Tuýp', CAST(699000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (448, N'NT_40_LNQ', N'Stanhome', 1, N'SBS', N'Stanhome Balance Shampoo', N'stanhome balance shampoo', N'Dầu gội loại bỏ gầu, giảm ngứa da đầu
-Làm sạch, loại bỏ gầu, vẩy gầu hiệu quả, ngăn gầu quay trở lại
-Giảm ngay cơn ngứa khó chịu do gầu gây ra, làm diụ cảm giác ngứa ngáy, kích ứng trên da đầu
-Bảo vệ da đầu khoẻ mạnh, giảm tình trạng rụng tóc, giúp tóc bóng khoẻ hon, tóc không bị khô xơ, chẻ ngọn', N'Chai', CAST(329000 AS Decimal(18, 0)), 10, N'1572541200', N'1575133199', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (449, N'NT_40_LNQ', N'Stanhome', 1, N'SL', N'Stanhome Lipcare', N'stanhome lipcare', N'Son dưỡng đặc trị môi khô nứt nẻ, giúp môi mềm mại. Loại bỏ tình trạng bong tróc, khô môi, chảy máu, loại bỏ da chết giúp đôi môi tươi hồng rạng rỡ. Ngăn ngừa lão hoá, nuôi dưỡng tái tạo và trẻ hoá làn môi', N'Tuýp', CAST(290000 AS Decimal(18, 0)), 10, N'1575651600', N'1575824399', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (450, N'NT_40_LNQ', N'Ceradan', 1, N'C150ml', N'Sữa Tắm Dưỡng Ẩm Ceradan Wash 150ml', N'sua tam duong am ceradan wash 150ml', N'Sữa tắm dưỡng ẩm Ceradan Wash thương hiệu Hyphens Singapore dành cho da khô và da nhạy cảm, thân thiện cho da trẻ em. Sữa tắm Ceradan Wash giúp cấp ẩm cho da khô, lưu giữ hương thơm quyến rũ, nồng nàn.', N'Chai', CAST(215000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (451, N'NT_40_LNQ', N'Obagi', 1, N'1152', N' Tinh chất cấp nước phục hồi da Obagi Daily Hydro-Drops ', N'tinh chat cap nuoc phuc hoi da obagi daily hydro-drops', N'Serum cấp nước đầu tiên của Obagi với công nghệ kết hợp vitamin B3 (niacinamide) cùng các chiết xuất dầu tự nhiên giúp tăng cường độ ẩm và cấp nước cho da mà không hề làm giảm khả năng thẩm thấu của các loại đặc trị đang sử dụng như retinoids. 

Serum dạng gel chứa các hạt tinh chất tan ngay trên da và dưỡng ẩm sâu mà không để lại lớp bóng nhờn. Thích hợp với mọi loại da.

Đặc điểm nổi bật

Vitamin B3 (Niacinamide) giúp phục hồi, làm dịu và củng cố màng da, tăng cường sức chống chịu của da khi kết hợp với tretinoin/retinol. 
Niacinamide (vitamin B3) điều chỉnh sự trao đổi chất của tế bào và kích thích tái tạo, phục hồi màng lipid bằng cách sản sinh ra ceramide. Và chính nhờ khả năng kích thích sản sinh ra ceramide mà da được dưỡng ẩm, bảo vệ và ngăn ngừa tổn thương. Chưa kể là niacinamide còn cho tác dụng làm sáng da, trị thâm, trị mụn hiệu quả.

Abyssinian Oil & Hibiscus oil: dưỡng ẩm, giúp da săn chắc
Hỗn hợp chất chống oxy hóa giảm nếp nhăn, tăng cường khả năng hoạt động của kem chống nắng
Hướng dẫn sử dụng

Sau khi rửa mặt và sử dụng toner, dùng một lượng sản phẩm vừa đủ cho cả mặt, massage cho sản phẩm thẩm thấu hoàn toàn.', N'Chai', CAST(2400000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (452, N'NT_40_LNQ', N'Med+', 1, N'tcn', N'Tinh chất ngừa rụng tóc cho nam - Radical Med Anti Hair Loss Ampoule Treatment (For Man)', N'tinh chat ngua rung toc cho nam - radical med anti hair loss ampoule treatment (for man)', N'Công dụng:
🌿 Dưỡng ẩm, cung cấp chất dinh dưỡng cho tóc và da đầu, giúp tóc chắc khỏe, bồng bềnh và bóng mượt.
🌿 sản phẩm phù hợp với những người đang bị rụng tóc, neo tóc chặt vào da đầu, giúp kích thích cho tóc mọc nhanh.
🌿 Giúp làm giảm nguy cơ gãy, rụng tóc.
 🌿Sản phẩm dưỡng, chăm sóc tóc và da đầu dành cho nam giới trong các trường hợp tóc mỏng, tóc yếu, tóc xơ, chẻ ngọn, tóc gãy, rụng do nhiều nguyên nhân.', N'Hộp', CAST(407000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (453, N'NT_40_LNQ', N'Med+', 1, N'tcnn', N'Tinh chất ngừa rụng tóc cho nữ - Radical Med Anti Hair Loss Ampoule Treatment (For Woman)', N'tinh chat ngua rung toc cho nu - radical med anti hair loss ampoule treatment (for woman)', N'Công dụng:
🌿 Dưỡng ẩm, cung cấp chất dinh dưỡng cho tóc và da đầu, giúp tóc chắc khỏe, bồng bềnh và bóng mượt.
🌿 sản phẩm phù hợp với những người đang bị rụng tóc, neo tóc chặt vào da đầu, giúp kích thích cho tóc mọc nhanh.
🌿 Giúp làm giảm nguy cơ gãy, rụng tóc. 
🌿Sản phẩm dưỡng, chăm sóc tóc và da đầu dành cho phái nữ trong các trường hợp tóc mỏng, tóc yếu, tóc xơ, chẻ ngọn, tóc gãy, rụng do nhiều nguyên nhân.', N'Hộp', CAST(405000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (454, N'NT_40_LNQ', N'Image', 1, N'HFO', N'Tinh dầu Massage chống lão hoá VITAL C Hydrating Facial Oil', N'tinh dau massage chong lao hoa vital c hydrating facial oil', N'Sự pha trộn các nguồn dầu thực vật từ thiên nhiên giúp phục hồi, nuôi dưỡng và chống lão hóa. Với mùi thơm đặc trưng mang đến cảm giác dịu nhẹ, giảm căng thẳng và mệt mỏi cho làn da.', N'Lọ', CAST(1900000 AS Decimal(18, 0)), 30, N'1573405200', N'1574009999', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (455, N'iBeauty', N'ACM', 1, N'ACM24', N'VITICOLOR - gel che màu thẩm mỹ, chuyên dùng cho da bạch biến', N'viticolor - gel che mau tham my, chuyen dung cho da bach bien', N'Tạo nền da có màu sắc thẩm mỹ cho bệnh nhân bạch biến, giúp vùng da bạch biến có màu tương đồng với vùng da thường', N'Tuýp', CAST(780000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (456, N'iBeauty', N'ACM', 1, N'ACM17', N'VITIX Regulating Gel - Sản phẩm dành cho da bị bạch biến, phục hồi sắc tố da, ngăn chặn bạch biến lan rộng', N'vitix regulating gel - san pham danh cho da bi bach bien, phuc hoi sac to da, ngan chan bach bien lan rong', N'VITIX gel chứa hỗn hợp chiết xuất từ Cucumis Melo giàu chất chống oxy hoá (Catalase, SOD). Các chất chống oxy hoá này sẽ loại bỏ lượng hydrogen peroxide (H2O2) trên da bệnh nhân bạch biến và tái sinh sắc tố da', N'Tuýp', CAST(780000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (457, N'iBeauty', N'ACM', 1, N'ACM31', N'VITIX TABLETS H30', N'vitix tablets h30', N'Sản phẩm dành cho da bị bạch biến, phục hồi sắc tố da, ngăn chặn bạch biến lan rộng (Dạng viên)', N'Hộp', CAST(718000 AS Decimal(18, 0)), 0, N'1575133200', N'1575219599', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (458, N'NT_40_LNQ', N'Avène', 1, N'AVENE3', N'Xịt khoáng - Avene Thermal Spring Water 150ml', N'xit khoang - avene thermal spring water 150ml', N'Nguồn khoáng êm dịu cho làn da nhạy cảm, làm dịu, chống kích ứng, kháng viêm và các gốc tự do.

CHI TIẾT SẢN PHẨM 

Ra đời năm 1990, Avène nhanh chóng nhận được sự ủng hộ của nhiều khách hàng và trở thành thương hiệu cực kỳ nổi tiếng trong lĩnh vực chăm sóc làn da nhạy cảm. Trải qua hơn 300 công trình nghiên cứu sinh học, dược lý và kiểm nghiệm lâm sàng nghiêm ngặt, sản phẩm của Avène là sự kết hợp chặt chẽ giữa quy trình sản xuất mỹ phẩm và dược phẩm để đảm bảo chất lượng tối ưu cho dòng sản phẩm độc quyền bắt nguồn từ suối khoáng thiên nhiên.

Nguồn nước khoáng đã làm nên tên tuổi Avène nằm ở dãy núi Cévennes, Pháp. Tại đây, các dòng nước mưa thấm sâu xuống lòng đất, chảy xuyên qua "bộ lọc" tự nhiên của dãy núi và hấp thụ mọi khoáng chất cũng như thành phần vi lượng thiên nhiên quý hiếm trong hơn 40 năm trước khi trở thành dòng suối khoáng Sanite-Odile nổi tiếng, cũng là thành phần chính làm nên mỹ phẩm chứa khoáng nổi tiếng của Avène, được các bác sĩ da liễu trên toàn thế giới xác nhận và khuyên dùng. 

Chi tiết:

Làm dịu vết ửng đỏ

Làm giảm cảm giác ngứa

Độ khoáng thấp không làm khô da

Giàu silicat và nguyên tố vi lượng

pH 7,5 cân bằng hoàn hảo cho da

sản xuất và đóng gói vô trùng, đảm bảo vô trùng trong quá trình sử dụng

không chất bảo quản

Các chỉ định hằng ngày:

+Da mặt :

Làm dịu và làm mịn làn da nhạy cảm (đỏ, kích ứng do dao cạo…)

Hoàn tất tẩy trang

Cố định lớp trang điểm

Khi đi du lịch

+Thân thể :

Giảm các loại sưng, ngứa (eczéma, thuốc trị trứng cá…)

Sau tẩy lông

Sau ra nắng

Bỏng nhẹ

Da em bé (hăm tã, vệ sinh da…)

Sau khi chơi thể thao

Phun sương đều lên mặt, để yên khoảng 10 giây rồi dùng bông chậm nhẹ lên mặt', N'Chai', CAST(280000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (459, N'NT_40_LNQ', N'Avène', 1, N'AVENE5', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 300ml', N'xit khoang avene thermal spring water spray mist 300ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(370000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (460, N'NT_40_LNQ', N'Avène', 1, N'AVENE6', N'Xịt Khoáng Avène Thermal Spring Water Spray Mist 50ml', N'xit khoang avene thermal spring water spray mist 50ml', N'Xịt khoáng Avène Thermal Spring dưỡng ẩm, bổ sung ẩm, hạ nhiệt tức thì cho làn da
Giúp "cố định" lớp trang điểm, giữ lớp trang điểm lâu trôi
Làm mềm da sau khi cạo râu, tẩy lông, tránh tình trạng mẩn đỏ
Chăm sóc làn da sau khi bị tổn thương, sau phẫu thuật, hỗ trợ quá trình phục hồi và tái tạo da

CHI TIẾT SẢN PHẨM 

Xịt Khoáng Avène Thermal Spring Water 300ml là xịt khoáng có vô vàn những công dụng tuyệt vời giúp bảo vệ và chăm sóc làn da của bạn. Xịt khoáng ngay tức thì bổ sung độ ẩm cho da bạn, hạ nhiệt cho làn da, làm dịu da, giúp cố định lớp trang điểm, giữ cho chúng lâu trôi, lý tưởng cho cả những làn da nhạy cảm và dễ bị kích ứng.  Với các tia nước nhẹ như sương, Avène Thermal Spring Water dễ dàng ngấm vào da, giúp da bạn căng mịn như được ngậm nước, và xịt xong cảm giác rất fresh nhé.

Sản phẩm có xuất xứ từ hãng mỹ phẩm nổi tiếng Avène, Pháp. Avène là một thương hiệu dược- mỹ phẩm chăm sóc da của Pháp đặc biệt thích hợp cho những làn da nhạy cảm, từ nhạy cảm nhẹ nhàng đến dị ứng. Tất cả các sản phẩm của Avène đều chứa nước khoáng thiên nhiên tinh khiết, được xác nhận bởi các bác sĩ da liễu trên toàn thế giới về đặc tính nhẹ nhàng của nó. Avène là thương hiệu dược - mỹ phẩm chăm sóc da số một tại các nhà thuốc của toàn nước Pháp.

Xịt khoáng Avène vừa là sản phẩm chăm sóc da đặc biệt được dùng trong các trường hợp: Sau phẫu thuật/ trải qua các cuộc điều trị bằng lazer, da đỏ dễ bị viêm/dễ bị chứng dày sừng, da có vảy/ da nhạy cảm / dễ bị kích thích,… 

Đồng thời Avène cũng là sản phẩm chăm sóc da hàng ngày: dùng sau khi hoạt động ngoài trời để cung cấp độ ẩm bị thất thoát, sau khi ra ngoài nắng để hạ nhiệt độ, làm dịu da, dùng sau khi cạo râu, tẩy lông để làm mềm, tránh tình trạng da bị mẩn đỏ,…

* Thiết kế vỏ ngoài:

- Xịt khoáng Avène là chai nén khí, có thể bảo quản rất lâu, xịt dạng sương nhẹ. Dung tích chai lơn 300ml bạn có thể sử dụng liên tục hơn 3 tháng, giúp bạn tiết kiệm được một khoản kha khá đấy.

Đầu nắp chai dạng xịt, chỉ cần ấn nhẹ là vòi sẽ phun sương, diện tích phun rộng, lớp sương cũng khá nhẹ và mỏng bạn sẽ không có cảm giác như "tạt nước vào mặt" đâu.

* Kết cấu dung dịch:

-  Dung dịch dạng lỏng, nén khí, mùi thơm nhẹ dịu, thấm vào da rất nhanh, ngay tức thì cho bạn cảm giác mát lạnh, sảng khoái. Nếu đi ngoài nắng hoặc da đang nóng rát, mất nước chỉ cần một lớp xịt khoáng làn da bạn sẽ "hạ nhiệt" ngay.

CÔNG DỤNG VƯỢT TRỘI 

Thành phần:
 
- Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.
 
- Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.
 
- Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.
 
- Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí trơ không gây cháy và không gây tổn hại tầng ozon) Không chứa chất bảo quản paraben.
Xịt khoáng Avène mang đến cho bạn vô vàn những trải nghiệm chăm sóc làn da tuyệt vời như:

- Làm dịu và chống kích ứng da, tăng cường độ ẩm cho da, nuôi da luôn mềm mượt, căng bóng nhưng không tạo lớp dầu khiến da bóng nhờn

- Hạn chế những tác hại của mỹ phẩm, bảo vệ làn da khỏi bụi bẩn, không khí ô nhiễm bên ngoài

- Giúp giữ lớp trang điểm của bạn bền màu, lâu trôi hơn cũng như lên tone trang điểm tự nhiên hơn

- Giúp làn da luôn giữ vẻ tươi tắn, mềm mại dù là trong thời tiết máy lạnh hay hanh khô nắng nóng ngoài trời.

HƯỚNG DẪN SỬ DỤNG 

Cách sử dụng sản phẩm vô cùng đơn giản:

- Để cách mặt 20cm và xịt đều nhẹ nhàng lên mặt và cổ từ 2-3 lần xịt cho tới khi nước khoáng tạo giọt trên bề mặt

- Để mặt khô tự nhiên vài phút hoặc vỗ nhẹ cho khô nhanh hay dùng khăn giấy thấm nhẹ.

- Sau đó, bạn có thể dùng kem hoặc sữa dưỡng – Xịt khoáng có thể dùng vài lần trong một ngày …Để có thể cảm nhận sự thoải mái mềm mại trong suốt cả ngày nhờ một lớp sương khoáng mỏng khiến làn da của bạn luôn có đủ độ ẩm cần thiết.', N'Chai', CAST(170000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 211, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (461, N'iBeauty', NULL, 3, N'CSDCB', N'Chăm sóc da cơ bản ( 1 buổi )', N'cham soc da co ban ( 1 buoi )', N'- Làm sạch da, để hạn chế các vấn đề về da như mụn trứng cá, nám, tàn nhang…
Cân bằng độ ẩm trên da, kích thích sinh trưởng tế bào giúp trẻ hoá da, làm da trắng hồng, tươi tắn.
-CÁCH THỰC HIỆN( 30''): 
Bước 1: Tẩy trang và làm sạch da
Bước 2: Xông hơi, hút mụn
Bước 3: Rửa mặt masage
Bước 4: Massage cổ, vai, gáy
Bước 5: Thoa kem chống nắng
-KẾT QUẢ: Làm sạch da, loại bỏ tế bào chết giúp da thông thoáng, hô hấp tốt hơn, massage thư giãn, dưỡng da mịn màng.', N'Gói', CAST(200000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 101, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (462, N'iBeauty', NULL, 3, N'CSDTC', N'Chăm sóc da trứng cá ( 1 buổi )', N'cham soc da trung ca ( 1 buoi )', N'- Làm sạch da, để hạn chế các vấn đề về da như mụn trứng cá, nám, tàn nhang… Cân bằng độ ẩm trên da, kích thích sinh trưởng tế bào giúp trẻ hoá da, làm da trắng hồng, tươi tắn. Liệu pháp này còn mang lại cảm giác thư thái, hết mệt mỏi nhờ các thao tác massage. 
-CÁCH THỰC HIỆN:
Bước 1: Tẩy trang và làm sạch da       
Bước 2: Tẩy da chết
Bước 3: Xông hơi 
Bước 4: Lấy nhân mụn
Bước 5: Đắp mặt nạ trị mụn
Bước 6: Thoa nước cân bằng 
Bước 7: Thoa kem chống nắng
-KẾT QUẢ: Làm sạch nhân mụn trứng cá, mun viêm, mụn mủ, se khít lỗ chân lông, không để lại vết thâm, sẹo.', N'Gói', CAST(500000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 102, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (463, N'iBeauty', NULL, 3, N'LK', N'Lăn kim ( 1 buổi )', N'lan kim ( 1 buoi )', N'Lăn kim hay còn gọi là liệu pháp thay da vi điểm (Micro-needling Therapy), hay liệu pháp tăng sinh collagen (Collagen Induction Therapy), được đánh giá là tương lai của ngành thẩm mỹ nhờ khả năng làm đẹp toàn diện và tính an toàn gần như tuyệt đối của nó trong việc điều trị lão hóa và các khuyết điểm trên da như sẹo lõm, thâm nám, mụn, rạn da... và kể cả chứng hói đầu. 
CÁCH THỰC HIỆN: 
Bước 1: Mở đầu cho giai đoạn làm sạch sâu của liệu trình lăn kim 
Bước2: Xông hơi, hút nhờn (để tạo thuận lợi và đạt hiệu quả tối đa khi lăn kim) Bước3: lấy mụn, 
Bước 4: Ủ tê
Bước 5: Tiến hành lăn kim
Bước 6: Đắp mặt nạ chuyên sâu 
Bước 7: Thoa kem chống nắng', N'Gói', CAST(1500000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 102, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (464, N'iBeauty', NULL, 3, N'PDTC', N'Peel da trứng cá ( 1 buổi )', N'peel da trung ca ( 1 buoi )', N' - Trị mụn: hiệu quả cao nhất đối với các trường hợp mụn ẩn, mụn mủ, mụn viêm, mụn đầu đen, mụn.
 - Sáng da: lớp da chết được lấy đi, bong tróc, da bạn sẽ hình thanh da mới, mịn màng hơn, trắng sáng hơn.
 - Mờ sẹo thâm: Sau khi peel những vết sẹo thâm do mụn để lại sẽ mờ dần nếu như peel đúng cách và thực hiện đúng liệu trình mà bác sĩ da liễu chỉ định. 
 - Giảm nhờn: Sau khi peel da sẽ giảm được lượng dầu tiết ra, bã dầu nhờn nhiều là một trong những nguyên nhân gây ra mụn trứng cá.  
 - Thu nhỏ lỗ chân lông: làn da mới của bạn sẽ mịn màng hơn, lỗ chân lông được se khít lại 
CÁCH THỰC HIỆN: 
Bước 1: LÀM SẠCH DA
- Đây là bước đầu tiên và cũng là bước quan trọng trước khi thực hiện một phương pháp nào. Việc làm sạch da sẽ giúp bạn lấy đi các bụi bẩn và đồng thời làm sạch lớp trang điểm (nếu có). Người thực hiện Peel da cho bạn sẽ rửa sạch da mặt, massgae nhẹ nhàng giúp tăng tuần hoàn máu cho da, khiến bạn thoải mái hơn khi điều trị. 
Bước 2: LƯU LẠI HÌNH ẢNH ĐỂ THEO DÕI KẾT QUẢ
- Chụp hình da mặt các góc mặt: cận cảnh, góc trái, góc phải nhằm lưu lại hồ sơ bệnh án của mỗi bạn. Đây là bước quan trọng nhằm giúp theo dõi hiệu quả thay đổi của làn da sau mỗi lần điều trị, giúp Bác sĩ theo dõi được tình trạng da của bạn cũng như sau này bạn sẽ thấy được sự khác biệt sau mỗi lần điều trị. 
Bước 3: CHUẨN BỊ DỤNG CỤ ĐÃ TIỆT TRÙNG
 - Dụng cụ thực hiện Peel da cần phải được tiệt trùng. Đây là bước quan trọng bởi vì nếu như dụng cụ không được tiệt trùng sẽ dẫn đến việc gián tiếp đưa vi khuẩn và bụi bẩn lên làn da của bạn khiến quá trình điều trị dễ xảy ra những biến chứng không mong muốn.
Bước 4: THOA BEPANTHEN LÊN VÙNG DA NHẠY CẢM 
 - Phương pháp Peel da là dùng acid có các nồng độ khác nhau để thoa lên da. Vì vậy, tại các vùng nhạy cảm dễ kích ứng như khóe mắt, khóe miệng, khóe mũi... cần được thoa Bepanthen để bảo vệ làn da của bạn.
 Bước 5: THOA SẢN PHẨM PEEL TRỨNG CÁ LÊN DA 
- Đây là bước quan trọng của quá trình Peel da giúp làn da của bạn sẽ nhanh tạm biệt những khuyết điểm.
Bước 6: TRUNG HOÀ DA 
- Trung hòa da giúp cho làn da của bạn đỡ cảm gió chịu khi Peel.
Bước 7: LÀM DỊU DA 
- Sau khi Peel da, làn da sẽ hơi rát và châm chích, đây là tác dụng của acid tác động lên da. Việc làm dịu da sẽ giúp bạn đỡ cảm giác rát hay khó chịu đồng thời bảo vệ làn da của bạn một cách nhanh nhất.
Bước 8: VỆ SINH DA SAU PEEL 
- Đây là bước quan trọng giúp làm sạch da sau khi Peel để da bạn được sạch sẽ, thông thoáng hơn.
 Bước 9: THOA DƯỠNG ẨM HA 
- Sau khi Peel da, làn da sẽ có cảm giác hơi khô vì tác động của hoạt chất Peel. Dưỡng ẩm là bước cần thiết cho da, giúp da được cân bằng không bị kích ứng. 
Bước 10: THOA KEM CHỐNG NẮNG 
- Nếu như bạn thưc hiện Peel da vào ban ngày thì sau khi Peel bạn sẽ được thoa kem chống nắng. Thoa kem chống nắng giúp bảo vệ làn da tránh xa những tác hại của ánh nắng mặt trời, đồng thời khiến da không bị kích ứng.', N'Gói', CAST(1000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 102, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (465, N'iBeauty', NULL, 3, N'DDC', N'Điện di C ( 1 buổi )', N'dien di c ( 1 buoi )', N'- Điện di Collagen là phương pháp đưa hợp chất gồm các chuỗi các axit amin (Peptide) vào da thông qua xung điện, mang đến tác dụng kích thích tái tạo, sản sinh collagen, tăng cường cấu trúc da, hạn chế các dấu hiệu của lão hóa giúp da căng tràn, tươi trẻ. Đồng thời phương pháp này cũng bổ sung thêm độ ẩm, giúp nuôi dưỡng làn da mịn màng, mềm mượt.  
 -CÁCH THỰC HIỆN: 
Bước 1: Tẩy trang và làm sạch da
Bước 2: Xông hơi
Bước 3: Rửa mặt 
Bước 4: Massage mặt
Bước 5: Điện di tinh chất Vitamin C 
Bước 6: massage nhẹ nhàng vai, cổ, gáy
Bước 7: Thoa kem dưỡng, kem chống nắng
-Kết quả: Chống lão hóa, ngăn ngừa tác động của ánh nắng mặt trời, ngăn ngừa sự hình thành sắc tố da Melanin, dưỡng da trắng sáng, mịn màng, tăng sinh collagen tự nhiên', N'Gói', CAST(600000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 103, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (466, N'iBeauty', NULL, 3, N'TMTH', N'Tiêm Meso trẻ hóa ( 1 buổi )', N'tiem meso tre hoa ( 1 buoi )', N'Liệu pháp tiêm Mesotherapy hay còn gọi là Meso, là một thủ thuật làm đẹp không xâm lấn, sử dụng tiêm các loại vitamin, axit hyaluronic, enzyme, kích thích tố và chất chiết xuất từ thực vật giúp chống lão hóa làn da và săn chắc da. Cũng như loại bỏ chất béo dư thừa tùy vào vùng da được tiêm và kết hợp nhiều hoạt chất và tiêm vào da của bạn nhằm nuôi dưỡng chuyên sâu và mang lại hiệu quả cao nhất.
CÁCH THỰC HIỆN: 
- Bước 1: Tư vấn tổng quát về liệu trình siêu cấy tế bào tươi cho từng khách hàng.
Bác sĩ giàu kinh nghiệm tư vấn và đưa ra phác đồ điều trị phù hợp.
- Bước 2: Tiến hành làm sạch vùng da mặt cần cấp Collagen
Sử dụng thiết bị y tế vệ sinh, sát trùng vùng da mặt theo tiêu chuẩn của Bộ Y tế.
- Bước 3: Đẩy tinh chất Collagen tế bào tươi
Sử dụng thiết bị chuyên dụng cấy truyền hiện đại trực tiếp đưa tinh chất lên vùng da mặt.
- Bước 4: Đắp mặt nạ sau siêu cấy Collagen tế bào tươi
Làm sạch da mặt, tiến hành đắp mặt nạ giàu dưỡng chất để đạt được hiệu quả làm trắng da cao nhất.', N'Gói', CAST(3000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 103, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (467, N'iBeauty', NULL, 3, N'THDBL', N'Trẻ hóa da bằng Laser ( 1 buổi )', N'tre hoa da bang laser ( 1 buoi )', N'Trẻ hóa da bằng laser lấy đi lớp thượng bì da ra khỏi làn da của bạn. Những tế bào da mới sẽ được tự kích hoạt làm lành theo cơ chế tự nhiên của cơ thể giúp cho làn da trẻ trung hơn, bề mặt da căng bóng và sáng đều màu hơn.
CÁCH THỰC HIỆN:
Bước 1: Thăm khám và tư vấn 
Bước 2: Vệ sinh da mặt
Bước 3: Tẩy tế bào chết 
Bước 4: Tiến hành trẻ hoá bằng laser 
Bước 5: Thoa kem dưỡng và chống nắng.', N'Gói', CAST(600000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 103, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (468, N'iBeauty', NULL, 3, N'LIPL', N'Trẻ hóa da bằng Laser kết hợp ánh sáng IPL ( 1 buổi )', N'tre hoa da bang laser ket hop anh sang ipl ( 1 buoi )', N'Trẻ hoá da bằng Laser kết hợp ánh sáng IPL giúp thúc đẩy sản xuất collagen và của cơ thể, nhờ đó qua thời gian những biểu hiện của tuổi tác như: nếp nhăn, vết chân chim sẽ dần được cải thiện giúp da mịn màng và trẻ trung hơn.
CÁCH THỰC HIỆN:
Bước 1: Tư vấn và thăm khám 
Bước 2: Điều trị da bằng IPL cùng với thiết bị qua sự điều trị của bác sĩ chuyên khoa
Bước 3: Chăm sóc và theo dõi sau điều trị trẻ hoá da IPL 
Bước 4: Đánh giá kết quả sau trẻ hoá cùng bác sĩ điều trị. ', N'Gói', CAST(800000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 103, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (469, N'iBeauty', NULL, 3, N'PRM', N'Peel rám má ( 1 buổi )', N'peel ram ma ( 1 buoi )', N'Với việc khiến cho các lớp biểu bì bên ngoài bong tróc, tinh chất còn góp phần kích thích cơ thể tự làm lành vết thương, tái tạo mô mới giúp da săn chắc, mịn màng hơn. Phương pháp peel mang đến tác động kép giúp da loại bỏ nám mảng, vừa giúp da săn chắc, mịn màng giảm các nếp nhăn và sẹo.
CÁCH THỰC HIỆN: 
Bước 1: LÀM SẠCH DA
- Đây là bước đầu tiên và cũng là bước quan trọng trước khi thực hiện một phương pháp nào. Việc làm sạch da sẽ giúp bạn lấy đi các bụi bẩn và đồng thời làm sạch lớp trang điểm (nếu có). Người thực hiện Peel da cho bạn sẽ rửa sạch da mặt, massgae nhẹ nhàng giúp tăng tuần hoàn máu cho da, khiến bạn thoải mái hơn khi điều trị. 
Bước 2: LƯU LẠI HÌNH ẢNH ĐỂ THEO DÕI KẾT QUẢ
- Chụp hình da mặt các góc mặt: cận cảnh, góc trái, góc phải nhằm lưu lại hồ sơ bệnh án của mỗi bạn. Đây là bước quan trọng nhằm giúp theo dõi hiệu quả thay đổi của làn da sau mỗi lần điều trị, giúp Bác sĩ theo dõi được tình trạng da của bạn cũng như sau này bạn sẽ thấy được sự khác biệt sau mỗi lần điều trị. 
Bước 3: CHUẨN BỊ DỤNG CỤ ĐÃ TIỆT TRÙNG
 - Dụng cụ thực hiện Peel da cần phải được tiệt trùng. Đây là bước quan trọng bởi vì nếu như dụng cụ không được tiệt trùng sẽ dẫn đến việc gián tiếp đưa vi khuẩn và bụi bẩn lên làn da của bạn khiến quá trình điều trị dễ xảy ra những biến chứng không mong muốn.
Bước 4: THOA BEPANTHEN LÊN VÙNG DA NHẠY CẢM 
 - Phương pháp Peel da là dùng acid có các nồng độ khác nhau để thoa lên da. Vì vậy, tại các vùng nhạy cảm dễ kích ứng như khóe mắt, khóe miệng, khóe mũi... cần được thoa Bepanthen để bảo vệ làn da của bạn.
 Bước 5: THOA SẢN PHẨM PEEL RÁM MÁ LÊN DA 
- Đây là bước quan trọng của quá trình Peel da giúp làn da của bạn sẽ nhanh tạm biệt những khuyết điểm.
Bước 6: TRUNG HOÀ DA 
- Trung hòa da giúp cho làn da của bạn đỡ cảm gió chịu khi Peel.
Bước 7: LÀM DỊU DA 
- Sau khi Peel da, làn da sẽ hơi rát và châm chích, đây là tác dụng của acid tác động lên da. Việc làm dịu da sẽ giúp bạn đỡ cảm giác rát hay khó chịu đồng thời bảo vệ làn da của bạn một cách nhanh nhất.
Bước 8: VỆ SINH DA SAU PEEL 
- Đây là bước quan trọng giúp làm sạch da sau khi Peel để da bạn được sạch sẽ, thông thoáng hơn.
 Bước 9: THOA DƯỠNG ẨM HA 
- Sau khi Peel da, làn da sẽ có cảm giác hơi khô vì tác động của hoạt chất Peel. Dưỡng ẩm là bước cần thiết cho da, giúp da được cân bằng không bị kích ứng. 
Bước 10: THOA KEM CHỐNG NẮNG 
- Nếu như bạn thưc hiện Peel da vào ban ngày thì sau khi Peel bạn sẽ được thoa kem chống nắng. Thoa kem chống nắng giúp bảo vệ làn da tránh xa những tác hại của ánh nắng mặt trời, đồng thời khiến da không bị kích ứng.', N'Gói', CAST(1000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 104, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (470, N'iBeauty', NULL, 3, N'PTS', N'Peel trắng sáng ( 1 buổi )', N'peel trang sang ( 1 buoi )', N'Peel da giúp thúc đẩy sự tái tạo của các tế bào và tăng sinh Collagen, mang lại một làn da khỏe mạnh, tăng sự hấp thu khi sử dụng kết hợp với các sản phẩm trong điều trị. Thứ hai, Peel da giúp giảm tình trạng tắt nghẽn, giảm tiết bã nhờn, làm sạch sâu và loại bỏ bụi bẩn tận sâu trong lỗ chân lông
CÁCH THỰC HIỆN: 
Bước 1: LÀM SẠCH DA
- Đây là bước đầu tiên và cũng là bước quan trọng trước khi thực hiện một phương pháp nào. Việc làm sạch da sẽ giúp bạn lấy đi các bụi bẩn và đồng thời làm sạch lớp trang điểm (nếu có). Người thực hiện Peel da cho bạn sẽ rửa sạch da mặt, massgae nhẹ nhàng giúp tăng tuần hoàn máu cho da, khiến bạn thoải mái hơn khi điều trị. 
Bước 2: LƯU LẠI HÌNH ẢNH ĐỂ THEO DÕI KẾT QUẢ
- Chụp hình da mặt các góc mặt: cận cảnh, góc trái, góc phải nhằm lưu lại hồ sơ bệnh án của mỗi bạn. Đây là bước quan trọng nhằm giúp theo dõi hiệu quả thay đổi của làn da sau mỗi lần điều trị, giúp Bác sĩ theo dõi được tình trạng da của bạn cũng như sau này bạn sẽ thấy được sự khác biệt sau mỗi lần điều trị. 
Bước 3: CHUẨN BỊ DỤNG CỤ ĐÃ TIỆT TRÙNG
 - Dụng cụ thực hiện Peel da cần phải được tiệt trùng. Đây là bước quan trọng bởi vì nếu như dụng cụ không được tiệt trùng sẽ dẫn đến việc gián tiếp đưa vi khuẩn và bụi bẩn lên làn da của bạn khiến quá trình điều trị dễ xảy ra những biến chứng không mong muốn.
Bước 4: THOA BEPANTHEN LÊN VÙNG DA NHẠY CẢM 
 - Phương pháp Peel da là dùng acid có các nồng độ khác nhau để thoa lên da. Vì vậy, tại các vùng nhạy cảm dễ kích ứng như khóe mắt, khóe miệng, khóe mũi... cần được thoa Bepanthen để bảo vệ làn da của bạn.
 Bước 5: THOA SẢN PHẨM PEEL TRẮNG SÁNG LÊN DA 
- Đây là bước quan trọng của quá trình Peel da giúp làn da của bạn sẽ nhanh tạm biệt những khuyết điểm.
Bước 6: TRUNG HOÀ DA 
- Trung hòa da giúp cho làn da của bạn đỡ cảm gió chịu khi Peel.
Bước 7: LÀM DỊU DA 
- Sau khi Peel da, làn da sẽ hơi rát và châm chích, đây là tác dụng của acid tác động lên da. Việc làm dịu da sẽ giúp bạn đỡ cảm giác rát hay khó chịu đồng thời bảo vệ làn da của bạn một cách nhanh nhất.
Bước 8: VỆ SINH DA SAU PEEL 
- Đây là bước quan trọng giúp làm sạch da sau khi Peel để da bạn được sạch sẽ, thông thoáng hơn.
 Bước 9: THOA DƯỠNG ẨM HA 
- Sau khi Peel da, làn da sẽ có cảm giác hơi khô vì tác động của hoạt chất Peel. Dưỡng ẩm là bước cần thiết cho da, giúp da được cân bằng không bị kích ứng. 
Bước 10: THOA KEM CHỐNG NẮNG 
- Nếu như bạn thưc hiện Peel da vào ban ngày thì sau khi Peel bạn sẽ được thoa kem chống nắng. Thoa kem chống nắng giúp bảo vệ làn da tránh xa những tác hại của ánh nắng mặt trời, đồng thời khiến da không bị kích ứng.', N'Gói', CAST(1000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 104, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (471, N'iBeauty', NULL, 3, N'TMNTN', N'Tiêm Meso nám, tàn nhang ( 1 buổi )', N'tiem meso nam, tan nhang ( 1 buoi )', N'Hỗn hợp dưỡng trắng thường kết hợp thành phần làm trắng, chống nám, tàn nhang, vừa chứa glutathione có tác dụng thải độc tố, vitamin C nồng độ cao giúp chống ô-xy hóa, đồng thời có Transamin có tác dụng trị nám. Các hoạt chất có hiệu quả kích thích sản sinh collagen và tế bào, giúp ức chế 50% sự sản sinh melanin, duy trì hiệu quả trắng da lâu dài.
CÁCH THỰC HIỆN:
Bước 1: Thăm khám, soi da để xác định tình trạng nám, tàn nhang trên làn da.
Bước 2: Làm sạch da, loại bỏ bụi bẩn và các tạp chất ô nhiễm tích tụ trong da
Bước 3: Thanh tẩy tế bào chết trên bề mặt da giúp lấy đi lớp da sần sùi, tế bào chết trên da
Bước 4: Xông hơi +hút dầu, loại bỏ chất nhờn dư thừa.
Bước 5: Ủ tê 30 phút
Bước 6: Tiến hành tiêm Meso vào từng điểm trên da, tuỳ theo tình trạng da của khách hàng.
Bước 7: Hướng dẫn khách hàng chăm sóc da sau khi tiêm Meso.
', N'Gói', CAST(3000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 104, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (472, N'iBeauty', NULL, 3, N'TMTS', N'Tiêm Meso trắng sáng ( 1 buổi )', N'tiem meso trang sang ( 1 buoi )', N'Đưa axit hyaluronic trực tiếp vào mesoderm (lớp giữa của da). Điều này nuôi dưỡng và trẻ hóa làn da bằng cách thúc đẩy sản xuất collagen và elastin và kích thích sự trao đổi chất của làn da.
CÁCH THỰC HIỆN:
Bước 1: Thăm khám và tư vấn. Chuyên gia da liễu trực tiếp thăm khám và đưa ra phác đồ
Bước 2: Tẩy trang, Làm sạch da mặt. Tẩy trang và làm sạch sâu bụi bẩn, bã nhờn, tế bào chết
Bước 3: Tiến hành trẻ hóa da  kết hợp với máy công nghệ cao. Đưa trực tiếp các dưỡng chất quý giá vào sâu bề mặt da, massage nhẹ nhàng
Bước 4: Đắp mặt nạ và sử dụng kem chống nắng', N'Gói', CAST(3000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 104, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (473, N'iBeauty', NULL, 3, N'TLB', N'Triệt lông bi (Liệu trình)', N'triet long bi (lieu trinh)', N'Lông vùng kín có tác dụng bảo vệ cơ thể. Tuy nhiên, trong điều kiện khí hậu nhiệt đới ẩm tại Việt Nam, lông vùng kín rậm rạp, nóng và ẩm ướt dễ trở thành nguyên nhân cho sự phát triển của các mầm bệnh viêm nhiễm phụ khoa. Do đó, nhiều chị em đã nhận ra tác dụng của triệt lôngvùng kín ở chị em là giúp cho âm hộ luôn sạch sẽ, giảm thiểu viêm nhiễm, loại bỏ được các bệnh thường gặp như: viêm ngoài âm đạo do nấm, bệnh về âm đạo và các loại bệnh lây qua đường tình dục khác…
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(1500000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (474, N'iBeauty', NULL, 3, N'TLC', N'Triệt lông chân (Liệu trình)', N'triet long chan (lieu trinh)', N'Đi sâu tới tầng trung bì để ức chế con đường dinh dưỡng của nang lông khiến sợi lông rụng một cách tự nhiên. Cơ chế triệt lông thông minh không làm tổn thương các vùng da xung quanh, giúp bạn cảm thấy hoàn toàn dễ chịu trong quá trình triệt lông
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(2500000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (475, N'iBeauty', NULL, 3, N'TLM', N'Triệt lông mép (Liệu trình)', N'triet long mep (lieu trinh)', N'Không chỉ loại bỏ được lông, vùng da mép còn được loại bỏ các các hắc sắc tố và tình trạng da sần sùi với mặt nạ protein có tác dụng làm trắng, dịu làn da.
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(800000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (476, N'iBeauty', NULL, 3, N'TLN', N'Triệt lông nách (Liệu trình)', N'triet long nach (lieu trinh)', N'- Lông nách sẽ không bị mọc lại: Khi tiến hành triệt lông nách bằng ánh sáng lỗ chân lông sẽ được triệt và lông nách của bạn sẽ mất đi hoàn toàn, sẽ không phải lo lắng lông nách mọc lại. 
- An toàn cho da: với phương pháp này da bạn sẽ được bảo vệ, không giống như các phương pháp thông thường, da bạn sẽ không có hiện tượng bị thâm đen, sưng tấy hay nổi mụn đỏ. 
- Se khít lỗ chân lông: trong quá trình triệt lông nách ngoài tác dụng làm sạch lông còn có tác dụng se khít lỗ chân lông điều đó giúp hạn chế tiết mồ hôi, giúp vùng da dưới nách của bạn luôn khô thoáng.
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(800000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (477, N'iBeauty', NULL, 3, N'TLT', N'Triệt lông tay (Liệu trình)', N'triet long tay (lieu trinh)', N'Có khả năng loại bỏ tới 95% lông, nguồn nuôi dưỡng nang lông bị tiêu diệt, ngăn chặn lông mọc lại nhờ bước sóng 810 nm và công suất đỉnh 450W xâm nhập vào tận sâu trong lớp trung bì của tế bào da. Công nghệ này đã được FDA kiểm duyệt và chứng nhận an toàn, hiệu quả cho người dùng. 
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(2000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (478, N'iBeauty', NULL, 3, N'TLTT', N'Triệt lông toàn thân (Liệu trình)', N'triet long toan than (lieu trinh)', N'Được các chuyên gia FDA chứng nhận về độ an toàn, không làm tổn thương da, không gây cảm giác khó chịu. Qúa trình triệt lông nhẹ nhàng, êm ái ngay cả khi bạn sở hữu làn da nhạy cảm. Hơn thế nữa, trước khi triệt lông, chuyên viên sẽ tiến hành thoa gel bôi tê mát lạnh để bảo vệ da cho bạn cảm thấy thoải mái, dễ chịu trong suốt liệu trình.
CÁCH THỰC HIỆN: 
Bước 1: Thăm khám tư vấn, kiểm tra tình trạng để biết số lần điều trị và hiệu quả triệt lông.
Bước 2: Làm sạch vùng da cần triệt.
Bước 3: Nếu vùng lông quá dài và rậm thì cần cắt tỉa bớt để tăng hiệu quả tiếp xúc với các bước sóng.
Bước 4: Bôi gel lạnh để làm dịu da vùng chân lông giúp quá trình triệt lông thuận lợi và nhẹ nhàng.
Bước 5: Điều chỉnh tần số phù hợp để các tia ánh sáng chiếu đến vùng lông cần triệt vĩnh viễn. Các tia ánh sáng khi tiếp xúc với nang lông, các sắc tố ở nang lông sẽ tiếp thu ánh sáng, chuyển hoá thành nhiệt năng phá huỷ vĩnh viễn hàng trăm nang lông. Kể cả những nang lông nằm sâu dưới da. 
Bước 6: Bôi kem dưỡng da theo chỉ định lên vùng da sau khi điều trị.', N'Gói', CAST(7000000 AS Decimal(18, 0)), 20, N'1572541200', N'1573232399', 2, 0, 105, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (479, N'NT_40_LNQ', NULL, 2, N'Mi5%', N'Minoxidil 5% Bailleul', N'minoxidil 5% bailleul', N'THÀNH PHẦN: 
 
- Minoxidil: 5g/100ml
- Tá dược: ethanol 96%, propylene glycol, nước tinh khiết

CHỈ ĐỊNH:
 
Chứng rụng tóc ở mức độ trung bình (hói đầu do nguyên nhân tăng tiết androgen) ở người lớn nam

Lưu ý: thuốc này không dùng cho phụ nữ do hiệu quả không cao và tần suất xuất hiện quan trọng của chứng rụng lông (37% các trường hợp) xảy ra ở cách xa vùng bôi thuốc.

LIỀU DÙNG, CÁCH DÙNG, ĐƯỜNG DÙNG:

Thuốc này chỉ dành cho người lớn
- Đường dùng: dùng ngoài da
- Liều dùng: Thoa thuốc 2 lần mỗi ngày vời liều 1 ml mỗi lần lên vùng da đầu lấy điểm xuất phát là trung tâm vùng da cần điều trị. Phải tuân thủ liều dùng này bất kể diện tích vùng da ấy. Tổng liều hàng ngày không vượt quá 2ml

- Cách dùng thuốc:
+ Phun thuốc trực tiếp lên da đầu, không qua ống xịt: áp dụng cho vùng da rộng.
a. Mở nắp đậy lọ thuốc
b. Hướng bơm vào trung tâm vùng da đầu cần điều trị, ấn bơm 1 lần và dùng đầu ngón tay thoa thuốc khắp vùng cần điều trị. Lặp lại thao tác 6 lần là đủ liều 1 ml (tức xịt 7 lần tất cả). Tránh hít phải hơi xịt thuốc.
c. Đậy nắp lại sau khi sử dụng

+ Phun thuốc qua ống xịt: áp dụng cho các vùng da nhỏ hay vùng da có tóc che phủ
a. Mở nắp đậy lọ thuốc
b. Tháo đầu bịt trên bơm. Gắn đầu bịt có ống xịt vào và ấn thật chăt.
cc. Hướng bơm vào trung tâm của bề mặt vùng da đầu cần được điều trị, ăn bơm 1 lần và dùng đầu ngón tay thoa thuốc khắp vùng da cần điều trị. Lặp lại thao tác 6 lần là đủ liều 1 ml (tức xịt 7 lần tất cả). Tránh hít phải hơi xịt thuốc.
d. Tháo đầu ống xịt ra. Đậy nắp lại sau khi sử dụng.

- Rửa tay kỹ trước và sau khi bôi thuốc.
- Chỉ thoa thuốc khi tos và da đầu hoàn toàn khô ráo.
- Không được sử dụng thuốc cho bất kỳ phần nào khác của cơ thể ngoài da đầu.
- Cần kéo dài thời gian  điều trị đến 2 tháng với 2 lần điều trị mỗi ngày trước khi thấy rõ có kích thích mọc tóc.
', N'Lọ', CAST(610000 AS Decimal(18, 0)), NULL, N'1572541200', N'1573232399', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (480, N'NT_40_LNQ', NULL, 2, N'MO', N'Momate', N'momate', N'Chỉ định:
Điều trị các biểu hiện viêm và ngứa của bệnh vẩy nến (ngoại trừ vẩy nến dạng mảng lan rộng) và viêm da dị ứng.
Liều lượng - Cách dùng
Người lớn, bao gồm cả bệnh nhân cao tuổi và trẻ em: 

Bôi một lớp mỏng kem Momate lên vùng bị bệnh mỗi ngày một lần. Việc sử dụng corticosteroid tại chỗ ở trẻ em hoặc trên mặt nên được giới hạn ở lượng nhỏ nhất phù hợp với phác đồ điều trị hiệu quả và thời gian điều trị không nên quá 5 ngày.
Chống chỉ định:
Momate chống chỉ định đối với bệnh trứng cá đỏ trên mặt, trứng cá thông thường, teo da, viêm da quanh miệng, ngứa quanh hậu môn và bộ phận sinh dục, phát ban do tã, nhiễm vi khuẩn (ví dụ như bệnh chốc lở, viêm mủ da), virus (ví dụ như bệnh mụn rộp herpes, zona, thủy đậu, mụn cóc thông thường, mụn cóc bộ phận sinh dục, u mềm lây), ký sinh trùng và nấm (ví dụ như nấm Candida hoặc nấm da), thủy đậu, bệnh lao, giang mai hay phản ứng sau tiêm chủng. 

Không nên dùng Momate trên các vết thương hay trên da bị lở loét. Không nên dùng Momate ở những bệnh nhân nhạy cảm với mometason furoat hoặc các corticosteroid khác hoặc với bất kỳ thành phần nào của thuốc.
Cách dùng Thuốc Momate
Mỗi loại thuốc, dược phẩm sản xuất theo dạng khác nhau và có cách dùng khác nhau theo đường dùng. Các đường dùng thuốc thông thường phân theo dạng thuốc là: thuốc uống, thuốc tiêm, thuốc dùng ngoài và thuốc đặt. Đọc kỹ hướng dẫn cách dùng Thuốc Momate ghi trên từ hướng dẫn sử dụng thuốc, không tự ý sử dụng thuốc theo đường dùng khác không ghi trên tờ hướng dẫn sử dụng Thuốc Momate.', N'Tuýp', CAST(65000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (481, N'NT_40_LNQ', NULL, 2, N'Mỡ5%', N'Mỡ salicylic 5%', N'mo salicylic 5%', N'Thành phần:
            Acid Salicylic       0,25g
            Tá dược vđ   5g
Chỉ định:
-         Làm bạt sừng, bong vẩy, chữa vẩy nến, nấm.
Cách dùng và Liều dùng:
-         Rửa sạch vùng da bị bệnh, lau khô.
-         Bôi thuốc ngày 2- 4lần.
Chống chỉ định, thận trọng:
-         Mẫn cảm với một trong các thành phần của thuốc.
-         Tránh bôi lên mắt.
Tác dụng không mong muốn:
-         Có thể gây kích ứng hoặc dị ứng ngoài da.. ..
-         Khi thấy các hiện tượng khác lạ phải ngừng sử dụng thuốc.
Ghi chú:
 “ Cần thông báo cho bác sỹ những tác dụng không mong muốn gặp phải khi sử dụng thuốc”.
Tương tác thuốc:
-         Chưa thấy có tương tác nào xảy ra khi sử dụng đồng thời với thuốc khác.', N'Tuýp', CAST(60000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (482, N'NT_40_LNQ', NULL, 2, N'PIG', N'Pirolam gel', N'pirolam gel', N'Chỉ định :
Ðiều trị hăm kẽ ngón chân do nấm da.
Dạng chế phẩm này không được chỉ định cho các vùng nếp gấp khác.
Liều lượng - cách dùng:
Rắc (bột thuốc), bôi thuốc (gel , kem...) lên vùng bị nấm 1 lần mỗi ngày. 

Thời gian điều trị khoảng 4 tuần.
Chống chỉ định :
Tiền sử dị ứng với một trong các thành phần của thuốc.
Liều lượng:
Người lớn, trẻ em > 10 tuổi: xoa nhẹ lên vùng da bệnh, để khô tự nhiên, 2 lần/ngày đến khi triệu chứng hết hẳn.
Tránh tái phát: tiếp tục thêm 10 ngày.
Cách dùng:
Bôi ngoài da.', N'Tuýp', CAST(107000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (483, N'NT_40_LNQ', NULL, 2, N'P15g', N'Potriolac Gel 15g', N'potriolac gel 15g', N'Liều lượng - Cách dùng
Người lớn:

Bôi thuốc thành một lớp mỏng vào vùng da bị bệnh, xoa nhẹ nhàng để thuốc ngấm hết.

Bôi thuốc mỡ 1-2 lần /ngày

Không nên dùng quá 100g thuốc mỡ / tuần và không quá 4 tuần điều trị.

Trẻ em: 

Bôi thuốc mỡ 1-2 lần / ngày.

Liều dùng tối đa trong 1 tuần cho trẻ 6-12 tuổi là 50g. cho trẻ em 12 tuổi 75g thuốc mỡ.
Chống chỉ định:
Mẫn cảm với bất cứ thành phần nào của thuốc.

Rối loạn chuyển hóa calci.

Bệnh nhân tăng calci huyết hoặc có dấu hiệu nhiễm độc Vitamin D.

Bệnh nhân có bệnh lý gan, thận nặng.
', N'Tuýp', CAST(200000 AS Decimal(18, 0)), 5, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (484, N'NT_40_LNQ', NULL, 2, N'Salic ', N'Salicylic 5%', N'salicylic 5%', N'Thành phần: Salicylic acid
Chỉ định:
Làm bạt sừng, bong vảy. Chữa vảy nến, nấm
Dạng bào chế:Thuốc mỡ
Đóng gói:Hộp 1 tuýp 15g thuốc mỡ', N'Tuýp', CAST(60000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (485, N'NT_40_LNQ', NULL, 2, N'Skin', N'Skinrocin', N'skinrocin', N'Thành phần: Mỗi tuýp 5 g chứa: Mupirocin 100mg
Chỉ định: 
- Viêm da có mủ, chốc lở, vết thương hở nhiễm khuẩn, đinh nhọt, viêm da nhiễm khuẩn.
- Bỏng, viêm mô tế bào, loét tĩnh mạch rỉ dịch.
- Dự phòng nhiễm khuẩn sau phẫu thuật da.
Thường đóng gói: Hộp 1 tuýp 5g', N'Tuýp', CAST(37000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (486, N'NT_40_LNQ', NULL, 2, N'Sov15', N'Sovalimus 0,1%, 15g', N'sovalimus 0,1%, 15g', N'Thành phần: Tacrolimus 100mg/100g
Chỉ định: 
Thuốc mỡ 0,03% được chỉ định cho điều trị ngắn hạn và dài hạn chàm thể tạng ở người lớn và trẻ em từ 2 tuổi trở lên. 
Thuốc mỡ 0,1% được chỉ định cho điều trị ngắn hạn và dài hạn chàm thể tạng ở người lớn.
Thường đóng gói: Hộp 1 tuýp 15g', N'Tuýp', CAST(377000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (487, N'NT_40_LNQ', NULL, 2, N'Sov', N'Sovasol 100ml', N'sovasol 100ml', N'Thành phần: Clotrimazol 0,5 mg/ml
Chỉ định: Ðiều trị tại chỗ tinea pedis (nấm da chân, nấm kẽ), tinea cruris (nấm bẹn), tinea corporis (nấm da thân, lác đồng tiền) do T. rubrum, T. mentagrophytes, E. floccosum và M. canis; bệnh Candida do C. albicans và tinea versicolor (lang ben) do M. furfur. Thuốc cũng có tác dụng trong một số trường hợp nhiễm trùng da không do vi nấm như erythrasma do Corynebacterium minutissimum.
Thường đóng gói: Hộp 1 chai 125ml', N'Chai', CAST(98000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (488, N'NT_40_LNQ', NULL, 2, N'Supi', N'Supirocin', N'supirocin', N'Thành phần: Mupirocin 2% (KL/KL)
Chỉ định: 
- Viêm da có mủ, chốc lở, vết thương hở nhiễm khuẩn, đinh nhọt, viêm da nhiễm khuẩn.
- Bỏng, viêm mô tế bào, loét tĩnh mạch rỉ dịch.
- Dự phòng nhiễm khuẩn sau phẫu thuật da.
Thường đóng gói: Tuýp 5g', N'Tuýp', CAST(40000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (489, N'NT_40_LNQ', NULL, 2, N'TY10gam', N'Tyrosur gel 10 gam', N'tyrosur gel 10 gam', N'Chỉ định:
Tyrosur gel được dùng điều trị, phòng ngừa nhiễm khuẩn đối với các vết thương nhỏ ở bề mặt da đang hoặc có nguy cơ bội nhiễm vi khuẩn nhạy cảm với Tyrothricin. Một số loại vết thương cụ thể như:
Vết cắt, vết rách da nhỏ ít chảy máu.
Vết bỏng.
Phồng hoặc trầy xước da.
Nốt phát ban bội nhiễm.
Viêm da, lỗ chân lông có mủ.
Vết chỉ khâu hoặc nốt xăm thẩm mỹ.

Liều lượng - Cách dùng
Chỉ dùng ngoài da.

Liều thông thường: Bôi thuốc mỗi lần với lượng vừa đủ, 2 - 3 lần mỗi ngày.
Bôi thuốc với lượng vừa đủ bao phủ vùng da cần điều trị vào buổi sáng, buổi trưa và buổi tối. Trường hợp vết thương nhỏ hoặc bị viêm da trên phần hở ra của cơ thể, thông thường không cần băng. Trường hợp vết thương rộng hoặc chảy nhiều nước, nên băng lại, thay băng 1 - 2 lần mỗi ngày hoặc theo lời khuyên của Bác sỹ.

Thời gian điều trị tùy thuộc vào biểu hiện lâm sàng. Trong trường hợp bệnh không có cải thiện sau một tuần dùng thuốc, nên đánh giá lại việc điều trị. Thực hiện việc xác định các tác nhân gây bệnh.', N'Tuýp', CAST(58000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (490, N'NT_40_LNQ', NULL, 2, N'Xam ', N'Xamiol Gel 15g', N'xamiol gel 15g', N'Dạng bào chế:Gel bôi da đầu
Đóng gói: Hộp 1 lọ 15g; 30g; 60g
Thành phần: Calcipotriol hydrate; Betamethasone dipropionate
Chỉ định: Điều trị tại chỗ vẩy nến da đầu.', N'Lọ', CAST(270000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 301, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (491, N'NT_40_LNQ', NULL, 2, N'Ce125', N'Cefdinir 125 - HV (Hộp 10 gói)', N'cefdinir 125 - hv (hop 10 goi)', N'Thành phần: Cefdinir 125 mg
Chỉ định: Điều trị các nhiễm khuẩn nhẹ đến vừa do các chủng vi khuẩn nhạy cảm cho trẻ em trong các trường hợp sau: 
– Viêm tai giữa nhiễm khuẩn cấp. 
– Viêm xoang hàm cấp. 
– Viêm họng, viêm amidan. 
– Nhiễm khuẩn da và cấu trúc da không biến chứng.
Thường đóng gói: Hộp 10 gói', N'Gói', CAST(4500 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (492, N'NT_40_LNQ', NULL, 2, N'Ce300', N'Cefdinir 300mg - US', N'cefdinir 300mg - us', N'Thành phần: Cefdinir 125 mg
Chỉ định: Điều trị các nhiễm khuẩn nhẹ đến vừa do các chủng vi khuẩn nhạy cảm cho trẻ em trong các trường hợp sau: 
– Viêm tai giữa nhiễm khuẩn cấp. 
– Viêm xoang hàm cấp. 
– Viêm họng, viêm amidan. 
– Nhiễm khuẩn da và cấu trúc da không biến chứng.
Thường đóng gói: Hộp 2 vỉ, 10 vỉ, 50 vỉ x 10 viên; Chai 100 viên, chai 200 viên, chai 500 viên', N'Viên', CAST(15000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (493, N'NT_40_LNQ', NULL, 2, N'Cef', N'Cefimed', N'cefimed', N'Thành phần: Cefixime
Chỉ định: - Viêm tai giữa, viêm họng, viêm amidan, viêm phế quản, viêm phổi cấp & mãn tính.
- Nhiễm trùng tiết niệu - sinh dục, bệnh lậu, da & mô mêm.
- Điều trị thương hàn.
- Dự phòng nhiễm trùng phẫu thuật.
Thường đóng gói: Hộp 2 vỉ x 4 Viên', N'Viên', CAST(20000 AS Decimal(18, 0)), 5, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (494, N'NT_40_LNQ', NULL, 2, N'Ceti', N'Cetimed', N'cetimed', N'Thành phần: Cetirizine Dihydrochlorid 10 mg
Chỉ định: Điều trị triệu chứng các biểu hiện dị ứng:
Viêm mũi dị ứng, sổ mũi theo mùa và không theo mùa.
Các bệnh ngoài da gây ngứa do dị ứng
Bệnh mề đay mãn tính
Viêm kết mạc dị ứng
Thường đóng gói: Hộp 1 vỉ x 10 Viên', N'Viên', CAST(4400 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (495, N'NT_40_LNQ', NULL, 2, N'Cime', N'Cimetidine 200mg', N'cimetidine 200mg', N'Thành phần: Cimetidine
Chỉ định: Loét dạ dày - tá tràng lành tính, loét tái phát, loét miệng nối, trường hợp cần giảm quá trình tiết axit dạ dày, hội chứng trào ngược dạ dày thực quản và Zollinger Ellison.
Thường đóng gói: Hộp 10 vỉ x 10 viên', N'Viên', CAST(1500 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (496, N'NT_40_LNQ', NULL, 2, N'Clari10', N'Clarityne 10mg', N'clarityne 10mg', N'Thành phần: Loratadine
Chỉ định: - Viêm mũi dị ứng như : Hắt hơi, sổ mũi và ngứa. 
- Viêm kết mạc dị ứng như : Ngứa mắt và nóng mắt. 
- Triệu chứng của mề đay và các rối loạn dị ứng da.
Thường đóng gói: Hộp 1 vỉ x 10 viên', N'Viên', CAST(7200 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (497, N'NT_40_LNQ', NULL, 2, N'Con1', N'Conipa pure', N'conipa pure', N'Thành phần: Kẽm (dưới dạng kẽm gluconat) 10mg/10ml
Chỉ định: 
Chế phẩm dùng bổ sung, dự phòng thiếu kẽm hoặc hỗ trợ điều trị các trường hợp sau:  
- Bệnh còi xương, suy dinh dưỡng, chậm tăng trưởng ở trẻ em.
- Phụ nữ mang thai và bà mẹ cho con bú. 
- Chế độ ăn kiêng hoặc thiếu cân bằng, nuôi ăn lâu dài qua đường tĩnh mạch.
- Tiêu chảy cấp và mãn tính.
- Rối loạn tiêu hóa: chán ăn chậm tiêu, táo bón nhẹ, buồn nôn và nôn khi mang thai.
- Nhiễm trùng tái diễn đường hô hấp, tiêu hóa, da. 
- Khô da, vết thương chậm lành (bỏng, lở loét do nằm lâu)
- Khô mắt, loét giác mạc, quáng gà.
- Thiếu kẽm nặng được đặc trưng bởi các tổn thương da và niêm mạc điển hình như: viêm ruột, viêm da đầu chi, loạn dưỡng móng (móng nhăn, có vệt trắng, chậm mọc), khô mắt, viêm quanh lỗ tự nhiên (âm hộ, hậu môn), tiêu chảy. 
Thường đóng gói: Hộp 2 vỉ, hộp 4 vỉ, hộp 6 vỉ, hộp 8 vỉ x 5 ống nhựa x 10ml', N'Ống', CAST(5000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (498, N'NT_40_LNQ', NULL, 2, N'DES 60ml', N'Desloratadin 2,5mg/5ml (Desbebe 60ml)', N'desloratadin 2,5mg/5ml (desbebe 60ml)', N'Desloratadin là chất đối kháng với histamine có chọn lọc ở thụ thể H1 ngoại biên, tác dụng kéo dài, không an thần. Sau khi uống, desloratamine ức chế chọn lọc các thụ thể histamin H1 ở ngoại biên, vì thuốc không vào hệ thần kinh trung ương. Trong những nghiên cứu in vitro, Desloratadin đã được chứng minh có tác dụng kháng dị ứng bao gồm ức chế sự giải phóng của các cytokine tiền viêm như IL-4, IL-6, IL-8 và IL-13 từ các tế bào mast/tế bào basophil, cũng như ức chế sự biểu hiện của các phân tử kết dính như P-selectin trên các tế bào nội mô. Tác dụng điều trị trên lâm sàng vẫn đang được theo dõi', N'Lọ', CAST(74000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (499, N'NT_40_LNQ', NULL, 2, N'DIN200', N'Dinpocef', N'dinpocef', N'Thành phần: Cefpodoxime

Chỉ định:
Cefpodoxime được chỉ định để điều trị các nhiễm khuẩn sau đây :
- Nhiễm khuẩn hô hấp trên bao gồm viêm tai giữa cấp, viêm xoang, viêm amiđan và viêm họng.
- Viêm phổi cấp tính mắc phải trong cộng đồng.
- Nhiễm lậu cầu cấp chưa có biến chứng.
- Nhiễm khuẩn đường tiểu chưa có biến chứng.
- Nhiễm khuẩn da và cấu trúc da.

Liều lượng - Cách dùng
Người lớn:
- Nhiễm khuẩn hô hấp trên, kể cả viêm amiđan và viêm họng: 100 mg mỗi 12 giờ trong 10 ngày.
- Viêm phổi cấp tính mắc phải trong cộng đồng: 200 mg mỗi 12 giờ trong 14 ngày.
- Nhiễm lậu cầu cấp chưa có biến chứng: liều duy nhất 200 mg.
- Nhiễm khuẩn đường tiểu chưa có biến chứng: 100 mg mỗi 12 giờ trong 7 ngày.
- Nhiễm khuẩn da và cấu trúc da: 400 mg mỗi 12 giờ trong 7 - 14 ngày.
Trẻ em:
- Viêm tai giữa cấp tính: 10 mg/kg/ngày (tối đa 400 mg/ngày chia làm 2 lần) trong 10 ngày.
- Viêm họng và viêm amiđan: 10 mg/kg/ngày (tối đa 200 mg/ngày chia làm 2 lần) trong 10 ngày.
- Cefpodoxime nên được chỉ định cùng với thức ăn. Ở các bệnh nhân suy thận (độ thanh thải creatinine dưới 30 ml/phút), khoảng cách giữa liều nên được tăng đến 24 giờ.
- Không cần phải điều chỉnh liều ở các bệnh nhân xơ gan.

Chống chỉ định:
Chỉ định ở các bệnh nhân có tiền sử nhạy cảm với cefpodoxime proxetil.', N'Viên', CAST(17000 AS Decimal(18, 0)), 5, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
GO
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (500, N'NT_40_LNQ', NULL, 2, N'DO100mg', N'Doxycycline 100mg (Cyclindox 100mg)', N'doxycycline 100mg (cyclindox 100mg)', N'Doxycycline là kháng sinh phổ rộng, có tác dụng kìm khuẩn. Doxycycline có phạm vi kháng khuẩn rộng với vi khuẩn ưa khí và kỵ khí Gram dương và Gram âm, và cả với một số vi sinh vật kháng thuốc tác dụng trên thành tế bào (Rickettsia, Coxiella burnetii, Chlamydia spp.,…)
– Cơ chế tác dụng: thuốc ức chế vi khuẩn tổng hợp protein do gắn vào tiểu đơn vị 30s và có thể cả với 50s của ribosom vi khuẩn nhạy cảm: thuốc cũng có thể gây thay đổi ở màng bào tương.
', N'Viên', CAST(2000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (501, N'NT_40_LNQ', N'0', 2, N'Doxy100', N'Doxycycline capsules 100mg', N'doxycycline capsules 100mg', N'Thành phần: Doxycycline hyclate

Tác dụng của doxycycline
Thuốc doxyciline được sử dụng để điều trị một số bệnh nhiễm trùng do vi khuẩn. Bên cạnh đó thuốc cũng được dùng để điều trị mụn trứng cá, bệnh về da và ngăn ngừa bệnh sốt rét. Loại thuốc này hoạt động bằng cách ngăn ngừa sự tăng trưởng của vi khuẩn và thuộc nhóm tetracycline. Thuốc này không có hiệu quả trong việc điều trị nhiễm virus khi bị các bệnh như cảm lạnh thông thường , cúm….vì vậy bạn không nên sử dụng thuốc cho những trường hợp này ( Việc sử dụng thuốc kháng sinh không cần thiết hoặc lạm dụng bất kỳ kháng sinh nào dẫn đến việc làm giảm hiệu quả của thuốc đều không tốt.

Doxycycline có những dạng và hàm lượng sau:
Viên nang, thuốc uống: 20 mg, 50 mg, 75 mg, 100 mg, 150 mg.
Viên nang trì hoãn phóng thích, thuốc uống: 40 mg, 100 mg.
Dung dịch đã tái tạo, tiêm tĩnh mạch: 100 mg.
Dung dịch đã tái tạo, thuốc uống: 25 mg/5 ml (60 ml).
Siro dùng đường uống: 50 mg/5 ml.
Viên nén, thuốc uống: 20 mg, 50 mg, 75 mg, 100 mg.
Viên nén trì hoãn phóng thích, thuốc uống: 75 mg, 100 mg, 150 mg, 200 mg.', N'Viên', CAST(515 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (502, N'NT_40_LNQ', NULL, 2, N'EC500mg', N'Efferalgan Codeine 500mg', N'efferalgan codeine 500mg', N'Efferalgan Codeine 500mg là một thuốc có tác dụng giảm đau trong các cơn đau vừa và nặng không đáp ứng với các thuốc giảm đau thông thường.', N'Viên', CAST(9000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (503, N'NT_40_LNQ', NULL, 2, N'E400IU', N'Enat 400 IU', N'enat 400 iu', N'Vitamin E Enat 400 là sản phẩm cung cấp alpha tocopherol do hãng Mega của Thái Lan của Thái sản xuất. Sản phẩm này có khả năng hỗ trợ cho cơ thể hấp thu các vitamin E tốt hơn.

', N'Viên', CAST(5000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (504, N'NT_40_LNQ', NULL, 2, N'EP', N'Epidolle', N'epidolle', N'Hỗ trợ điều trị nhiễm trùng do vi khuẩn hay virus, như viêm gan, nhiễm khuẩn đường hô hấp. Ðiều trị bệnh giảm bạch cầu nguyên phát & thứ phát. Phòng ngừa giảm bạch cầu do tủy xương-nhiễm độc thuốc.', N'Viên', CAST(5000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (505, N'NT_40_LNQ', NULL, 2, N'FA', N'Farzincol - kẽm Gluconat', N'farzincol - kem gluconat', N'CHỈ ĐỊNH        

Bổ sung kẽm vào chế độ ăn trong các trường hợp 

-  Bệnh còi xương, chậm tăng trưởng ở trẻ em. 

-  Phụ nữ mang thai và cho con bú. 

-  Chế độ ăn thiếu cân bằng hoặc dưỡng bệnh kiêng ăn. 

-  Nuôi ăn lâu dài qua đường tĩnh mạch. 

-  Tiêu chảy cấp và mạn tính.    

Điều trị thiếu kẽm

-  Thiếu kẽm nhẹ và vừa trong các trường hợp:  

+ Suy dinh dưỡng nhẹ và vừa.  

+ Rối loạn đường tiêu hóa: chán ăn, chậm tiêu, táo bón nhẹ, buồn nôn và nôn khi mang thai.  

+ Khó ngủ, mất ngủ, trẻ khóc đêm, suy nhược, nhức đầu.  

+ Nhiễm trùng tái diễn ở đường hô hấp, đường tiêu hóa, da.  

+ Khô da, vết thương chậm lành (bỏng, lở loét do nằm  lâu).  

+ Khô mắt, loét giác mạc, quáng gà. 

-  Thiếu kẽm nặng: được đặc trưng bởi các tổn thương da điển hình trong bệnh viêm ruột da đầu chi, dầy sừng, hói, loạn dưỡng móng, khô mắt, viêm quanh lỗ tự nhiên cùng với tiêu chảy.

 

CÁCH DÙNG - LIỀU DÙNG 

-  Liều bổ sung dinh dưỡng   

+  Từ 1/2 - 2 viên/ ngày, tùy từng trường hợp. 

-  Liều điều trị: theo hướng dẫn của thầy thuốc.  

+  Nên giảm liều khi triệu chứng lâm sàng đã được cải  thiện.    

+  Việc dùng thuốc nên chia liều thành 1-2 lần/ ngày, uống sau bữa ăn.  

+  Đối với trẻ nhỏ: nên nghiền nát viên thuốc, thêm chút đường và hòa tan với nước nóng trong bình thủy rồi để nguội trước khi cho bé uống.', N'Viên', CAST(674 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (506, N'NT_40_LNQ', NULL, 2, N'FX', N'Fexihist', N'fexihist', N'HOẠT CHẤT của Fexihist 60ml
Fexofenadine hydrochloride
THÀNH PHẦN của Fexihist 60ml
Fexofenadine hydrochloride
CÔNG DỤNG - CHỈ ĐỊNH của Fexihist 60ml
Ðiều trị các triệu chứng viêm mũi dị ứng ở người lớn và trẻ em ≥ 12 tuổi. Những triệu chứng được điều trị có hiệu quả là: hắt hơi, chảy nước mũi, ngứa vòm miệng và họng, mắt ngứa đỏ và chảy nước mắt.

CÁCH DÙNG - LIỀU DÙNG của Fexihist 60ml
- Người lớn và trẻ >=12 tuổi:

- Viêm mũi dị ứng theo mùa 60 mg x 2 lần/ngày, có thể 120 mg hoặc 180 mg x 1 lần/ngày

- Mề đay tự phát mãn tính 60 mg x 2 lần/ngày hoặc 180 mg x 1 lần/ngày.

- Suy thận: khởi đầu 60 mg x 1 lần/ngày

', N'Lọ', CAST(241000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (507, N'NT_40_LNQ', NULL, 2, N'Fl 150mg', N'Fluconazole Stada 150mg', N'fluconazole stada 150mg', N'Fluconazol là một thuốc kháng nấm nhóm triazol được dùng trong bệnh nhiễm nấm Candida ở các niêm mạc nông (hầu – miệng, thực quản, âm đạo) và nhiễm nấm ngoài da.

Thuốc cũng được sử dụng trong nhiễm nấm toàn thân bao gồm nhiễm Candida, Coccidioides, Cryptococcus toàn thân và đã được thử nghiệm trong nhiễm Blastomyces, Chromoblastomyces, Histoplasma và Sporotrichosis.

Tác dụng phòng ngừa: fluconazol cũng được chỉ định để làm giảm khả năng nhiễm Candida ở bệnh nhân ghép tủy xương đang được hóa trị liệu gây độc tế bào hoặc xạ trị.
Cách dùng:
iều cao:

Liều 1.000mg/ngày đã được dùng trong điều trị viêm màng não do Cryptococcus.
Liều 800mg/ngày đã được sử dụng trong bệnh nhiễm Blastomyces và Coccidioides.
Liều 10mg/kg/ngày đã được dùng trong bệnh nhiễm Candida lan tỏa.
Liều ngắt quãng:

Dùng 1 lần/tuần đối với bệnh nấm móng và nấm da đầu.
Liều dùng ở bệnh nhân suy thận:

Cần giảm liều dựa vào hệ số thanh thải creatinin.
Nếu hệ số thanh thải creatinin trên 50ml/phút: dùng liều chuẩn.
Nếu hệ số thanh thải creatinin dưới 50ml/phút và bệnh nhân không được thẩm phân: dùng một nửa liều chuẩn.
Bệnh nhân được thẩm phân máu định kỳ: dùng liều chuẩn sau mỗi lần thẩm phân.
Không cần điều chỉnh liều cho bệnh nhân suy thận dùng liều duy nhất.
', N'Viên', CAST(12850 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (508, N'NT_40_LNQ', NULL, 2, N'GA', N'Gadacal', N'gadacal', N'Ðộng kinh.
Đau thần kinh.', N'Ống', CAST(10700 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (509, N'NT_40_LNQ', NULL, 2, N'Gar', N'Garosi', N'garosi', N'- Nhiễm khuẩn đường hô hấp dưới: viêm phế quản cấp, viêm phổi & Nhiễm khuẩn đường hô hấp trên: viêm xoang, viêm họng & amiđan, viêm tai giữa, viêm yết hầu.
- Các nhiễm khuẩn da & mô mềm.
- Bệnh lây truyền qua đường tình dục ở cả nam & nữ do Chlamydia trachomatis hoặc Neisseria gonorrhoeae', N'Viên', CAST(58000 AS Decimal(18, 0)), 5, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (510, N'NT_40_LNQ', NULL, 2, N'Gold', N'Goldesome', N'goldesome', N'Thuốc được chỉ định cho các trường hợp: 

 • Bệnh trào ngược dạ dày-thực quản (GERD)
- Điều trị viêm xước thực quản do trào ngược  
- Điều trị dài hạn cho bệnh nhân viêm thực quản đã chữa lành để phòng ngừa tái phát
- Điều trị triệu chứng bệnh trào ngược dạ dày-thực quản (GERD) 
• Kết hợp với một phác đồ kháng khuẩn thích hợp để diệt trừ Helicobacter pylori và- Chữa lành loét tá tràng có nhiễm Helicobacter pylori và
- Phòng ngừa tái phát loét dạ dày-tá tràng ở bệnh nhân loét có nhiễm Helicobacter pylori.  
• Bệnh nhân cần điều trị bằng thuốc kháng viêm không steroid (NSAID) liên tục- Chữa lành loét dạ dày do dùng thuốc NSAID.
- Phòng ngừa loét dạ dày và loét tá tràng do dùng thuốc NSAID ở bệnh nhân có nguy cơ.
 • Điều trị kéo dài sau khi đã điều trị phòng ngừa tái xuất huyết do loét dạ dày tá tràng bằng đường tĩnh mạch.
• Điều trị hội chứng Zollinger Ellison

* Trẻ vị thành niên từ 12 tuổi trở lên:

 • Bệnh trào ngược dạ dày thực quản (GERD)

- Điều trị viêm xước thực quản do trào ngược
 
- Điều trị dài hạn cho bệnh nhân viêm thực quản đã chữa lành để phòng ngừa tái phát
- Điều trị triệu chứng bệnh trào ngược dạ dày –thực quản (GERD). 

•Kết hợp với kháng sinh trong điều trị loét tá tràng do Helicobacter pylori.', N'Viên', CAST(15600 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (511, N'NT_40_LNQ', NULL, 2, N'AcIs020', N'Acmolrine - Isotretinoin: 20mg', N'acmolrine - isotretinoin: 20mg', N'Là thuốc chữa trứng cá, làm giảm bài tiết và kích thích tuyến bã nhờn vì vậy làm giảm sẹo. Trứng cá gây viêm nặng và gây sẹo. Viêm liên quan đến tăng tiết dịch từ tuyến bã nhờn, gây kích ứng và sẹo', N'Viên', CAST(16050 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (512, N'NT_40_LNQ', NULL, 2, N'AC20ml', N'Acnequidt 20ml ', N'acnequidt 20ml', N'Điều trị trứng cá và các nhiễm khuẩn khác: bôi nhẹ vào vùng da bị bệnh sau khi đã được làm sạch và khô, ngày 1 đến 2 lần theo sự chỉ dẫn của bác sỹ.

- Điều trị viêm tai giữa, viêm xoang, viêm nha chu: nhỏ trực tiếp vào nơi bị bệnh, tai, mũi và miệng. Dùng 3 lần 1 ngày, một đợt điều trị khoảng 2 tuần, nếu cần có thể lặp lại một đợt điều trị nữa', N'Lọ', CAST(45000 AS Decimal(18, 0)), 0, N'0', N'0', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (513, N'NT_40_LNQ', NULL, 2, N'Acn10', N'Acnotin 10', N'acnotin 10', N'Thành phần: Isotretinoin 10 mg
Chỉ định: Điều trị các dạng mụn trứng cá nặng, đặc biệt là mụn trứng cá dạng nang bọc.
Đóng gói: Hộp 5 vỉ x 6 viên', N'Viên', CAST(10165 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (514, N'NT_40_LNQ', NULL, 2, N'Acn20', N'Acnotin 20', N'acnotin 20', N'Thành phần: Isotretinoin 20 mg
Chỉ định: Điều trị bệnh trứng cá nặng đã kháng với các liệu trình chuẩn bằng kháng sinh uống và thuốc bôi trên da.
Thường đóng gói:  hộp 3 vỉ x 10 viên', N'Viên', CAST(16050 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (515, N'NT_40_LNQ', NULL, 2, N'Acyclov ', N'Acyclovir 400mg stada', N'acyclovir 400mg stada', N'Dạng bào chế:Viên nén
Đóng gói:Hộp 7 vỉ x 5 viên, hộp 10 vỉ x 5 viên
Thành phần: Acyclovir 400mg
Chỉ định:
- Điều trị nhiễm herpes simplex trên da và màng nhầy bao gồm nhiễm herpes sinh dục khởi phát và tái phát.
- Ngăn ngừa tái phát herpes simplex ở bệnh nhân có khả năng miễn dịch bình thường.
- Phòng ngừa nhiễm herpes simplex ở bệnh nhân suy giảm miễn dịch.
- Điều trị bệnh thủy đậu (varicella).
- Nhiễm herpes zoster (shingles).', N'Viên', CAST(4500 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (516, N'NT_40_LNQ', NULL, 2, N'AcyM', N'Acyclovir Meyer', N'acyclovir meyer', N'Dạng bào chế:Viên nén
Thành phần: Aciclovir 800 mg
Chỉ định:
Nhiễm Herpes simplex, Phòng ngừa tái nhiễm Herpes sinh dục & các dạng nặng, Suy giảm miễn dịch', N'Viên', CAST(10000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (517, N'NT_40_LNQ', NULL, 2, N'Ae5', N'Aerius 5mg', N'aerius 5mg', N'Thành phần: Desloratadine
Chỉ định: Bệnh viêm mũi dị ứng: làm giảm các triệu chứng của bệnh viêm mũi dị ứng (theo mùa và mạn tính) ở bệnh nhân 12 tuổi trở lên: hắt hơi, chảy mũi, ngứa, nghẹt mũi, kèm kích ứng mắt, chảy nước mắt và đỏ mắt.
Đóng gói: Hộp 1 vỉ x 10 Viên', N'Viên', CAST(10200 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (518, N'NT_40_LNQ', NULL, 2, N'Ald1', N'Aleradin', N'aleradin', N'Thành phần: Desloratadine 5mg
Chỉ định:
- Giảm các triệu chứng viêm mũi dị ứng theo mùa, viêm mũi dị ứng quanh năm như hắt hơi, sổ mũi, ngứa, nghẹt mũi, kèm kích ứng mắt, chảy nước mắt & đỏ mắt, ngứa họng & ho.
- Giảm các triệu chứng mày đay mạn tính tự phát
Đóng gói:Hộp 3 vỉ x 10 viên', N'Viên', CAST(6800 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (519, N'NT_40_LNQ', NULL, 2, N'Al1', N'Althax', N'althax', N'Thành phần: Thymomodulin 120mg
Chỉ định: Hỗ trợ điều trị nhiễm trùng do vi khuẩn hay virus, như viêm gan, nhiễm khuẩn đường hô hấp. 
Ðiều trị bệnh giảm bạch cầu nguyên phát & thứ phát. 
Phòng ngừa giảm bạch cầu do tủy xương-nhiễm độc thuốc. 
Thiếu hụt thành lập kháng thể, kích thích miễn dịch. 
Thành lập hệ thống miễn dịch.
Đóng gói:Hộp 3 vỉ, 6 vỉ x 10 viên', N'Viên', CAST(5900 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (520, N'NT_40_LNQ', NULL, 2, N'AC1', N'Anaferon Children', N'anaferon children', N'Thành phần: Các kháng thể gắn với interferon gamma ở người: 3mg
Chỉ định:
Dự phòng và điều trị các trường hợp nhiễm virut đường hô hấp cấp tính (bao gồm cả bệnh cúm).
Phối hợp điều trị trong các trường hợp nhiễm herpes virut (chứng tăng bạch cầu đơn nhân nhiễm trùng, thủy đậu, herpes môi, herpes sinh dục).
Phối hợp điều trị và dự phòng tái phát cho các trường hợp nhiễm herpes virut mạn tính bao gồm herpes ở môi và herpes sinh dục.
Phối hợp điều trị và dự phòng trong các trường hợp nhiễm virut cấp tính khác, gây ra bởi: virut viêm não truyền từ ve (tick-borne encephalitis virus), enterovirus, rotavirus, coronavirus, calicivirus.
Dùng phối hợp điều trị trong các bệnh nhiễm khuẩn.
Phối hợp điều trị trong trường hợp suy giảm miễn dịch thứ phát do nhiều nguyên nhân, bao gồm cả dự phòng và điều trị các trường hợp bội nhiễm do virut và vi khuẩn.
Đóng gói: Hộp 1 vỉ x 20 Viên', N'Hộp', CAST(120000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (521, N'NT_40_LNQ', NULL, 2, N'Argiril', N'Argiril gold', N'argiril gold', N'CÔNG DỤNG:
- Giup bổ gan, thanh nhiệt, giải độc gan, bảo vệ té bào gan, tăng cường chức năng giải độc gan.

- Giup tăng cường chức năng gan trong các trường hợp : men gan tăng cao, mẩn ngứa, mụn nhọt, trứng cá nhiều, nổi mề đay, vàng da, sạm da, nám dam, tiểu vàng, tiểu buốt, ăn uống kém.
', N'Viên', CAST(3000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (522, N'NT_40_LNQ', NULL, 2, N'A2', N'Audocals', N'audocals', N'Đóng gói: Hộp 1 vỉ x 10 viên
Thành phần: Desoratadine 5mg (5mg/ml Timolol)
Chỉ định:
- Giảm các triệu chứng viêm mũi dị ứng theo mùa, viêm mũi dị ứng quanh năm như hắt hơi, sổ mũi, ngứa, nghẹt mũi, kèm kích ứng mắt, chảy nước mắt & đỏ mắt, ngứa họng & ho.
- Giảm các triệu chứng mày đay mạn tính tự phát.', N'Viên', CAST(6500 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (523, N'NT_40_LNQ', NULL, 2, N'Aug-500', N'Augmentin- 500mg/62,5mg', N'augmentin- 500mg/62,5mg', N'Chỉ định: Nhiễm trùng đường hô hấp trên & dưới (viêm phổi, viêm tai giữa, viêm xoang cấp, viêm cấp tính nặng của phế quản mãn tính), da & mô mềm, thận & đường tiểu dưới.
Thành phần: Amoxicilline, Kali Clavulanate 500mg/62,5mg
Đóng gói: 12 GÓI x 500MG', N'Gói', CAST(13445 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (524, N'NT_40_LNQ', NULL, 2, N'Aug625', N'Augmentin 625mg', N'augmentin 625mg', N'Chỉ định:
Viêm amiđan, viêm xoang, viêm tai giữa, viêm phế quản cấp & mãn, viêm phổi, viêm bàng quang, viêm niệu đạo, viêm bể thận.
Mụn nhọt, áp xe, nhiễm khuẩn vết thương, viêm tủy xương. Áp xe ổ răng. Nhiễm khuẩn sản phụ khoa, ổ bụng.
Đóng gói:Hộp 2 vỉ x 7 viên
Thành phần: Amoxicilin trihydrate,Clavulanate kali 500mg Amoxicillin;125 mg Clavulanate', N'Viên', CAST(13445 AS Decimal(18, 0)), NULL, N'1572541200', N'1575133199', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (525, N'NT_40_LNQ', NULL, 2, N'AOS1', N'Axofen Oral Suspension', N'axofen oral suspension', N'Thành phần: Fexofenadin hydroclorid 30mg/5ml
Chỉ định: Làm giảm triệu chứng viêm mũi dị ứng theo mùa cho người lớn và trẻ em ≥ 6 tuổi (hắt hơi, sổ mũi, ngứa mắt, mũi và cổ họng, mắt đỏ và chảy nước).
Làm giảm ngứa và mày đay đáng kể các biểu hiện trên da không có biến chứng của bệnh nổi mày đay tự phát mạn tính
Đóng gói: Hộp 1 chai 50ml', N'Chai', CAST(107000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (526, N'NT_40_LNQ', NULL, 2, N'Azi250', N'Azicine 250mg', N'azicine 250mg', N'Thành phần: Azithromycin dihydrate 250mg
Chỉ định:
- Azithromycin được chỉ định dùng trong các trường hợp nhiễm khuẩn do các vi khuẩn nhạy cảm với thuốc như nhiễm khuẩn đường hô hấp dưới bao gồm viêm phế quản, viêm phổi, nhiễm khuẩn da và mô mềm, viêm tai giữa, nhiễm khuẩn đường hô hấp trên như viêm xoang, viêm họng và viêm amidan. Azithromycin chỉ nên dùng cho những người bệnh dị ứng với penicilin vì nguy cơ kháng thuốc. 
- Trong những bệnh lây nhiễm qua đường tình dục ở cả nam và nữ, Azithromycin được chỉ định trong: 
+ Nhiễm khuẩn đường sinh dục không biến chứng do Chlamydia trachomatis 
+ Nhiễm khuẩn đường sinh dục không biến chứng do Neisseria gonorrhoeae không đa kháng (sau khi loại trừ nhiễm đồng thời Treponema pallidum). 
+ Dự phòng nhiễm Mycobacterium avium - intracellulare (MAC) ở bệnh nhân nhiễm HIV dùng đơn độc hay phối hợp với rifabutin. 
- Azithromycin được chỉ định trong viêm kết mạc do Chlamydia trachomatis (bệnh mắt hột).
Đóng gói: Hộp 1 vỉ, 10 vỉ x 6 viên, hộp 1 chai 100 viên nang', N'Viên', CAST(4100 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (527, N'NT_40_LNQ', NULL, 2, N'Bil1', N'Bilaxten', N'bilaxten', N'Hoạt chất: Bilastin……………………………20mg
Chỉ định: Bệnh viêm mũi dị ứng: Điều trị các triệu chứng như hắt hơi, ngứa mũi, chảy nước mũi, nghẹt mũi, chảy nước mắt, đỏ mắt và các dạng viêm mũi dị ứng khác.
Thuốc cũng được chỉ định để trị các bệnh như mày đay, viêm da cơ địa: Thuốc có tác dụng giảm ngứa, giảm lichen hóa, giảm số lượng và kích thước các nốt ban đỏ.
Đóng gói: Hộp 1 vỉ x 4 Viên; Hộp 1 vỉ , 2 vỉ, 3 vỉ, 4 vỉ, 5vỉ x 10 Viên
', N'Viên', CAST(10000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (528, N'NT_40_LNQ', NULL, 2, N'Bro500', N'Brodicef 500 mg', N'brodicef 500 mg', N'Đóng gói: Hộp 3 vỉ x 10 viên
Thành phần: Cefprozil
Hàm lượng: 500 mg
Chỉ định:
Điều trị nhiễm trùng nhẹ tới trung bình do các chủng vi khuẩn gây ra như liệt kê dưới đây:
Đường hô hấp trên:
- Viêm họng, viêm amidan do St. pyogenes
- Viêm tai giữa do St. pneumoniae, H. influenza (bao gồm cả chủng sinh ra beta-lactamase), và Moraxella (Branhamella) catarrhalis (bao gồm chủng sinh beta-lactamase).
- Viêm xoang cấp do: St. pneumoniae, H. influenzae (bao gồm cả chủng sinh ra beta-lactamase), và Moraxella (branhamella) catarrhalis (bao gồm chủng sinh -lactamase).
Đường hô hấp dưới: 
Nhiễm trùng thứ cấp trong trường hợp bị viêm phế quản cấp hoặc đợt cấp của viêm phế quản mãn do St. pneumoniae, H. influenza (bao gồm cả chủng sinh ra beta-lactamase), và Moraxella (branhamella) catarrhalis (bao gồm chủng sinh beta-lactamase).
Da và cấu trúc: 
Nhiễm trùng da và cấu trúc không biến chứng do St. aureus (bao gồm chủng sinh penicillinase) và St. pyogenes. Cần tiến hành phẫu thuật với những trường hợp bị áp xe.', N'Viên', CAST(32000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (529, N'NT_40_LNQ', NULL, 2, N'Ce100', N'Cebastin 20', N'cebastin 20', N'Thành phần: Ebastin 20mg
Chỉ định: 
-Thuốc điều trị viêm mũi dị ứng theo mùa hoặc quanh năm
-Viêm kết mạc dị ứng
-Nổi mề đay vô căn mạn tính.
Thường đóng gói: Hộp 3 vỉ, 6 vỉ x 10 viên', N'Viên', CAST(9100 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
INSERT [dbo].[Products] ([id], [partner_code], [product_brand], [product_type], [product_code], [name], [name_normalized], [description], [unit], [price], [discount], [discount_from], [discount_to], [published], [is_discount], [category_id], [delete], [quantity], [weight]) VALUES (530, N'NT_40_LNQ', NULL, 2, N'Ce500', N'Cefalexin 500mg', N'cefalexin 500mg', N'Thành phần: Cephalexin
Chỉ định: Nhiễm trùng do một số vi khuẩn Gr(-) & Gr(+) kể cả Staphylococcus sản xuất men penicillinase, nhiễm trùng đường tiết niệu, hô hấp, da & mô mềm.
Thường đóng gói: Hộp 10 vỉ x 10 viên', N'Viên', CAST(3000 AS Decimal(18, 0)), NULL, N'1572541200', N'1577811599', 2, 0, 302, 0, 20, 0.1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[VoucherOrder] ON 

INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (1, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 4, CAST(N'2021-12-24 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.SGA8.P6.1001290673', N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', N'Chiều 2021-12-29', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (2, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 6, CAST(N'2021-12-24 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.SGA8.A12.1462417619', N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', N'Chiều 2021-12-28', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (3, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 3, CAST(N'2021-12-23 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.SGA8.E6.559358975', N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', N'Chiều 2022-01-07', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (4, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 6, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.SGA8.P5.580802560', N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', N'Chiều 2021-12-29', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (5, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 3, CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.SGA8.A12.1389927607', N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', N'Chiều 2022-01-07', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (6, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 2, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 1, NULL, NULL, N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', NULL, CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (7, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 1, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, NULL, N'Phạm Trọng Trường', 1, N'a', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', N'Phường Bến Nghé', NULL, CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (8, NULL, N'TDP12,Thị Trấn Chư Sê ', N'0353573467', N'PHAMTRUONG0305@gmail.com', 1, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 0, 0, NULL, NULL, N'Phạm Trọng Trường', 1, N'â', NULL, N'Hồ Chí Minh', N'Quận 1', N'Phường Bến Nghé', NULL, NULL, CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (9, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'Chư Sê Gia Lai', N'0353537467', N'PHAMTRUONG0305@gmail.com', 6, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, 0, NULL, NULL, N'Phạm Trọng Trường', NULL, N'', NULL, N'Đồng Nai', N'Huyện Tân Phú', N'Xã Núi Tượng', NULL, NULL, CAST(26000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (10, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'Chư Sê Gia Lai', N'0353573467', N'PHAMTRUONG0305@gmail.com', 4, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 0, NULL, N'S20435233.MT19.Z4.1322652377', N'Phạm Trọng Trường', NULL, N'', NULL, N'Đồng Nai', N'Huyện Tân Phú', N'Xã Dak Lua', NULL, N'Sáng 2022-01-08', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (11, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'Chư Sê Gia Lai', N'0353573467', N'PHAMTRUONG0305@gmail.com', 3, CAST(N'2022-01-06 00:00:00.000' AS DateTime), NULL, CAST(800000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1, 0, NULL, N'S20435233.BO.MT16.J2.618394574', N'Phạm Trọng Trường', NULL, N'', NULL, N'Gia Lai', N'Huyện Mang Yang', N'Xã Đak Jơ Ta', NULL, N'Sáng 2022-01-08', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (12, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'280 Quang Trung ', N'0353573467', N'phamtruong0305@gmail.com', 6, CAST(N'2022-01-07 14:45:12.333' AS DateTime), NULL, CAST(1124000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 0, NULL, NULL, N'Phạm Trọng Trường', NULL, N'', NULL, N'Gia Lai', N'Huyện Chư Sê', N'Thị trấn Chư Sê', NULL, NULL, CAST(26000 AS Decimal(18, 0)), 4, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (13, N'c101ce5e-55a9-47bb-b512-924f7c526c02', N'Chư Sê Gia Lai', N'0353537461', N'5951071113@st.utc2.edu.vn', 3, CAST(N'2022-01-07 15:34:59.427' AS DateTime), NULL, CAST(800000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 0, 0, NULL, N'S20435233.BO.DN10.G19.1196138399', N'PhamTrongTruong', NULL, N'', NULL, N'Đà Nẵng', N'Quận Sơn Trà', N'Phường Mân Thái', NULL, N'Sáng 2022-01-09', CAST(26000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (14, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'280 Quang Trung ', N'0353573467', N'phamtruong0305@gmail.com', 2, CAST(N'2022-01-07 21:43:25.527' AS DateTime), NULL, CAST(8500000 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), 0, 0, NULL, NULL, N'Phạm Trọng Trường', NULL, N'', NULL, N'Đà Nẵng', N'Quận Thanh Khê', N'Phường Xuân Hà', NULL, NULL, CAST(36000 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[VoucherOrder] ([id], [uid], [adrees], [telephone], [email], [status], [createdate], [datemodified], [grossAmount], [discountAmount], [paymentmethods], [delete], [approvedby], [Code], [Name], [Transport], [note], [required_note], [province], [district], [ward], [street], [deliver_time], [shiper], [statusCancel], [pointevaluation]) VALUES (15, N'b90659a6-db39-40c9-96ca-ba27c46a795a', N'Chư Sê Gia Lai', N'0353573467', N'phamtruong0305@gmail.com', 2, CAST(N'2022-01-07 21:50:40.930' AS DateTime), NULL, CAST(8500000 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), 1, 0, NULL, NULL, N'Phạm Trọng Trường', NULL, N'', NULL, N'Đắk Lắk', N'Huyện Ea H''leo', N'Xã Ea Sol', NULL, NULL, CAST(44400 AS Decimal(18, 0)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[VoucherOrder] OFF
SET IDENTITY_INSERT [dbo].[VoucherOrderDetail] ON 

INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (1, 1, 1, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (1, 2, 2, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (1, 3, 3, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (1, 4, 1, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (2, 5, 1, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (2, 6, 5, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (3, 7, 6, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (3, 8, 7, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (4, 9, 6, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (4, 10, 7, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (5, 11, 6, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (5, 12, 7, CAST(500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 2)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (9, 13, 405, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (10, 14, 405, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (11, 15, 475, CAST(800000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (12, 16, 406, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (12, 17, 407, CAST(132000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (12, 18, 450, CAST(860000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 4)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (13, 19, 475, CAST(800000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (14, 20, 478, CAST(7000000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (14, 21, 473, CAST(1500000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (15, 22, 478, CAST(7000000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[VoucherOrderDetail] ([voucherId], [id], [product_id], [grossAmount], [discountAmount], [quantity]) VALUES (15, 23, 473, CAST(1500000 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[VoucherOrderDetail] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Custormer] FOREIGN KEY([uid])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Custormer]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Products]
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD  CONSTRAINT [FK_conversation_Custormer] FOREIGN KEY([idcustormer])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[Conversation] CHECK CONSTRAINT [FK_conversation_Custormer]
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD  CONSTRAINT [FK_conversation_employer] FOREIGN KEY([idemployer])
REFERENCES [dbo].[Employer] ([uid])
GO
ALTER TABLE [dbo].[Conversation] CHECK CONSTRAINT [FK_conversation_employer]
GO
ALTER TABLE [dbo].[Detailforum]  WITH CHECK ADD  CONSTRAINT [FK_Detailforum_Custormer] FOREIGN KEY([uid])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[Detailforum] CHECK CONSTRAINT [FK_Detailforum_Custormer]
GO
ALTER TABLE [dbo].[Detailforum]  WITH CHECK ADD  CONSTRAINT [FK_Detailforum_forum] FOREIGN KEY([idforum])
REFERENCES [dbo].[forum] ([Id])
GO
ALTER TABLE [dbo].[Detailforum] CHECK CONSTRAINT [FK_Detailforum_forum]
GO
ALTER TABLE [dbo].[Evaluate]  WITH CHECK ADD  CONSTRAINT [FK_Evaluate_Custormer] FOREIGN KEY([uid])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[Evaluate] CHECK CONSTRAINT [FK_Evaluate_Custormer]
GO
ALTER TABLE [dbo].[Evaluate]  WITH CHECK ADD  CONSTRAINT [FK_Evaluate_Products] FOREIGN KEY([idproduct])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Evaluate] CHECK CONSTRAINT [FK_Evaluate_Products]
GO
ALTER TABLE [dbo].[Evaluate]  WITH CHECK ADD  CONSTRAINT [FK_Evaluate_VoucherOrderDetail] FOREIGN KEY([idorderdetail])
REFERENCES [dbo].[VoucherOrderDetail] ([id])
GO
ALTER TABLE [dbo].[Evaluate] CHECK CONSTRAINT [FK_Evaluate_VoucherOrderDetail]
GO
ALTER TABLE [dbo].[forum]  WITH CHECK ADD  CONSTRAINT [FK_forum_Custormer] FOREIGN KEY([uid])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[forum] CHECK CONSTRAINT [FK_forum_Custormer]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_photos_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_photos_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[VoucherOrder]  WITH CHECK ADD  CONSTRAINT [FK_VoucherOrder_Custormer] FOREIGN KEY([uid])
REFERENCES [dbo].[Custormer] ([uid])
GO
ALTER TABLE [dbo].[VoucherOrder] CHECK CONSTRAINT [FK_VoucherOrder_Custormer]
GO
ALTER TABLE [dbo].[VoucherOrder]  WITH CHECK ADD  CONSTRAINT [FK_VoucherOrder_employer] FOREIGN KEY([approvedby])
REFERENCES [dbo].[Employer] ([uid])
GO
ALTER TABLE [dbo].[VoucherOrder] CHECK CONSTRAINT [FK_VoucherOrder_employer]
GO
ALTER TABLE [dbo].[VoucherOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_VoucherOrderDetail_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[VoucherOrderDetail] CHECK CONSTRAINT [FK_VoucherOrderDetail_Products]
GO
ALTER TABLE [dbo].[VoucherOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_VoucherOrderDetail_VoucherOrder] FOREIGN KEY([voucherId])
REFERENCES [dbo].[VoucherOrder] ([id])
GO
ALTER TABLE [dbo].[VoucherOrderDetail] CHECK CONSTRAINT [FK_VoucherOrderDetail_VoucherOrder]
GO
