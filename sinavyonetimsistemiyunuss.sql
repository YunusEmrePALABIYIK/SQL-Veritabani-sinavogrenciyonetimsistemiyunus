USE [master]
GO
/****** Object:  Database [Sinavyonetimsistemiyunuss]    Script Date: 20.05.2021 15:58:14 ******/
CREATE DATABASE [Sinavyonetimsistemiyunuss]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sinavyonetimsistemiyunuss', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sinavyonetimsistemiyunuss.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sinavyonetimsistemiyunuss_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sinavyonetimsistemiyunuss_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sinavyonetimsistemiyunuss].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET  MULTI_USER 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET QUERY_STORE = OFF
GO
USE [Sinavyonetimsistemiyunuss]
GO
/****** Object:  Table [dbo].[Derskayitt]    Script Date: 20.05.2021 15:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Derskayitt](
	[Dersadi] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[Dersadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Derslikkayit]    Script Date: 20.05.2021 15:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Derslikkayit](
	[Derslikadi] [int] IDENTITY(1,1) NOT NULL,
	[Derslikkapatasitesi] [int] NOT NULL,
 CONSTRAINT [PK_Derslikkayit] PRIMARY KEY CLUSTERED 
(
	[Derslikadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrencikayitt]    Script Date: 20.05.2021 15:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrencikayitt](
	[Ogrencino] [int] IDENTITY(1,1) NOT NULL,
	[Adsoyad] [nvarchar](30) NOT NULL,
	[Cinsiyet] [nvarchar](5) NOT NULL,
	[Dogumtarihi] [date] NOT NULL,
	[Bolum] [nvarchar](30) NOT NULL,
	[Dersialmasekli] [nvarchar](8) NOT NULL,
	[Ogretimturu] [nvarchar](13) NOT NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[Ogrencino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinavkayitt]    Script Date: 20.05.2021 15:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinavkayitt](
	[Dersadi] [nvarchar](30) NOT NULL,
	[Derslikno] [int] NOT NULL,
	[Sinavturu] [nvarchar](10) NOT NULL,
	[Sinavtarihi] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinavsonuckayitt]    Script Date: 20.05.2021 15:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinavsonuckayitt](
	[Ogrenciadi] [nvarchar](30) NOT NULL,
	[Dersadi] [nvarchar](30) NOT NULL,
	[Sinavturu] [nvarchar](10) NOT NULL,
	[Sinavakatilim] [nvarchar](10) NOT NULL,
	[Sinavpuani] [int] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Sinavyonetimsistemiyunuss] SET  READ_WRITE 
GO
