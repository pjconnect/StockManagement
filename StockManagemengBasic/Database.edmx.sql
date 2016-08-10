
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/10/2016 20:31:40
-- Generated from EDMX file: C:\Users\pasin\Desktop\StockMangementSystem\trunk\StockManagemengBasic\Database.edmx
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

IF OBJECT_ID(N'[dbo].[tblInvoice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoice];
GO
IF OBJECT_ID(N'[dbo].[tblInvoiceItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoiceItems];
GO
IF OBJECT_ID(N'[dbo].[tblStocks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblStocks];
GO
IF OBJECT_ID(N'[dbo].[tblUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblUsers];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tblInvoices'
CREATE TABLE [dbo].[tblInvoices] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CustomerID] int  NOT NULL,
    [IsPaid] bit  NULL,
    [Discount] decimal(18,2)  NULL,
    [DiscountType] int  NULL,
    [CashReceived] decimal(18,2)  NULL,
    [DebterID] int  NULL,
    [PaymentType] int  NOT NULL,
    [BankID] int  NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL,
    [CreditReceived] decimal(18,2)  NULL,
    [ChequeRecieved] decimal(18,2)  NULL
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

-- Creating table 'tblStocks'
CREATE TABLE [dbo].[tblStocks] (
    [ID] nvarchar(50)  NOT NULL,
    [ItemName] nvarchar(50)  NOT NULL,
    [Brand] nvarchar(50)  NULL,
    [Model] nvarchar(50)  NULL,
    [SellPrice] decimal(18,2)  NOT NULL,
    [PurchasePrice] decimal(18,2)  NULL,
    [SupplierID] int  NULL,
    [AlertQty] int  NULL
);
GO

-- Creating table 'tblUsers'
CREATE TABLE [dbo].[tblUsers] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(150)  NOT NULL,
    [Password] nvarchar(150)  NOT NULL,
    [UserLevel] int  NOT NULL,
    [IsActive] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'tblInvoices'
ALTER TABLE [dbo].[tblInvoices]
ADD CONSTRAINT [PK_tblInvoices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblInvoiceItems'
ALTER TABLE [dbo].[tblInvoiceItems]
ADD CONSTRAINT [PK_tblInvoiceItems]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblStocks'
ALTER TABLE [dbo].[tblStocks]
ADD CONSTRAINT [PK_tblStocks]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tblUsers'
ALTER TABLE [dbo].[tblUsers]
ADD CONSTRAINT [PK_tblUsers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------