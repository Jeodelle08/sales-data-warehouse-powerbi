-- 02_transform_and_create_fact_tables.sql
DROP TABLE IF EXISTS fact_sales_de;
DROP TABLE IF EXISTS fact_sales_us;
DROP TABLE IF EXISTS fact_sales_global;

CREATE TABLE fact_sales_de AS
SELECT
    order_number,
    order_item,
    TO_DATE(sales_date, 'DD.MM.YYYY') AS sales_date,
    customer,
    product,
    sales_quantity,
    REPLACE(revenue, ',', '.')::NUMERIC AS revenue,
    REPLACE(discount, ',', '.')::NUMERIC AS discount,
    REPLACE(costs_usd, ',', '.')::NUMERIC AS costs_usd,
    currency,
    'de' AS region
FROM staging_sales_de;

CREATE TABLE fact_sales_us AS
SELECT
    order_number,
    order_item,
    TO_DATE(sales_date, 'YYYY/MM/DD') AS sales_date,
    customer,
    product,
    sales_quantity,
    revenue::NUMERIC AS revenue,
    discount::NUMERIC AS discount,
    costs_usd::NUMERIC AS costs_usd,
    currency,
    'us' AS region
FROM staging_sales_us;

CREATE TABLE fact_sales_global AS
SELECT * FROM fact_sales_de
UNION ALL
SELECT * FROM fact_sales_us;
