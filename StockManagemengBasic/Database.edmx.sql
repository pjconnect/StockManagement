
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/12/2016 10:34:49
-- Generated from EDMX file: D:\Projects\StockManagementBasic\StockManagemengBasic\Database.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [StockManagment];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tblCashbooks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblCashbooks];
GO
IF OBJECT_ID(N'[dbo].[tblCreditors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblCreditors];
GO
IF OBJECT_ID(N'[dbo].[tblInvoiceItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoiceItems];
GO
IF OBJECT_ID(N'[dbo].[tblInvoices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoices];
GO
IF OBJECT_ID(N'[dbo].[tblReturns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblReturns];
GO
IF OBJECT_ID(N'[dbo].[tblReturnItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblReturnItems];
GO
IF OBJECT_ID(N'[dbo].[tblStockItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblStockItems];
GO
IF OBJECT_ID(N'[dbo].[tblStocks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblStocks];
GO
IF OBJECT_ID(N'[dbo].[tblSuppliers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblSuppliers];
GO
IF OBJECT_ID(N'[dbo].[tblUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblUsers];
GO
IF OBJECT_ID(N'[dbo].[tblBanks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblBanks];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tblCashbooks'
CREATE TABLE [dbo].[tblCashbooks] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Credit] decimal(18,2)  NULL,
    [Debt] decimal(18,2)  NULL,
    [Title] nvarchar(50)  NULL,
    [Comment] nvarchar(50)  NULL,
    [SupplierID] int  NULL,
    [InvoiceID] int  NULL,
    [IsAdministratoryPay] bit  NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'tblCreditors'
CREATE TABLE [dbo].[tblCreditors] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CustomerID] int  NULL,
    [Credit] decimal(18,2)  NULL,
    [Debt] decimal(18,2)  NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'tblInvoiceItems'
CREATE TABLE [dbo].[tblInvoiceItems] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [InvoiceID] int  NOT NULL,
    [ItemID] nvarchar(50)  NULL,
    [Qty] decimal(18,2)  NULL,
    [Credit] decimal(18,2)  NULL,
    [SellingPrice] decimal(18,2)  NOT NULL,
    [DiscountType] int  NULL,
    [ItemPrice] decimal(18,2)  NULL,
    [Debt] decimal(18,2)  NULL,
    [Comment] decimal(18,2)  NULL,
    [Category] nchar(10)  NULL
);
GO

-- Creating table 'tblInvoices'
CREATE TABLE [dbo].[tblInvoices] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CustomerID] int  NOT NULL,
    [Discount] decimal(18,2)  NULL,
    [DiscountType] int  NULL,
    [CashReceived] decimal(18,2)  NULL,
    [PaymentType] int  NOT NULL,
    [CreditReceived] decimal(18,2)  NULL,
    [ChequeRecieved] decimal(18,2)  NULL,
    [BankID] int  NULL,
    [CreatedDate] datetime  NOT NULL,
    [IsPaid] bit  NULL,
    [CreatedUserID] int  NOT NULL
);
GO

-- Creating table 'tblReturns'
CREATE TABLE [dbo].[tblReturns] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [InvoiceNumber] nvarchar(50)  NOT NULL,
    [CustomerID] int  NULL,
    [ReturnItemID] int  NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'tblReturnItems'
CREATE TABLE [dbo].[tblReturnItems] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [StockItemID] nvarchar(50)  NOT NULL,
    [Qty] decimal(18,2)  NOT NULL
);
GO

-- Creating table 'tblStockItems'
CREATE TABLE [dbo].[tblStockItems] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [StockID] nvarchar(50)  NOT NULL,
    [Credit] nvarchar(50)  NULL,
    [Debt] nvarchar(50)  NULL,
    [PurchasePrice] decimal(18,2)  NOT NULL,
    [SellPrice] decimal(18,2)  NOT NULL,
    [Date] datetime  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'tblStocks'
CREATE TABLE [dbo].[tblStocks] (
    [ID] nvarchar(50)  NOT NULL,
    [ItemName] nvarchar(50)  NOT NULL,
    [Brand] nvarchar(50)  NULL,
    [Model] nvarchar(50)  NULL,
    [SupplierID] int  NULL,
    [AlertQty] int  NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'tblSuppliers'
CREATE TABLE [dbo].[tblSuppliers] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(150)  NOT NULL,
    [ContactNumber] nvarchar(50)  NULL,
    [Email] nvarchar(50)  NULL,
    [Address] nvarchar(300)  NULL,
    [NIC] nvarchar(50)  NULL,
    [Fax] nvarchar(50)  NULL,
    [Comment] nvarchar(300)  NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'tblUsers'
CREATE TABLE [dbo].[tblUsers] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(150)  NOT NULL,
    [Password] nvarchar(150)  NOT NULL,
    [UserLevel] int  NOT NULL,
    [IsActive] bit  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'tblBanks'
CREATE TABLE [dbo].[tblBanks] (
    [ID] int  NULL,
    [ChequeNumber] nvarchar(50)  NULL,
    [ReleaseDate] datetime  NULL,
    [ChequeState] int  NULL,
    [Amount] decimal(18,2)  NULL,
    [Date] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'tblCashbooks'
ALTER TABLE [dbo].[tblCashbooks]
ADD CONSTRAINT [PK_tblCashbooks]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblCreditors'
ALTER TABLE [dbo].[tblCreditors]
ADD CONSTRAINT [PK_tblCredits]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblInvoiceItems'
ALTER TABLE [dbo].[tblInvoiceItems]
ADD CONSTRAINT [PK_tblInvoiceItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblInvoices'
ALTER TABLE [dbo].[tblInvoices]
ADD CONSTRAINT [PK_tblInvoices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblReturns'
ALTER TABLE [dbo].[tblReturns]
ADD CONSTRAINT [PK_tblReturns]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblReturnItems'
ALTER TABLE [dbo].[tblReturnItems]
ADD CONSTRAINT [PK_tblReturnItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblStockItems'
ALTER TABLE [dbo].[tblStockItems]
ADD CONSTRAINT [PK_tblStockItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblStocks'
ALTER TABLE [dbo].[tblStocks]
ADD CONSTRAINT [PK_tblStocks]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblSuppliers'
ALTER TABLE [dbo].[tblSuppliers]
ADD CONSTRAINT [PK_tblSuppliers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblUsers'
ALTER TABLE [dbo].[tblUsers]
ADD CONSTRAINT [PK_tblUsers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Date] in table 'tblBanks'
ALTER TABLE [dbo].[tblBanks]
ADD CONSTRAINT [PK_tblBanks]
    PRIMARY KEY CLUSTERED ([Date] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------