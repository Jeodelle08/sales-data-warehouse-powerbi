# Sales Data Warehouse & Power BI Dashboard

## Project Overview

This project demonstrates the design and implementation of an end-to-end Business Intelligence solution using PostgreSQL, SQL, and Power BI.

The objective of the project is to transform raw sales data from multiple regions into a structured data warehouse and build interactive dashboards for business analysis and decision-making.

The project includes:

- raw data ingestion
- data cleaning and transformation
- star schema modeling
- KPI design with DAX
- interactive dashboard creation in Power BI

---

## Business Scenario

A company operates in multiple regions and needs a centralized reporting solution to monitor:

- revenue performance
- profitability
- customer behavior
- product performance
- regional differences
- sales trends over time

The dataset contains sales transactions from:

- Germany (DE)
- United States (US)

---

## Tech Stack

- PostgreSQL
- SQL
- Power BI
- DAX
- Data Warehousing
- Star Schema Modeling
- ETL

---

## Project Structure

```text
sales-data-warehouse-powerbi/

README.md

data/
    sales_de.csv
    sales_us.csv

sql/
    01_create_staging_tables.sql
    02_transform_and_create_fact_tables.sql
    03_create_dimensions.sql
    04_create_star_schema.sql
    05_data_validation.sql

powerbi/
    Sales_fact_de_us.pbix

images/
    dashboard_overview.png
    product_customer_analysis.png
    data_model.png 
