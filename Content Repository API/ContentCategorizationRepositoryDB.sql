USE [master]
GO
/****** Object:  Database [ContentCategorizationRepository]    Script Date: 8/14/2018 1:19:06 AM ******/
CREATE DATABASE [ContentCategorizationRepository] ON  PRIMARY 
( NAME = N'ContentCategorizationRepository', FILENAME = N'D:\Installation Folder\SQL2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\ContentCategorizationRepository.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ContentCategorizationRepository_log', FILENAME = N'D:\Installation Folder\SQL2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\ContentCategorizationRepository_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContentCategorizationRepository].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContentCategorizationRepository] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContentCategorizationRepository] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContentCategorizationRepository] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContentCategorizationRepository] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContentCategorizationRepository] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContentCategorizationRepository] SET RECOVERY FULL 
GO
ALTER DATABASE [ContentCategorizationRepository] SET  MULTI_USER 
GO
ALTER DATABASE [ContentCategorizationRepository] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContentCategorizationRepository] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ContentCategorizationRepository', N'ON'
GO
USE [ContentCategorizationRepository]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 8/14/2018 1:19:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Category] [nvarchar](max) NOT NULL,
	[ArticleContent] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ContentCategorizationRepository] SET  READ_WRITE 
GO
