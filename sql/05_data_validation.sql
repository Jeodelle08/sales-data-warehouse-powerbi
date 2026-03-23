-- 05_data_validation.sql
SELECT COUNT(*) AS cnt_staging_de FROM staging_sales_de;
SELECT COUNT(*) AS cnt_staging_us FROM staging_sales_us;

SELECT COUNT(*) AS cnt_fact_de FROM fact_sales_de;
SELECT COUNT(*) AS cnt_fact_us FROM fact_sales_us;
SELECT COUNT(*) AS cnt_fact_global FROM fact_sales_global;
SELECT COUNT(*) AS cnt_fact_star FROM fact_sales_star;

SELECT region, COUNT(*) AS row_count
FROM fact_sales_global
GROUP BY region
ORDER BY region;

SELECT currency, COUNT(*) AS row_count
FROM fact_sales_global
GROUP BY currency
ORDER BY currency;

SELECT MIN(sales_date) AS min_date, MAX(sales_date) AS max_date
FROM fact_sales_global;

SELECT
    SUM(revenue) AS total_revenue,
    SUM(discount) AS total_discount,
    SUM(costs_usd) AS total_costs
FROM fact_sales_global;
