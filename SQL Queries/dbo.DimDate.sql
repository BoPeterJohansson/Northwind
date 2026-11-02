
/* =====================================================
   Northwind - Dynamic Date Dimension
   ===================================================== */

-- 1. Create the date dimension if it doesn't exist

IF OBJECT_ID('dbo.DimDate', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.DimDate
    (
        DateKey         INT          NOT NULL PRIMARY KEY,
        [Date]          DATE         NOT NULL UNIQUE,
        [Year]          SMALLINT     NOT NULL,
        [Quarter]       TINYINT      NOT NULL,
        MonthNumber     TINYINT      NOT NULL,
        MonthName       VARCHAR(20)  NOT NULL,
        YearMonth       CHAR(7)      NOT NULL,
        DayOfMonth      TINYINT      NOT NULL,
        DayName         VARCHAR(20)  NOT NULL,
        DayOfWeek       TINYINT      NOT NULL,
        WeekStartDate   DATE         NOT NULL,
        IsWeekend       BIT          NOT NULL
    );
END;


-- 2. Determine the date range from Orders

DECLARE @MinDate DATE;
DECLARE @MaxDate DATE;

SELECT
    @MinDate = MIN(CAST(OrderDate AS DATE)),
    @MaxDate = MAX(CAST(OrderDate AS DATE))
FROM dbo.Orders;

-- Stop if no valid OrderDate values exist

IF @MinDate IS NOT NULL
BEGIN

    -- Expand to complete calendar years

    SET @MinDate = DATEFROMPARTS(YEAR(@MinDate), 1, 1);
    SET @MaxDate = DATEFROMPARTS(YEAR(@MaxDate), 12, 31);


    -- 3. Generate all calendar dates

    ;WITH DateSeries AS
    (
        SELECT @MinDate AS CalendarDate

        UNION ALL

        SELECT DATEADD(DAY, 1, CalendarDate)
        FROM DateSeries
        WHERE CalendarDate < @MaxDate
    )

    -- 4. Insert dates that don't already exist

    INSERT INTO dbo.DimDate
    (
        DateKey,
        [Date],
        [Year],
        [Quarter],
        MonthNumber,
        MonthName,
        YearMonth,
        DayOfMonth,
        DayName,
        DayOfWeek,
        WeekStartDate,
        IsWeekend
    )

    SELECT
        CONVERT(INT, FORMAT(CalendarDate, 'yyyyMMdd')),
        CalendarDate,
        YEAR(CalendarDate),
        DATEPART(QUARTER, CalendarDate),
        MONTH(CalendarDate),
        DATENAME(MONTH, CalendarDate),
        CONVERT(CHAR(7), CalendarDate, 126),
        DAY(CalendarDate),
        DATENAME(WEEKDAY, CalendarDate),

        -- Monday = 1, Sunday = 7
        ((DATEDIFF(DAY, '19000101', CalendarDate) % 7) + 1),

        -- Start of week (Monday)
        DATEADD
        (
            DAY,
            -(DATEDIFF(DAY, '19000101', CalendarDate) % 7),
            CalendarDate
        ),

        -- Saturday and Sunday
        CASE
            WHEN DATEDIFF(DAY, '19000101', CalendarDate) % 7
                 IN (5, 6)
            THEN 1
            ELSE 0
        END

    FROM DateSeries AS D

    WHERE NOT EXISTS
    (
        SELECT 1
        FROM dbo.DimDate AS DD
        WHERE DD.[Date] = D.CalendarDate
    )

    OPTION (MAXRECURSION 0);

END;
