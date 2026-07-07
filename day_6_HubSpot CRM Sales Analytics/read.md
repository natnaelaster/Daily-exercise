**DAY 6 SUBMISSION** 
(Python + MYSQL + Power BI)

# CRM Sales Analytics — HubSpot Pipeline Analysis
### Python · SQL · Power BI | Sales Performance Intelligence

---

## The Business Problem

A sales organization needed clear answers to questions their 
data wasn't answering:

- Which sales agents are actually closing deals efficiently?
- Which products drive the most revenue?
- Where are deals being lost in the pipeline?
- Which regions and industries are underperforming?

This project takes raw HubSpot CRM data across 5 datasets 
and turns it into a complete sales intelligence system.

---

## Key Results

| Metric | Finding |
|---|---|
| Total Revenue Analyzed | $6,000,000 (won deals) |
| Overall Win Rate | 57% |
| Top Performing Agent | Wilburn Farren — 67% win rate |
| Shortest Sales Cycle | Cecily Lampkin — 38 days avg |
| Top Product | MG Advanced — $2.2M (37% of revenue) |
| Top Region | US West — $2.2M |
| Top Industry | Retailing — $1.2M |

---

## What Was Built

**1. Python Data Pipeline**
- Merged 5 raw CSV datasets (sales pipeline, accounts, 
  products, sales teams, data dictionary)
- Cleaned inconsistent data types, renamed columns, 
  handled missing values and duplicates
- Exported structured data to MySQL for analysis

**2. SQL Analysis Layer**
- Win rate by sales agent
- Revenue by product, industry, and regional office
- Average deal size and sales cycle length
- Monthly revenue trends

**3. Power BI Dashboard**
- KPI cards: total revenue, win rate, average deal size
- Sales rep performance ranking
- Deal stage funnel (where prospects drop off)
- Revenue trend by month
- Regional and industry breakdown
- Interactive filters by manager, region, product, time

---

## Key Business Insights

**Agent Performance Gap is significant**
Win rates range from the low 50s to 67% across agents — 
a 15+ point spread that suggests coaching opportunities 
for lower performers based on what top agents do differently.

**Revenue is heavily concentrated**
One product (MG Advanced) generates 37% of all revenue. 
One region (US West) generates the largest share. 
This concentration is both a strength and a risk.

**Sales cycle varies widely by agent**
The fastest agent closes in 38 days average. 
Identifying what the fastest closers do differently 
could reduce the overall sales cycle across the team.

---

## Project Files

| File | Purpose |
|---|---|
| `Hubspot_explore.ipynb` | Data exploration and structure analysis |
| `hubspot_merge.ipynb` | Data cleaning, merging, MySQL export |
| `hubspot_analysis.sql` | SQL queries for all KPI calculations |

---

## Tools Used

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)

---

## Data Sources

Five CSV files from HubSpot CRM:
- `sales_pipeline.csv` — deal tracking with stages, 
   dates, and close values
- `accounts.csv` — company details, sector, revenue, 
   employee count
- `products.csv` — product catalog with pricing
- `sales_teams.csv` — agent and regional office mapping
- `data_dictionary.csv` — column definitions

---

*Interested in a similar analysis for your business?*
*[Connect on LinkedIn](your-linkedin-url) or 
[view my portfolio](your-portfolio-url)*

# CRM Sales Analytics Dashboard

![Dashboard](Screenshot (11).png)

