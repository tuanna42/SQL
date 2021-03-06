USE [msdb]
GO
/****** Object:  UserDefinedFunction [dbo].[WriteDayOfWeek]    Script Date: 2016/11/07 9:48:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER FUNCTION [dbo].[WriteDayOfWeek]
(
	@ngay DATETIME
)
RETURNS NVARCHAR(10)
AS
BEGIN
    DECLARE @KetQua NVARCHAR(10)
    SELECT @KetQua=CASE DATEPART(DW,@ngay)
                WHEN 1 THEN N'Chủ nhật'
                WHEN 2 THEN N'Thứ hai'
                WHEN 3 THEN N'Thứ ba'
                WHEN 4 THEN N'Thứ tư'
                WHEN 5 THEN N'Thứ năm'
                WHEN 6 THEN N'Thứ sáu'
                ELSE N'Thứ bảy'
                END   
    RETURN (@KetQua)  /* Trị trả về của hàm */
END