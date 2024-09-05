CREATE TABLE [dbo].[AspNetUsers] (
  [Id] [nvarchar](450) NOT NULL,
  [USER_CODE] [nvarchar](max) NOT NULL,
  [DEP_ID] [nvarchar](max) NOT NULL,
  [PasswordHash] [nvarchar](max) NULL,
  [DEPARTMENTDEP_ID] [nvarchar](450) NULL,
  [UserName] [nvarchar](256) NULL,
  [NormalizedUserName] [nvarchar](256) NULL,
  [Email] [nvarchar](256) NULL,
  [NormalizedEmail] [nvarchar](256) NULL,
  [EmailConfirmed] [bit] NOT NULL,
  [SecurityStamp] [nvarchar](max) NULL,
  [ConcurrencyStamp] [nvarchar](max) NULL,
  [PhoneNumber] [nvarchar](max) NULL,
  [PhoneNumberConfirmed] [bit] NOT NULL,
  [TwoFactorEnabled] [bit] NOT NULL,
  [LockoutEnd] [datetimeoffset] NULL,
  [LockoutEnabled] [bit] NOT NULL,
  [AccessFailedCount] [int] NOT NULL,
  CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [EmailIndex]
  ON [dbo].[AspNetUsers] ([NormalizedEmail])
  ON [PRIMARY]
GO

CREATE INDEX [IX_AspNetUsers_DEPARTMENTDEP_ID]
  ON [dbo].[AspNetUsers] ([DEPARTMENTDEP_ID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UserNameIndex]
  ON [dbo].[AspNetUsers] ([NormalizedUserName])
  WHERE ([NormalizedUserName] IS NOT NULL)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUsers]
  ADD CONSTRAINT [FK_AspNetUsers_DEPARTMENT_DEPARTMENTDEP_ID] FOREIGN KEY ([DEPARTMENTDEP_ID]) REFERENCES [dbo].[DEPARTMENT] ([DEP_ID])
GO