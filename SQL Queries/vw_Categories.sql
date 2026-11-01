
CREATE OR ALTER VIEW vw_Categories AS

SELECT 
       [CategoryID]
      ,[CategoryName] AS [Category Name]
      ,[Description]
      ,[Picture]
 
FROM [Northwind].[dbo].[Categories]
