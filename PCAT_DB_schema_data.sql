USE [master]
GO
/****** Object:  Database [Product_Catalogue]    Script Date: 08/28/2015 12:31:41 ******/
CREATE DATABASE [Product_Catalogue] ON  PRIMARY 
( NAME = N'Product_Catalogue', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Product_Catalogue.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Product_Catalogue_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Product_Catalogue_log.ldf' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Product_Catalogue] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product_Catalogue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product_Catalogue] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Product_Catalogue] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Product_Catalogue] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Product_Catalogue] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Product_Catalogue] SET ARITHABORT OFF
GO
ALTER DATABASE [Product_Catalogue] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Product_Catalogue] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Product_Catalogue] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Product_Catalogue] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Product_Catalogue] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Product_Catalogue] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Product_Catalogue] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Product_Catalogue] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Product_Catalogue] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Product_Catalogue] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Product_Catalogue] SET  DISABLE_BROKER
GO
ALTER DATABASE [Product_Catalogue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Product_Catalogue] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Product_Catalogue] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Product_Catalogue] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Product_Catalogue] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Product_Catalogue] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Product_Catalogue] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Product_Catalogue] SET  READ_WRITE
GO
ALTER DATABASE [Product_Catalogue] SET RECOVERY FULL
GO
ALTER DATABASE [Product_Catalogue] SET  MULTI_USER
GO
ALTER DATABASE [Product_Catalogue] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Product_Catalogue] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product_Catalogue', N'ON'
GO
USE [Product_Catalogue]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08/28/2015 12:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Products](
	[Product_ID] [nvarchar](5) NOT NULL,
	[Product_Name] [nvarchar](30) NOT NULL,
	[Product_Desc] [nvarchar](100) NULL,
	[Product_Eff_Date] [date] NULL,
	[Product_End_Date] [date] NULL,
	[Service_ID] [nvarchar](2) NOT NULL,
	[PROD] [nchar](1) NOT NULL,
	[DB_User_ID] [nvarchar](6) NULL,
	[DB_Last_updated] [datetime] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Products] ON [Products] 
