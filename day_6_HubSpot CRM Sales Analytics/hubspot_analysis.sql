-- <<<<<<<<<<<<<<<<< HubSpot CRM Sales Analytics >>>>>>>>>>>>>>>>>

-- This SQL script is designed to analyze the HubSpot CRM sales data. 
-- It retrieves all records from the `hubspot_crm_data` table and counts the total number of records present in that table.

-- Database: sql_projects
-- Table: hubspot_crm_data

-- Data Exploration

use sql_projects;
describe 
-- Step 1: 
-- Select all records from the `hubspot_crm_data` table

select * from hubspot_crm_data;

-- Step 2: 
-- Count the total number of records in the `hubspot_crm_data` table

select count(*) from hubspot_crm_data;

-- Data Analysis

-- Total Revenue
select round(sum(Close_value), 2) as total_revenue 
from hubspot_crm_data
where Deal_stage = 'Won';

-- Win Rate %
select round(sum(case when Deal_stage = 'Won' then 1 else 0 end)*100/count(*),2) as win_rate
from hubspot_crm_data;

-- Win Rate % by Sales Agent
select Sales_agent, 
count(*) as Total_Deals, 
sum(case when Deal_stage = 'Won' then 1 else 0 end) as Won_deal,
round(sum(case when Deal_stage = 'Won' then 1 else 0 end)*100/count(*), 2) as Won_rate 
from hubspot_crm_data
group by Sales_agent
order by Won_rate;

-- Average Deal Size
select Deal_stage, round(avg(Close_value), 2) as average_deal_size
from hubspot_crm_data
where Deal_stage = 'Won'
group by Deal_stage
order by average_deal_size desc;

-- Sales Cycle Length
select Sales_agent, round(avg(DATEDIFF(Close_date, Engage_date)), 2) as average_sales_cycle_length
from hubspot_crm_data
group by Sales_agent
order by average_sales_cycle_length asc;

-- Revenue by Product
select Product_name, Product_series, round(sum(Close_value), 2) as revenue_by_product
from hubspot_crm_data
where Deal_stage='Won'
group by Product_name, Product_series
order by revenue_by_product desc;

-- Revenue by Industry
select Sector, round(sum(Close_value), 2)as revenue_by_industry
from hubspot_crm_data
where Deal_stage='Won'
group by Sector
order by revenue_by_industry desc;

-- Revenue by Regional Office
select Regional_office, Office, round(sum(Close_value), 2) as revenue_by_regional_office
from hubspot_crm_data
group by Regional_office, Office
order by revenue_by_regional_office desc;

-- Company Size Analysis
select Company_name, count(Employees), round(sum(close_value), 2) as revenue_by_company_size
from hubspot_crm_data
group by Company_name
order by revenue_by_company_size desc;

-- Monthly Revenue Trends
select month(Close_date) as monthes, round(sum(Close_value), 2) as revenue_by_month
from hubspot_crm_data
group by monthes
order by monthes;

-- <<<<<<<<<<<<<<<<<<<< END OF THE DATA ANALYSIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- <<<<<<<<<<<<<<<<<<<< NEXT DATA VISUALIZATION WITH POWER BI >>>>>>>>>>>>>>>>>>>














