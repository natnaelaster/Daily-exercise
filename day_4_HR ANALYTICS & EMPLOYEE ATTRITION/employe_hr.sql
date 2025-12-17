-- CREATE A DATABASE CALLED (hr_analytics)

CREATE DATABASE `hr_analytics`;
USE `hr_analytics`;

-- ------------------------------------------------------------------------------------------------------

-- CREATE TABLE STRUCTURE MATCHING THE DATASET

CREATE TABLE employees (
    Age INT,
    Attrition VARCHAR(3),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    OverTime VARCHAR(3),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
      attrition_num  INT
);
-- ---------------------------------------------------------------------------------------

--  ANSWERING BUSINESS QUASTIONS 

SELECT * FROM employees;

-- 1. OVERALL ATTRITION RATE AND GROUPED BY DEPARTMENT

SELECT
	Department,
    COUNT(*) AS EMPLOYEE_COUNT,
    SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS ATTRITION_COUNT,
    ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS ATTRITION_RATE
    FROM employees
    GROUP BY Department
    ORDER BY COUNT(*) DESC;

-- ---------------------------------------------------------------------------------------

-- 2 CORRELATION BETWEEN MONTHLY INCOME AND ATTRITION

SELECT 
	CASE 
    WHEN MonthlyIncome < 3000 THEN 'LESSTHAN (< 3K)'
    WHEN MonthlyIncome > 3000 AND MonthlyIncome < 6000 THEN 'MEDIUM (3K-6K)'
    WHEN MonthlyIncome > 6000 THEN 'HIGH (> 6K)' END AS INCOME_GROUP,
    COUNT(*) AS EMPLOYEE_COUNT,
    SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS ATTRION_COUNT,
    ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS ATTRITION_RATE
    FROM employees
    GROUP BY INCOME_GROUP
    ORDER BY ATTRITION_RATE DESC;

-- ---------------------------------------------------------------------------------------

-- 3 OVERTIME IMPACT ON ATTRITION

SELECT 
	OverTime,
    COUNT(*),
    SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS ATTRITION_COUNT,
    ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS ATTRITION_RATE
    FROM employees
    GROUP BY OverTime
    ORDER BY ATTRITION_RATE DESC;
    
-- ---------------------------------------------------------------------------------------

-- 4 JOB SATISFACTION IMPACT    

SELECT 
    JobSatisfaction,
    COUNT(*) as EMPLOYEE_COUNT,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) as ATTRITION_COUNT,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100), 2) as ATTRITION_RATE
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

-- ---------------------------------------------------------------------------------------

-- 5 GROUP AGE ANALYSIS

SELECT 
	CASE
    WHEN Age < 25 THEN 'UNDER 25'
    WHEN Age > 25 AND Age < 34 THEN 'BETWEEN 25-34'
    WHEN Age > 35 AND Age < 44 THEN 'BETWEEN 34-45'
    WHEN Age > 45 AND Age < 54 THEN 'BETWEEN 45-54'
    ELSE 'OLDER THAN 54' END AS AGE_GROUP,
    COUNT(*) EMPLOYEE_COUNT,
    SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS ATTRITION_COUNT,
    ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS ATTRITION_RATE
    FROM employees
    GROUP BY AGE_GROUP
    ORDER BY AGE_GROUP DESC;
    
-- ---------------------------------------------------------------------------------------
    
    
    
    
    
    
    
    
    
    
    