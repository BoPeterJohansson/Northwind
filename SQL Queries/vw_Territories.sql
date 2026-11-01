
CREATE OR ALTER VIEW vw_Territories AS

SELECT 
       [TerritoryID]
      ,[RegionID]
      ,[TerritoryDescription] AS [Territory Description]

FROM [Northwind].[dbo].[Territories]
