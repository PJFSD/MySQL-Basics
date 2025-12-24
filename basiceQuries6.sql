CREATE DATABASE BasicQuries6;

USE BasicQuries6;

CREATE TABLE employees (
name VARCHAR(50),
department VARCHAR(50),
salary INT
);

INSERT INTO employees VALUES
('Alice', 'IT', 60000),
('Bob', 'HR', 50000),
('Charlie', 'Finance', 55000);

SELECT name, salary
FROM employees
WHERE department = 'IT';

CREATE TABLE more_employees (
name VARCHAR(50),
department VARCHAR(50),
salary int
);

INSERT INTO more_employees (name,department, salary)
SELECT name, department, salary
FROM employees
WHERE salary > 52000;

SELECT * FROM more_employees;

 -- SQL CASE
 
SELECT name, salary,
CASE 
WHEN salary > 55000 THEN 'High Salary'
WHEN salary  BETWEEN 50000 AND 55000 
THEN 'Medium Salary'
ELSE 'Low Salary'
END AS salary_status
FROM employees;

  -- SQL NULL Function
  CREATE TABLE payments (
  customer_name VARCHAR(50),
  amount INT
  );
  
  INSERT INTO payments VALUES
  ('Alice', 5000),
  ('Bob', NULL),
  ('Charlie', 3000);
  
   -- Replace NULL with 0
   SELECT customer_name,
   COALESCE(amount, 0) AS
   amount_paid
   FROM payments;
   
  


