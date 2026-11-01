
CREATE OR ALTER VIEW vw_Products AS

SELECT 
       [ProductID]
      ,[SupplierID]
      ,[CategoryID]
      ,[ProductName]        AS [Product Name]
      ,[QuantityPerUnit]    AS [Quantity Per Unit]
      ,[UnitPrice]          AS [Unit Price]
      ,[UnitsInStock]       AS [Units In Stock]
      ,[UnitsOnOrder]       AS [Units On Order]
      ,[ReorderLevel]       AS [Reorder Level]
      ,[Discontinued]

FROM [Northwind].[dbo].[Products]
