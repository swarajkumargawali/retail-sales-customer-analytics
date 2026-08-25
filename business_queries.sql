-- Retail Sales & Customer Analytics
-- SQLite-compatible business queries.
-- Table expected: superstore
-- Columns: Order_ID, Order_Date, Customer_ID, Customer_Name, Segment,
-- Category, Sub_Category, Product_Name, Region, State, Sales, Quantity,
-- Discount, Profit

-- 1. Overall KPIs
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore;

-- 2. Sales and profit by category
SELECT Category,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit,
       ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct
FROM superstore
GROUP BY Category
ORDER BY sales DESC;

-- 3. Sub-category profitability
SELECT Sub_Category,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY Sub_Category
ORDER BY profit DESC;

-- 4. Regional performance
SELECT Region,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY Region
ORDER BY profit DESC;

-- 5. Top 10 customers by sales
SELECT Customer_ID, Customer_Name,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY Customer_ID, Customer_Name
ORDER BY sales DESC
LIMIT 10;

-- 6. Loss-making products
SELECT Product_Name,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY profit ASC
LIMIT 20;

-- 7. Discount vs profit
SELECT Discount,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit,
       ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- 8. Monthly sales trend
SELECT strftime('%Y-%m', Order_Date) AS month,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY month
ORDER BY month;

-- 9. Customer segment performance
SELECT Segment,
       COUNT(DISTINCT Customer_ID) AS customers,
       ROUND(SUM(Sales),2) AS sales,
       ROUND(SUM(Profit),2) AS profit
FROM superstore
GROUP BY Segment
ORDER BY sales DESC;
