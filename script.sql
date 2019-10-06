USE [DT Activities]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Address_ID] [int] NOT NULL,
	[StreetName] [nchar](100) NULL,
	[HouseNumber] [nchar](10) NULL,
	[PostalCode] [nchar](10) NULL,
	[Country] [int] NOT NULL,
 CONSTRAINT [PK_AddressTable] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] NOT NULL,
	[Description] [nchar](50) NULL,
 CONSTRAINT [PK_CityTable] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [int] NOT NULL,
	[Name] [nchar](10) NULL,
	[Province_ID] [int] NOT NULL,
 CONSTRAINT [PK_CountryTable] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mark]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[MarkID] [int] NOT NULL,
	[AverageMark] [int] NULL,
 CONSTRAINT [PK_MarkTable] PRIMARY KEY CLUSTERED 
(
	[MarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phase]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase](
	[PhaseID] [int] NOT NULL,
	[Category] [nchar](20) NOT NULL,
 CONSTRAINT [PK_PhaseTable] PRIMARY KEY CLUSTERED 
(
	[PhaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Province]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Provinve_ID] [int] NOT NULL,
	[Description] [nchar](50) NULL,
	[City_ID] [int] NOT NULL,
 CONSTRAINT [PK_ProvinceTable] PRIMARY KEY CLUSTERED 
(
	[Provinve_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Questions_ID] [int] NOT NULL,
	[Question] [nchar](50) NULL,
	[Answer] [nchar](50) NULL,
	[Mark] [int] NOT NULL,
	[TestID] [int] NOT NULL,
	[MarkID] [int] NOT NULL,
 CONSTRAINT [PK_QuestionsTable] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reward]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reward](
	[RewardID] [int] NOT NULL,
	[Item] [nchar](20) NULL,
	[Rule] [nchar](102) NULL,
	[TestID] [int] NOT NULL,
	[RewardTypeID] [int] NOT NULL,
 CONSTRAINT [PK_RewardTable] PRIMARY KEY CLUSTERED 
(
	[RewardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RewardType]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardType](
	[RewardTypeID] [int] NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_RewardTypeTable] PRIMARY KEY CLUSTERED 
(
	[RewardTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_StudentTable] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentReward]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentReward](
	[StudentRewardID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[RewardID] [int] NOT NULL,
 CONSTRAINT [PK_StudentRewardTable] PRIMARY KEY CLUSTERED 
(
	[StudentRewardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentTest]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTest](
	[StudentTestID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[StudentID] [int] NOT NULL,
	[TestID] [int] NOT NULL,
 CONSTRAINT [PK_StudentTestID] PRIMARY KEY CLUSTERED 
(
	[StudentTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] NOT NULL,
	[PhaseID] [int] NOT NULL,
 CONSTRAINT [PK_SubjctTable] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[TestID] [int] NOT NULL,
	[Mark] [int] NULL,
	[MarkID] [int] NOT NULL,
 CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tutor]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutor](
	[TutorID] [int] NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_TutorTable] PRIMARY KEY CLUSTERED 
(
	[TutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TutorSubject ]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorSubject ](
	[TutorSubjectID] [int] NOT NULL,
	[TutorID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
 CONSTRAINT [PK_TutorSubject Table] PRIMARY KEY CLUSTERED 
(
	[TutorSubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Email] [nchar](50) NULL,
	[Password] [nchar](30) NULL,
	[Address_ID] [int] NOT NULL,
	[UserType_ID] [int] NOT NULL,
	[Name] [nchar](50) NULL,
	[Surname] [nchar](50) NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2019/10/06 18:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserType_ID] [int] NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_UserTypeTable] PRIMARY KEY CLUSTERED 
(
	[UserType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([Country_ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Province] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([Provinve_ID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Province]
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD  CONSTRAINT [FK_Province_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Province] CHECK CONSTRAINT [FK_Province_City]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Mark] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([MarkID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Mark]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Test] FOREIGN KEY([TestID])
REFERENCES [dbo].[Test] ([TestID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Test]
GO
ALTER TABLE [dbo].[Reward]  WITH CHECK ADD  CONSTRAINT [FK_Reward_RewardType] FOREIGN KEY([RewardTypeID])
REFERENCES [dbo].[RewardType] ([RewardTypeID])
GO
ALTER TABLE [dbo].[Reward] CHECK CONSTRAINT [FK_Reward_RewardType]
GO
ALTER TABLE [dbo].[StudentReward]  WITH CHECK ADD  CONSTRAINT [FK_StudentReward_Reward] FOREIGN KEY([RewardID])
REFERENCES [dbo].[Reward] ([RewardID])
GO
ALTER TABLE [dbo].[StudentReward] CHECK CONSTRAINT [FK_StudentReward_Reward]
GO
ALTER TABLE [dbo].[StudentReward]  WITH CHECK ADD  CONSTRAINT [FK_StudentReward_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentReward] CHECK CONSTRAINT [FK_StudentReward_Student]
GO
ALTER TABLE [dbo].[StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_StudentTest_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentTest] CHECK CONSTRAINT [FK_StudentTest_Student]
GO
ALTER TABLE [dbo].[StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_StudentTest_Test] FOREIGN KEY([TestID])
REFERENCES [dbo].[Test] ([TestID])
GO
ALTER TABLE [dbo].[StudentTest] CHECK CONSTRAINT [FK_StudentTest_Test]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Phase] FOREIGN KEY([PhaseID])
REFERENCES [dbo].[Phase] ([PhaseID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Phase]
GO
ALTER TABLE [dbo].[TutorSubject ]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject _Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[TutorSubject ] CHECK CONSTRAINT [FK_TutorSubject _Subject]
GO
ALTER TABLE [dbo].[TutorSubject ]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject _Tutor] FOREIGN KEY([TutorID])
REFERENCES [dbo].[Tutor] ([TutorID])
GO
ALTER TABLE [dbo].[TutorSubject ] CHECK CONSTRAINT [FK_TutorSubject _Tutor]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Address] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[Address] ([Address_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Address]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserType_ID])
REFERENCES [dbo].[UserType] ([UserType_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
