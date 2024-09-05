﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CLASS_SEARCH]
(
  @P_CLASS_ID VARCHAR(15) = NULL,
  @P_CLASS_CODE VARCHAR(15) = NULL,
  @P_CLASS_NAME NVARCHAR(500) = NULL,
  @P_SUBJECT_ID VARCHAR(15) = NULL,
  @P_TEACHER_NAME NVARCHAR(500) = NULL,
  @P_DEP_ID VARCHAR(15) = NULL,
  @P_QUANTITY INT = NULL,
  @P_CURRENT_QUANTITY INT = NULL,
  @P_MAKER_ID VARCHAR(100) = NULL,
  @P_CHECKER_ID VARCHAR(100) = NULL,
  @P_AUTH_STATUS VARCHAR(1) = NULL,
  @P_FROM_DT VARCHAR(30) = NULL,
  @P_TO_DT VARCHAR(15) = NULL,
  @P_QUANTITY_FROM INT = NULL,
  @P_QUANTITY_TO INT = NULL,
  @P_FROM_START_DT VARCHAR(30) = NULL,
  @P_TO_START_DT VARCHAR(30) = NULL,
  @P_FROM_END_DT VARCHAR(30) = NULL,
  @P_TO_END_DT VARCHAR(30) = NULL,
  @P_USER_LOGIN VARCHAR(100) = NULL
)
AS
BEGIN
  SELECT * FROM CLASS C
  WHERE 1=1
  AND (C.CLASS_ID = @P_CLASS_ID OR @P_CLASS_ID IS NULL OR @P_CLASS_ID = '')
  AND (C.CLASS_CODE = @P_CLASS_CODE OR @P_CLASS_CODE IS NULL OR @P_CLASS_CODE = '')
  AND (C.CLASS_NAME LIKE '%'+@P_CLASS_NAME+'%' OR @P_CLASS_NAME IS NULL OR @P_CLASS_NAME = '')
  AND (C.SUBJECT_ID = @P_SUBJECT_ID OR @P_SUBJECT_ID IS NULL OR @P_SUBJECT_ID = '')
  AND (C.TEACHER_NAME LIKE '%'+@P_TEACHER_NAME+'%' OR @P_TEACHER_NAME IS NULL OR @P_TEACHER_NAME = '')
  AND (C.DEP_ID = @P_DEP_ID OR @P_DEP_ID IS NULL OR @P_DEP_ID = '')
  AND (C.MAKER_ID = @P_MAKER_ID OR @P_MAKER_ID IS NULL OR @P_MAKER_ID = '')
  AND (C.CHECKER_ID = @P_CHECKER_ID OR @P_CHECKER_ID IS NULL OR @P_CHECKER_ID = '')
  AND (C.AUTH_STATUS = @P_AUTH_STATUS OR @P_AUTH_STATUS IS NULL OR @P_AUTH_STATUS = '')
  AND (CONVERT(DATE, C.CREATE_DT) >= CONVERT(DATE, @P_FROM_DT) OR @P_FROM_DT IS NULL OR @P_FROM_DT = '')
  AND (CONVERT(DATE, C.CREATE_DT) <= CONVERT(DATE, @P_TO_DT) OR @P_TO_DT IS NULL OR @P_TO_DT = '')
  AND (C.QUANTITY >= @P_QUANTITY_FROM OR @P_QUANTITY_FROM IS NULL OR @P_QUANTITY_FROM = '')
  AND (C.QUANTITY <= @P_QUANTITY_TO OR @P_QUANTITY_TO IS NULL OR @P_QUANTITY_TO = '')
  AND (C.CLASS_ID = @P_CLASS_ID OR @P_CLASS_ID IS NULL OR @P_CLASS_ID = '')
  AND (C.CLASS_ID = @P_CLASS_ID OR @P_CLASS_ID IS NULL OR @P_CLASS_ID = '')
  AND (CONVERT(DATE, C.START_DT) >= CONVERT(DATE, @P_FROM_START_DT) OR @P_FROM_START_DT IS NULL OR @P_FROM_START_DT = '')
  AND (CONVERT(DATE, C.START_DT) <= CONVERT(DATE, @P_TO_START_DT) OR @P_TO_START_DT IS NULL OR @P_TO_START_DT = '')
  AND (CONVERT(DATE, C.END_DT) >= CONVERT(DATE, @P_FROM_END_DT) OR @P_FROM_END_DT IS NULL OR @P_FROM_END_DT = '')
  AND (CONVERT(DATE, C.END_DT) <= CONVERT(DATE, @P_TO_END_DT) OR @P_TO_END_DT IS NULL OR @P_TO_END_DT = '')
END
GO