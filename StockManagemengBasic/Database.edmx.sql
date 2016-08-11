
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/11/2016 22:14:58
-- Generated from EDMX file: C:\Users\pasin\Desktop\StockMangementSystem\trunk\StockManagemengBasic\Database.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [StockManagment];
GO
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tblCashbook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblCashbook];
GO
IF OBJECT_ID(N'[dbo].[tblCredit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblCredit];
GO
IF OBJECT_ID(N'[dbo].[tblInvoiceItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoiceItems];
GO
IF OBJECT_ID(N'[dbo].[tblInvoices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInvoices];
GO
IF OBJECT_ID(N'[dbo].[tblStockItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblStockItems];
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

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------