SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Michael Payne
-- Create date: 2020-11-16
-- Description:	Get corralation between Habitat and Cap Colour
-- =============================================
CREATE PROCEDURE [Report].[GetHabitatCapColour] 
AS
BEGIN
	SELECT h.[HabitatDescription]
		  ,c.[ColourDescription]
		  ,COUNT(*) AS [Ocurrances]
	FROM [Fact].[Mushrooms] m
		INNER JOIN [Dimension].[Habitat] h
			ON m.[HabitatId] = h.[HabitatId]
		INNER JOIN [Dimension].[Colour] c
			ON m.[CapColourId] = c.[ColourId]
	WHERE m.[CapColourId] IS NOT NULL
	GROUP BY h.[HabitatDescription]
		  ,c.[ColourDescription]
END
GO
