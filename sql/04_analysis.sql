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


                                ------ Retrieve Sales Analysis for a specific date (2022-11-05) ----
                                

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


                                            ------ Retrieve Sales by Product Category ----


-- Total revenue by product category descending
SELECT
    category,
    SUM(total_sale) AS total_revenue
FROM retail.retail_sales_clean
GROUP BY category
ORDER BY total_revenue DESC;

-- Number of transactions by product category descending
SELECT
    category,
    COUNT(*) AS transaction_count
FROM retail.retail_sales_clean
GROUP BY category
ORDER BY transaction_count DESC;

-- Total units sold by product category descending
SELECT
    category,
    SUM(quantity) AS total_units_sold
FROM retail.retail_sales_clean
GROUP BY category
ORDER BY total_units_sold DESC;

-- Average transaction value by product category descending
SELECT
    category,
    AVG(total_sale) AS avg_transaction_value
FROM retail.retail_sales_clean
GROUP BY category
ORDER BY avg_transaction_value DESC;




