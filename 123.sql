USE [master]
GO
/****** Object:  Database [ProjectDB]    Script Date: 1/14/2019 9:19:07 AM ******/
CREATE DATABASE [ProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VINHDK\MSSQL\DATA\ProjectDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VINHDK\MSSQL\DATA\ProjectDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectDB]
GO
/****** Object:  Table [dbo].[tblAward]    Script Date: 1/14/2019 9:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAward](
	[PrizeName] [nvarchar](50) NOT NULL,
	[PrizeID] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[rank] [int] NULL,
	[Address] [nvarchar](500) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tblAward_1] PRIMARY KEY CLUSTERED 
(
	[PrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEventAward]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEventAward](
	[EventId] [nvarchar](50) NOT NULL,
	[PrizeID] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tblEventAward] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[PrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEvents]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEvents](
	[EventID] [nvarchar](50) NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
	[EventSize] [int] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StartEvent] [datetime] NOT NULL,
	[img] [varchar](500) NULL,
 CONSTRAINT [PK_tblEvents] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTeam]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeam](
	[username] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[size] [int] NULL,
	[DateCreate] [datetime] NULL,
	[eventID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTeam] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Birthdate] [datetime] NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Major] [nvarchar](50) NULL,
	[img] [nvarchar](500) NULL,
	[serectPass] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserAward]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserAward](
	[username] [nvarchar](50) NOT NULL,
	[PrizeID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUserAward] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[PrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserEvent]    Script Date: 1/14/2019 9:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserEvent](
	[Username] [nvarchar](50) NOT NULL,
	[EventID] [nvarchar](50) NOT NULL,
	[haveTeam] [bit] NOT NULL,
	[haveLeader] [bit] NOT NULL,
	[rank] [int] NULL,
 CONSTRAINT [PK_tblUserEvent] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblAward] ([PrizeName], [PrizeID], [Description], [rank], [Address], [quantity]) VALUES (N'LAPTOP SONY LCD', N'P01', N'<p>Qu&agrave; cao qu&yacute;</p>
', 1, N'American', 86)
INSERT [dbo].[tblAward] ([PrizeName], [PrizeID], [Description], [rank], [Address], [quantity]) VALUES (N'Bàn phím cao cấp 50k', N'P03', N'Quà vừa phải', 2, N'Korea', 117)
INSERT [dbo].[tblAward] ([PrizeName], [PrizeID], [Description], [rank], [Address], [quantity]) VALUES (N'Chuột cao cấp', N'P04', N'Quà bình thường', 3, N'Vietname', 117)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E01', N'P01', 7)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E01', N'P03', 3)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E01', N'P04', 3)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E04', N'P01', NULL)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E04', N'P03', NULL)
INSERT [dbo].[tblEventAward] ([EventId], [PrizeID], [quantity]) VALUES (N'E04', N'P04', NULL)
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E01', N'Núi non cao vời vợi', 200, N'Sảnh dưới AEON MALL Tân Phú', N'<p>Tập hợp những h&igrave;nh&nbsp;ảnh về những d&atilde;y n&uacute;i d&agrave;i, những ngọn n&uacute;i cao hay những d&atilde;y n&uacute;i tuyết m&agrave; những người&nbsp;đ&atilde; từng&nbsp;đi du lịch c&oacute; chụp lại.&nbsp;Đến với sự kiện n&agrave;y c&aacute;c bạn c&oacute; thể trải nghiệm&nbsp;được cảm gi&aacute;c lạnh gi&aacute; của n&uacute;i tuyết hay sự lo sợ về&nbsp;độ cao của 1 ngọn n&uacute;i cao h&agrave;ng trăm m&eacute;t. C&ograve;n chừng chờ g&igrave; nữa. H&atilde;y&nbsp;đăng k&iacute; ngay th&ocirc;i</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', CAST(N'2017-10-31 17:50:00.000' AS DateTime), N'img/photo1.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E02', N'Tinh khiết và trong lành', 50, N'Innovation building', N'<p>Đến&nbsp;đ&acirc;y v&agrave; trải nghiệm những h&igrave;nh&nbsp;ảnh tinh kh&ocirc;i của buổi s&aacute;ng. Ngắm nh&igrave;n khoảnh khắc bong b&oacute;ng nước vỡ ra chậm r&atilde;i. Nh&igrave;n ngắm những giọt sương ban mai&nbsp;đang khởi sắc.&nbsp;Đăng k&iacute; ngay n&agrave;o!!</p>
', CAST(N'2017-10-31 17:50:00.000' AS DateTime), N'img/placeholders/photos/photo2.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E04', N'Đồng cỏ và tuổi thơ', 50, N'Đồng diều', N'<p>C&oacute; bao giờ bạn muốn trở về với tuổi thơ. C&oacute; bao giờ bạn muốn m&igrave;nh&nbsp;được&nbsp;đấm chiềm trong kh&ocirc;ng kh&iacute; ban s&aacute;ng tinh mơ.&nbsp;Được thả diều với bạn b&egrave;, chơi&nbsp;đ&ugrave;a v&agrave; h&aacute;t h&ograve; c&ugrave;ng nhau. H&atilde;y&nbsp;đến với &quot;Đồng cỏ v&agrave; tuổi thơ&quot; nơi&nbsp;đ&acirc;y sẽ mang cho bạn 1 cảm gi&aacute;c quen thuộc của tuổi nhỏ. Bạn sẽ&nbsp;được vi vu b&ecirc;n con diều, h&aacute;t h&ograve; với bạn b&egrave;...&nbsp;Đăng k&iacute; ngay n&agrave;o</p>
', CAST(N'2017-10-31 17:50:00.000' AS DateTime), N'img/placeholders/photos/photo20.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E06', N'Khoảng lặng', 50, N'Phố đi bộ Nguyễn Huệ', N'<p>Bạn c&oacute; thường xuy&ecirc;n&nbsp;đi dạo&nbsp;để h&iacute;t thở kh&ocirc;ng kh&iacute; m&aacute;t lạnh buổi&nbsp;đ&ecirc;m. Hay chỉ ngồi nh&agrave;&nbsp;&ocirc;m những con m&aacute;y t&iacute;nh ,&nbsp;điện thoại ? Bạn c&oacute; muốn tho&aacute;t khỏi sự t&ugrave; t&uacute;ng&nbsp;đ&oacute; kh&ocirc;ng. H&atilde;y&nbsp;đến với ch&uacute;ng t&ocirc;i, Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn tho&aacute;t khỏi sự c&ocirc;&nbsp;đơn v&agrave; mang cho bạn 1 cảm gi&aacute;c vui tươi sản kho&aacute;i!!&nbsp;Đăng k&iacute; b&ecirc;n dưới</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo5.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E08', N'Nóng và sáng', 50, N'Quảng trường Ba Đình', N'<p>Đ&atilde; sẵn s&agrave;ng&nbsp;để nướng thịt chưa v&agrave; cả b&aacute;nh nữa? Thay v&igrave; ngồi nh&agrave; v&agrave; xem review&nbsp;đồ&nbsp;ăn th&igrave; h&atilde;y&nbsp;đến&nbsp;đ&acirc;y. Bạn sẽ&nbsp;được l&agrave;m v&agrave;&nbsp;ăn những m&oacute;n&nbsp;ăn th&uacute; vị, ngon gi&ograve;n gi&atilde;. Nhanh tay&nbsp;đăng k&iacute; n&agrave;o</p>
', CAST(N'2018-10-29 13:35:00.000' AS DateTime), N'img/placeholders/photos/photo23.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E09', N'Múa, nhảy và học hỏi', 50, N'Hội Trường FPT', N'<p>Bạn c&oacute; phải l&agrave; 1 dancer ? hay bạn l&agrave; 1 người y&ecirc;u nhảy m&uacute;a.&nbsp;&nbsp;Đăng k&iacute; nhanh n&agrave;o, bạn sẽ&nbsp;được giao lưu với những dancer l&atilde;o luyện cũng như kết&nbsp;được th&ecirc;m nhiều bạn b&egrave; mới khi&nbsp;đến với FPT Dancing!!</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/placeholders/photos/photo4.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E10', N'Buffet tFPT', 50, N'Innovation building', N'<p>Đến&nbsp;đ&acirc;y v&agrave;&nbsp;ăn thỏa th&iacute;ch. D&ugrave; bạn c&oacute; l&agrave; ai, bao nhi&ecirc;u tuổi,&nbsp;ế hay&nbsp;đ&atilde; c&oacute; người y&ecirc;u&nbsp;đều vẫn muốn&nbsp;được&nbsp;ăn&nbsp;đ&uacute;ng kh&ocirc;ng?&nbsp;Đến&nbsp;đ&acirc;y nhanh n&agrave;o kẻo người ta&nbsp;ăn hết b&acirc;y giờ</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo7.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E100', N'Hội Chợ', 200, N'Lotte Mart', N'<p>V&agrave;o h&ocirc;m nay sẽ c&oacute; buổi sale off lớn của c&aacute;c h&atilde;ng quần&nbsp;&aacute;o tr&ecirc;n to&agrave;n thế giới. Nhanh ch&acirc;n nhanh tay lựa chọn những m&oacute;n&nbsp;đồ m&igrave;nh y&ecirc;u th&iacute;ch n&agrave;o. An t&acirc;m về gi&aacute; cả v&agrave; chất lượng nh&eacute;!!</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo8.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E11', N'Thiên nhiên', 50, N'Hội Trường FPT', N'<p>Bạn c&oacute; y&ecirc;u thi&ecirc;n nhi&ecirc;n kh&ocirc;ng ? bạn c&oacute; muốn h&ograve;a m&igrave;nh với thi&ecirc;n nhi&ecirc;n trong l&agrave;nh kh&ocirc;ng ? H&atilde;y&nbsp;đăng k&iacute; nhanh&nbsp;để c&oacute; thể may mắn nhận&nbsp;đuợc 1 chiếc v&eacute;&nbsp;đi về c&aacute;c miền s&ocirc;ng nước rừng ngập mặn n&agrave;o!! Nhanh tay n&agrave;o!!</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo15@2x.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E12', N'EDM cùng đồng bọn', 50, N'Khu quân sự quân khu 7', N'<p>H&atilde;y 1 lần trải nghiệm l&agrave; sinh vi&ecirc;n FPT&nbsp;để&nbsp;được h&ograve;a m&igrave;nh v&agrave;o trong những&nbsp;điệu nhạc sập s&igrave;nh những giao&nbsp;điệu mạnh mẽ c&ugrave;ng với&nbsp;điệu nhảy mới lạ &quot;Vinahey&quot; !!</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo13.jpg')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventSize], [Location], [Description], [StartEvent], [img]) VALUES (N'E121', N'Xe và bạn', 10, N'Villa house', N'<p>Nếu l&agrave; 1 người y&ecirc;u xe. H&atilde;y&nbsp;đến&nbsp;đ&acirc;y c&ugrave;ng ch&uacute;ng t&ocirc;i học hỏi v&agrave; hiểu biết th&ecirc;m thật nhiều loại xe mới. Những loại xe c&oacute; thể l&agrave;m bạn m&ecirc; ly&nbsp;đấm chiềm v&agrave;o n&oacute;!!&nbsp;</p>
', CAST(N'2019-10-31 17:50:00.000' AS DateTime), N'img/photo11@2x.jpg')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Bò', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Chó', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'binh', N'Dang Khanh Vinh', 10, CAST(N'2018-10-29 09:31:49.743' AS DateTime), N'E06')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'dong', N'Dong team', 5, CAST(N'2018-10-29 13:26:53.427' AS DateTime), N'E06')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Gà', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Heo', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'vinh', N'II', 10, CAST(N'2018-10-28 11:34:43.673' AS DateTime), N'E09')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Mèo', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'vinh', N'OL', 10, CAST(N'2018-10-28 11:33:05.740' AS DateTime), N'E100')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manhofvinh', N'Prety', 10, CAST(N'2018-10-27 14:21:14.247' AS DateTime), N'E12')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'thanh', N'ThanhA', 10, CAST(N'2018-10-28 15:17:58.023' AS DateTime), N'E100')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Trâu', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'binh', N'U', 10, CAST(N'2018-10-28 15:16:15.023' AS DateTime), N'E100')
INSERT [dbo].[tblTeam] ([username], [name], [size], [DateCreate], [eventID]) VALUES (N'manh', N'Vịt', 10, CAST(N'2018-10-27 00:00:00.000' AS DateTime), N'E04')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'binh', N'123456', N'user', N'Trần Văn Bình', N'binhtvse@fpt.edu.vn', NULL, NULL, NULL, N'img/photo8.jpg', N'binhbinh')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'dong', N'123456', N'user', N'dong', N'dong@gmail.com', NULL, NULL, NULL, NULL, N'123456')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'huy', N'123456', N'user', N'Huy', N'huy@gmail.com', NULL, NULL, NULL, N'img/photo3.jpg', N'huyhuy')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'long', N'4313004', N'user', N'Đặng Văn long', N'longdang16121973@gmail.com', NULL, NULL, NULL, N'img/photo3.jpg', N'123')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'manh', N'ofvinh', N'user', N'Phạm Ngọc Châu Minh Anh', N'anhpncmse63138@fpt.edu.vn', CAST(N'1997-10-06 00:00:00.000' AS DateTime), N'(123) 131-1321', N'Software', N'img/photo5.jpg', N'manhmanh')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'manhofvinh', N'ofvinh', N'user', N'Châu', N'chanhchanh9999@gmail.com', NULL, NULL, NULL, NULL, N'manhmanh')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'testadmin', N'123456', N'admin', N'Test Admin', N'testuser@gmail.com', CAST(N'2010-11-11 00:00:00.000' AS DateTime), N'0902818547', N'SE', NULL, N'testtest')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'testuser', N'123456789', N'user', N'Test User', N'testuser@gmail.com', CAST(N'2010-11-11 00:00:00.000' AS DateTime), N'0902818547', N'SE', NULL, N'testtest')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'thanh', N'4313004', N'user', N'Ngô Thanh', N'thanh@gmail.com', NULL, NULL, NULL, N'img/photo10@2x.jpg', N'thanhthanh')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'tran', N'123456', N'user', N'Trần Minh Thắng', N'thang@gmail.com', CAST(N'1998-10-11 00:00:00.000' AS DateTime), N'(090) 281-8547', N'Software', NULL, N'winwin')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'vinh', N'4313004', N'admin', N'Đặng Khánh Vinh', N'vinhdkse62975@fpt.edu.vn', CAST(N'1998-10-19 00:00:00.000' AS DateTime), N'(090) 281-8547', N'Software', N'img/photo14@2x.jpg', N'vinhvinh')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'vy', N'123456', N'user', N'Đặng Huỳnh Ngân Vy', N'vydang@gmail.com', NULL, NULL, NULL, NULL, N'vyvyvyvy')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'vyvy', N'123456', N'user', N'Đặng Khánh Vy', N'vydang@gmail.com', NULL, NULL, NULL, NULL, N'vyvyvyvy')
INSERT [dbo].[tblUser] ([Username], [Password], [Role], [Fullname], [Email], [Birthdate], [PhoneNumber], [Major], [img], [serectPass]) VALUES (N'win', N'ofminhanh', N'user', N'Đặng Khánh Vinh', N'vinhdkse62975@fpt.edu.vn', CAST(N'1998-10-11 00:00:00.000' AS DateTime), N'(090) 281-8547', N'Software', NULL, N'winwin')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'binh', N'P01')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'binh', N'P03')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'binh', N'P04')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'manh', N'P01')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'manh', N'P03')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'manh', N'P04')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'thanh', N'P01')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'thanh', N'P03')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'thanh', N'P04')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'vyvy', N'P01')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'vyvy', N'P03')
INSERT [dbo].[tblUserAward] ([username], [PrizeID]) VALUES (N'vyvy', N'P04')
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'binh', N'E02', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'binh', N'E04', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'binh', N'E06', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'binh', N'E100', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'manh', N'E01', 1, 1, 1)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'manh', N'E02', 1, 1, 1)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'manh', N'E04', 1, 1, 1)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'manhofvinh', N'E12', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'testuser', N'E06', 0, 0, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'thanh', N'E100', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'vinh', N'E01', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'vinh', N'E02', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'vinh', N'E100', 1, 1, NULL)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'win', N'E01', 1, 1, 1)
INSERT [dbo].[tblUserEvent] ([Username], [EventID], [haveTeam], [haveLeader], [rank]) VALUES (N'win', N'E04', 1, 1, 1)
ALTER TABLE [dbo].[tblEventAward]  WITH CHECK ADD  CONSTRAINT [FK_tblEventAward_tblAward] FOREIGN KEY([PrizeID])
REFERENCES [dbo].[tblAward] ([PrizeID])
GO
ALTER TABLE [dbo].[tblEventAward] CHECK CONSTRAINT [FK_tblEventAward_tblAward]
GO
ALTER TABLE [dbo].[tblEventAward]  WITH CHECK ADD  CONSTRAINT [FK_tblEventAward_tblEvents] FOREIGN KEY([EventId])
REFERENCES [dbo].[tblEvents] ([EventID])
GO
ALTER TABLE [dbo].[tblEventAward] CHECK CONSTRAINT [FK_tblEventAward_tblEvents]
GO
ALTER TABLE [dbo].[tblTeam]  WITH CHECK ADD  CONSTRAINT [FK_tblTeam_tblEvents] FOREIGN KEY([eventID])
REFERENCES [dbo].[tblEvents] ([EventID])
GO
ALTER TABLE [dbo].[tblTeam] CHECK CONSTRAINT [FK_tblTeam_tblEvents]
GO
ALTER TABLE [dbo].[tblTeam]  WITH CHECK ADD  CONSTRAINT [FK_tblTeam_tblUser] FOREIGN KEY([username])
REFERENCES [dbo].[tblUser] ([Username])
GO
ALTER TABLE [dbo].[tblTeam] CHECK CONSTRAINT [FK_tblTeam_tblUser]
GO
ALTER TABLE [dbo].[tblUserAward]  WITH CHECK ADD  CONSTRAINT [FK_tblUserAward_tblAward] FOREIGN KEY([PrizeID])
REFERENCES [dbo].[tblAward] ([PrizeID])
GO
ALTER TABLE [dbo].[tblUserAward] CHECK CONSTRAINT [FK_tblUserAward_tblAward]
GO
ALTER TABLE [dbo].[tblUserAward]  WITH CHECK ADD  CONSTRAINT [FK_tblUserAward_tblUser] FOREIGN KEY([username])
REFERENCES [dbo].[tblUser] ([Username])
GO
ALTER TABLE [dbo].[tblUserAward] CHECK CONSTRAINT [FK_tblUserAward_tblUser]
GO
ALTER TABLE [dbo].[tblUserEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblUserEvent_tblEvents] FOREIGN KEY([EventID])
REFERENCES [dbo].[tblEvents] ([EventID])
GO
ALTER TABLE [dbo].[tblUserEvent] CHECK CONSTRAINT [FK_tblUserEvent_tblEvents]
GO
ALTER TABLE [dbo].[tblUserEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblUserEvent_tblUser] FOREIGN KEY([Username])
REFERENCES [dbo].[tblUser] ([Username])
GO
ALTER TABLE [dbo].[tblUserEvent] CHECK CONSTRAINT [FK_tblUserEvent_tblUser]
GO
USE [master]
GO
ALTER DATABASE [ProjectDB] SET  READ_WRITE 
GO
