-- 02_load_data.sql
-- Purpose: create staging table + load raw CSV

SET search_path TO retail;
 
DROP TABLE IF EXISTS sales_raw;

-- 1) staging table (matches CSV header)
CREATE TABLE sales_raw (
  transactions_id   INTEGER,
  sale_date         DATE,
  sale_time         TIME,
  customer_id       INTEGER,
  gender            TEXT,
  age               INTEGER,
  category          TEXT,
  quantity          INTEGER,
  price_per_unit    NUMERIC(10,2),
  cogs              NUMERIC(10,2),
  total_sale        NUMERIC(10,2)
);

-- 2) load CSV
COPY sales_raw
FROM '/Users/mohibabbas/Data Analyst Projects/retail_sales_sql_project/data/raw/retail_sales_raw.csv'
WITH (FORMAT csv, HEADER true);

-- 3) quick checks
SELECT COUNT(*) AS row_count FROM sales_raw;

SELECT *
FROM sales_raw
LIMIT 10;
