USE [BiovaDemo]
GO
/****** Object:  Table [dbo].[ExperimentRuns]    Script Date: 11/29/2018 2:28:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperimentRuns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExperimentID] [nvarchar](50) NOT NULL,
	[LabTechnician] [varchar](3) NOT NULL,
	[RunDate] [date] NOT NULL,
 CONSTRAINT [PK__Experime__7372230CB4E71A65] PRIMARY KEY CLUSTERED 
(
	[ExperimentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experiments]    Script Date: 11/29/2018 2:28:39 PM ******/
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
/****** Object:  Table [dbo].[Projects]    Script Date: 11/29/2018 2:28:39 PM ******/
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
/****** Object:  Table [dbo].[Studies]    Script Date: 11/29/2018 2:28:39 PM ******/
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
	[SortDirection] [nchar](10) NULL,
 CONSTRAINT [PK_Studies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ExperimentRuns] ON 
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (20, N'Expt0001', N'DSH', CAST(N'2016-11-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (4, N'Expt0002', N'AJG', CAST(N'2016-10-25' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (32, N'Expt0003', N'KPR', CAST(N'2016-09-19' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (34, N'Expt0004', N'MAR', CAST(N'2016-08-19' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (7, N'Expt0005', N'AMC', CAST(N'2016-07-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (10, N'Expt0006', N'EPN', CAST(N'2016-06-19' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (28, N'Expt0007', N'DAW', CAST(N'2016-05-12' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (38, N'Expt0008', N'JVE', CAST(N'2016-04-19' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (14, N'Expt0009', N'AJG', CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (40, N'Expt0010', N'WKS', CAST(N'2016-02-02' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (45, N'Expt0011', N'RGO', CAST(N'2016-01-11' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (25, N'Expt0012', N'PJM', CAST(N'2015-04-24' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (11, N'Expt0013', N'JCC', CAST(N'2015-03-13' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (17, N'Expt0014', N'DSH', CAST(N'2015-02-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (43, N'Expt0015', N'CAB', CAST(N'2015-02-21' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (44, N'Expt1001', N'DSH', CAST(N'2016-12-02' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (3, N'Expt1002', N'PJM', CAST(N'2015-02-02' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (12, N'Expt1003', N'MAR', CAST(N'2016-09-09' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (5, N'Expt1004', N'EPN', CAST(N'2016-07-07' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (15, N'Expt1005', N'PJM', CAST(N'2016-01-09' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (27, N'Expt1006', N'JVE', CAST(N'2016-05-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (29, N'Expt1007', N'WKS', CAST(N'2016-03-11' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (31, N'Expt1008', N'JCC', CAST(N'2015-01-15' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (35, N'Expt1009', N'KPR', CAST(N'2016-10-30' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (37, N'Expt1010', N'AMC', CAST(N'2016-08-21' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (41, N'Expt1011', N'NDC', CAST(N'2016-04-18' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (1, N'Expt1012', N'JCC', CAST(N'2016-12-21' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (18, N'Expt1013', N'RGO', CAST(N'2016-02-25' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (30, N'Expt1014', N'DAW', CAST(N'2016-06-29' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (22, N'Expt1015', N'GWB', CAST(N'2016-06-21' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (23, N'Expt2001', N'RGO', CAST(N'2015-03-31' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (19, N'Expt2004', N'JVE', CAST(N'2015-03-02' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (2, N'Expt2005', N'DAW', CAST(N'2015-02-28' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (13, N'Expt2006', N'EPN', CAST(N'2015-01-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (8, N'Expt2007', N'WKS', CAST(N'2016-04-03' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (36, N'Expt2008', N'MAR', CAST(N'2016-11-01' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (6, N'Expt2009', N'KPR', CAST(N'2016-10-04' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (26, N'Expt2010', N'AJG', CAST(N'2016-09-22' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (42, N'Expt2011', N'DSH', CAST(N'2016-08-11' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (33, N'Expt2012', N'JCC', CAST(N'2016-07-12' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (24, N'Expt2013', N'PJM', CAST(N'2016-06-30' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (9, N'Expt2014', N'RGO', CAST(N'2016-05-13' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (16, N'Expt2015', N'NDC', CAST(N'2015-04-15' AS Date))
GO
INSERT [dbo].[ExperimentRuns] ([Id], [ExperimentID], [LabTechnician], [RunDate]) VALUES (39, N'Expt2016', N'WKS', CAST(N'2015-04-06' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ExperimentRuns] OFF
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0001', N'Study01', 1, CAST(N'2015-07-10T20:39:51.000' AS DateTime), N'Liquid Benzene injection hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0002', N'Study01', 2, CAST(N'2015-07-10T10:41:10.000' AS DateTime), N'Liquid Benzene injection daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0003', N'Study01', 3, CAST(N'2015-07-10T04:24:47.000' AS DateTime), N'Liquid Benzene injection monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0004', N'Study01', 4, CAST(N'2015-07-10T03:59:52.000' AS DateTime), N'Benzene inhaler three times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0005', N'Study01', 5, CAST(N'2015-07-10T20:20:11.000' AS DateTime), N'Benzene inhaler daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0006', N'Study01', 6, CAST(N'2015-07-10T02:10:40.000' AS DateTime), N'Benzene inhaler weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0007', N'Study01', 7, CAST(N'2015-07-10T23:45:55.000' AS DateTime), N'Benzene inhaler monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0008', N'Study01', 8, CAST(N'2015-07-10T06:32:03.000' AS DateTime), N'Liquid Benzene injection weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0009', N'Study01', 15, CAST(N'2015-07-10T17:31:32.000' AS DateTime), N'Create Benzene powder at 90 degrees Celsius')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0010', N'Study01', 10, CAST(N'2015-07-10T11:00:22.000' AS DateTime), N'Benzene capsule daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0011', N'Study01', 11, CAST(N'2015-07-10T23:39:53.000' AS DateTime), N'Benzene capsule weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0012', N'Study01', 12, CAST(N'2015-07-10T09:20:39.000' AS DateTime), N'Benzene inhaler daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0013', N'Study01', 13, CAST(N'2015-07-10T12:15:21.000' AS DateTime), N'Benzene inhaler three times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0014', N'Study01', 14, CAST(N'2015-07-10T08:39:00.000' AS DateTime), N'Create Benzene powder at room temperature')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt0015', N'Study01', 9, CAST(N'2015-07-10T06:32:03.000' AS DateTime), N'Benzene capsule hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1001', N'Study02', 1, CAST(N'2015-08-29T02:59:18.000' AS DateTime), N'Liquid Argon injection weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1002', N'Study02', 2, CAST(N'2015-08-28T11:44:09.000' AS DateTime), N'Liquid Argon injection hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1003', N'Study02', 3, CAST(N'2015-08-27T08:50:48.000' AS DateTime), N'Argon inhaler twice daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1004', N'Study02', 4, CAST(N'2015-08-27T04:31:34.000' AS DateTime), N'Argon inhaler monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1005', N'Study02', 5, CAST(N'2015-08-29T17:32:32.000' AS DateTime), N'Create Argon powder at room temperature')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1006', N'Study02', 6, CAST(N'2015-08-29T05:42:36.000' AS DateTime), N'Argon capsule daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1007', N'Study02', 7, CAST(N'2015-08-28T13:49:31.000' AS DateTime), N'Argon inhaler daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1008', N'Study02', 8, CAST(N'2015-08-29T12:43:01.000' AS DateTime), N'Liquid Argon injection daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1009', N'Study02', 15, CAST(N'2015-08-27T02:24:17.000' AS DateTime), N'Liquid Argon injection monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1010', N'Study02', 10, CAST(N'2015-08-29T13:55:52.000' AS DateTime), N'Argon inhaler weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1011', N'Study02', 11, CAST(N'2015-08-29T11:52:55.000' AS DateTime), N'Argon capsule weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1012', N'Study02', 12, CAST(N'2015-08-27T12:01:00.000' AS DateTime), N'Create Argon powder at 90 degrees Celsius')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1013', N'Study02', 13, CAST(N'2015-08-28T01:22:02.000' AS DateTime), N'Argon inhaler three times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1014', N'Study02', 14, CAST(N'2015-08-29T04:31:01.000' AS DateTime), N'Argon capsule hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt1015', N'Study02', 9, CAST(N'2015-08-29T02:32:10.000' AS DateTime), N'Argon inhaler seven times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2001', N'Study03', 1, CAST(N'2015-09-13T07:00:01.000' AS DateTime), N'Liquid Flourine injection hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2002', N'Study03', 2, CAST(N'2015-09-15T19:31:32.000' AS DateTime), N'Liquid Flourine injection daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2003', N'Study03', 3, CAST(N'2015-09-15T21:35:43.000' AS DateTime), N'Liquid Flourine injection weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2004', N'Study03', 4, CAST(N'2015-09-14T20:01:00.000' AS DateTime), N'Liquid Flourine injection monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2005', N'Study03', 5, CAST(N'2015-09-14T08:44:52.000' AS DateTime), N'Flourine inhaler three times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2006', N'Study03', 6, CAST(N'2015-09-14T16:31:03.000' AS DateTime), N'Flourine inhaler daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2007', N'Study03', 7, CAST(N'2015-09-13T06:51:19.000' AS DateTime), N'Flourine inhaler weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2008', N'Study03', 8, CAST(N'2015-09-15T06:55:19.000' AS DateTime), N'Flourine inhaler monthly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2009', N'Study03', 9, CAST(N'2015-09-13T01:00:41.000' AS DateTime), N'Flourine capsule hourly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2010', N'Study03', 10, CAST(N'2015-09-14T05:03:09.000' AS DateTime), N'Flourine capsule daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2011', N'Study03', 11, CAST(N'2015-09-13T01:50:26.000' AS DateTime), N'Flourine capsule weekly')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2012', N'Study03', 12, CAST(N'2015-09-13T03:54:40.000' AS DateTime), N'Flourine inhaler daily')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2013', N'Study03', 13, CAST(N'2015-09-14T05:33:20.000' AS DateTime), N'Flourine inhaler three times per day')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2014', N'Study03', 14, CAST(N'2015-09-15T13:21:00.000' AS DateTime), N'Create Flourine powder at room temperature')
GO
INSERT [dbo].[Experiments] ([Id], [StudyId], [Index], [CreationDate], [Text]) VALUES (N'Expt2015', N'Study03', 15, CAST(N'2015-09-14T12:28:34.000' AS DateTime), N'Create Flourine powder at 90 degrees Celsius')
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 
GO
INSERT [dbo].[Projects] ([Id], [Name], [Description]) VALUES (1, N'TestProject', N'Project For Testing Studies')
GO
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study01', NULL, N'Cancer Study 001', N'Use of Benzene for curing cancer', N'UNKNOWN', N'UNKNOWN   ')
GO
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study02', NULL, N'Cancer Study 001', N'Use of Benzene for curing cancer', N'date', N'asc       ')
GO
INSERT [dbo].[Studies] ([Id], [ProjectId], [Name], [Description], [SortColumnName], [SortDirection]) VALUES (N'Study03', NULL, N'Cancer Study 001', N'Use of Benzene for curing cancer', N'date', N'asc       ')
GO
ALTER TABLE [dbo].[Studies]  WITH CHECK ADD  CONSTRAINT [FK_Studies_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Studies] CHECK CONSTRAINT [FK_Studies_Projects]
GO
