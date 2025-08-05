--Return 10 rows--
SELECT *
FROM online_retail
LIMIT 10;

-- Total transactions--
SELECT COUNT(*) AS total_transactions 
FROM online_retail;

-- Top 5 most sold products--
SELECT Description, SUM(Quantity) AS total_quantity
FROM online_retail
GROUP BY Description
ORDER BY total_quantity DESC
LIMIT 5;

-- Sales by country--
SELECT Country, SUM(Quantity * UnitPrice) AS total_sales
FROM online_retail
GROUP BY Country
ORDER BY total_sales DESC
LIMIT 5;

-- Total revenue by product--
SELECT Description, SUM(UnitPrice * Quantity) AS Total_Revenue
FROM online_retail
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;

--  Total orders per country--
SELECT Country, COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail
GROUP BY Country
ORDER BY Total_Orders DESC;

--Unit price over Average unit price--
SELECT InvoiceNo, Description, Quantity, UnitPrice
FROM online_retail
WHERE UnitPrice > (
    SELECT AVG(UnitPrice) FROM online_retail
)
LIMIT 10;