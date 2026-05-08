**DAY 6 SUBMISSION** 
(Python + MYSQL + Power BI)

**Project:** CRM Sales Analytics Dashboard

**GitHub Link:** https://github.com/natnaelaster/Daily-exercise/tree/main/day_6_HubSpot%20CRM%20Sales%20Analytics

**Power_BI Link:** 

**Tools**  SQL, Power BI, Python

**Completed:**

✅ Hubspot_explore.ipynb 
- Data exploration and property description 

✅ hubspot_merge.ipynb
- Data cleaning, merging and sql connection to export data 

✅ hubspot_analysis.sql 
- Data analysis and insight 

## Project Overview

This project analyzes HubSpot CRM sales data to gain insights into sales performance, agent effectiveness, product profitability, and regional trends. The analysis involves data exploration, cleaning, merging multiple datasets, and performing SQL-based queries to extract key metrics.

## Data Sources

The analysis uses the following CSV files:
- **accounts.csv**: Contains company details including name, sector, revenue, employees, office location, and year established.
- **data_dictionary.csv**: Provides explanations for columns in other CSV files.
- **products.csv**: Lists products with names, series, and sales prices.
- **sales_pipeline.csv**: Tracks sales deals with opportunity ID, account, product, sales agent, deal stage, engage date, close date, and close value.
- **sales_teams.csv**: Information about sales agents and their regional offices.

## Methodology

1. **Data Exploration**: Initial examination of each dataset to understand structure, data types, and content.
2. **Data Merging**: Combined sales_pipeline with accounts, products, and sales_teams using left joins on common keys.
3. **Data Cleaning**: 
   - Dropped unnecessary columns (e.g., subsidiary_of)
   - Renamed columns for consistency
   - Converted data types (dates to datetime, numeric fields to float/int)
   - Handled missing values and duplicates
   - Filtered out invalid records (e.g., products without sales price)
4. **Data Export**: Exported cleaned data to MySQL database for analysis.
5. **SQL Analysis**: Performed various queries to calculate KPIs and generate insights.
6. **Visualization**: Planned dashboard creation in Power BI.

## Key Insights

### Overall Performance
- **Total Revenue**: $6,000,000 from won deals
- **Win Rate**: 57% of all deals were successfully closed

### Sales Agent Performance
- **Top Win Rates**:
  - Hayden Neloms: 64.4%
  - Reed Clapper: 64.9%
  - Wilburn Farren: 67%
- **Sales Cycle Length**: Cecily Lampkin has the shortest average sales cycle at 38 days

### Product Analysis
- **Average Deal Size**: $1,850 for won deals
- **Revenue by Product**: 
  - MG Advanced: $2.2M (37% of total revenue)
  - Other products contribute varying amounts to the remaining revenue

### Industry and Regional Insights
- **Revenue by Industry**: Retailing sector leads with $1.2M in sales
- **Regional Sales**:
  - United State_West: $2.2M
  - United State_Central: $1.6M
  - United State_East: $1.5M

### Additional Metrics
- **Company Size Analysis**: Revenue distribution across different company sizes
- **Monthly Revenue Trends**: Seasonal patterns in sales performance

## Files Description

- **hubspot_explore.ipynb**: Jupyter notebook for initial data exploration
- **hubspot_merge.ipynb**: Data merging, cleaning, and MySQL export
- **hubspot_analysis.sql**: SQL queries for data analysis and insights
- **hubspot_merge_file.csv**: Raw merged data
- **hubspot_clean_file.csv**: Cleaned and processed data
- **README.md**: This documentation file
