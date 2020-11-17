SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Michael Payne
-- Create date: 2020-11-16
-- Description:	Truncate Staging Tables
-- =============================================
CREATE PROCEDURE [Integration].[TruncateStagingTables]
AS
BEGIN
	TRUNCATE table [Staging].[Mushrooms]

	RETURN 0
END
GO
