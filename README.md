# Retail Sales & Customer Analytics

## Project objective
Analyze the Tableau Sample Superstore retail transaction data to identify revenue and profit drivers, customer segments, product/category performance, regional patterns, and discount-related profitability issues.

## Business questions
1. How do sales and profit change over time?
2. Which categories and sub-categories drive revenue and profit?
3. Which regions/states are strongest and weakest?
4. How are discounts related to profitability?
5. Who are the highest-value customers?
6. Which customers are Champions, Loyal, At Risk, or Lost using RFM analysis?
7. What actions should management take?

## Dataset
Primary source: Tableau Public Sample Data — Superstore Sales.
Tableau describes Superstore as sample data containing products, sales and profits for identifying areas of improvement in a fictitious company.

Official source:
https://public.tableau.com/app/learn/sample-data

For reproducibility, the notebook can load a public CSV mirror if the official Excel file has not been downloaded locally. The analysis should be described as using Tableau's Sample Superstore data.

## Tools
- Python: Pandas, NumPy, Matplotlib, Seaborn
- SQL: SQLite-compatible queries
- Power BI: dashboard specification and measures
- Jupyter Notebook

## Project workflow
Raw data → data quality checks → feature engineering → EDA → customer/RFM analysis → SQL business analysis → dashboard → recommendations.

## Repository structure
```text
retail-sales-customer-analytics/
├── data/
├── notebooks/
│   └── retail_sales_customer_analytics.ipynb
├── sql/
│   └── business_queries.sql
├── src/
│   └── download_data.py
├── outputs/
├── requirements.txt
└── README.md
```

## Important note
The notebook is deliberately written to calculate findings from the actual dataset rather than hard-code or invent results. Run all cells before publishing screenshots or numeric findings.

## Resume version
**Retail Sales & Customer Analytics | Python, SQL, Power BI**
Analyzed retail transaction data to identify sales/profit drivers, product and regional performance, discount-profit relationships, and customer segments using RFM analysis; developed SQL business queries and a management dashboard framework to translate findings into actionable recommendations.
