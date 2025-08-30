CREATE DATABASE office;

USE office;

CREATE TABLE employees(
id int,
name VARCHAR(100),
positine VARCHAR(100),
salary int,
location VARCHAR(100)
);

INSERT INTO employees(id, name, positine, salary, location) VALUES(21, 'sagar pawar', 'HR', 50000, 'ahemdabad');

INSERT INTO employees(id, name, positine, salary, location) VALUES(31, 'ravdi rathod', 'manager', 70000, 'pune');

INSERT INTO employees(id, name, positine, salary, location) VALUES(11, 'sameer vengurlekar', 'HR', 45000, 'ahemdabad');

INSERT INTO employees(id, name, positine, salary, location) VALUES(32, 'narayan murti', 'senior mananger', 60000, 'mumbai');

INSERT INTO employees(id, name, positine, salary, location) VALUES(63, 'premalu maharaj', 'junior mananger', 250000, 'satara');

INSERT INTO employees(id, name, positine, salary, location) VALUES(54, 'sangram chougule', 'CEO', 55000, 'USA');

SELECT * FROM employees;



