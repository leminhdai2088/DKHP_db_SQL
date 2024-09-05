CREATE TABLE [dbo].[EMAIL_SENDER] (
  [EMAIL_ID] [nvarchar](450) NOT NULL,
  [RECEIVER_EMAIL] [nvarchar](max) NULL,
  [EXPIRE_DT] [datetime2] NULL,
  [IS_VALID] [bit] NOT NULL,
  [TYPE_EMAIL] [nvarchar](max) NULL,
  [SUBJECT] [nvarchar](max) NULL,
  [CONTENT] [nvarchar](max) NULL,
  [CREATE_DT] [datetime2] NULL,
  CONSTRAINT [PK_EMAIL_SENDER] PRIMARY KEY CLUSTERED ([EMAIL_ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO