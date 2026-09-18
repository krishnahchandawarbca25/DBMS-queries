CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50),
    employee_department VARCHAR(30),
    age INT,
    salary DECIMAL(10,3),
    bonus DECIMAL(10,3),
    is_active BOOLEAN
);
INSERT INTO employees (employee_name, employee_department, salary, bonus, age, is_active) VALUES
('John Doe', 'IT', 75000.00, 5000.00, 32, TRUE),
('Jane Smith', 'HR', 55000.00, 3000.00, 28, TRUE),
('Michael Johnson', 'IT', 90000.00, 10000.00, 45, TRUE),
('Emily Davis', 'Finance', 65000.00, 4000.00, 38, FALSE),
('Robert Brown', 'Sales', 48000.00, 2000.00, 24, TRUE);
SELECT 
    employee_name,
    salary,
    bonus,
    (salary + bonus) AS Gross_salary,
    (salary * 0.20) AS salary_increment,
    (salary / 12) AS monthly_salary,
    (salary - 2000) AS deductions
FROM employees;
SELECT * FROM employees WHERE salary >= 60000.00;
SELECT * FROM employees WHERE employee_department != 'HR';
SELECT * FROM employees WHERE employee_department = 'IT' AND salary > 80000.00;
SELECT * FROM employees WHERE employee_department = 'Sales' OR is_active = FALSE;
SELECT * FROM employees WHERE age BETWEEN 25 AND 35;
SELECT * FROM employees WHERE employee_department IN ('HR', 'Finance');

