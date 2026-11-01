
CREATE OR ALTER VIEW vw_Employees AS

SELECT 
       [EmployeeID]
      ,[LastName]                   AS [Last Name]
      ,[FirstName]                  AS [First Name]
      ,[Title] 
      ,[TitleOfCourtesy]            AS [Title Of Courtesy]
      ,CAST([BirthDate] AS date)    AS [Birth Date]
      ,CAST([HireDate] AS date)     AS [Hire Date]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]                 AS [Postal Code]
      ,[Country]
      ,[HomePhone]                  AS [Home Phone]
      ,[Extension]
      ,[Photo]
      ,[Notes]
      ,[ReportsTo]                  AS [Reports To]
      ,[PhotoPath]                  AS [Photo Path]

FROM [Northwind].[dbo].[Employees]
