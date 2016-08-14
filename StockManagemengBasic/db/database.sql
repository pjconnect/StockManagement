USE [StockManagment]
GO
/****** Object:  Table [dbo].[tblBanks]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblCashbooks]    Script Date: 8/15/2016 1:19:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCashbooks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Title] [nvarchar](150) NULL,
	[Comment] [nvarchar](50) NULL,
	[StockItemID] [int] NULL,
	[InvoiceID] [int] NULL,
	[IsAdministratoryPay] [bit] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCashbooks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCreditors]    Script Date: 8/15/2016 1:19:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCreditors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Credit] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Date] [datetime] NOT NULL,
	[InvoiceID] [int] NULL,
	[Title] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblCredits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblDebtors]    Script Date: 8/15/2016 1:19:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDebtors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockItemID] [int] NOT NULL,
	[Credit] [decimal](18, 2) NULL,
	[Debt] [decimal](18, 2) NULL,
	[Title] [nvarchar](150) NULL,
	[Comment] [nvarchar](300) NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_tblDebt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblInvoiceItems]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblInvoices]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblReturnItems]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblReturns]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblStockItems]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblStocks]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblSuppliers]    Script Date: 8/15/2016 1:19:28 AM ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 8/15/2016 1:19:28 AM ******/
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
SET IDENTITY_INSERT [dbo].[tblBanks] ON 

GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (3, N'120002541', CAST(N'2016-08-15 01:12:13.567' AS DateTime), 1, CAST(2500.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:09:14.853' AS DateTime), 18)
GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (4, N'120002541', CAST(N'2016-08-15 01:12:18.160' AS DateTime), 1, CAST(2500.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:09:14.853' AS DateTime), 18)
GO
SET IDENTITY_INSERT [dbo].[tblBanks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCashbooks] ON 

GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (1, NULL, CAST(600.00 AS Decimal(18, 2)), N'Purchase Stock 01000C From: Janaka Kumara', NULL, 4, NULL, NULL, CAST(N'2016-08-15 00:31:37.460' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (2, NULL, CAST(600.00 AS Decimal(18, 2)), N'Purchase Stock 02000M(Milo) From: Kamal Nandula', NULL, 6, NULL, NULL, CAST(N'2016-08-15 00:34:49.147' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (3, CAST(200.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice', NULL, NULL, 7, NULL, CAST(N'2016-08-15 00:37:09.497' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (4, CAST(500.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice', NULL, NULL, 8, NULL, CAST(N'2016-08-15 00:41:07.713' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (5, CAST(180.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice', NULL, NULL, 9, NULL, CAST(N'2016-08-15 00:43:02.100' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (6, CAST(90.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice', NULL, NULL, 10, NULL, CAST(N'2016-08-15 00:43:42.993' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (7, CAST(40000.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice 18', NULL, NULL, 18, NULL, CAST(N'2016-08-15 01:12:18.160' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblCashbooks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCreditors] ON 

GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title]) VALUES (1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:49:30.000' AS DateTime), 11, N'Transaction by Invoice 11')
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title]) VALUES (2, 3, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:52:32.620' AS DateTime), 12, N'Transaction by Invoice 12')
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title]) VALUES (3, 3, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:08:39.557' AS DateTime), 17, N'Transaction by Invoice 17')
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title]) VALUES (4, 3, CAST(500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:12:18.160' AS DateTime), 18, N'Transaction by Invoice 18')
GO
SET IDENTITY_INSERT [dbo].[tblCreditors] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCustomers] ON 

GO
INSERT [dbo].[tblCustomers] ([ID], [ContactNumber], [CustomerName], [Designation], [Email], [Fax], [Address], [NIC]) VALUES (2, N'0741258966', N'Samantha Kumara', N'', N'', N'', N'', N'9635215896')
GO
INSERT [dbo].[tblCustomers] ([ID], [ContactNumber], [CustomerName], [Designation], [Email], [Fax], [Address], [NIC]) VALUES (3, N'0758562354', N'Chathun Kumarasinhe', N'', N'', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[tblCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDebtors] ON 

GO
INSERT [dbo].[tblDebtors] ([ID], [StockItemID], [Credit], [Debt], [Title], [Comment], [Date]) VALUES (1, 5, CAST(600.00 AS Decimal(18, 2)), NULL, N'Purchase Stock 01000C From: Janaka Kumara', NULL, CAST(N'2016-08-15' AS Date))
GO
SET IDENTITY_INSERT [dbo].[tblDebtors] OFF
GO
SET IDENTITY_INSERT [dbo].[tblInvoiceItems] ON 

GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (7, 7, N'02000M', CAST(2.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), NULL, CAST(60.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (8, 8, N'01000C', CAST(3.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (9, 9, N'02000M', CAST(3.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), NULL, CAST(60.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (10, 10, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (11, 11, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (12, 12, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (13, 13, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (14, 14, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (15, 15, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (16, 16, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (17, 17, N'01000C', CAST(2.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (18, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (19, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (20, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (21, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (22, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (23, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (24, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (25, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (26, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (27, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (28, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (29, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (30, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (31, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (32, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (33, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (34, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (35, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (36, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (37, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (38, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (39, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (40, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (41, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (42, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (43, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (44, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (45, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (46, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (47, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (48, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (49, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (50, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (51, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (52, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (53, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (54, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (55, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (56, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (57, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (58, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (59, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (60, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (61, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (62, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (63, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (64, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (65, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (66, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (67, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (68, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (69, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (70, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (71, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (72, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (73, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (74, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (75, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (76, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (77, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (78, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (79, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (80, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (81, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (82, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (83, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (84, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (85, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (86, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (87, 18, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (88, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (89, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (90, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (91, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (92, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (93, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (94, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (95, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (96, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (97, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (98, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (99, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (100, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (101, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (102, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (103, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (104, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (105, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (106, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (107, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (108, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (109, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (110, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (111, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (112, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (113, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (114, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (115, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (116, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (117, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (118, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (119, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (120, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (121, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (122, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (123, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (124, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (125, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (126, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (127, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (128, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (129, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (130, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (131, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (132, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (133, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (134, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (135, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (136, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (137, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (138, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (139, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (140, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (141, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (142, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (143, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (144, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (145, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (146, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (147, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (148, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (149, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (150, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (151, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (152, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (153, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (154, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (155, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (156, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (157, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (158, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category]) VALUES (159, 18, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblInvoiceItems] OFF
GO
SET IDENTITY_INSERT [dbo].[tblInvoices] ON 

GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (7, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(200.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:36:49.620' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (8, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(500.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:40:46.483' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (9, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(200.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:42:16.547' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (10, 0, CAST(10.00 AS Decimal(18, 2)), 1, CAST(200.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:43:29.860' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (11, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 16, CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:47:13.523' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (12, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 16, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:52:18.063' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (13, 0, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2016-08-15 00:53:15.287' AS DateTime), 0, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (14, 0, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2016-08-15 00:59:05.380' AS DateTime), 0, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (15, 0, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2016-08-15 01:02:12.347' AS DateTime), 0, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (16, 0, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2016-08-15 01:03:32.137' AS DateTime), 0, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (17, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 24, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:08:03.350' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (18, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(40000.00 AS Decimal(18, 2)), 36, CAST(500.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2016-08-15 01:09:18.437' AS DateTime), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tblInvoices] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStockItems] ON 

GO
INSERT [dbo].[tblStockItems] ([ID], [StockID], [Qty], [PurchasePrice], [SellPrice], [Date], [CreatedDate], [InvoiceNumber], [IsDiscountEnable], [LotNumber], [SupplierID]) VALUES (4, N'01000C', CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:31:37.460' AS DateTime), CAST(N'2016-08-15 00:32:21.067' AS DateTime), N'', NULL, 1, 2)
GO
INSERT [dbo].[tblStockItems] ([ID], [StockID], [Qty], [PurchasePrice], [SellPrice], [Date], [CreatedDate], [InvoiceNumber], [IsDiscountEnable], [LotNumber], [SupplierID]) VALUES (5, N'01000C', CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:31:37.460' AS DateTime), CAST(N'2016-08-15 00:32:25.660' AS DateTime), N'', NULL, 2, 2)
GO
INSERT [dbo].[tblStockItems] ([ID], [StockID], [Qty], [PurchasePrice], [SellPrice], [Date], [CreatedDate], [InvoiceNumber], [IsDiscountEnable], [LotNumber], [SupplierID]) VALUES (6, N'02000M', CAST(12.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(N'2016-08-15 00:34:49.147' AS DateTime), CAST(N'2016-08-15 00:35:24.823' AS DateTime), N'', NULL, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[tblStockItems] OFF
GO
INSERT [dbo].[tblStocks] ([ID], [ItemName], [Brand], [Model], [Color], [AlertQty], [CreatedDate]) VALUES (N'01000C', N'CocaCola', N'', N'', N'', 0, CAST(N'2016-08-15 00:30:02.100' AS DateTime))
GO
INSERT [dbo].[tblStocks] ([ID], [ItemName], [Brand], [Model], [Color], [AlertQty], [CreatedDate]) VALUES (N'02000M', N'Milo', N'', N'', N'', 0, CAST(N'2016-08-15 00:30:18.497' AS DateTime))
GO
INSERT [dbo].[tblStocks] ([ID], [ItemName], [Brand], [Model], [Color], [AlertQty], [CreatedDate]) VALUES (N'03000L', N'LemonPuff', N'', N'', N'', 0, CAST(N'2016-08-15 00:30:26.067' AS DateTime))
GO
INSERT [dbo].[tblStocks] ([ID], [ItemName], [Brand], [Model], [Color], [AlertQty], [CreatedDate]) VALUES (N'04U00V', N'Vasline', N'Uniliver', N'', N'', 0, CAST(N'2016-08-15 00:30:45.450' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblSuppliers] ON 

GO
INSERT [dbo].[tblSuppliers] ([ID], [Name], [ContactNumber], [Email], [Address], [NIC], [Fax], [Comment], [CreatedDate]) VALUES (2, N'Janaka Kumara', N'0714258652', N'', N'', N'', N'', N'', CAST(N'2016-08-15 00:31:05.160' AS DateTime))
GO
INSERT [dbo].[tblSuppliers] ([ID], [Name], [ContactNumber], [Email], [Address], [NIC], [Fax], [Comment], [CreatedDate]) VALUES (3, N'Kamal Nandula', N'0254789545', N'', N'', N'', N'', N'', CAST(N'2016-08-15 00:31:21.537' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblSuppliers] OFF
GO
/****** Object:  StoredProcedure [dbo].[SPInvoiceReport]    Script Date: 8/15/2016 1:19:28 AM ******/
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
