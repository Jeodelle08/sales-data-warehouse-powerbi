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

---

## Data Modeling

The data warehouse follows a Star Schema design to support analytical reporting and efficient data aggregation.

### Fact Table

- fact_sales_star

This table contains transactional sales data and calculated measures such as profit.

### Dimension Tables

- dim_customer
- dim_product
- dim_date

These tables provide descriptive attributes used for filtering, grouping, and drill-down analysis.

The model enables:

- efficient aggregation
- time-based analysis
- flexible filtering
- scalable reporting
- performance optimization

---

## Power BI Dashboard

The Power BI report was developed to support business monitoring and decision-making through interactive visualizations.

The dashboard includes multiple analytical views.

### Overview Page

Key Performance Indicators (KPIs):

- Total Revenue
- Total Profit
- Total Quantity
- Profit Margin %
- Revenue Growth %

Trend Analysis:

- Revenue development over time
- Revenue Year-to-Date (YTD)
- Running revenue
- Seasonal patterns

Filtering:

- Region filter (DE / US)

---

### Product and Customer Analysis

This section focuses on performance evaluation of products and customers.

Visualizations include:

- Top Products by Revenue
- Top Customers by Revenue
- Revenue distribution by product
- Customer ranking analysis

These visuals help identify:

- high-performing products
- key revenue-generating customers
- product demand patterns

---

### Regional Comparison

This section compares performance between Germany and the United States.

Visualizations include:

- Revenue distribution by region
- Profit comparison by region
- Quantity comparison by region
- Percentage contribution by region

This enables:

- regional performance comparison
- market evaluation
- business strategy decisions

---

## DAX Measures

The dashboard includes the following calculated measures:

- Total Revenue
- Total Profit
- Total Quantity
- Profit Margin %
- Revenue Previous Year
- Revenue Growth %
- Revenue YTD
- Running Revenue

These measures support:

- financial performance monitoring
- growth analysis
- profitability analysis
- time-based comparisons

---

## Currency Consideration

The dataset contains transactions in different currencies:

- Germany uses EUR
- United States uses USD

In the current version of the project, revenue values are aggregated without currency conversion.

This means:

- calculations are technically correct
- but direct financial comparison between regions should be interpreted carefully

Future improvement:

- integrate exchange rates
- convert values into one standard currency
- enable accurate cross-region financial comparison

---

## Business Insights

Based on the analysis, several important business insights can be observed.

### Regional Performance

Revenue distribution between Germany and the United States is relatively balanced, with slight variations depending on the metric analyzed.

### Product Performance

Certain products consistently generate higher revenue and act as primary revenue drivers.

These products represent critical business assets.

### Customer Contribution

A small group of customers contributes a significant share of total revenue.

This indicates customer concentration and highlights key business relationships.

### Seasonal Sales Patterns

Sales volumes show recurring peaks during specific months, suggesting seasonal demand behavior.

For example:

- increased sales during mid-year periods
- recurring monthly revenue cycles

### Revenue Growth

Revenue trends demonstrate periodic growth patterns and fluctuations that can be monitored for long-term planning.

---

## Possible Business Explanations

The observed sales patterns may be influenced by several operational factors:

- seasonal demand changes
- promotional campaigns
- product lifecycle timing
- customer purchasing behavior
- regional market dynamics

These factors should be considered in strategic planning.

---

## Future Improvements

Possible enhancements for this project include:

- currency conversion implementation
- predictive sales forecasting
- automated ETL pipeline development
- cloud-based deployment
- advanced drill-down capabilities
- parameter-driven reporting
- performance optimization

---

## Screenshots

The repository includes screenshots of the dashboard and data model stored in the images folder.

Examples:

- dashboard_overview.png
- product_customer_analysis.png
- regional_comparison.png
- data_model.png

These visuals demonstrate the final reporting solution.

---

## Skills Demonstrated

This project demonstrates practical experience in:

- SQL querying
- data transformation
- ETL process design
- data warehouse modeling
- star schema implementation
- Power BI dashboard development
- DAX measure creation
- business data analysis
- data visualization

---

## Author

Jeodelle Marciale Medjomwo

Business Intelligence  
Data Analytics  
SAP-oriented profile



