
CREATE OR ALTER VIEW vw_DimDate AS

SELECT 
       [DateKey]
      ,[Date]
      ,[Year]
      ,[Quarter]
      ,[MonthNumber]    AS [Month Number]
      ,[MonthName]      AS [Month Name]
      ,[YearMonth]
      ,[DayOfMonth]     AS [Day Of Month]
      ,[DayName]        AS [Day Name]
      ,[DayOfWeek]      AS [Day Of Week]
      ,[WeekStartDate]  AS [Week Start Date]
      ,[IsWeekend]      AS [Is Weekend]
  FROM [Northwind].[dbo].[DimDate]
