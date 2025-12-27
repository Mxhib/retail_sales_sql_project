-- 03_cleaning.sql
-- Purpose: clean raw retail sales data and create an analysis-ready table

SET search_path TO retail;

-- drop clean table if it exists
DROP TABLE IF EXISTS retail_sales_clean;

-- Create cleaned table
CREATE TABLE retail_sales_clean AS
SELECT
    transactions_id,
    sale_date,
    sale_time,
    customer_id,
    gender,
    age,
    category,
    quantity,
    price_per_unit,
    cogs,
    total_sale

FROM sales_raw;

-- check for any critical missing values

SELECT*
FROM retail_sales_clean
WHERE
  sale_date IS NULL OR
  sale_time IS NULL OR
  customer_id IS NULL OR
  gender IS NULL OR
  age IS NULL OR
  category IS NULL OR
  quantity IS NULL OR
  price_per_unit IS NULL OR
  cogs IS NULL OR
  total_sale IS NULL;

  -- remove rows with missing critical values 
DELETE FROM retail_sales_clean
WHERE
    sale_date IS NULL OR
    sale_time IS NULL OR
    customer_id IS NULL OR
    gender IS NULL OR
    age IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    price_per_unit IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

    -- final row count check 
SELECT COUNT(*) AS final_row_count
FROM retail_sales_clean;

-- quick check of cleaned data

--row count
SELECT COUNT(*) FROM retail_sales_clean;

--check incorrect total_sale values
SELECT COUNT(*)
FROM retail_sales_clean
WHERE total_sale <> (quantity * price_per_unit);

-- check any negative values all should be zero 
SELECT COUNT(*)
FROM retail_sales_clean
WHERE total_sale < 0
    OR price_per_unit < 0
    OR quantity < 0
    OR cogs < 0;


