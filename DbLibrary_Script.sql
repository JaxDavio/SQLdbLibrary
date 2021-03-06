USE [master]
GO
/****** Object:  Database [dbLibrary]    Script Date: 3/3/2017 5:58:43 PM ******/
CREATE DATABASE [dbLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbLibrary', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\dbLibrary.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbLibrary_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\dbLibrary_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbLibrary] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbLibrary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbLibrary] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbLibrary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbLibrary] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [dbLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbLibrary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [dbLibrary]
GO
/****** Object:  Table [dbo].[BOOK]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK](
	[BookID] [varchar](30) NULL,
	[Title] [varchar](30) NULL,
	[PublisherName] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOOK_AUTHORS]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK_AUTHORS](
	[BookID] [varchar](30) NULL,
	[AuthorName] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOOK_COPIES]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK_COPIES](
	[BookID] [varchar](30) NULL,
	[BranchID] [varchar](30) NULL,
	[NoOfCopies] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOOK_LOANS]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK_LOANS](
	[BookID] [varchar](30) NULL,
	[BranchID] [varchar](30) NULL,
	[CardNo] [int] NOT NULL,
	[DateOut] [varchar](30) NULL,
	[DueDate] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BORROWER]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BORROWER](
	[CardNo] [int] NOT NULL,
	[Name] [varchar](30) NULL,
	[Address] [varchar](30) NULL,
	[Phone] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIBRARY_BRANCH]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIBRARY_BRANCH](
	[BranchID] [varchar](30) NULL,
	[BranchName] [varchar](30) NULL,
	[Address] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PUBLISHER]    Script Date: 3/3/2017 5:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUBLISHER](
	[Name] [varchar](30) NULL,
	[Address] [varchar](30) NULL,
	[Phone] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [dbLibrary] SET  READ_WRITE 
GO
