USE [msdb]
GO

/****** Object:  UserDefinedFunction [dbo].[GetCurrentYear]    Script Date: 2016/11/07 9:48:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetCurrentYear]() 
RETURNS int
AS 
BEGIN
 RETURN  YEAR(getdate())
END
GO


