-- 03_create_dimensions.sql
DROP TABLE IF EXISTS dim_customer;
DROP TABLE IF EXISTS dim_product;
DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_customer AS
SELECT
    ROW_NUMBER() OVER (ORDER BY customer) AS customer_id,
    customer
FROM (
    SELECT DISTINCT customer
    FROM fact_sales_global
) t;

CREATE TABLE dim_product AS
SELECT
    ROW_NUMBER() OVER (ORDER BY product) AS product_id,
    product
FROM (
    SELECT DISTINCT product
    FROM fact_sales_global
) t;

CREATE TABLE dim_date AS
SELECT
    ROW_NUMBER() OVER (ORDER BY sales_date) AS date_id,
    sales_date,
    EXTRACT(YEAR FROM sales_date) AS year,
    EXTRACT(MONTH FROM sales_date) AS month,
    EXTRACT(DAY FROM sales_date) AS day
FROM (
    SELECT DISTINCT sales_date
    FROM fact_sales_global
) t;
