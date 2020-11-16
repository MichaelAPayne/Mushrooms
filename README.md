# Mushrooms
I have created all the database objects in the following directory structure.  Create a Database in SQL Server Called Mushrooms

Database--|
	  | -- Security -- | -- Schemas
          | -- Data         
          | -- Stored Procedures         
          | -- Tables

Create the objects in the following order.
1. Schemas
2. Tables
3. Stored Procedures
4. Data

The ETL job is created in Visual Studion SSIS. You can run the Package from Visual Studion or deploy to SQL Server from Visual Studio.

The Reports are encapsulated in stored procedures

1. Number of Species

USE [Mushrooms]
GO

DECLARE	@return_value int

EXEC	@return_value = [Report].[GetMushroomSpecies]

SELECT	'Return Value' = @return_value

GO

2. Corralation between Habitat and Cap Colour

USE [Mushrooms]
GO

DECLARE	@return_value int

EXEC	@return_value = [Report].[GetHabitatCapColour]

SELECT	'Return Value' = @return_value

GO

3. Mushroom Colours within 10KM distance
Note the requirements did not specify which part of the mushroom colour, so I have made the assumption that it is any part.

USE [Mushrooms]
GO

DECLARE	@return_value int

EXEC	@return_value = [Report].[GetMushroomsByDistance]
		@Distance = 10000

SELECT	'Return Value' = @return_value

GO

