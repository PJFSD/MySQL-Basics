create database company_db;

use company_db;

CREATE TABLE employees (
emp_id int primary key,
emp_name varchar(50),
department varchar(50),
salary int,
joining_date date
);

INSERT INTO employees (emp_id, emp_name, department, salary, joining_date) VALUES
(1, 'Rahul', 'HR', 45000, '2021-05-12'),
(2, 'Priya', 'IT', 60000, '2020-09-23'),
(3, 'Amit', 'Finance', 52000, '2022-01-15'),
(4, 'Sneha', 'IT', 70000, '2019-11-30'),
(5, 'Rohan', 'Marketing', 48000, '2022-06-20');

SELECT * FROM employees;

-- 1) Show all details of employees.
select * from employees;

-- 2) Display employee names and their departments.
select department, count(emp_id) as total_employees from employees group by department;

-- 3) List all employees who work in the IT department.
select * from employees where department = 'IT';

-- 4)  Find employees whose salary is greater than ₹50,000.
select * from employees where salary > 50000;

-- 5) Show employees who joined after January 1, 2021.
select * from employees where joining_date > '2021-01-01';

-- 6) List employees ordered by salary from highest to lowest.
select * from employees order by salary desc;

-- 7) Count how many employees are in the company.
select count(*) as Total_employees from employees;

-- 8) Count employees in each department.
select department, count(*) as each_department from employees group by department; 

-- 9) Find the highest salary in the company.
select emp_name, salary from employees order by salary desc limit 2;

-- 10) Show the name and department of employees who earn more than ₹60,000.
select emp_name, department, salary from employees where salary > 60000;

-- 11) Display employees whose name starts with “R”.
select * from employees where emp_name like 'R%';

-- 12) Show only the department names from the departments table.
select department from employees;

-- 13) Show employees except those who work in HR.
select emp_name, department from employees where department <> 'HR';

-- 14) Find average salary for each department.
select department, avg(salary) as avg_salary from employees group by department;   
