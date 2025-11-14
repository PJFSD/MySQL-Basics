CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees (emp_id, name, department, salary, city) VALUES
(101, 'Aman Sharma', 'HR', 35000, 'Mumbai'),
(102, 'Riya Patel', 'IT', 55000, 'Pune'),
(103, 'Kabir Singh', 'Finance', 45000, 'Delhi'),
(104, 'Neha Gupta', 'IT', 60000, 'Mumbai'),
(105, 'Rohan Mehta', 'Sales', 30000, 'Nagpur'),
(106, 'Simran Kaur', 'HR', 38000, 'Delhi'),
(107, 'Vikas Verma', 'Sales', 32000, 'Pune'),
(108, 'Aditi Rao', 'Finance', 47000, 'Mumbai'),
(109, 'Sagar Joshi', 'IT', 52000, 'Delhi'),
(110, 'Meera Nair', 'Sales', 29000, 'Pune');

-- 1) Display all records from the employees table
SELECT* FROM employees;

-- 2) Show only employee name and salary.
SELECT name, salary FROM employees;

-- 3) Show employees who work in the IT department.
SELECT * FROM employees WHERE department = 'IT';

-- 4) Display employees who live in Mumbai.
SELECT * FROM employees WHERE city = 'Mumbai';

-- 5) Show employees with salary greater than 40,000.
SELECT * FROM employees WHERE salary > 40000;

-- 6) Show employees with salary less than 35,000.
SELECT * FROM employees WHERE salary < 35000;

-- 7) Show employees whose city is Delhi.
SELECT * FROM employees WHERE city = 'Delhi';

-- 8) Show employees whose department is NOT Sales.
SELECT * FROM employees WHERE department <> 'Sales';

-- 9) Show employees whose salary is between 30,000 and 50,000.
SELECT * FROM employees WHERE salary BETWEEN '30000' AND '50000';

-- 10) Show employees whose name starts with 'A'.
SELECT * FROM employees WHERE name LIKE 'A%'; 

-- 11) Show employees whose name ends with 'a'.
SELECT * FROM employees WHERE name LIKE '%a';

-- 12) Show employees whose city contains 'u'.
SELECT * FROM employees WHERE city LIKE '%u%';  

-- 13) Display all employees ordered by salary (ascending).
SELECT salary, name FROM employees ORDER BY salary ASC;

-- 14) Display all employees ordered by salary (descending).
SELECT salary, name FROM employees ORDER BY salary DESC;

-- 15) Sort employees by name alphabetically. 
SELECT name, emp_id FROM  employees ORDER BY name ASC;

-- 16) Find total salary of all employees.
SELECT SUM(salary) AS total_salary FROM employees;

-- 17)  Find average salary in the company.
SELECT AVG(salary) AS AVG_salary FROM employees;

-- 18) Find minimum salary.
SELECT MIN(salary) AS min_salary FROM employees;

-- 19) Find maximum salary.
SELECT MAX(salary) AS MAX_salary FROM employees;

-- 20) Count how many employees work in the IT department.
SELECT COUNT(*) AS total_employees FROM employees WHERE department = 'IT'; 

-- 21) Count employees in each department.
SELECT department, COUNT(*) AS total_employees FROM employees GROUP BY department;

-- 22) Find average salary for each department.
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;

-- 23) Show highest salary in each city.
SELECT city, MAX(salary) AS MAX_salary FROM employees GROUP BY city;

-- 24) Show number of employees in each city. 
SELECT city, count(*) AS total_employees FROM employees GROUP BY city;

-- 25) Show departments where average salary is greater than 40,000.
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department HAVING AVG(salary) > 40000;
