CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] [nvarchar](450) NOT NULL,
  [RoleId] [nvarchar](450) NOT NULL,
  [TL_USER_ENTITYId] [nvarchar](450) NULL,
  CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_AspNetUserRoles_RoleId]
  ON [dbo].[AspNetUserRoles] ([RoleId])
  ON [PRIMARY]
GO

CREATE INDEX [IX_AspNetUserRoles_TL_USER_ENTITYId]
  ON [dbo].[AspNetUserRoles] ([TL_USER_ENTITYId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserRoles]
  ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AspNetUserRoles]
  ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_TL_USER_ENTITYId] FOREIGN KEY ([TL_USER_ENTITYId]) REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[AspNetUserRoles]
  ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO