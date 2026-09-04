-- connection: 6a9a4b9a0c77ce57096b0c92

CREATE TABLE EMPLOYEE (
    employee_ID INT,
    employee_name VARCHAR(100),
    employee_dept VARCHAR(50),
    Salary DECIMAL(10,3),
    employee_manager_name VARCHAR(100),
    joining_date DATE
);

INSERT INTO EMPLOYEE (employee_ID, employee_name, employee_dept, Salary, employee_manager_name, joining_date)
VALUES
    (1, 'Alice Johnson', 'Engineering', 95000.000, 'David Smith', '2022-03-15'),          
    (2, 'Bob Williams', 'Marketing', 72000.000, 'Sarah Connor', '2023-07-01'),
    (3, 'Carol Davis', 'Engineering', 88000.000, 'David Smith', '2021-11-20'),
    (4, 'Daniel Lee', 'Sales', 67000.000, 'Sarah Connor', '2024-01-10');
SELECT * FROM EMPLOYEE;
SELECT employee_name
UPPER(employee_name) AS Uppercase_Name
LOWER(employee_name) AS Lowercase_Name
SUBSTRING(employee_name, 1, 5) AS First_Five_Characters
FROM EMPLOYEE;
SELECT employee_manager_name
LENGTH(employee_manager_name) AS Name_Length
SELECT CONCAT(employee_manager_name, &#39; - Class &#39;, Class) AS employee_manager_details 
FROM EMPLOYEE;
SELECT * FROM EMPLOYEE;
ROUND(salary * 1.05) AS Bonus 
SELECT employee_name, Salary, CEIL(Salary) AS Salary_Ceil
FROM EMPLOYEE;
SELECT employee_name, Salary, FLOOR(Salary) AS Salary_Floor
FROM EMPLOYEE;
SELECT employee_ID, MOD(employee_ID, 2) AS Remainder
FROM EMPLOYEE;
SELECT ABS(-100) AS Absolute_Value;
SELECT employee_name, joining_date, YEAR(joining_date) AS Joining_Year
FROM EMPLOYEE;
SELECT employee_name, joining_date, MONTH(joining_date) AS Joining_Month
FROM EMPLOYEE;
SELECT employee_name, joining_date, DAY(joining_date) AS Joining_Day
FROM EMPLOYEE;
SELECT employee_name, joining_date,
DATEDIFF(CURDATE(), joining_date) / 365 AS Approx_Years_Since_Joining
FROM EMPLOYEE;
SELECT COUNT(*) AS Total_Employees
FROM EMPLOYEE;
SELECT SUM(Salary) AS Total_Salary
FROM EMPLOYEE;
SELECT AVG(Salary) AS Average_Salary
FROM EMPLOYEE;
SELECT MIN(Salary) AS Lowest_Salary
FROM EMPLOYEE;
SELECT MAX(Salary) AS Highest_Salary
FROM EMPLOYEE;
