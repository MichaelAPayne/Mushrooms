SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Michael Payne
-- Create date: 2020-11-16
-- Description:	Get Distinct Type of Mushroom Species
-- =============================================
CREATE PROCEDURE [Report].[GetMushroomSpecies]
AS
BEGIN
	WITH cte AS
	(
		SELECT DISTINCT m1.[CapShapeId]
			  ,m1.[CapColourId]
			  ,m1.[OdorId]
			  ,m1.[GillSizeId]
			  ,m1.[GillColourId]
			  ,m1.[StalkColourId]
			  ,m1.[VeilColourId]
			  ,m1.[RingTypeId]
			  ,m1.[SporePrintColourId]
			  ,m1.[PopulationId]
			  ,m1.[HabitatId]
		 FROM [Fact].[Mushrooms] m1
	 )
	 SELECT COUNT(*) AS [Mushroom Species]
	 FROM cte
END
GO
