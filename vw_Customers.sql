
CREATE OR ALTER VIEW vw_Customers AS

SELECT 
       [CustomerID]
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

FROM [Northwind].[dbo].[Customers]
