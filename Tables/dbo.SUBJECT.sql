﻿CREATE TABLE [dbo].[SUBJECT] (
  [SUBJECT_ID] [nvarchar](450) NOT NULL,
  [SUBJECT_CODE] [nvarchar](max) NOT NULL,
  [SUBJECT_NAME] [nvarchar](max) NOT NULL,
  [DEP_ID] [nvarchar](max) NOT NULL,
  [CREDIT_NUM] [nvarchar](max) NOT NULL,
  [MAKER_ID] [nvarchar](max) NOT NULL,
  [CREATE_DT] [datetime2] NULL,
  [CHECKER_ID] [nvarchar](max) NOT NULL,
  [APPROVE_DT] [datetime2] NULL,
  [AUTH_STATUS] [nvarchar](max) NOT NULL,
  [RECORD_STATUS] [int] NOT NULL,
  [DEPARTMENT_ENTITYDEP_ID] [nvarchar](450) NULL,
  CONSTRAINT [PK_SUBJECT] PRIMARY KEY CLUSTERED ([SUBJECT_ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_SUBJECT_DEPARTMENT_ENTITYDEP_ID]
  ON [dbo].[SUBJECT] ([DEPARTMENT_ENTITYDEP_ID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[SUBJECT]
  ADD CONSTRAINT [FK_SUBJECT_DEPARTMENT_DEPARTMENT_ENTITYDEP_ID] FOREIGN KEY ([DEPARTMENT_ENTITYDEP_ID]) REFERENCES [dbo].[DEPARTMENT] ([DEP_ID])
GO