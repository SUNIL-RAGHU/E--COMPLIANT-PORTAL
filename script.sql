Create database eissue;
USE [eissue]
GO
/****** Object:  Table [dbo].[CitizenInfo]    Script Date: 06-06-2021 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitizenInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[contact] [int] NOT NULL,
	[Gender] [char](11) NOT NULL,
	[Municipility] [varchar](100) NOT NULL,
	[pincode] [int] NOT NULL,
	[address] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactInfo]    Script Date: 06-06-2021 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInfo](
	[ContactId] [int] NOT NULL,
	[Municipility] [varchar](100) NOT NULL,
	[Organisation] [varchar](150) NOT NULL,
	[contact] [int] NULL,
	[email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grievances]    Script Date: 06-06-2021 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grievances](
	[Location] [varchar](50) NOT NULL,
	[Description] [varchar](1000) NULL,
	[Category] [varchar](100) NULL,
	[Status] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[GrievancesId] [int] IDENTITY(1,1) NOT NULL,
	[Municipility] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[GrievancesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


select*from [dbo].[CitizenInfo]