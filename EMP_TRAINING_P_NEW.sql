/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectStatus]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectStatus]
GO
/****** Object:  Table [dbo].[GroupData]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupData]') AND type in (N'U'))
DROP TABLE [dbo].[GroupData]
GO
/****** Object:  Table [dbo].[OtpData]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OtpData]') AND type in (N'U'))
DROP TABLE [dbo].[OtpData]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[Msg]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Msg]') AND type in (N'U'))
DROP TABLE [dbo].[Msg]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Task]') AND type in (N'U'))
DROP TABLE [dbo].[Task]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 05/25/2018 08:49:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marks]') AND type in (N'U'))
DROP TABLE [dbo].[Marks]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Marks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[task] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
	[analysis] [int] NULL,
	[designing] [int] NULL,
	[coding] [int] NULL,
	[testing] [int] NULL,
	[obtain_marks] [int] NULL,
	[total_marks] [int] NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Marks] ON
INSERT [dbo].[Marks] ([id], [empid], [username], [task], [analysis], [designing], [coding], [testing], [obtain_marks], [total_marks]) VALUES (1, 1, N'1', N'create registration form in html', 4, 5, 7, 3, 19, 40)
SET IDENTITY_INSERT [dbo].[Marks] OFF
/****** Object:  Table [dbo].[Task]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Task]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Task](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskid] [int] NULL,
	[task] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[date1] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[user_status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[admin_status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[doc_path] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[reason] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Task] ON
INSERT [dbo].[Task] ([id], [taskid], [task], [date1], [username], [user_status], [admin_status], [doc_path], [reason]) VALUES (3, 1, N'create registration form in html', N'23/03/2018', N'1', N'Done', N'Done', N'1FegrZjPbq3.html', NULL)
INSERT [dbo].[Task] ([id], [taskid], [task], [date1], [username], [user_status], [admin_status], [doc_path], [reason]) VALUES (4, 1, N'create registration form in html', N'23/03/2018', N'2', N'Pending', N'Pending', NULL, NULL)
INSERT [dbo].[Task] ([id], [taskid], [task], [date1], [username], [user_status], [admin_status], [doc_path], [reason]) VALUES (5, 1, N'create registration form in html', N'23/03/2018', N'3', N'Pending', N'Pending', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Task] OFF
/****** Object:  Table [dbo].[Msg]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Msg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Msg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[msgfrom] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[msgto] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[sub] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[msg] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[msgdate] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Msg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Registration](
	[empid] [int] NOT NULL,
	[empname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[dob] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[gender] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[address] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[emailid] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[mobile] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pwd] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[photo] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[company] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
	[groupname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Registration] ([empid], [empname], [dob], [gender], [address], [emailid], [mobile], [username], [pwd], [photo], [status], [company], [groupname]) VALUES (1, N'Amit Sawant', N'02/02/1996', N'Male', N'Rathi Nagar', N'amitssawarkar@gmail.com', N'9503351933', N'1', N'amit', N'ww.jpg', N'Accept', NULL, N'Android')
INSERT [dbo].[Registration] ([empid], [empname], [dob], [gender], [address], [emailid], [mobile], [username], [pwd], [photo], [status], [company], [groupname]) VALUES (2, N'Ram Patil', N'06/08/1996', N'Male', N'Rathi Nagar', N'rampatil@gmail.com', N'8600674539', N'2', N'seeta', N'Photo_2.jpg', N'Accept', NULL, N'Android')
INSERT [dbo].[Registration] ([empid], [empname], [dob], [gender], [address], [emailid], [mobile], [username], [pwd], [photo], [status], [company], [groupname]) VALUES (3, N'Puja Pande', N'05/06/1993', N'Male', N'Ravi Nagar', N'puja@gmail.com', N'9503351933', N'3', N'puja', N'Photo_3.jpg', N'Accept', NULL, N'PHP')
INSERT [dbo].[Registration] ([empid], [empname], [dob], [gender], [address], [emailid], [mobile], [username], [pwd], [photo], [status], [company], [groupname]) VALUES (4, N'Bhagyashri Patil', N'02/02/1996', N'Male', N'Rathi nagar', N'bhagyashri@gmail.com', N'9156863648', N'4', N'b123', N'christina.jpg', N'Accept', NULL, N'PHP')
/****** Object:  Table [dbo].[OtpData]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OtpData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OtpData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[otp] [int] NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[status] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_OtpData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[OtpData] ON
INSERT [dbo].[OtpData] ([id], [otp], [username], [status]) VALUES (1, 9084, N'ram', N'Pending')
INSERT [dbo].[OtpData] ([id], [otp], [username], [status]) VALUES (2, 4246, N'3', N'Pending')
SET IDENTITY_INSERT [dbo].[OtpData] OFF
/****** Object:  Table [dbo].[GroupData]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupData](
	[gid] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_GroupData] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 05/25/2018 08:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[details] [nvarchar](max) COLLATE Latin1_General_CI_AI NULL,
	[pname] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[regdate] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_ProjectStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
