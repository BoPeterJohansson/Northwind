
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
    --,[Photo]
      ,[Notes]
      ,[ReportsTo]                  AS [Reports To]
    --,[PhotoPath]                  AS [Photo Path]
      ,CONCAT(
        'https://raw.githubusercontent.com/BoPeterJohansson/Northwind/refs/heads/main/Employee%20Images/',
        EmployeeID,
        '.jpg'
        ) AS ImageURL

FROM [Northwind].[dbo].[Employees]