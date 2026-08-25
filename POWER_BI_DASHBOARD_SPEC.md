# Power BI Dashboard Specification

## Page 1 — Executive Overview
Cards:
- Total Sales
- Total Profit
- Orders
- Customers
- Profit Margin

Visuals:
- Monthly Sales & Profit line chart
- Sales by Category
- Profit by Region
- Segment sales

Filters:
- Order Year
- Region
- Category
- Segment

## Page 2 — Product & Profitability
Visuals:
- Sales and Profit by Sub-Category
- Top 10 products by sales
- Bottom 10 products by profit
- Discount vs Profit scatter
- Category profit margin

## Page 3 — Customer Analytics
Visuals:
- Customer count by RFM segment
- Revenue by RFM segment
- Average customer monetary value
- Top customers table

## Suggested DAX measures
Total Sales = SUM(Superstore[Sales])
Total Profit = SUM(Superstore[Profit])
Orders = DISTINCTCOUNT(Superstore[Order_ID])
Customers = DISTINCTCOUNT(Superstore[Customer_ID])
Profit Margin = DIVIDE([Total Profit], [Total Sales])
Average Order Value = DIVIDE([Total Sales], [Orders])
