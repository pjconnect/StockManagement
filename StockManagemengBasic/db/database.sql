USE [StockManagment]
GO
/****** Object:  Table [dbo].[tblBanks]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblCashbooks]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblCreditors]    Script Date: 8/17/2016 9:29:39 AM ******/
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
	[AmountRecieved] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblCredits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblDebtors]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblInvoiceItems]    Script Date: 8/17/2016 9:29:39 AM ******/
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
	[StockItemID] [int] NULL,
	[ReturnReason] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblInvoiceItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblInvoices]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblReturnItems]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblReturns]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblStockItems]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblStocks]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblSuppliers]    Script Date: 8/17/2016 9:29:39 AM ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 8/17/2016 9:29:39 AM ******/
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
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (6, N'451212441', CAST(N'2016-08-15 21:25:42.233' AS DateTime), 1, CAST(200.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:24:00.720' AS DateTime), 19)
GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (8, N'45851875', CAST(N'2016-08-15 21:34:39.467' AS DateTime), 1, CAST(500.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:33:54.000' AS DateTime), 20)
GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (10, N'465454545', CAST(N'2016-08-15 21:36:22.673' AS DateTime), 1, CAST(20.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:35:58.587' AS DateTime), 21)
GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (11, N'fdsfsdf', CAST(N'2016-08-15 21:37:54.880' AS DateTime), 1, CAST(50.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:37:29.810' AS DateTime), 22)
GO
INSERT [dbo].[tblBanks] ([ID], [ChequeNumber], [ReleaseDate], [ChequeState], [Amount], [Date], [InvoiceID]) VALUES (12, N'45454654654', CAST(N'2016-08-15 21:41:19.487' AS DateTime), 1, CAST(50.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:41:02.347' AS DateTime), 24)
GO
SET IDENTITY_INSERT [dbo].[tblBanks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCashbooks] ON 

GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (8, CAST(200.00 AS Decimal(18, 2)), NULL, N'Transaction by Invoice 19', NULL, NULL, 19, NULL, CAST(N'2016-08-15 21:25:42.233' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (9, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Credit Payment Received for invoice : 20', NULL, NULL, 20, NULL, CAST(N'2016-08-16 20:08:36.193' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (10, CAST(250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Credit Payment Received for invoice : 20', NULL, NULL, 20, NULL, CAST(N'2016-08-16 20:08:50.630' AS DateTime))
GO
INSERT [dbo].[tblCashbooks] ([ID], [Credit], [Debt], [Title], [Comment], [StockItemID], [InvoiceID], [IsAdministratoryPay], [Date]) VALUES (11, NULL, CAST(2500.00 AS Decimal(18, 2)), N'Bill Payment', N'Current and Water Bills', NULL, NULL, 1, CAST(N'2016-08-16 22:18:27.533' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblCashbooks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCreditors] ON 

GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (5, 3, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:25:42.233' AS DateTime), 19, N'Transaction by Invoice 19', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (6, 2, CAST(500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:34:39.467' AS DateTime), 20, N'Transaction by Invoice 20', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (7, 3, CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:36:22.673' AS DateTime), 21, N'Transaction by Invoice 21', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (8, 3, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:37:54.880' AS DateTime), 22, N'Transaction by Invoice 22', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (9, 3, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:41:19.487' AS DateTime), 24, N'Transaction by Invoice 24', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (10, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(N'2016-08-16 20:08:36.130' AS DateTime), 20, N'Credit Payment Received for invoice : 20', CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[tblCreditors] ([ID], [CustomerID], [Credit], [Debt], [Date], [InvoiceID], [Title], [AmountRecieved]) VALUES (11, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(N'2016-08-16 20:08:50.630' AS DateTime), 20, N'Credit Payment Received for invoice : 20', CAST(250.00 AS Decimal(18, 2)))
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
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (160, 19, N'01000C', CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (161, 20, N'01000C', CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (162, 21, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), NULL, NULL, NULL, N'Its damaged')
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (163, 22, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (164, 23, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblInvoiceItems] ([ID], [InvoiceID], [StockID], [Qty], [SoldPrice], [DiscountType], [ItemPrice], [ReturnedQty], [Comment], [Category], [StockItemID], [ReturnReason]) VALUES (165, 24, N'01000C', CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, CAST(100.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblInvoiceItems] OFF
GO
SET IDENTITY_INSERT [dbo].[tblInvoices] ON 

GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (19, 0, CAST(50.00 AS Decimal(18, 2)), 1, CAST(200.00 AS Decimal(18, 2)), 9, CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:24:10.983' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (20, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 8, CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:34:00.507' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (21, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 8, CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:36:08.883' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (22, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 8, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:37:36.517' AS DateTime), 1, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (23, 0, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2016-08-15 21:40:41.460' AS DateTime), 0, 0)
GO
INSERT [dbo].[tblInvoices] ([ID], [CustomerID], [Discount], [DiscountType], [CashReceived], [PaymentType], [CreditReceived], [ChequeRecieved], [CreatedDate], [IsPaid], [CashierID]) VALUES (24, 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 8, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(N'2016-08-15 21:41:06.917' AS DateTime), 1, 0)
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
/****** Object:  StoredProcedure [dbo].[SPInvoiceReport]    Script Date: 8/17/2016 9:29:39 AM ******/
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
