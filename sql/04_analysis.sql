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


---- Retail Sales Analysis for 2022-11-05 ----

-- Retrieve all sales made on 2022-11-05
SELECT *
FROM retail.retail_sales_clean
WHERE sale_date = '2022-11-05';

-- Number of transactions on a 2022-11-05
SELECT COUNT(*) AS transactions_count
FROM retail.retail_sales_clean
WHERE sale_date = '2022-11-05';

-- Total revenue on 2022-11-05
SELECT SUM(total_sale) AS total_revenue
FROM retail.retail_sales_clean
WHERE sale_date = '2022-11-05';


