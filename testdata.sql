USE [Test1]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [date] NOT NULL,
	[IdAccount] [int] NOT NULL,
	[PriceCombo] [float] NOT NULL,
	[PriceSeat] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[description_Combo] [nvarchar](100) NOT NULL,
	[description_Seat] [nvarchar](100) NOT NULL,
	[IdMovie] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[billSeats]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[billSeats](
	[bill_id] [int] NOT NULL,
	[ticket_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC,
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[idCombo] [int] IDENTITY(1,1) NOT NULL,
	[ComboDescription] [nvarchar](400) NOT NULL,
	[ComboImage] [nvarchar](200) NOT NULL,
	[ComboName] [nvarchar](400) NOT NULL,
	[ComboPrice] [nvarchar](20) NOT NULL,
	[Number] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[idEvent] [int] IDENTITY(1,1) NOT NULL,
	[Discount] [nvarchar](20) NOT NULL,
	[EndDay] [date] NOT NULL,
	[EventDescription] [nvarchar](400) NOT NULL,
	[EventName] [nvarchar](40) NOT NULL,
	[EventPoster] [varchar](400) NOT NULL,
	[StartDay] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[IDMovie] [int] IDENTITY(1,1) NOT NULL,
	[MainActor] [nvarchar](20) NULL,
	[BannerMovie] [nvarchar](max) NULL,
	[Category] [int] NULL,
	[Country] [nvarchar](40) NULL,
	[DateOpen] [date] NULL,
	[Description] [nvarchar](20) NULL,
	[Director] [nvarchar](20) NULL,
	[Language] [nvarchar](20) NULL,
	[MovieName] [nvarchar](255) NULL,
	[PosterMovie] [nvarchar](max) NULL,
	[Time] [nvarchar](5) NULL,
	[Year] [nvarchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movieTypes]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movieTypes](
	[movie_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Gmail] [nvarchar](100) NOT NULL,
	[IDRole] [nvarchar](30) NOT NULL,
	[Member] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Sex] [bit] NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[BirthDay] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_j9i1ot4xgj4xstffeicn2j8om] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_l8911m2hhn20y2kdjcm0kqh13] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_u4eyofrhj35whylloxcoomjw] UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QrCode]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QrCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [image] NULL,
	[Verify] [nvarchar](100) NOT NULL,
	[bill_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Coluum] [int] NOT NULL,
	[RoomName] [nvarchar](100) NOT NULL,
	[Row] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowTime]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowTime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [date] NOT NULL,
	[IdMovie] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[Time] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameSeat] [nvarchar](100) NOT NULL,
	[RoomId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketMovie]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketMovie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NULL,
	[IsVip] [bit] NOT NULL,
	[NameSeat] [nvarchar](100) NOT NULL,
	[RoomId] [int] NOT NULL,
	[ShowId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketType]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMovie]    Script Date: 15/8/2022 3:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMovie](
	[IDTypeMovie] [int] IDENTITY(1,1) NOT NULL,
	[TypeMovieName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTypeMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FKov10e59kvg5x9e6rxqhcqrm13] FOREIGN KEY([IdAccount])
REFERENCES [dbo].[People] ([IDUser])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FKov10e59kvg5x9e6rxqhcqrm13]
GO
ALTER TABLE [dbo].[billSeats]  WITH CHECK ADD  CONSTRAINT [FKaxbiovlj2etaqo6ltcc6xtheo] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[TicketMovie] ([Id])
GO
ALTER TABLE [dbo].[billSeats] CHECK CONSTRAINT [FKaxbiovlj2etaqo6ltcc6xtheo]
GO
ALTER TABLE [dbo].[billSeats]  WITH CHECK ADD  CONSTRAINT [FKe95yuq4fsgeflu4rbl2vk0q58] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[billSeats] CHECK CONSTRAINT [FKe95yuq4fsgeflu4rbl2vk0q58]
GO
ALTER TABLE [dbo].[movieTypes]  WITH CHECK ADD  CONSTRAINT [FK7bx9mi0kprmliqui9vvu0mf8u] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movie] ([IDMovie])
GO
ALTER TABLE [dbo].[movieTypes] CHECK CONSTRAINT [FK7bx9mi0kprmliqui9vvu0mf8u]
GO
ALTER TABLE [dbo].[movieTypes]  WITH CHECK ADD  CONSTRAINT [FKrlasuaosfqp6va0oxwlbb55o7] FOREIGN KEY([type_id])
REFERENCES [dbo].[TypeMovie] ([IDTypeMovie])
GO
ALTER TABLE [dbo].[movieTypes] CHECK CONSTRAINT [FKrlasuaosfqp6va0oxwlbb55o7]
GO
ALTER TABLE [dbo].[QrCode]  WITH CHECK ADD  CONSTRAINT [FK2qac76048u03p5sskxq4tm7ip] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[QrCode] CHECK CONSTRAINT [FK2qac76048u03p5sskxq4tm7ip]
GO
ALTER TABLE [dbo].[ShowTime]  WITH CHECK ADD  CONSTRAINT [FK4s7sc95soh6kmk0qphnm9exwk] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[ShowTime] CHECK CONSTRAINT [FK4s7sc95soh6kmk0qphnm9exwk]
GO
ALTER TABLE [dbo].[ShowTime]  WITH CHECK ADD  CONSTRAINT [FK88w103tswvl7wcoqffp4ux147] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[Movie] ([IDMovie])
GO
ALTER TABLE [dbo].[ShowTime] CHECK CONSTRAINT [FK88w103tswvl7wcoqffp4ux147]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FKfosq883s0uktp2ih6f5vbe59i] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FKfosq883s0uktp2ih6f5vbe59i]
GO
ALTER TABLE [dbo].[TicketMovie]  WITH CHECK ADD  CONSTRAINT [FK57bqrncc8hdqmq5jbebsl12in] FOREIGN KEY([ShowId])
REFERENCES [dbo].[ShowTime] ([Id])
GO
ALTER TABLE [dbo].[TicketMovie] CHECK CONSTRAINT [FK57bqrncc8hdqmq5jbebsl12in]
GO
