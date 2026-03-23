
-- 01_create_staging_tables.sql
DROP TABLE IF EXISTS staging_sales_de;
DROP TABLE IF EXISTS staging_sales_us;

CREATE TABLE staging_sales_de (
    order_number INT,
    order_item INT,
    sales_date TEXT,
    customer TEXT,
    product TEXT,
    sales_quantity INT,
    unit_of_measure TEXT,
    revenue TEXT,
    currency TEXT,
    discount TEXT,
    costs_usd TEXT
);

CREATE TABLE staging_sales_us (
    order_number INT,
    order_item INT,
    sales_date TEXT,
    customer TEXT,
    product TEXT,
    sales_quantity INT,
    unit_of_measure TEXT,
    revenue TEXT,
    currency TEXT,
    discount TEXT,
    costs_usd TEXT
);
