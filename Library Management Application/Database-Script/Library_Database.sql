USE [Library_Management]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 12/8/2023 9:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[PublicationYear] [int] NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowBooks]    Script Date: 12/8/2023 9:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowBooks](
	[BorrowID] [nvarchar](128) NOT NULL,
	[ReaderID] [nvarchar](128) NULL,
	[BookID] [int] NULL,
	[BorrowDate] [date] NOT NULL,
	[ReturnDate] [date] NULL,
	[TienPhat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BorrowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/8/2023 9:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [nvarchar](128) NOT NULL,
	[EmployeeName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[IDCard] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 12/8/2023 9:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[ReaderID] [nvarchar](128) NOT NULL,
	[ReaderName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[IDCard] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Books] ([BookID], [Title], [Author], [PublicationYear], [Genre], [Quantity]) VALUES (1, N'Sự Im lặng của bầy cừu', N'Thomas Harris', 2009, N'Văn học - Nghệ thuật', 20)
INSERT [dbo].[Books] ([BookID], [Title], [Author], [PublicationYear], [Genre], [Quantity]) VALUES (2, N'Trí tuệ cảm xúc', N'Daniel Goleman', 2008, N'Tâm lý', 20)
INSERT [dbo].[Books] ([BookID], [Title], [Author], [PublicationYear], [Genre], [Quantity]) VALUES (3, N'Hướng nội', N'Susan Cain', 2013, N'Tâm lý', 15)
INSERT [dbo].[Books] ([BookID], [Title], [Author], [PublicationYear], [Genre], [Quantity]) VALUES (4, N'Cơ thể tự chữa lành', N'Anthony William', 2020, N'Y học', 12)
INSERT [dbo].[Books] ([BookID], [Title], [Author], [PublicationYear], [Genre], [Quantity]) VALUES (5, N'Nhà giả kim', N'Paulo Coelho', 2013, N'Văn học - Nghệ thuật', 25)
GO
INSERT [dbo].[BorrowBooks] ([BorrowID], [ReaderID], [BookID], [BorrowDate], [ReturnDate], [TienPhat]) VALUES (N'M00', N'R1', 1, CAST(N'2020-11-15' AS Date), CAST(N'2022-11-30' AS Date), 480000)
INSERT [dbo].[BorrowBooks] ([BorrowID], [ReaderID], [BookID], [BorrowDate], [ReturnDate], [TienPhat]) VALUES (N'M002', N'R4', 3, CAST(N'2023-11-20' AS Date), NULL, 0)
INSERT [dbo].[BorrowBooks] ([BorrowID], [ReaderID], [BookID], [BorrowDate], [ReturnDate], [TienPhat]) VALUES (N'M01', N'R1', 4, CAST(N'2022-11-15' AS Date), CAST(N'2023-11-18' AS Date), 240000)
INSERT [dbo].[BorrowBooks] ([BorrowID], [ReaderID], [BookID], [BorrowDate], [ReturnDate], [TienPhat]) VALUES (N'M02', N'R4', 3, CAST(N'2023-11-20' AS Date), NULL, 0)
INSERT [dbo].[BorrowBooks] ([BorrowID], [ReaderID], [BookID], [BorrowDate], [ReturnDate], [TienPhat]) VALUES (N'M03', N'R2 ', 2, CAST(N'2023-10-17' AS Date), NULL, 0)
GO
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'admin', N'admin', N'0363181036', N'1810363424', N'Dis8, HCM city', N'admin', N'admin')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'QL1', N'Ngoc Phung', N'0363181038', N'1810363424', N'Dis8, HCM city', N'QL1', N'phung')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'QL2', N'Thuy Trang', N'0934234323', N'4234234343', N'Dis3, HCM city', N'QL2', N'trang')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'QL3', N'Huu Duc', N'03342323431', N'4525356676', N'Dis1, HCM city', N'QL3', N'123')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'QL4', N'Trang Phung', N'0363181036', N'1810363424', N'Dis8, HCM city', N'QL4', N'123')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'QL5', N'Ngoc A', N'0363181038', N'1810363424', N'Dis8, HCM city', N'QL5', N'123')
GO
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R1', N'Ngoc Phung', N'123456789', N'1234567890', N'21, Dis9, ThuDuc city', N'R1', N'phung')
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R2 ', N'Phung Cao', N'234532433', N'4253253245', N'Dis Binh Thanh,HCM city', N'R2', N'123')
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R3', N'Thuy Trang', N'0234346793', N'7734563490', N'Dis 8,HCM city', N'R3', N'123')
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R4', N'Huu Duc', N'0234333773', N'9934563490', N'Thu Duc city', N'R4', N'123')
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R5', N'Phu Thanh', N'0253346793', N'7734563290', N'Dis Go Vap,HCM city', N'R5', N'123')
INSERT [dbo].[Readers] ([ReaderID], [ReaderName], [Phone], [IDCard], [Address], [Username], [Password]) VALUES (N'R6', N'Quoc Khang', N'0253356793', N'1134563290', N'Dis 6,HCM city', N'R6', N'123')
GO
ALTER TABLE [dbo].[BorrowBooks]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BorrowBooks]  WITH CHECK ADD FOREIGN KEY([ReaderID])
REFERENCES [dbo].[Readers] ([ReaderID])
GO
