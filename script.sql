USE [SocialGoal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/11/2021 18:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[ProfilePicUrl] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[LastLoginTime] [datetime] NULL,
	[Activated] [bit] NULL,
	[RoleId] [int] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](250) NULL,
	[UpdateId] [int] NOT NULL,
	[CommentDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentUsers]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentUsers](
	[CommentUserId] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.CommentUsers] PRIMARY KEY CLUSTERED 
(
	[CommentUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foci]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foci](
	[FocusId] [int] IDENTITY(1,1) NOT NULL,
	[FocusName] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[GroupId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Foci] PRIMARY KEY CLUSTERED 
(
	[FocusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowRequests]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowRequests](
	[FollowRequestId] [int] IDENTITY(1,1) NOT NULL,
	[FromUserId] [nvarchar](max) NOT NULL,
	[ToUserId] [nvarchar](max) NOT NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.FollowRequests] PRIMARY KEY CLUSTERED 
(
	[FollowRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUsers]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUsers](
	[FollowUserId] [int] IDENTITY(1,1) NOT NULL,
	[ToUserId] [nvarchar](128) NULL,
	[FromUserId] [nvarchar](128) NULL,
	[Accepted] [bit] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ApplicationUser_Id] [nvarchar](128) NULL,
	[ApplicationUser_Id1] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.FollowUsers] PRIMARY KEY CLUSTERED 
(
	[FollowUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goals]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goals](
	[GoalId] [int] IDENTITY(1,1) NOT NULL,
	[GoalName] [nvarchar](55) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Target] [float] NULL,
	[GoalType] [bit] NOT NULL,
	[MetricId] [int] NULL,
	[GoalStatusId] [int] NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Goals] PRIMARY KEY CLUSTERED 
