-- 04_analysis.sql
-- Purpose: perform analysis on cleaned retail sales data


-- preview cleaned data
SET search_path TO retail;

SELECT *
FROM retail_sales_clean
LIMIT 10;

-- Total number of transactions
SELECT COUNT(*)
FROM retail_sales_clean;

-- Total number of unique customers
SELECT COUNT(DISTINCT customer_id)
FROM retail_sales_clean;

-- List of product categories available
SELECT DISTINCT category
FROM retail_sales_clean;





