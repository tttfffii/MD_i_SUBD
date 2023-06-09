USE [master]
GO
/****** Object:  Database [Acc_Of_Intangible_Assets]    Script Date: 26.05.2023 21:37:54 ******/
CREATE DATABASE [Acc_Of_Intangible_Assets]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Acc_Of_Intangible_Assets', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Acc_Of_Intangible_Assets.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Acc_Of_Intangible_Assets_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Acc_Of_Intangible_Assets_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Acc_Of_Intangible_Assets].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ARITHABORT OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET  MULTI_USER 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Acc_Of_Intangible_Assets]
GO
/****** Object:  Table [dbo].[Directory_of_intangible_assets]    Script Date: 26.05.2023 21:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directory_of_intangible_assets](
	[view_code] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Directory_of_intangible_assets] PRIMARY KEY CLUSTERED 
(
	[view_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directory_of_responsible_people]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directory_of_responsible_people](
	[responsible_person_code] [int] NOT NULL,
	[full_name] [varchar](255) NULL,
 CONSTRAINT [PK_Directory_of_responsible_people] PRIMARY KEY CLUSTERED 
(
	[responsible_person_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEW_Directory_of_intangible_assets]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEW_Directory_of_intangible_assets](
	[view_code] [int] NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_Table]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_Table](
	[first_column] [int] NULL,
	[second_column] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_card_of_intangible_assets]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_card_of_intangible_assets](
	[inventory_number] [int] NOT NULL,
	[view_code] [int] NOT NULL,
	[responsible_person_code] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[annual_depreciation_rate] [float] NULL,
	[book_value] [float] NULL,
	[commissioning_date] [date] NULL,
 CONSTRAINT [PK_Registration_card_of_intangible_assets] PRIMARY KEY CLUSTERED 
(
	[inventory_number] ASC,
	[view_code] ASC,
	[responsible_person_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Inventor_and_his_invention]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Inventor_and_his_invention] AS
SELECT Registration_card_of_intangible_assets.commissioning_date AS Invention_date,
       Directory_of_responsible_people.full_name AS Inventor,
	   Directory_of_intangible_assets.name AS Type_of_document
FROM Registration_card_of_intangible_assets INNER JOIN Directory_of_intangible_assets ON Registration_card_of_intangible_assets.view_code = Directory_of_intangible_assets.view_code
INNER JOIN Directory_of_responsible_people ON Registration_card_of_intangible_assets.responsible_person_code = Directory_of_responsible_people.responsible_person_code
GO
/****** Object:  View [dbo].[InventorAndHisInvention]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[InventorAndHisInvention] AS
SELECT Registration_card_of_intangible_assets.commissioning_date AS InventionDate, 
        Directory_of_responsible_people.full_name AS Inventor,
        Directory_of_intangible_assets.name AS TypeOfDocument  
FROM Registration_card_of_intangible_assets INNER JOIN Directory_of_intangible_assets ON Registration_card_of_intangible_assets.view_code = Directory_of_intangible_assets.view_code
INNER JOIN Directory_of_responsible_people ON Registration_card_of_intangible_assets.responsible_person_code = Directory_of_responsible_people.responsible_person_code
GO
/****** Object:  View [dbo].[InventorPatent]    Script Date: 26.05.2023 21:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[InventorPatent] AS
SELECT Directory_of_responsible_people.full_name AS Inventor,
       Registration_card_of_intangible_assets.name AS Invention,
	   Directory_of_intangible_assets.name AS Patent
FROM Directory_of_responsible_people INNER JOIN  Directory_of_intangible_assets ON Directory_of_responsible_people.responsible_person_code = Directory_of_intangible_assets.view_code
INNER JOIN Registration_card_of_intangible_assets ON Directory_of_responsible_people.responsible_person_code = Registration_card_of_intangible_assets.inventory_number
GO
/****** Object:  Index [vc]    Script Date: 26.05.2023 21:37:55 ******/
CREATE NONCLUSTERED INDEX [vc] ON [dbo].[Directory_of_intangible_assets]
(
	[view_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [rpc]    Script Date: 26.05.2023 21:37:55 ******/
CREATE NONCLUSTERED INDEX [rpc] ON [dbo].[Directory_of_responsible_people]
(
	[responsible_person_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_New_Table]    Script Date: 26.05.2023 21:37:55 ******/
CREATE NONCLUSTERED INDEX [PK_New_Table] ON [dbo].[New_Table]
(
	[first_column] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [rcoia]    Script Date: 26.05.2023 21:37:55 ******/
CREATE NONCLUSTERED INDEX [rcoia] ON [dbo].[Registration_card_of_intangible_assets]
(
	[inventory_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets]  WITH CHECK ADD  CONSTRAINT [FK_Registration_card_of_intangible_assets_Directory_of_intangible_assets1] FOREIGN KEY([view_code])
REFERENCES [dbo].[Directory_of_intangible_assets] ([view_code])
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets] CHECK CONSTRAINT [FK_Registration_card_of_intangible_assets_Directory_of_intangible_assets1]
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets]  WITH CHECK ADD  CONSTRAINT [FK_Registration_card_of_intangible_assets_Directory_of_responsible_people] FOREIGN KEY([responsible_person_code])
REFERENCES [dbo].[Directory_of_responsible_people] ([responsible_person_code])
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets] CHECK CONSTRAINT [FK_Registration_card_of_intangible_assets_Directory_of_responsible_people]
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets]  WITH CHECK ADD  CONSTRAINT [CK_Registration_card_of_intangible_assets] CHECK  (([inventory_number] like '[1-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Registration_card_of_intangible_assets] CHECK CONSTRAINT [CK_Registration_card_of_intangible_assets]
GO
USE [master]
GO
ALTER DATABASE [Acc_Of_Intangible_Assets] SET  READ_WRITE 
GO
