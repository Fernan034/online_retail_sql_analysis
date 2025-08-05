🛍️ Online Retail Sales Analysis using SQL
This project uses the Online Retail Dataset from the UCI Machine Learning Repository to practice SQL skills such as filtering, grouping, subqueries, and aggregation. The dataset contains over 500,000 transactions made by a UK-based online retailer between 2010 and 2011.

📌 Objective
Practice basic SQL queries and subqueries

Perform data cleaning and transformation

Generate simple business insights using SQL

Demonstrate ability to work with real-world retail data

📂 Dataset Overview
Column	Description
InvoiceNo	Invoice number. If it starts with 'C', it’s cancelled
StockCode	Product (item) code
Description	Product name
Quantity	Number of items purchased
InvoiceDate	Date and time of transaction
UnitPrice	Price per unit (£)
CustomerID	Customer identifier
Country	Country where the customer resides

⚙️ Tools Used
MySQL Workbench

SQL

Dataset Source: Kaggle

🧪 Sample SQL Queries
1. Subquery: Products Above Average Price
2. 
SELECT InvoiceNo, Description, Quantity, UnitPrice
FROM online_retail
WHERE UnitPrice > (
    SELECT AVG(UnitPrice)
    FROM online_retail
)
LIMIT 10;

This query lists products sold above the average unit price.

4. Top 5 Countries by Number of Transactions

SELECT Country, COUNT(DISTINCT InvoiceNo) AS Total_Transactions
FROM online_retail
GROUP BY Country
ORDER BY Total_Transactions DESC
LIMIT 5;

Shows which countries have the most customer transactions.

5. Total Revenue by Product

SELECT Description, SUM(UnitPrice * Quantity) AS Total_Revenue
FROM online_retail
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;

Identifies top 10 products that generated the most revenue.

🚀 Next Steps
Add more complex queries using JOINs and Window Functions
Clean and transform data into report-ready format
Use Power BI to visualize insights

👨‍💻 Author
Mark Fernan Espina
📍 Mendez, Cavite
📧 markfernan.espina@gmail.com

