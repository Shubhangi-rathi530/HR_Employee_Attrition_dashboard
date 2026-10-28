CREATE DATABASE Hr_Database;
USE Hr_Database;
SELECT * FROM HR_emp_Attrition 
LIMIT 6;
SELECT COUNT(*) AS Total_Emp
FROM HR_EMP_ATTRITION;
SELECT EmployeeNumber , COUNT(*) AS Duplicate_Count
FROM HR_emp_Attrition
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;
SELECT 
SUM(Attrition IS NULL ) AS missing_Attrition,
SUM(Age IS NULL)AS missing_age,
SUM(Department IS NULL ) AS missing_department,
SUM(MonthlyIncome IS NULL ) AS missing_income,
SUM(EmployeeNumber IS NULL ) AS missing_emp_num
FROM HR_emp_Attrition;
DESCRIBE HR_emp_Attrition;
ALTER TABLE HR_emp_Attrition
CHANGE COLUMN   `ï»¿Age` Age INT;
SELECT DISTINCT Department
FROM HR_emp_Attrition;
SELECT DISTINCT Attrition
FROM HR_emp_Attrition;
SELECT DISTINCT BusinessTravel
FROM HR_emp_Attrition;
SELECT DISTINCT JobRole
FROM HR_emp_Attrition;
SELECT COUNT(DISTINCT JobRole) AS 
Total_job_roles
FROM HR_emp_Attrition;
SELECT JobRole , COUNT(*) AS
employee_count
FROM HR_emp_Attrition
GROUP BY JobRole
ORDER BY employee_count DESC;
SELECT JobRole ,COUNT(*) AS Total_emp,
SUM(CASE WHEN Attrition ='yes' THEN 1 ELSE 0 END) AS Employee_left,
ROUND(100.0 * SUM(CASE WHEN Attrition ='yes' THEN 1 ELSE 0 END) / COUNT(*),
2) AS Attrition_rate_pct
FROM HR_emp_Attrition
GROUP BY JobRole
ORDER BY Attrition_rate_pct DESC;

SELECT Department , COUNT(*) AS Total_Employee , 
SUM( CASE WHEN Attrition = 'yes' THEN 1 ELSE 0 END) AS Employee_left,
ROUND( 100.0* SUM(CASE WHEN Attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*),
2) AS Attrition_rate_pcnt
FROM HR_emp_Attrition
GROUP BY Department
ORDER BY Attrition_rate_pcnt DESC;

SELECT OverTime , COUNT(*) AS Total_emp,
SUM(CASE WHEN Attrition ='YES' THEN 1 ELSE 0 END) AS Total_emp_left ,
ROUND(100.0 * SUM(CASE WHEN Attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*),
2) AS Attrition_Rate_percentage
FROM HR_emp_Attrition
GROUP BY OverTime
ORDER BY Attrition_Rate_percentage DESC;


