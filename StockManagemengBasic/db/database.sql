USE [StockManagment]
GO
/****** Object:  Table [dbo].[tblBanks]    Script Date: 8/15/2016 12:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBanks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChequeNumber] [nvarchar](50) NULL,
	[ReleaseDate] [datetime] NULL,
	[ChequeState] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Date] [datetime] NOT NULL,
	[InvoiceID] [int] NULL,
 CONSTRAINT [PK_tblBanks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCashbooks]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  Table [dbo].[tblCredits]    Script Date: 8/15/2016 12:05:00 AM ******/
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
	[InvoiceID] [int] NULL,
 CONSTRAINT [PK_tblCredits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  Table [dbo].[tblInvoiceItems]    Script Date: 8/15/2016 12:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvoiceItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[StockID] [nvarchar](50) NULL,
	[Qty] [decimal](18, 2) NULL,
	[SoldPrice] [decimal](18, 2) NOT NULL,
	[DiscountType] [int] NULL,
	[ItemPrice] [decimal](18, 2) NULL,
	[ReturnedQty] [decimal](18, 2) NULL,
	[Comment] [decimal](18, 2) NULL,
	[Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblInvoiceItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblInvoices]    Script Date: 8/15/2016 12:05:00 AM ******/
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
	[CreatedDate] [datetime] NOT NULL,
	[IsPaid] [bit] NULL,
	[CashierID] [int] NOT NULL,
 CONSTRAINT [PK_tblInvoices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReturnItems]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  Table [dbo].[tblReturns]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  Table [dbo].[tblStockItems]    Script Date: 8/15/2016 12:05:00 AM ******/
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
	[IsDiscountEnable] [bit] NULL,
	[LotNumber] [int] NOT NULL CONSTRAINT [DF_tblStockItems_LotNumber]  DEFAULT ((1)),
	[SupplierID] [int] NULL,
 CONSTRAINT [PK_tblStockItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStocks]    Script Date: 8/15/2016 12:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStocks](
	[ID] [nvarchar](50) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[AlertQty] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblStocks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSuppliers]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 8/15/2016 12:05:00 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SPInvoiceReport]    Script Date: 8/15/2016 12:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInvoiceReport]

	@InvoiceNumber Int

AS

SELECT 

CASE 
WHEN tblInvoices.PaymentType = 1 THEN 'Pay by Cash'
WHEN tblInvoices.PaymentType = 3 THEN 'Pay by Credit' 
WHEN tblInvoices.PaymentType = 5 THEN 'Pay by Cheque' 
WHEN tblInvoices.PaymentType = 6 THEN 'Pay by Cash + Cheque' 
WHEN tblInvoices.PaymentType = 8 THEN 'Pay by Cheque + Credit' 
END
AS PaymentType ,

(tblInvoices.CashReceived + tblInvoices.CreditReceived + tblInvoices.ChequeRecieved) as TotalPrice,

CASE 
WHEN tblInvoices.Discount != null AND tblInvoices.Discount = '%' THEN  (Discount/100 * (tblInvoices.CashReceived + tblInvoices.CreditReceived + tblInvoices.ChequeRecieved)) + (tblInvoices.CashReceived + tblInvoices.CreditReceived + tblInvoices.ChequeRecieved)  
ELSE
(tblInvoices.CashReceived + tblInvoices.CreditReceived + tblInvoices.ChequeRecieved)
END
AS DiscountedPrice,

tblInvoiceItems.Qty, tblInvoiceItems.ItemPrice,  
tblStocks.ItemName, tblStocks.Brand, tblStocks.Model, tblInvoices.CreatedDate, tblStocks.ID, 
tblInvoices.IsPaid, tblInvoices.ID AS InvoiceID, (tblInvoiceItems.ItemPrice * tblInvoiceItems.Qty) as TotalItemPrice


FROM            tblInvoices JOIN
                         tblInvoiceItems ON tblInvoices.ID = tblInvoiceItems.InvoiceID CROSS JOIN
                         tblStocks
WHERE tblInvoices.ID = @InvoiceNumber

GO
