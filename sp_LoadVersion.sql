USE [msdb]
GO

/****** Object:  StoredProcedure [dbo].[sp_LoadVersion]    Script Date: 2016/11/07 9:46:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE Proc [dbo].[sp_LoadVersion]
@version as int,
@dbname as varchar(20)
as
Begin
	select * from MSdbms where version > @version and dbms like '%'+ @dbname + '%'
End
GO


