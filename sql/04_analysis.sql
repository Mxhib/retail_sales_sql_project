-- 04_analysis.sql
-- Purpose: perform analysis on cleaned retail sales data


-- preview cleaned data
SET search_path TO retail;

SELECT *
FROM retail_sales_clean
LIMIT 10;

-- 4.1 Sales made on a specific date
SELECT *
FROM retail_sales_clean
WHERE sale_date = '2022-11-05';

