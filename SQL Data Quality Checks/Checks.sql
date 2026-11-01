
-- Missing values in Orders
SELECT
    COUNT(*) AS TotalOrders,
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS MissingCustomerID,
    SUM(CASE WHEN EmployeeID IS NULL THEN 1 ELSE 0 END) AS MissingEmployeeID,
    SUM(CASE WHEN OrderDate IS NULL THEN 1 ELSE 0 END) AS MissingOrderDate,
    SUM(CASE WHEN ShippedDate IS NULL THEN 1 ELSE 0 END) AS MissingShippedDate
FROM dbo.Orders;

-- Check date inconsistencies
SELECT *
FROM dbo.Orders
WHERE
    (ShippedDate < OrderDate) OR
    (RequiredDate < OrderDate);

-- Check duplicate customers
SELECT
    CustomerID
   ,COUNT(*) AS RecordCount
FROM dbo.Customers
GROUP BY CustomerID
HAVING COUNT(*) > 1;

-- Check invalid order details
SELECT *
FROM dbo.[Order Details]
WHERE
    Quantity <= 0
    OR UnitPrice < 0
    OR Discount < 0
    OR Discount > 1;

/* Check referential integrity
For example, find orders referencing customers that don't exist: */
SELECT o.*
FROM dbo.Orders AS o
LEFT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;