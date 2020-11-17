SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Michael Payne
-- Create date: 2020-11-16
-- Description:	Populate Mushrooms Fact Table
-- =============================================
CREATE PROCEDURE [Integration].[PopulateMushrooms]
AS
BEGIN
	BEGIN TRANSACTION

	MERGE [Fact].[Mushrooms] fm
	USING
	(
		SELECT IIF([1] IN ('b','c','x','f','k','s'), [1], NULL) AS [CapShapeId]
			  ,IIF([3] IN ('n','b','c','g','r','p','u','e','w','y'), [3], NULL) AS  [CapColourId]
			  ,IIF([5] IN ('a','l','c','y','f','m','n','p','s'), [5], NULL) AS [OdorId]
			  ,IIF([9] IN ('b','n'), [9], NULL) AS [GillSizeId]
			  ,IIF([8] IN ('k','n','b','h','g','r','o','p','u','e','w','y'), [8], NULL) AS [GillColourId]
			  ,IIF([14] IN ('n','b','c','g','o','p','e','w','y'), [14], NULL) AS [StalkColourId]
			  ,IIF([17]IN ('n','o','w','y'), [17], NULL) AS [VeilColourId]
			  ,IIF([19] IN ('c','e','f','n','p','s','z'), [19], NULL) AS [RingTypeId]
			  ,IIF([20] IN ('k','n','b','h','r','o','u','w','y'), [20], NULL) AS [SporePrintColourId]
			  ,IIF([21] IN ('a','c','n','s','v','y'), [21], NULL) AS [PopulationId]
			  ,IIF([22] IN ('g','l','m','p','u','w','d'), [22], NULL) AS [HabitatId]
			  ,[Lon] AS [Longitude]
			  ,[Lat] AS [Latitude]
			  ,GEOGRAPHY::STPointFromText('POINT(' + [Lon] + ' ' + [Lat] + ')', 4326) AS [Location] 
			  ,IIF(RIGHT([Time],2) IN ('AM','PM'),CAST(LEFT([Time],11) AS TIME(7)), NULL) AS [Time]	
		FROM [Staging].[Mushrooms]
	) sm
	ON fm.[Longitude] = sm.[Longitude]
		AND fm.[Latitude] = sm.[Latitude]
	WHEN MATCHED THEN UPDATE 
		SET	   fm.[CapShapeId]			= sm.[CapShapeId]
			  ,fm.[CapColourId]			= sm.[CapColourId]
			  ,fm.[OdorId]				= sm.[OdorId]
			  ,fm.[GillSizeId]			= sm.[GillSizeId]
			  ,fm.[GillColourId]		= sm.[GillColourId]
			  ,fm.[StalkColourId]		= sm.[StalkColourId]
			  ,fm.[VeilColourId]		= sm.[VeilColourId]
			  ,fm.[RingTypeId]			= sm.[RingTypeId]
			  ,fm.[SporePrintColourId]	= sm.[SporePrintColourId]
			  ,fm.[PopulationId]		= sm.[PopulationId]
			  ,fm.[HabitatId]			= sm.[HabitatId]
			  ,fm.[Longitude]			= sm.[Longitude]
			  ,fm.[Latitude]			= sm.[Latitude]
			  ,fm.[Location] 			= sm.[Location] 
			  ,fm.[Time]				= sm.[Time]	
	WHEN NOT MATCHED BY TARGET
		THEN INSERT
			(
				 [CapShapeId]
				,[CapColourId]
				,[OdorId]
				,[GillSizeId]
				,[GillColourId]
				,[StalkColourId]
				,[VeilColourId]
				,[RingTypeId]
				,[SporePrintColourId]
				,[PopulationId]
				,[HabitatId]
				,[Longitude]
				,[Latitude]
				,[Location]
				,[Time]
			)
		VALUES
			(
				 sm.[CapShapeId]
				,sm.[CapColourId]
				,sm.[OdorId]
				,sm.[GillSizeId]
				,sm.[GillColourId]
				,sm.[StalkColourId]
				,sm.[VeilColourId]
				,sm.[RingTypeId]
				,sm.[SporePrintColourId]
				,sm.[PopulationId]
				,sm.[HabitatId]
				,sm.[Longitude]
				,sm.[Latitude]
				,sm.[Location]
				,sm.[Time]
			);
	
	COMMIT TRANSACTION

	RETURN 0
END
GO
