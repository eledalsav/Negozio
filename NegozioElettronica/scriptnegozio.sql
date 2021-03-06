USE [master]
GO
/****** Object:  Database [NegozioElettronica]    Script Date: 26/08/2021 15:34:56 ******/
CREATE DATABASE [NegozioElettronica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NegozioElettronica', FILENAME = N'C:\Users\elena.dal.savio\NegozioElettronica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NegozioElettronica_log', FILENAME = N'C:\Users\elena.dal.savio\NegozioElettronica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NegozioElettronica] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NegozioElettronica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NegozioElettronica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NegozioElettronica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NegozioElettronica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NegozioElettronica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NegozioElettronica] SET ARITHABORT OFF 
GO
ALTER DATABASE [NegozioElettronica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NegozioElettronica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NegozioElettronica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NegozioElettronica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NegozioElettronica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NegozioElettronica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NegozioElettronica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NegozioElettronica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NegozioElettronica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NegozioElettronica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NegozioElettronica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NegozioElettronica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NegozioElettronica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NegozioElettronica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NegozioElettronica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NegozioElettronica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NegozioElettronica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NegozioElettronica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NegozioElettronica] SET  MULTI_USER 
GO
ALTER DATABASE [NegozioElettronica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NegozioElettronica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NegozioElettronica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NegozioElettronica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NegozioElettronica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NegozioElettronica] SET QUERY_STORE = OFF
GO
USE [NegozioElettronica]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [NegozioElettronica]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26/08/2021 15:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Brand] [nchar](50) NOT NULL,
	[Model] [nchar](50) NOT NULL,
	[Quantity] [int] NULL,
	[Memory] [int] NULL,
	[System] [int] NULL,
	[IsTouch] [bit] NULL,
	[Inch] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'Samsung                                           ', N'Galaxy                                            ', 6, 128, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'Apple                                             ', N'Iphone                                            ', 4, 64, NULL, NULL, NULL, 2)
INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'Samsung                                           ', N'So                                                ', 16, NULL, 1, 0, NULL, 3)
INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'Lenovo                                            ', N'IdeaPad                                           ', 2, NULL, 3, 1, NULL, 4)
INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'Philips                                           ', N'KA65                                              ', 3, NULL, NULL, NULL, 54, 5)
INSERT [dbo].[Product] ([Brand], [Model], [Quantity], [Memory], [System], [IsTouch], [Inch], [Id]) VALUES (N'LG                                                ', N'LM45678                                           ', 7, NULL, NULL, NULL, 32, 6)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [NegozioElettronica] SET  READ_WRITE 
GO
