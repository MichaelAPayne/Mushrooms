SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Michael Payne
-- Create date: 2020-11-16
-- Description:	Get Distinct Type of Mushroom Species
-- =============================================
CREATE PROCEDURE [Report].[GetMushroomsByDistance]
(
	@Distance INT = 10000
)
AS
BEGIN
	WITH cte AS
	(
		SELECT c.[ColourId]
			,c.[ColourDescription]		  
		FROM [Fact].[Mushrooms] m1, 
			 [Fact].[Mushrooms] m2
				INNER JOIN [Dimension].[Colour] c
					ON m2.[CapColourId] = c.[ColourId]
		WHERE m2.[Location].STDistance(m1.[Location]) <= @Distance
			AND m1.[id] <> m2.[Id]
		UNION 
		SELECT  c.[ColourId]
				,c.[ColourDescription]		  
		FROM [Fact].[Mushrooms] m1,
			 [Fact].[Mushrooms] m2
				INNER JOIN [Dimension].[Colour] c
					ON m2.[GillColourId] = c.[ColourId]
		WHERE m2.[Location].STDistance(m1.[Location]) <= @Distance
			AND m1.[id] <> m2.[Id]
		UNION
		SELECT  c.[ColourId]
				,c.[ColourDescription]		   
		FROM [Fact].[Mushrooms] m1,
			 [Fact].[Mushrooms] m2
				INNER JOIN [Dimension].[Colour] c
					ON m2.[StalkColourId] = c.[ColourId]
		WHERE m2.[Location].STDistance(m1.[Location]) <= @Distance
			AND m1.[id] <> m2.[Id]
		UNION
		SELECT  c.[ColourId]
				,c.[ColourDescription]		  
		FROM [Fact].[Mushrooms] m1,
			 [Fact].[Mushrooms] m2
				INNER JOIN [Dimension].[Colour] c
					ON m2.[VeilColourId] = c.[ColourId]
		WHERE m2.[Location].STDistance(m1.[Location]) <= @Distance
			AND m1.[id] <> m2.[Id]
		UNION
		SELECT  c.[ColourId]
				,c.[ColourDescription]		  
		FROM [Fact].[Mushrooms] m1,
			 [Fact].[Mushrooms] m2
				INNER JOIN [Dimension].[Colour] c
					ON m2.[SporePrintColourId] = c.[ColourId]
		WHERE m2.[Location].STDistance(m1.[Location]) <= @Distance
			AND m1.[id] <> m2.[Id]
	)
	SELECT DISTINCT ColourId
				   ,ColourDescription
	FROM cte;
END
GO
