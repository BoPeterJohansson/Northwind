
CREATE OR ALTER VIEW [vw_OrderDetails] AS

SELECT 
       [OrderID]
      ,[ProductID]
      ,[UnitPrice] AS [Unit Price]
      ,[Quantity]
      ,[Discount]
  FROM [Northwind].[dbo].[Order Details]
