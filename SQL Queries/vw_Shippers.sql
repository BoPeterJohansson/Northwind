
CREATE OR ALTER VIEW vw_Shippers AS

SELECT 
       [ShipperID]
      ,[CompanyName] AS [Company Name]
      ,[Phone]

FROM [Northwind].[dbo].[Shippers]
