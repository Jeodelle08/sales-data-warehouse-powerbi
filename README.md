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
```

Data Pipeline

The project follows a structured BI workflow:

Import raw CSV files into staging tables
Clean and standardize regional data formats
Transform raw data into clean fact tables
Integrate DE and US sales data
Create dimension tables
Build a final star schema
Develop analytical dashboards in Power BI
SQL Workflow
1. Staging Layer

Raw sales data is loaded into:

staging_sales_de
staging_sales_us

At this stage, raw values are stored without full normalization.

2. Data Transformation

Regional differences in date and numeric formats are standardized:

German dates: DD.MM.YYYY
US dates: YYYY/MM/DD
German decimal values with comma are converted to SQL numeric format

This step creates:

fact_sales_de
fact_sales_us
fact_sales_global
3. Dimension Tables

Dimension tables are created using distinct values and surrogate keys:

dim_customer
dim_product
dim_date
4. Star Schema

The final fact table is:

fact_sales_star

It contains:

date_id
customer_id
product_id
revenue
discount
costs_usd
profit
sales_quantity
currency
region
Data Model

The final data warehouse follows a Star Schema.

Fact Table
fact_sales_star
Dimension Tables
dim_customer
dim_product
dim_date

This model supports:

efficient filtering
aggregation
drill-down analysis
KPI reporting
Power BI Dashboard

The Power BI report includes multiple pages:

1. Overview
Total Revenue
Total Profit
Profit Margin %
Revenue Growth %
Revenue Trend
Revenue YTD
Running Revenue
Region filter
2. Product and Customer Analysis
Top Products by Revenue
Top Customers by Revenue
Product comparison
Customer ranking
3. Regional Comparison
Revenue by Region
Profit by Region
Revenue Distribution by Region
Quantity by Region
DAX Measures

The dashboard includes the following key measures:

Total Revenue
Total Profit
Total Quantity
Profit Margin %
Revenue Previous Year
Revenue Growth %
Revenue YTD
Running Revenue

These measures support performance monitoring, comparison, and time-based analysis.

Currency Consideration

The dataset contains transactions in different currencies:

Germany → EUR
United States → USD

In the current version of the project, revenue values are aggregated without currency conversion.

This means:

calculations are technically correct
but direct financial comparison between regions must be interpreted carefully

A future improvement would include:

exchange rate integration
conversion into one standard currency
normalized cross-region financial analysis
Business Insights

Based on the analysis, several business insights can be derived:

Regional Performance

Revenue contribution between DE and US is relatively balanced, with one region slightly outperforming the other depending on the selected metric.

Product Performance

Some products generate significantly higher revenue than others and act as key revenue drivers.

Customer Concentration

A limited number of customers contribute a large share of overall revenue, indicating revenue concentration among top customers.

Seasonal Trends

Sales patterns show recurring peaks during specific periods of the year, suggesting seasonality in customer demand.

Time-Based Growth

Revenue trends indicate recurring fluctuations and can be used to monitor long-term development.

Possible Business Explanations

The observed sales peaks and product performance patterns may be influenced by:

seasonal demand
promotional campaigns
customer buying cycles
regional purchasing behavior
product popularity differences
Future Improvements

Possible next steps for this project:

currency conversion to one reporting currency
forecasting and predictive analytics
automated ETL pipeline
cloud deployment
advanced drill-down interactions
dynamic Top N parameterization
Screenshots

Add screenshots of the dashboard and data model in the images/ folder:

dashboard_overview.png
product_customer_analysis.png
regional_comparison.png
data_model.png
Skills Demonstrated

This project demonstrates:

SQL querying
data cleaning
ETL logic
data modeling
star schema design
Power BI reporting
DAX measure creation
business data analysis
Author

Jeodelle Marciale Medjomwo

Business Intelligence / Data Analytics / SAP-oriented profile

