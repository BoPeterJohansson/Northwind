
CREATE OR ALTER VIEW vw_Orders AS

SELECT 
       [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,[ShipVia]                        AS [ShipperID]
      ,CAST([OrderDate]     AS date)    AS [Order Date]
      ,CAST([RequiredDate]  AS date)    AS [Required Date]
      ,CAST([ShippedDate]   AS date)    AS [Shipped Date]
      ,[Freight]
      ,[ShipName]                       AS [Ship Name]
      ,[ShipAddress]                    AS [Ship Address]
      ,[ShipCity]                       AS [Ship City]
      ,[ShipRegion]                     AS [Ship Region]
      ,[ShipPostalCode]                 AS [Ship Postal Code]
      ,[ShipCountry]                    AS [Ship Country]
  FROM [Northwind].[dbo].[Orders]