(
	[Product_ID] ASC,
	[Product_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'D0001', N'FIOS_Data_10/10', N'FIOS Data with 10/10', CAST(0x693A0B00 AS Date), CAST(0x7E3A0B00 AS Date), N'2', N'N', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'D0002', N'Quantum_Data_50/50', N'FIOS Data with 50/50', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'2', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'D0003', N'Quantum_Data_75/75', N'FIOS Data with 75/75', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'2', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'D0004', N'Quantum_Data_100/100', N'FIOS Data with 100/100', CAST(0x4B3A0B00 AS Date), CAST(0x78410B00 AS Date), N'2', N'N', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'D0005', N'Quantum_Data_500/500', N'FIOS Data with 500/500', CAST(0x4B3A0B00 AS Date), CAST(0x78410B00 AS Date), N'2', N'N', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'E0001', N'Cloud_500GB', N'Enterprise services Cloud 500GB space', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'6', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'E0002', N'Cloud_1TB', N'Enterprise services Cloud 1TB space', CAST(0x553A0B00 AS Date), CAST(0x4C430B00 AS Date), N'6', N'N', NULL, CAST(0x0000A5010122A708 AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'E0003', N'Cloud_2TB', N'Enterprise services Cloud 2TB space', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'6', N'N', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'E0004', N'Security_staticIP', N'Enterprise services Security Static IP', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'6', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'E0005', N'Security_DynamicIP', N'Enterprise services Security Dynamic IP', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'6', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'T0001', N'Custom_FIOS_TV', N'What you see is what you pay for', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'3', N'Y', NULL, CAST(0x0000A50100EDB778 AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'T0002', N'Custom_FIOS_HD', N'What you see is what you pay for with Max No of HD channels', CAST(0x553A0B00 AS Date), CAST(0x7A410B00 AS Date), N'3', N'N', NULL, CAST(0x0000A4FE00F1C494 AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'T0003', N'Preferred_HD', N'235+ Channels and 65 + HD channels', CAST(0x553A0B00 AS Date), CAST(0x7A410B00 AS Date), N'3', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'T0004', N'Ultimate_HD', N'420+ channels with 135+ HD - Most Popular', CAST(0x883A0B00 AS Date), CAST(0xAB410B00 AS Date), N'3', N'Y', NULL, NULL)
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'V0001', N'Freedom_Essentials', N'Unlimited local and national calling', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'1', N'Y', NULL, CAST(0x00000000000007D5 AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'V0002', N'Digital_Voice', N'VoIP Unlimited local and national calling', CAST(0x553A0B00 AS Date), CAST(0xD93A0B00 AS Date), N'1', N'N', NULL, CAST(0x0000A501011B1F4C AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'W0001', N'Small_Wireless_10GB_5MBps', N'Wireless Broadband service @5MBps with a limit of 10GB', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'5', N'Y', NULL, CAST(0x00000000000007D6 AS DateTime))
INSERT [Products] ([Product_ID], [Product_Name], [Product_Desc], [Product_Eff_Date], [Product_End_Date], [Service_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (N'W0002', N'Medium_Wireless_20GB_10MBps', N'Wireless Broadband @10 MBps and limit of 20GB', CAST(0x553A0B00 AS Date), CAST(0x78410B00 AS Date), N'5', N'N', NULL, CAST(0x0000A5010116F73C AS DateTime))
/****** Object:  StoredProcedure [dbo].[spIDExists]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spIDExists]


@Product_ID nvarchar(5)

	AS
	
	
	
BEGIN
	declare @Count int
	select @Count =COUNT(Product_ID) from Products
	where Product_ID=@Product_ID
	
	If(@Count >0)
	Select 1 as Product_ID_Exists
	else
	Select 0 as Product_ID_Exists
	
END
GO
/****** Object:  Table [dbo].[Bundle_Products]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bundle_Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bundle_ID] [int] NOT NULL,
	[Product_ID] [nvarchar](5) NOT NULL,
	[PROD] [nchar](1) NOT NULL,
	[DB_User_ID] [nvarchar](6) NULL,
	[DB_Last_updated] [datetime] NOT NULL,
 CONSTRAINT [PK_Bundle_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Bundle_Products] ON
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (1, 1, N'T0001', N'Y', NULL, CAST(0x0000A50000B5F159 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (53, 2, N'T0001', N'Y', NULL, CAST(0x0000A500012B40CB AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (54, 2, N'D0001', N'Y', NULL, CAST(0x0000A500012B40CB AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (55, 3, N'T0002', N'Y', NULL, CAST(0x0000A500012DEFAC AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (56, 3, N'V0001', N'Y', NULL, CAST(0x0000A500012DEFAC AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (57, 4, N'T0002', N'Y', NULL, CAST(0x0000A500012F6187 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (58, 4, N'D0001', N'Y', NULL, CAST(0x0000A500012F6187 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (59, 4, N'V0001', N'Y', NULL, CAST(0x0000A500012F6187 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (60, 5, N'T0001', N'Y', NULL, CAST(0x0000A50100BCB81C AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (61, 5, N'D0001', N'Y', NULL, CAST(0x0000A50100BCB81C AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (62, 6, N'T0001', N'Y', NULL, CAST(0x0000A50100D523A2 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (63, 6, N'D0001', N'Y', NULL, CAST(0x0000A50100D523A2 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (64, 6, N'V0002', N'Y', NULL, CAST(0x0000A50100D523A2 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (65, 7, N'D0001', N'Y', NULL, CAST(0x0000A50101117051 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (66, 7, N'V0002', N'Y', NULL, CAST(0x0000A50101117051 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (67, 8, N'T0002', N'Y', NULL, CAST(0x0000A50101413FF0 AS DateTime))
INSERT [Bundle_Products] ([ID], [Bundle_ID], [Product_ID], [PROD], [DB_User_ID], [DB_Last_updated]) VALUES (68, 8, N'D0001', N'Y', NULL, CAST(0x0000A50101413FF0 AS DateTime))
SET IDENTITY_INSERT [Bundle_Products] OFF
/****** Object:  Table [dbo].[Product_Avail]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product_Avail](
	[Product_ID] [nvarchar](5) NOT NULL,
	[Service_ID] [nvarchar](2) NOT NULL,
	[Zipcode] [nvarchar](5) NOT NULL,
	[State_CD] [nchar](2) NOT NULL,
	[PROD] [nchar](1) NULL,
	[Title] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product_Avail] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[Service_ID] ASC,
	[Zipcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'D0001', N'2', N'10003', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'D0001', N'2', N'35004', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'D0001', N'2', N'35005', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'E0001', N'6', N'35005', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'E0002', N'6', N'10002', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'E0003', N'6', N'10003', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'E0005', N'6', N'10004', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0001', N'3', N'10004', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0001', N'3', N'10005', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0002', N'3', N'35004', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0002', N'3', N'35006', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0003', N'3', N'10005', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0004', N'3', N'10003', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'T0004', N'3', N'35004', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'V0001', N'1', N'10001', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'V0001', N'1', N'10002', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'V0001', N'1', N'35004', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'V0002', N'1', N'10002', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'V0002', N'1', N'35005', N'AL', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'W0001', N'5', N'10001', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'W0001', N'5', N'10003', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'W0001', N'5', N'10005', N'NY', N'Y', NULL)
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'W0002', N'5', N'35004', N'AL', N'Y', N'hy')
INSERT [Product_Avail] ([Product_ID], [Service_ID], [Zipcode], [State_CD], [PROD], [Title]) VALUES (N'W0002', N'5', N'35006', N'AL', N'Y', N'hy')
/****** Object:  Table [dbo].[Bundles]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bundles](
	[Bundle_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bundle_Name] [nvarchar](30) NOT NULL,
	[Bundle_Desc] [nvarchar](100) NOT NULL,
	[Bundle_Discount] [int] NOT NULL,
	[Bundle_Eff_Date] [date] NOT NULL,
	[Bundle_End_Date] [date] NOT NULL,
	[PROD] [nchar](1) NOT NULL,
	[DB_User_ID] [nvarchar](6) NULL,
	[DB_Last_Updated] [datetime] NULL,
	[Bundle_Price] [decimal](6, 2) NOT NULL,
	[State_CD] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Bundles] PRIMARY KEY CLUSTERED 
(
	[Bundle_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Bundles] ON
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (1, N'Bundle_Double_Data_Voice', N'Double bundle with Data (10GB downloading limit) and Voice ', 20, CAST(0x883A0B00 AS Date), CAST(0xA83A0B00 AS Date), N'Y', NULL, NULL, CAST(200.00 AS Decimal(6, 2)), N'NY')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (2, N'Bundle_Double_Basic', N'Data & TV Services', 30, CAST(0x86390B00 AS Date), CAST(0xB03D0B00 AS Date), N'Y', NULL, CAST(0x0000A500012B40CB AS DateTime), CAST(336.00 AS Decimal(6, 2)), N'NY')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (3, N'Bundle_Double_Basic_AL', N'TV & Voice Services', 30, CAST(0x8B3A0B00 AS Date), CAST(0x2F3D0B00 AS Date), N'Y', NULL, CAST(0x0000A500012DEFAC AS DateTime), CAST(500.50 AS Decimal(6, 2)), N'AL')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (4, N'Bundle_Triple_Basic_AL', N'Data,TV& Voice Services', 66, CAST(0x293A0B00 AS Date), CAST(0xB03D0B00 AS Date), N'Y', NULL, CAST(0x0000A500012F6187 AS DateTime), CAST(294.10 AS Decimal(6, 2)), N'AL')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (5, N'Bundle_Premium', N'Data,TV Services', 25, CAST(0x053B0B00 AS Date), CAST(0x153F0B00 AS Date), N'Y', NULL, CAST(0x0000A50100BCB81C AS DateTime), CAST(360.00 AS Decimal(6, 2)), N'NY')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (6, N'Bundle_Triple_Premium_NY', N'Data,TV& Voice Srvices', 30, CAST(0x543A0B00 AS Date), CAST(0x053D0B00 AS Date), N'Y', NULL, CAST(0x0000A50100D523A2 AS DateTime), CAST(791.00 AS Decimal(6, 2)), N'NY')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (7, N'Bundle_Double_Data_Voice', N'Data and Voice', 10, CAST(0x883A0B00 AS Date), CAST(0x883A0B00 AS Date), N'Y', NULL, CAST(0x0000A50101117051 AS DateTime), CAST(720.00 AS Decimal(6, 2)), N'NY')
INSERT [Bundles] ([Bundle_ID], [Bundle_Name], [Bundle_Desc], [Bundle_Discount], [Bundle_Eff_Date], [Bundle_End_Date], [PROD], [DB_User_ID], [DB_Last_Updated], [Bundle_Price], [State_CD]) VALUES (8, N'Bundle_Double_Premium', N'Data and TV services', 10, CAST(0x4F280B00 AS Date), CAST(0x972C0B00 AS Date), N'Y', NULL, CAST(0x0000A50101413FF0 AS DateTime), CAST(378.00 AS Decimal(6, 2)), N'AL')
SET IDENTITY_INSERT [Bundles] OFF
/****** Object:  Table [dbo].[Product_Rates]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product_Rates](
	[Rate_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [nvarchar](5) NOT NULL,
	[Rate_Amount] [decimal](10, 2) NOT NULL,
	[State_CD] [nchar](2) NOT NULL,
	[Rate_Eff_Date] [date] NULL,
	[Rate_End_Date] [date] NULL,
	[PROD] [nchar](1) NOT NULL,
	[DB_User_ID] [nvarchar](6) NULL,
	[DB_Last_updated] [datetime] NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Product_Rates] PRIMARY KEY CLUSTERED 
(
	[Rate_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Product_Rates] ON
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (1, N'V0001', CAST(500.00 AS Decimal(10, 2)), N'AL', CAST(0x623A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (2, N'T0001', CAST(330.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (3, N'W0001', CAST(525.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (4, N'E0001', CAST(2000.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (6, N'E0001', CAST(2200.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (7, N'E0002', CAST(2500.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (8, N'E0002', CAST(2450.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (9, N'E0003', CAST(3000.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (10, N'E0003', CAST(3150.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (12, N'E0004', CAST(1575.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (14, N'E0005', CAST(1779.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (17, N'D0001', CAST(150.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (18, N'T0002', CAST(340.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (28, N'V0002', CAST(650.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (29, N'V0002', CAST(700.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (42, N'D0001', CAST(166.00 AS Decimal(10, 2)), N'AL', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (43, N'V0001', CAST(445.00 AS Decimal(10, 2)), N'NY', CAST(0x613A0B00 AS Date), CAST(0xDA3A0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (46, N'E0004', CAST(1600.00 AS Decimal(10, 2)), N'NY', CAST(0xBC3A0B00 AS Date), CAST(0xDB3A0B00 AS Date), N'Y', NULL, CAST(0x0000A50101242D44 AS DateTime), NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (47, N'T0002', CAST(350.00 AS Decimal(10, 2)), N'AL', CAST(0x39240B00 AS Date), CAST(0x9D280B00 AS Date), N'Y', NULL, CAST(0x0000A50101254684 AS DateTime), NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (53, N'D0002', CAST(177.00 AS Decimal(10, 2)), N'NY', CAST(0xCF3B0B00 AS Date), CAST(0xB53D0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (54, N'T0004', CAST(599.00 AS Decimal(10, 2)), N'NY', CAST(0xC73A0B00 AS Date), CAST(0x233F0B00 AS Date), N'Y', NULL, NULL, NULL)
INSERT [Product_Rates] ([Rate_ID], [Product_ID], [Rate_Amount], [State_CD], [Rate_Eff_Date], [Rate_End_Date], [PROD], [DB_User_ID], [DB_Last_updated], [Discount]) VALUES (55, N'T0003', CAST(399.00 AS Decimal(10, 2)), N'AL', CAST(0xC73A0B00 AS Date), CAST(0x233F0B00 AS Date), N'Y', NULL, NULL, NULL)
SET IDENTITY_INSERT [Product_Rates] OFF
/****** Object:  StoredProcedure [dbo].[BundleInsert]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [BundleInsert]
@Bundle_Name nvarchar(30),@Bundle_Desc nvarchar(100),@Bundle_Discount decimal(6,2),@Bundle_Eff_Date Date,
@Bundle_End_Date Date,@PROD nchar(1),@DB_Last_Updated DateTime,@Drop1 nvarchar(100),@Drop2 nvarchar(100),
@Drop3 nvarchar(100),@Drop4 nchar(2)
AS
BEGIN
	declare
	@i decimal(6,2),@k decimal(6,2),@j decimal(6,2),@Sum decimal(6,2),
	@id1 nvarchar(10),@id2 nvarchar(10),@id3 nvarchar(10)
	if(@Drop1='Select')
	Begin
	 set @i=0;
	 End
	 else
	 Begin	
	select @i=min(Rate_Amount) from Product_Rates where Product_ID=(Select Product_ID from Products where Product_Name=@Drop1)
	select @id1=Product_ID from Products where Product_Name=@Drop1
	End	
   if(@Drop2='Select')
   Begin
    set @j=0;
    End
    else
    Begin
    select @j=min(Rate_Amount) from Product_Rates where Product_ID=(Select Product_ID from Products where Product_Name=@Drop2)
    select @id2=Product_ID from Products where Product_Name=@Drop2
    End   
    if(@Drop3='Select')
    Begin
    set @k=0;
    End
    else
    Begin
    select @k=min(Rate_Amount) from Product_Rates where Product_ID=(Select Product_ID from Products where Product_Name=@Drop3)
    select @id3=Product_ID from Products where Product_Name=@Drop3
    End
    declare
    @a decimal(6,2),@b int,@cin decimal
    
    Set @Sum=(@i+@j+@k)*(1-@Bundle_Discount/100)
    insert into  Bundles(Bundle_Name,Bundle_Desc,Bundle_Discount,Bundle_Eff_Date,Bundle_End_Date,PROD,
   DB_Last_Updated,Bundle_Price,State_CD) values(@Bundle_Name,@Bundle_Desc,@Bundle_Discount,@Bundle_Eff_Date,@Bundle_End_Date,@PROD,
   @DB_Last_Updated,@Sum,@Drop4)
   declare
   @C int 
   select @C=max(Bundle_ID)from Bundles
   If(@Drop1!='Select')
   Begin
   insert into Bundle_Products(Bundle_ID,Product_ID,PROD,DB_Last_updated) values(@C,@id1,@PROD,@DB_Last_Updated)
   End
   If(@Drop2!='Select')
   Begin
    insert into Bundle_Products(Bundle_ID,Product_ID,PROD,DB_Last_updated) values(@C,@id2,@PROD,@DB_Last_Updated)
  End
  If(@Drop3!='Select')
  Begin
   insert into Bundle_Products(Bundle_ID,Product_ID,PROD,DB_Last_updated) values(@C,@id3,@PROD,@DB_Last_Updated)
   End
   
     
END
GO
/****** Object:  Table [dbo].[PCR]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PCR](
	[Title] [nvarchar](100) NOT NULL,
	[Service_ID] [nchar](1) NULL,
 CONSTRAINT [PK_PCR_1] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Change Cloud Service', N'6')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Change in Fios Product1', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Change in Ip', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Change Static IP', N'6')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Manager1', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Manager2', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Manger', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'modification', N'3')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'sample', N'1')
INSERT [PCR] ([Title], [Service_ID]) VALUES (N'Team', N'3')
/****** Object:  Table [dbo].[Services_Det]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Services_Det](
	[Service_ID] [nvarchar](2) NOT NULL,
	[Services_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Service_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'1', N'Wireline-FIOS Voice Services')
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'2', N'Wireline-FIOS Data Services')
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'3', N'Wireline-FIOS TV Services')
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'4', N'Wireline Bundles')
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'5', N'Wireless Service')
INSERT [Services_Det] ([Service_ID], [Services_Name]) VALUES (N'6', N'EnterPrice Services')
/****** Object:  View [dbo].[Ser]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [Ser] as select p.Product_ID,Product_Name,s.Services_Name from Products p inner join Services_Det s on p.Service_ID=s.Service_ID
GO
/****** Object:  StoredProcedure [dbo].[makeReport]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [makeReport]
	
AS
BEGIN
	
	SELECT S.Services_Name ,P.Product_Name
	from Products P inner Join Services_Det S
	on P.Service_ID=S.Service_ID
	
END
GO
/****** Object:  Table [dbo].[State]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [State](
	[State_CD] [nchar](2) NOT NULL,
	[State_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State_CD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [State] ([State_CD], [State_name]) VALUES (N'AL', N'Alabama')
INSERT [State] ([State_CD], [State_name]) VALUES (N'NY', N'New York')
/****** Object:  Table [dbo].[Zip_code]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zip_code](
	[Zip_code] [int] NOT NULL,
	[State_CD] [nchar](2) NULL,
 CONSTRAINT [PK_Zip_code] PRIMARY KEY CLUSTERED 
(
	[Zip_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (10001, N'NY')
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (10002, N'NY')
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (10003, N'NY')
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (35004, N'AL')
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (35005, N'AL')
INSERT [Zip_code] ([Zip_code], [State_CD]) VALUES (35006, N'AL')
/****** Object:  View [dbo].[Avail]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [Avail] as
                (Select Product_ID,Service_ID from  Products where  Product_ID='E0001' Union Select s.State_name,z.zip_code from State s inner join Zip_Code z On s.state_cd=z.state_cd);
GO
/****** Object:  View [dbo].[Av2]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [Av2] as
             (Select State_name,zip_code from States s inner join Zip_Code z On s.state_cd=z.state_cd) union (Select Product_ID,Service_ID from  Products where  Product_ID='E0001');
GO
/****** Object:  View [dbo].[Av1]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [Av1] as 
                 (Select State_name,zip_code from States s inner join Zip_Code z On s.state_cd=z.state_cd) union (Select Product_ID,Service_ID from  Products where  Product_ID='E0001');
GO
/****** Object:  View [dbo].[Av]    Script Date: 08/28/2015 12:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [Av] as
                ( (Select State_name,zip_code from State s inner join Zip_Code z On s.state_cd=z.state_cd) union all (Select Product_ID,Service_ID from  Products where  Product_ID='E0001'));
GO
/****** Object:  Check [CK_Products]    Script Date: 08/28/2015 12:31:42 ******/
ALTER TABLE [Products]  WITH CHECK ADD  CONSTRAINT [CK_Products] CHECK  (([PROD] like 'Y' OR [PROD] like 'N'))
GO
ALTER TABLE [Products] CHECK CONSTRAINT [CK_Products]
GO
/****** Object:  ForeignKey [FK_Bundle_Products_Bundles]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Bundle_Products]  WITH CHECK ADD  CONSTRAINT [FK_Bundle_Products_Bundles] FOREIGN KEY([Product_ID])
REFERENCES [Products] ([Product_ID])
GO
ALTER TABLE [Bundle_Products] CHECK CONSTRAINT [FK_Bundle_Products_Bundles]
GO
/****** Object:  ForeignKey [FK_Product_Avail_Product_Avail]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Product_Avail]  WITH CHECK ADD  CONSTRAINT [FK_Product_Avail_Product_Avail] FOREIGN KEY([Product_ID], [Service_ID], [Zipcode])
REFERENCES [Product_Avail] ([Product_ID], [Service_ID], [Zipcode])
GO
ALTER TABLE [Product_Avail] CHECK CONSTRAINT [FK_Product_Avail_Product_Avail]
GO
/****** Object:  ForeignKey [FK_Product_Rates_Product_Rates]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Product_Rates]  WITH CHECK ADD  CONSTRAINT [FK_Product_Rates_Product_Rates] FOREIGN KEY([Product_ID])
REFERENCES [Products] ([Product_ID])
GO
ALTER TABLE [Product_Rates] CHECK CONSTRAINT [FK_Product_Rates_Product_Rates]
GO
/****** Object:  ForeignKey [FK_Product_Rates_State]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Product_Rates]  WITH CHECK ADD  CONSTRAINT [FK_Product_Rates_State] FOREIGN KEY([State_CD])
REFERENCES [State] ([State_CD])
GO
ALTER TABLE [Product_Rates] CHECK CONSTRAINT [FK_Product_Rates_State]
GO
/****** Object:  ForeignKey [FK_Services_Det_Services_Det]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Services_Det]  WITH CHECK ADD  CONSTRAINT [FK_Services_Det_Services_Det] FOREIGN KEY([Service_ID])
REFERENCES [Services_Det] ([Service_ID])
GO
ALTER TABLE [Services_Det] CHECK CONSTRAINT [FK_Services_Det_Services_Det]
GO
/****** Object:  ForeignKey [FK_Zip_State]    Script Date: 08/28/2015 12:31:43 ******/
ALTER TABLE [Zip_code]  WITH CHECK ADD  CONSTRAINT [FK_Zip_State] FOREIGN KEY([State_CD])
REFERENCES [State] ([State_CD])
GO
ALTER TABLE [Zip_code] CHECK CONSTRAINT [FK_Zip_State]
GO
