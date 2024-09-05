﻿CREATE TABLE [dbo].[SYS_PREFIX] (
  [ID] [varchar](100) NOT NULL,
  [Prefix] [varchar](10) NOT NULL,
  [Description] [nvarchar](1000) NULL,
  CONSTRAINT [PK_SYS_PREFIX] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [IX_SYS_PREFIX] UNIQUE ([Prefix])
)
ON [PRIMARY]
GO