USE [BiovaDemo]
GO
/****** Object:  Table [dbo].[Experiments]    Script Date: 11/16/2018 6:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiments](
	[Id] [nvarchar](50) NOT NULL,
	[StudyId] [nvarchar](50) NULL,
	[Index] [int] NULL,
	[CreationDate] [datetime] NULL,
	[Text] [nvarchar](50) NULL,
 CONSTRAINT [PK_Experiments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 11/16/2018 6:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studies]    Script Date: 11/16/2018 6:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studies](
	[Id] [nvarchar](50) NOT NULL,
	[ProjectId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[SortColumnName] [nvarchar](50) NULL,
	[SortDirection] [nvarchar](10) NULL,
 CONSTRAINT [PK_Studies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0001', N'Study01', 1, CAST(N'2015-07-10T20:39:51.000' AS DateTime), N'Liquid Benzene injection hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0002', N'Study01', 2, CAST(N'2015-07-10T10:41:10.000' AS DateTime), N'Liquid Benzene injection daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0003', N'Study01', 3, CAST(N'2015-07-10T04:24:47.000' AS DateTime), N'Liquid Benzene injection monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0004', N'Study01', 4, CAST(N'2015-07-10T03:59:52.000' AS DateTime), N'Benzene inhaler three times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0005', N'Study01', 5, CAST(N'2015-07-10T20:20:11.000' AS DateTime), N'Benzene inhaler daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0006', N'Study01', 6, CAST(N'2015-07-10T02:10:40.000' AS DateTime), N'Benzene inhaler weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0007', N'Study01', 7, CAST(N'2015-07-10T23:45:55.000' AS DateTime), N'Benzene inhaler monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0008', N'Study01', 8, CAST(N'2015-07-10T06:32:03.000' AS DateTime), N'Liquid Benzene injection weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0009', N'Study01', 15, CAST(N'2015-07-10T17:31:32.000' AS DateTime), N'Create Benzene powder at 90 degrees Celsius')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0010', N'Study01', 10, CAST(N'2015-07-10T11:00:22.000' AS DateTime), N'Benzene capsule daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0011', N'Study01', 11, CAST(N'2015-07-10T23:39:53.000' AS DateTime), N'Benzene capsule weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0012', N'Study01', 12, CAST(N'2015-07-10T09:20:39.000' AS DateTime), N'Benzene inhaler daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0013', N'Study01', 13, CAST(N'2015-07-10T12:15:21.000' AS DateTime), N'Benzene inhaler three times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0014', N'Study01', 14, CAST(N'2015-07-10T08:39:00.000' AS DateTime), N'Create Benzene powder at room temperature')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0015', N'Study01', 9, CAST(N'2015-07-10T06:32:03.000' AS DateTime), N'Benzene capsule hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1001', N'Study02', 1, CAST(N'2015-08-29T02:59:18.000' AS DateTime), N'Liquid Argon injection weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1002', N'Study02', 2, CAST(N'2015-08-28T11:44:09.000' AS DateTime), N'Liquid Argon injection hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1003', N'Study02', 3, CAST(N'2015-08-27T08:50:48.000' AS DateTime), N'Argon inhaler twice daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1004', N'Study02', 4, CAST(N'2015-08-27T04:31:34.000' AS DateTime), N'Argon inhaler monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1005', N'Study02', 5, CAST(N'2015-08-29T17:32:32.000' AS DateTime), N'Create Argon powder at room temperature')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1006', N'Study02', 6, CAST(N'2015-08-29T05:42:36.000' AS DateTime), N'Argon capsule daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1007', N'Study02', 7, CAST(N'2015-08-28T13:49:31.000' AS DateTime), N'Argon inhaler daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1008', N'Study02', 8, CAST(N'2015-08-29T12:43:01.000' AS DateTime), N'Liquid Argon injection daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1009', N'Study02', 15, CAST(N'2015-08-27T02:24:17.000' AS DateTime), N'Liquid Argon injection monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1010', N'Study02', 10, CAST(N'2015-08-29T13:55:52.000' AS DateTime), N'Argon inhaler weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1011', N'Study02', 11, CAST(N'2015-08-29T11:52:55.000' AS DateTime), N'Argon capsule weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1012', N'Study02', 12, CAST(N'2015-08-27T12:01:00.000' AS DateTime), N'Create Argon powder at 90 degrees Celsius')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1013', N'Study02', 13, CAST(N'2015-08-28T01:22:02.000' AS DateTime), N'Argon inhaler three times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1014', N'Study02', 14, CAST(N'2015-08-29T04:31:01.000' AS DateTime), N'Argon capsule hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1015', N'Study02', 9, CAST(N'2015-08-29T02:32:10.000' AS DateTime), N'Argon inhaler seven times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2001', N'Study03', 1, CAST(N'2015-09-13T07:00:01.000' AS DateTime), N'Liquid Flourine injection hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2002', N'Study03', 2, CAST(N'2015-09-15T19:31:32.000' AS DateTime), N'Liquid Flourine injection daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2003', N'Study03', 3, CAST(N'2015-09-15T21:35:43.000' AS DateTime), N'Liquid Flourine injection weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2004', N'Study03', 4, CAST(N'2015-09-14T20:01:00.000' AS DateTime), N'Liquid Flourine injection monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2005', N'Study03', 5, CAST(N'2015-09-14T08:44:52.000' AS DateTime), N'Flourine inhaler three times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2006', N'Study03', 6, CAST(N'2015-09-14T16:31:03.000' AS DateTime), N'Flourine inhaler daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2007', N'Study03', 7, CAST(N'2015-09-13T06:51:19.000' AS DateTime), N'Flourine inhaler weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2008', N'Study03', 8, CAST(N'2015-09-15T06:55:19.000' AS DateTime), N'Flourine inhaler monthly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2009', N'Study03', 9, CAST(N'2015-09-13T01:00:41.000' AS DateTime), N'Flourine capsule hourly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2010', N'Study03', 10, CAST(N'2015-09-14T05:03:09.000' AS DateTime), N'Flourine capsule daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2011', N'Study03', 11, CAST(N'2015-09-13T01:50:26.000' AS DateTime), N'Flourine capsule weekly')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2012', N'Study03', 12, CAST(N'2015-09-13T03:54:40.000' AS DateTime), N'Flourine inhaler daily')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2013', N'Study03', 13, CAST(N'2015-09-14T05:33:20.000' AS DateTime), N'Flourine inhaler three times per day')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2014', N'Study03', 14, CAST(N'2015-09-15T13:21:00.000' AS DateTime), N'Create Flourine powder at room temperature')
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2015', N'Study03', 15, CAST(N'2015-09-14T12:28:34.000' AS DateTime), N'Create Flourine powder at 90 degrees Celsius')
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [Name], [Description]) VALUES (1, N'TestProject', N'Project For Testing Studies')
SET IDENTITY_INSERT [dbo].[Projects] OFF
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study01', NULL, N'Cancer Study 001', N'Use of Benzene for curing cancer', N'UNKNOWN', N'UNKNOWN')
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study02', NULL, N'Cancer Study 002', N'Use of Argon for curing cancer', N'UNKNOWN', N'UNKNOWN')
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study03', NULL, N'Cancer Study 003', N'Use of Flourine for curing cancer', N'UNKNOWN', N'UNKNOWN')
ALTER TABLE [dbo].[Studies]  WITH CHECK ADD  CONSTRAINT [FK_Studies_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Studies] CHECK CONSTRAINT [FK_Studies_Projects]
GO
