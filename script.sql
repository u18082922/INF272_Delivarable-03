USE [master]
GO
/****** Object:  Database [DT Activities]    Script Date: 10/18/2019 11:05:55 PM ******/
CREATE DATABASE [DT Activities]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DT Activities', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DT Activities.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DT Activities_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DT Activities_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DT Activities] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DT Activities].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DT Activities] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DT Activities] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DT Activities] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DT Activities] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DT Activities] SET ARITHABORT OFF 
GO
ALTER DATABASE [DT Activities] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DT Activities] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DT Activities] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DT Activities] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DT Activities] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DT Activities] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DT Activities] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DT Activities] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DT Activities] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DT Activities] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DT Activities] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DT Activities] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DT Activities] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DT Activities] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DT Activities] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DT Activities] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DT Activities] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DT Activities] SET RECOVERY FULL 
GO
ALTER DATABASE [DT Activities] SET  MULTI_USER 
GO
ALTER DATABASE [DT Activities] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DT Activities] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DT Activities] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DT Activities] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DT Activities] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DT Activities', N'ON'
GO
USE [DT Activities]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/18/2019 11:05:55 PM ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] NOT NULL,
	[Description] [nchar](50) NULL,
 CONSTRAINT [PK_CityTable] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/18/2019 11:05:55 PM ******/
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
/****** Object:  Table [dbo].[Phase]    Script Date: 10/18/2019 11:05:55 PM ******/
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
/****** Object:  Table [dbo].[Province]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinveID] [int] NOT NULL,
	[Description] [nchar](50) NULL,
	[CityID] [int] NOT NULL,
 CONSTRAINT [PK_ProvinceTable] PRIMARY KEY CLUSTERED 
(
	[ProvinveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionsID] [int] NOT NULL,
	[Question] [nchar](50) NULL,
	[Answer] [nchar](50) NULL,
	[Mark] [int] NOT NULL,
 CONSTRAINT [PK_QuestionsTable] PRIMARY KEY CLUSTERED 
(
	[QuestionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reward]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reward](
	[RewardID] [int] NOT NULL,
	[Item] [varchar](50) NULL,
	[Rule] [int] NULL,
	[SubjectID] [int] NULL,
	[TestID] [int] NULL,
	[UserID] [int] NULL,
	[RewardTypeID] [int] NOT NULL,
 CONSTRAINT [PK_RewardTable] PRIMARY KEY CLUSTERED 
(
	[RewardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RewardType]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RewardType](
	[RewardTypeID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_RewardTypeTable] PRIMARY KEY CLUSTERED 
(
	[RewardTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[UserID] [int] NOT NULL,
	[Average] [int] NULL,
 CONSTRAINT [PK_StudentTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentReward]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentReward](
	[UserID] [int] NULL,
	[RewardID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentTest]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTest](
	[Date] [datetime] NULL,
	[TestID] [int] NOT NULL,
	[Mark] [int] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_StudentTest] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] NOT NULL,
	[PhaseID] [int] NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_SubjctTable] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[TestID] [int] NOT NULL,
	[Mark] [int] NULL,
	[SubjectID] [int] NULL,
	[QuestionsID] [int] NULL,
 CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tutor]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutor](
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_TutorTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TutorSubject]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorSubject](
	[TutorSubjectID] [int] NOT NULL,
	[UserIDStudent] [int] NULL,
	[UserID] [int] NULL,
	[SubjectID] [int] NULL,
 CONSTRAINT [PK_TutorSubject ] PRIMARY KEY CLUSTERED 
(
	[TutorSubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Email] [nchar](50) NULL,
	[Password] [nchar](30) NULL,
	[AddressID] [int] NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Name] [nchar](50) NULL,
	[Surname] [nchar](50) NULL,
	[DateOfBirth] [nchar](10) NULL,
	[cellNumber] [varchar](10) NULL,
	[IDNumber] [varchar](13) NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 10/18/2019 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_UserTypeTable] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([Country_ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Province] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([ProvinveID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Province]
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD  CONSTRAINT [FK_Province_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Province] CHECK CONSTRAINT [FK_Province_City]
GO
ALTER TABLE [dbo].[Reward]  WITH CHECK ADD  CONSTRAINT [FK_Reward_RewardType] FOREIGN KEY([RewardTypeID])
REFERENCES [dbo].[RewardType] ([RewardTypeID])
GO
ALTER TABLE [dbo].[Reward] CHECK CONSTRAINT [FK_Reward_RewardType]
GO
ALTER TABLE [dbo].[Reward]  WITH CHECK ADD  CONSTRAINT [FK_Reward_StudentTest] FOREIGN KEY([TestID], [UserID])
REFERENCES [dbo].[StudentTest] ([TestID], [UserID])
GO
ALTER TABLE [dbo].[Reward] CHECK CONSTRAINT [FK_Reward_StudentTest]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[StudentReward]  WITH CHECK ADD  CONSTRAINT [FK_StudentReward_Reward] FOREIGN KEY([RewardID])
REFERENCES [dbo].[Reward] ([RewardID])
GO
ALTER TABLE [dbo].[StudentReward] CHECK CONSTRAINT [FK_StudentReward_Reward]
GO
ALTER TABLE [dbo].[StudentReward]  WITH CHECK ADD  CONSTRAINT [FK_StudentReward_Student] FOREIGN KEY([UserID])
REFERENCES [dbo].[Student] ([UserID])
GO
ALTER TABLE [dbo].[StudentReward] CHECK CONSTRAINT [FK_StudentReward_Student]
GO
ALTER TABLE [dbo].[StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_StudentTest_Student] FOREIGN KEY([UserID])
REFERENCES [dbo].[Student] ([UserID])
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
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Questions] FOREIGN KEY([QuestionsID])
REFERENCES [dbo].[Questions] ([QuestionsID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Questions]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Subject]
GO
ALTER TABLE [dbo].[Tutor]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Tutor] CHECK CONSTRAINT [FK_Tutor_User]
GO
ALTER TABLE [dbo].[TutorSubject]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject _Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[TutorSubject] CHECK CONSTRAINT [FK_TutorSubject _Subject]
GO
ALTER TABLE [dbo].[TutorSubject]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject _Tutor] FOREIGN KEY([UserID])
REFERENCES [dbo].[Tutor] ([UserID])
GO
ALTER TABLE [dbo].[TutorSubject] CHECK CONSTRAINT [FK_TutorSubject _Tutor]
GO
ALTER TABLE [dbo].[TutorSubject]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject_Student] FOREIGN KEY([UserIDStudent])
REFERENCES [dbo].[Student] ([UserID])
GO
ALTER TABLE [dbo].[TutorSubject] CHECK CONSTRAINT [FK_TutorSubject_Student]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([Address_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Address]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
USE [master]
GO
ALTER DATABASE [DT Activities] SET  READ_WRITE 
GO
