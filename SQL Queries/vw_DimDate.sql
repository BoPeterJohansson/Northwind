
CREATE OR ALTER VIEW vw_DimDate AS

SELECT 
       [DateKey]
      ,[Date]
      ,[Year]
      ,[Quarter]
      ,[MonthNumber]
      ,[MonthName]
      ,[YearMonth]
      ,[DayOfMonth]
      ,[DayName]
      ,[DayOfWeek]
      ,[WeekStartDate]
      ,[IsWeekend]
  FROM [Northwind].[dbo].[DimDate]
