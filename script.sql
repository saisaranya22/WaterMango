USE [master]
GO
/****** Object:  Database [WaterMango]    Script Date: 11/15/2019 11:55:04 AM ******/
CREATE DATABASE [WaterMango]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WaterMango', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_SAI\MSSQL\DATA\WaterMango.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WaterMango_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_SAI\MSSQL\DATA\WaterMango_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WaterMango] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WaterMango].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WaterMango] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WaterMango] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WaterMango] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WaterMango] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WaterMango] SET ARITHABORT OFF 
GO
ALTER DATABASE [WaterMango] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WaterMango] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WaterMango] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WaterMango] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WaterMango] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WaterMango] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WaterMango] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WaterMango] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WaterMango] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WaterMango] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WaterMango] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WaterMango] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WaterMango] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WaterMango] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WaterMango] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WaterMango] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WaterMango] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WaterMango] SET RECOVERY FULL 
GO
ALTER DATABASE [WaterMango] SET  MULTI_USER 
GO
ALTER DATABASE [WaterMango] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WaterMango] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WaterMango] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WaterMango] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WaterMango] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WaterMango', N'ON'
GO
ALTER DATABASE [WaterMango] SET QUERY_STORE = OFF
GO
USE [WaterMango]
GO
/****** Object:  Table [dbo].[Plants]    Script Date: 11/15/2019 11:55:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plants](
	[PlantName] [nchar](10) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/15/2019 11:55:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](50) NULL,
	[Password] [nchar](10) NOT NULL,
	[UserLevel] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [WaterMango] SET  READ_WRITE 
GO
