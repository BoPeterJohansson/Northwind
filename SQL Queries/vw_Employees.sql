
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

        ,'<img src="data:image/bmp;base64,' +
    CAST('' AS XML).value('xs:base64Binary(sql:column("b.BmpBytes"))', 'VARCHAR(MAX)') +
  '" style="width:100px;height:100px;border-radius:50%;object-fit:cover;">' AS PhotoHtml




FROM [Northwind].[dbo].[Employees]

CROSS APPLY (
  SELECT SUBSTRING(
           CAST([Photo] AS VARBINARY(MAX)),
           CHARINDEX(0x424D, CAST([Photo] AS VARBINARY(MAX))),
           DATALENGTH([Photo])
         ) AS BmpBytes
) b;