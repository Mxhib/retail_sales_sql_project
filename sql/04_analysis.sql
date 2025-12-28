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


                                                    ------ Retrieve Sales by Product Category ------


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


                                                             ------ Customer Analysis ------

-- Total spending of customers descending
SELECT
    customer_id,
    SUM(total_sale) AS total_spent
FROM retail.retail_sales_clean
GROUP BY customer_id
ORDER BY total_spent DESC


-- Number of Transactions by Top 10 Customers descending
SELECT
    customer_id,
    COUNT(*) AS transaction_count
FROM retail.retail_sales_clean
GROUP BY customer_id
ORDER BY transaction_count DESC
LIMIT 10;

-- Top 10 Customers by Total Spending over $1000 descending
SELECT
    customer_id,
    SUM(total_sale) AS total_spent
FROM retail.retail_sales_clean
GROUP BY customer_id
HAVING SUM(total_sale) > 1000
ORDER BY total_spent DESC
LIMIT 10;

-- Average Spending per Transaction by Customer descending
SELECT
    customer_id,
    AVG(total_sale) AS avg_spent_per_transaction
FROM retail.retail_sales_clean
GROUP BY customer_id
ORDER BY avg_spent_per_transaction DESC;


                                                            ----- Time based Sales Analysis ------

-- Monthly sales revenue "Which months have the highest revenue?"
SELECT
    DATE_TRUNC('month', sale_date) AS sale_month,
    SUM(total_sale) AS monthly_revenue
FROM retail.retail_sales_clean
GROUP BY sale_month
ORDER BY sale_month;

--- Number of transactions by month "Does more transactions correlate with higher revenue?"
SELECT
    DATE_TRUNC('month', sale_date) AS sale_month,
    COUNT(*) AS transaction_count
FROM retail.retail_sales_clean
GROUP BY sale_month
ORDER BY sale_month;

-- Sales by days of the week in descending order "Which days have the highest sales?"
SELECT
    TO_CHAR(sale_date, 'Day') AS sale_day,
    SUM(total_sale) AS total_revenue
FROM retail.retail_sales_clean
GROUP BY sale_day
ORDER BY total_revenue DESC;

-- Sales by hour of the day in descending order "What time of day sees the most sales?"
SELECT
    EXTRACT(HOUR FROM sale_time) AS sale_hour,
    SUM(total_sale) AS total_revenue
FROM retail.retail_sales_clean
GROUP BY sale_hour
ORDER BY total_revenue DESC;

                                                                    -------Key Insights Summary-------

---Total Revenue 
SELECT 
SUM(total_sale) AS total_revenue
FROM 
retail.retail_sales_clean;

--- Average Order Value (How much does the average customer spend per transaction?)
SELECT 
ROUND(AVG(total_sale), 2) AS average_order_value

FROM 
retail.retail_sales_clean;

---Total number of orders placed 
SELECT
COUNT(*) AS total_orders
FROM
retail.retail_sales_clean;

--- Average items per order (How many items does the average customer purchase per transaction?)
SELECT
ROUND(AVG(quantity), 2) AS average_items_per_order
FROM
retail.retail_sales_clean;

--- Average Revenue per customer (How much revenue does each customer generate on average?)

SELECT
    ROUND(
        SUM(total_sale) / COUNT(DISTINCT customer_id),
        2
    ) AS revenue_per_customer
FROM retail.retail_sales_clean;


-- =====================================================
-- 4.6 Final Business Insights & Conclusions
-- =====================================================

-- Insight 1:
-- A small subset of customers contributes a disproportionately large share of total revenue.
-- This suggests opportunities for loyalty programs and targeted retention campaigns.

-- Insight 2:
-- Product categories differ significantly in performance:
-- some categories generate high transaction volume while others generate higher average order value.
-- This indicates different pricing and promotion strategies by category may be effective.

-- Insight 3:
-- Sales show clear time-based patterns, with certain months, days, and hours consistently outperforming others.
-- These trends can inform staffing, inventory planning, and promotional timing.

-- Insight 4:
-- Average order value and items per order suggest that customers frequently purchase multiple items per transaction,
-- indicating strong potential for bundle offers and cross-selling strategies.

-- Insight 5:
-- Revenue per customer highlights the importance of repeat buyers in overall business performance,
-- reinforcing the value of customer-centric marketing and personalized offers.


                                                  