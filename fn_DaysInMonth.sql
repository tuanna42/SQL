USE [msdb]
GO

/****** Object:  UserDefinedFunction [dbo].[funDaysInMonth]    Script Date: 2016/11/07 10:53:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[funDaysInMonth] 
(
	@Thang	Int,
	@Nam 	Int
)  
Returns @Table_OutPut Table
(
  Thang_OutPut Int,
  Nam_OutPut Int,
  Ngay_OutPut Int
)
AS  
BEGIN 	

DECLARE @mNgay	Int

IF @Thang = 2 
	BEGIN
		IF((@Nam % 4 = 0 AND @Nam %100<>0)OR(@Nam % 400 = 0))
			SET @mNgay = 29
		ELSE
			SET @mNgay = 28
	END
ELSE
	SELECT @mNgay =  
		CASE @Thang
			WHEN 1 THEN 31
			WHEN 3 THEN 31
			WHEN 5 THEN 31
			WHEN 7 THEN 31
			WHEN 8 THEN 31
			WHEN 10 THEN 31
			WHEN 12 THEN 31
			WHEN 4 THEN 30
			WHEN 6 THEN 30
			WHEN 9 THEN 30
			WHEN 11 THEN 30
END
INSERT @Table_OutPut select @Thang,@Nam,@mNgay
RETURN
END

GO


