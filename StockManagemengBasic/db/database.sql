USE [master]
GO
/****** Object:  Database [StockManagment]    Script Date: 8/13/2016 1:06:23 AM ******/
CREATE DATABASE [StockManagment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StockManagment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StockManagment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StockManagment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StockManagment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StockManagment] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StockManagment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StockManagment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StockManagment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StockManagment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StockManagment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StockManagment] SET ARITHABORT OFF 
GO
ALTER DATABASE [StockManagment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StockManagment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StockManagment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StockManagment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StockManagment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StockManagment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StockManagment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StockManagment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StockManagment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StockManagment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StockManagment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StockManagment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StockManagment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StockManagment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StockManagment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StockManagment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StockManagment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StockManagment] SET  MULTI_USER 
GO
ALTER DATABASE [StockManagment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StockManagment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StockManagment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StockManagment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StockManagment] SET DELAYED_DURABILITY = DISABLED 
GO
USE [StockManagment]
GO
/****** Object:  Table [dbo].[tblBanks]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBanks](
	[ID] [int] NULL,
	[ChequeNumber] [nvarchar](50) NULL,
	[ReleaseDate] [datetime] NULL,
	[ChequeState] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblBanks] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCashbooks]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCashbooks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Title] [nvarchar](50) NULL,
	[Comment] [nvarchar](50) NULL,
	[SupplierID] [int] NULL,
	[InvoiceID] [int] NULL,
	[IsAdministratoryPay] [bit] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCashbooks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCredits]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCredits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Credit] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCredits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[CustomerName] [nvarchar](150) NOT NULL,
	[Designation] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Address] [nvarchar](300) NULL,
	[NIC] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCustomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblInvoiceItems]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvoiceItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[ItemID] [nvarchar](50) NULL,
	[Qty] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[SellingPrice] [decimal](18, 2) NOT NULL,
	[DiscountType] [int] NULL,
	[ItemPrice] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Comment] [decimal](18, 2) NULL,
	[Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblInvoiceItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblInvoices]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvoices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Discount] [decimal](18, 2) NULL,
	[DiscountType] [int] NULL,
	[CashReceived] [decimal](18, 2) NULL,
	[PaymentType] [int] NOT NULL,
	[CreditReceived] [decimal](18, 2) NULL,
	[ChequeRecieved] [decimal](18, 2) NULL,
	[BankID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsPaid] [bit] NULL,
	[CashierID] [int] NOT NULL,
 CONSTRAINT [PK_tblInvoices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReturnItems]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReturnItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockItemID] [nvarchar](50) NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tblReturnItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReturns]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReturns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NULL,
	[ReturnItemID] [int] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblReturns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStockItems]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStockItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockID] [nvarchar](50) NOT NULL,
	[Qty] [decimal](18, 2) NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SellPrice] [decimal](18, 2) NOT NULL,
	[Date] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblStockItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStocks]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStocks](
	[ID] [nvarchar](50) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[SupplierID] [int] NULL,
	[AlertQty] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblStocks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSuppliers]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSuppliers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](300) NULL,
	[NIC] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Comment] [nvarchar](300) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblSuppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 8/13/2016 1:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[UserLevel] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [StockManagment] SET  READ_WRITE 
GO
