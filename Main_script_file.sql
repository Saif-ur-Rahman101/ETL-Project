
USE [Music_Star_Schema]
GO
/****** Object:  Table [dbo].[Dim_album]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_album](
	[album_id] [int] NOT NULL,
	[title] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_album] PRIMARY KEY CLUSTERED 
(
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_artist]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_artist](
	[artist_id] [int] NOT NULL,
	[artist_name] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_artist] PRIMARY KEY CLUSTERED 
(
	[artist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_customer]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_customer](
	[customer_id] [int] NOT NULL,
	[customer_name] [nvarchar](255) NOT NULL,
	[company] [varchar](255) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[state] [varchar](255) NOT NULL,
	[country] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Dim_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[DateId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[day] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[DayName] [varchar](50) NULL,
	[WeekYear] [int] NULL,
 CONSTRAINT [PK_Dim_Date] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_employees]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_employees](
	[employee_id] [int] NOT NULL,
	[employee_name] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[country] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_genre]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_genre](
	[genre_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_media_type]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_media_type](
	[media_type_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_media_type] PRIMARY KEY CLUSTERED 
(
	[media_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_playlist]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_playlist](
	[playlist_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_playlist] PRIMARY KEY CLUSTERED 
(
	[playlist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_track]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_track](
	[track_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[composer] [varchar](255) NULL,
 CONSTRAINT [PK_Dim_track] PRIMARY KEY CLUSTERED 
(
	[track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Sales]    Script Date: 18/06/2024 9:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Sales](
	[fact_id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [int] NOT NULL,
	[invoice_date_id] [int] NOT NULL,
	[invoice_line_id] [int] NOT NULL,
	[billing_city] [nvarchar](50) NULL,
	[billing_state] [nvarchar](50) NULL,
	[billing_country] [nvarchar](50) NULL,
	[unit_price] [money] NULL,
	[quantity] [int] NULL,
	[revenue] [money] NULL,
	[album_id] [int] NOT NULL,
	[artist_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[media_type_id] [int] NOT NULL,
	[track_id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_Sales] PRIMARY KEY CLUSTERED 
(
	[fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[Dim_album] ([album_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_album]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_artist] FOREIGN KEY([artist_id])
REFERENCES [dbo].[Dim_artist] ([artist_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_artist]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Dim_customer] ([customer_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_customer]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_Date] FOREIGN KEY([invoice_date_id])
REFERENCES [dbo].[Dim_Date] ([DateId])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_Date]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[Dim_employees] ([employee_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_employees]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_genre] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Dim_genre] ([genre_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_genre]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_media_type] FOREIGN KEY([media_type_id])
REFERENCES [dbo].[Dim_media_type] ([media_type_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_media_type]
GO
ALTER TABLE [dbo].[Fact_Sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Sales_Dim_track] FOREIGN KEY([track_id])
REFERENCES [dbo].[Dim_track] ([track_id])
GO
ALTER TABLE [dbo].[Fact_Sales] CHECK CONSTRAINT [FK_Fact_Sales_Dim_track]
GO
USE [master]
GO
ALTER DATABASE [Music_Star_Schema] SET  READ_WRITE 
GO
