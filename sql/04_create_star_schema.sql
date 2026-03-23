-- 04_create_star_schema.sql
DROP TABLE IF EXISTS fact_sales_star;

CREATE TABLE fact_sales_star AS
SELECT
    f.order_number,
    f.order_item,
    d.date_id,
    c.customer_id,
    p.product_id,
    f.sales_quantity,
    f.revenue,
    f.discount,
    f.costs_usd,
    (f.revenue - f.costs_usd) AS profit,
    f.currency,
    f.region
FROM fact_sales_global f
JOIN dim_customer c
    ON f.customer = c.customer
JOIN dim_product p
    ON f.product = p.product
JOIN dim_date d
    ON f.sales_date = d.sales_date;
