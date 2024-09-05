CREATE TABLE [dbo].[SYS_CODEMASTERS] (
  [Prefix] [nvarchar](10) NOT NULL,
  [CurValue] [decimal] NULL,
  [Description] [nvarchar](500) NULL,
  [Active] [char](1) NULL,
  CONSTRAINT [PK_SYS_CODEMASTERS] PRIMARY KEY CLUSTERED ([Prefix])
)
ON [PRIMARY]
GO