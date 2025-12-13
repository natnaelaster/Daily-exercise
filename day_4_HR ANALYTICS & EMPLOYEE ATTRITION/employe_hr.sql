-- Create database called (hr_analytics)
create database `hr_analytics`;
use `hr_analytics`;
-- ------------------------------------------------------------------------------------------------------
-- Import dataset from local file
select * from `hr-employee-attrition`;

-- 1. Overall attrition rate and by department

select 
	'Department',
    count(*),
    sum(case when 'Attrition' = 'Yes' then 1 else 0 end) as total_attrition,
	round(sum(case when 'Attrition' = 'Yes' then 1 else 0 end) / count(*) * 100, 2) as attrition_rate
    from `hr-employee-attrition`
    group by 'Department'
    order by attrition_rate;
    
alter table `hr-employee-attrition`
add column attrition_num int
	 when Attrition = 'Yes' then 1,
			 when Attrition = 'Yes' then 0
after Attrition
		