(
	[GoalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalStatus]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalStatus](
	[GoalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[GoalStatusType] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.GoalStatus] PRIMARY KEY CLUSTERED 
(
	[GoalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupComments]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupComments](
	[GroupCommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[GroupUpdateId] [int] NOT NULL,
	[CommentDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GroupComments] PRIMARY KEY CLUSTERED 
(
	[GroupCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupCommentUsers]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupCommentUsers](
	[GroupCommentUserId] [int] IDENTITY(1,1) NOT NULL,
	[GroupCommentId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.GroupCommentUsers] PRIMARY KEY CLUSTERED 
(
	[GroupCommentUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupGoals]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupGoals](
	[GroupGoalId] [int] IDENTITY(1,1) NOT NULL,
	[GoalName] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Target] [float] NULL,
	[MetricId] [int] NULL,
	[FocusId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[GoalStatusId] [int] NOT NULL,
	[GroupUserId] [int] NOT NULL,
	[AssignedGroupUserId] [int] NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GroupGoals] PRIMARY KEY CLUSTERED 
(
	[GroupGoalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupInvitations]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupInvitations](
	[GroupInvitationId] [int] IDENTITY(1,1) NOT NULL,
	[FromUserId] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[ToUserId] [nvarchar](max) NULL,
	[SentDate] [datetime] NOT NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.GroupInvitations] PRIMARY KEY CLUSTERED 
(
	[GroupInvitationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupRequests]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRequests](
	[GroupRequestId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.GroupRequests] PRIMARY KEY CLUSTERED 
(
	[GroupRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUpdates]    Script Date: 10/11/2021 18:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUpdates](
	[GroupUpdateId] [int] IDENTITY(1,1) NOT NULL,
	[Updatemsg] [nvarchar](max) NULL,
	[status] [float] NULL,
	[GroupGoalId] [int] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GroupUpdates] PRIMARY KEY CLUSTERED 
(
	[GroupUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUpdateSupports]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUpdateSupports](
	[GroupUpdateSupportId] [int] IDENTITY(1,1) NOT NULL,
	[GroupUpdateId] [int] NOT NULL,
	[GroupUserId] [int] NOT NULL,
	[UpdateSupportedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GroupUpdateSupports] PRIMARY KEY CLUSTERED 
(
	[GroupUpdateSupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUpdateUsers]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUpdateUsers](
	[GroupUpdateUserId] [int] IDENTITY(1,1) NOT NULL,
	[GroupUpdateId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.GroupUpdateUsers] PRIMARY KEY CLUSTERED 
(
	[GroupUpdateUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUsers]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUsers](
	[GroupUserId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Admin] [bit] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GroupUsers] PRIMARY KEY CLUSTERED 
(
	[GroupUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metrics]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metrics](
	[MetricId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Metrics] PRIMARY KEY CLUSTERED 
(
	[MetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationTokens]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationTokens](
	[RegistrationTokenId] [int] IDENTITY(1,1) NOT NULL,
	[Token] [uniqueidentifier] NOT NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.RegistrationTokens] PRIMARY KEY CLUSTERED 
(
	[RegistrationTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityTokens]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityTokens](
	[SecurityTokenId] [int] IDENTITY(1,1) NOT NULL,
	[Token] [uniqueidentifier] NOT NULL,
	[ActualID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SecurityTokens] PRIMARY KEY CLUSTERED 
(
	[SecurityTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportInvitations]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportInvitations](
	[SupportInvitationId] [int] IDENTITY(1,1) NOT NULL,
	[FromUserId] [nvarchar](max) NULL,
	[GoalId] [int] NOT NULL,
	[ToUserId] [nvarchar](max) NULL,
	[SentDate] [datetime] NOT NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SupportInvitations] PRIMARY KEY CLUSTERED 
(
	[SupportInvitationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supports]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supports](
	[SupportId] [int] IDENTITY(1,1) NOT NULL,
	[GoalId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[SupportedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Supports] PRIMARY KEY CLUSTERED 
(
	[SupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Updates]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Updates](
	[UpdateId] [int] IDENTITY(1,1) NOT NULL,
	[Updatemsg] [nvarchar](max) NULL,
	[status] [float] NULL,
	[GoalId] [int] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Updates] PRIMARY KEY CLUSTERED 
(
	[UpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpdateSupports]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdateSupports](
	[UpdateSupportId] [int] IDENTITY(1,1) NOT NULL,
	[UpdateId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[UpdateSupportedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UpdateSupports] PRIMARY KEY CLUSTERED 
(
	[UpdateSupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 10/11/2021 18:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[UserProfileId] [int] IDENTITY(1,1) NOT NULL,
	[DateEdited] [datetime] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [bit] NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[ZipCode] [float] NULL,
	[ContactNo] [float] NULL,
	[UserId] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.UserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Foci]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Foci_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Foci] CHECK CONSTRAINT [FK_dbo.Foci_dbo.Groups_GroupId]
GO
ALTER TABLE [dbo].[FollowUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ApplicationUser_Id] FOREIGN KEY([ApplicationUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FollowUsers] CHECK CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ApplicationUser_Id]
GO
ALTER TABLE [dbo].[FollowUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ApplicationUser_Id1] FOREIGN KEY([ApplicationUser_Id1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FollowUsers] CHECK CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ApplicationUser_Id1]
GO
ALTER TABLE [dbo].[FollowUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_FromUserId] FOREIGN KEY([FromUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FollowUsers] CHECK CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_FromUserId]
GO
ALTER TABLE [dbo].[FollowUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ToUserId] FOREIGN KEY([ToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FollowUsers] CHECK CONSTRAINT [FK_dbo.FollowUsers_dbo.AspNetUsers_ToUserId]
GO
ALTER TABLE [dbo].[Goals]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Goals_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Goals] CHECK CONSTRAINT [FK_dbo.Goals_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[GroupComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupComments_dbo.GroupUpdates_GroupUpdateId] FOREIGN KEY([GroupUpdateId])
REFERENCES [dbo].[GroupUpdates] ([GroupUpdateId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupComments] CHECK CONSTRAINT [FK_dbo.GroupComments_dbo.GroupUpdates_GroupUpdateId]
GO
ALTER TABLE [dbo].[GroupGoals]  WITH CHECK ADD  CONSTRAINT [FK_GroupGoals_GroupGoals] FOREIGN KEY([GroupGoalId])
REFERENCES [dbo].[GroupGoals] ([GroupGoalId])
GO
ALTER TABLE [dbo].[GroupGoals] CHECK CONSTRAINT [FK_GroupGoals_GroupGoals]
GO
ALTER TABLE [dbo].[GroupInvitations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupInvitations_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupInvitations] CHECK CONSTRAINT [FK_dbo.GroupInvitations_dbo.Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupRequests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupRequests_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[GroupRequests] CHECK CONSTRAINT [FK_dbo.GroupRequests_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[GroupRequests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupRequests_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupRequests] CHECK CONSTRAINT [FK_dbo.GroupRequests_dbo.Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupUpdateSupports]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupUpdateSupports_dbo.GroupUpdates_GroupUpdateId] FOREIGN KEY([GroupUpdateId])
REFERENCES [dbo].[GroupUpdates] ([GroupUpdateId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupUpdateSupports] CHECK CONSTRAINT [FK_dbo.GroupUpdateSupports_dbo.GroupUpdates_GroupUpdateId]
GO
