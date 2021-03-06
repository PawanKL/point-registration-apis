USE [master]
GO
/****** Object:  Database [PointRegisteration]    Script Date: 03/03/2020 7:10:35 PM ******/
CREATE DATABASE [PointRegisteration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PointRegisteration', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PointRegisteration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PointRegisteration_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PointRegisteration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PointRegisteration] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PointRegisteration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PointRegisteration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PointRegisteration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PointRegisteration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PointRegisteration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PointRegisteration] SET ARITHABORT OFF 
GO
ALTER DATABASE [PointRegisteration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PointRegisteration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PointRegisteration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PointRegisteration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PointRegisteration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PointRegisteration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PointRegisteration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PointRegisteration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PointRegisteration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PointRegisteration] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PointRegisteration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PointRegisteration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PointRegisteration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PointRegisteration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PointRegisteration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PointRegisteration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PointRegisteration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PointRegisteration] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PointRegisteration] SET  MULTI_USER 
GO
ALTER DATABASE [PointRegisteration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PointRegisteration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PointRegisteration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PointRegisteration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PointRegisteration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PointRegisteration] SET QUERY_STORE = OFF
GO
USE [PointRegisteration]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 03/03/2020 7:10:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[NIC] [varchar](13) NOT NULL,
	[Name] [char](30) NOT NULL,
	[ContactNo] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[NIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 03/03/2020 7:10:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[FeesID] [int] NOT NULL,
	[Semester] [char](10) NOT NULL,
	[Year] [int] NOT NULL,
	[Fees] [int] NOT NULL,
	[DueDate] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Fees] PRIMARY KEY CLUSTERED 
(
	[FeesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point]    Script Date: 03/03/2020 7:10:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point](
	[RegNo] [varchar](10) NOT NULL,
	[NoOfSeats] [int] NOT NULL,
	[DriverNIC] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Point] PRIMARY KEY CLUSTERED 
(
	[RegNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Route]    Script Date: 03/03/2020 7:10:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] NOT NULL,
	[RegNo] [varchar](10) NOT NULL,
	[Stop] [varchar](30) NOT NULL,
	[Time] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/03/2020 7:10:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[NUID] [varchar](40) NOT NULL,
	[Name] [char](30) NOT NULL,
	[Batch] [int] NOT NULL,
	[Department] [char](30) NOT NULL,
	[ContactNo] [varchar](13) NOT NULL,
	[PickUpPointId] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[NUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFees]    Script Date: 03/03/2020 7:10:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFees](
	[NUID] [varchar](40) NOT NULL,
	[FeesID] [int] NOT NULL,
	[PaidDate] [varchar](15) NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[IsPay] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_Driver] FOREIGN KEY([DriverNIC])
REFERENCES [dbo].[Driver] ([NIC])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_Driver]
GO
ALTER TABLE [dbo].[Route]  WITH CHECK ADD  CONSTRAINT [FK_Route_Point] FOREIGN KEY([RegNo])
REFERENCES [dbo].[Point] ([RegNo])
GO
ALTER TABLE [dbo].[Route] CHECK CONSTRAINT [FK_Route_Point]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Route] FOREIGN KEY([PickUpPointId])
REFERENCES [dbo].[Route] ([RouteID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Route]
GO
ALTER TABLE [dbo].[StudentFees]  WITH CHECK ADD  CONSTRAINT [FK_StudentFees_Fees] FOREIGN KEY([FeesID])
REFERENCES [dbo].[Fees] ([FeesID])
GO
ALTER TABLE [dbo].[StudentFees] CHECK CONSTRAINT [FK_StudentFees_Fees]
GO
ALTER TABLE [dbo].[StudentFees]  WITH CHECK ADD  CONSTRAINT [FK_StudentFees_Student] FOREIGN KEY([NUID])
REFERENCES [dbo].[Student] ([NUID])
GO
ALTER TABLE [dbo].[StudentFees] CHECK CONSTRAINT [FK_StudentFees_Student]
GO
USE [master]
GO
ALTER DATABASE [PointRegisteration] SET  READ_WRITE 
GO
