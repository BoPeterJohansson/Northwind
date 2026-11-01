
CREATE OR ALTER VIEW vw_Suppliers AS

SELECT 
       [SupplierID]
      ,[CompanyName]    AS [Company Name]
      ,[ContactName]    AS [Contact Name]
      ,[ContactTitle]   AS [Contact Title]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]     AS [Postal Code]
      ,[Country]
      ,[Phone]
      ,[Fax]
      ,[HomePage]       AS [Home Page]

FROM [Northwind].[dbo].[Suppliers]
