use sql_projects;

select * from hubspot_sales_data;

CREATE TABLE hubspot_crm_data (
    ID INT PRIMARY KEY,
    Sales_agent VARCHAR(100),
    Product_name VARCHAR(100),
    Company_name VARCHAR(150),
    Deal_stage VARCHAR(50),
    Engage_date DATE,
    Close_date DATE,
    Close_value DECIMAL(12,2),
    Sector VARCHAR(100),
    Year_established INT,
    Revenue DECIMAL(15,2),
    Employees INT,
    Office VARCHAR(100),
    Product_series VARCHAR(100),
    Sales_price DECIMAL(12,2),
    Manager VARCHAR(100),
    Regional_office VARCHAR(100)
);
ALTER TABLE hubspot_crm_data
MODIFY COLUMN Year_established datetime;
     