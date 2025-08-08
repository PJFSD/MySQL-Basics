CREATE DATABASE Company;

USE Company;

CREATE TABLE employee(
emp_id int,
emp_name VARCHAR(100),
position VARCHAR(50),
emp_salary int,
location VARCHAR(50)
);

INSERT INTO employee(emp_id, emp_name, position, emp_salary, location) VALUES(22, "sai sudarshan", "hr", 50000, "nashik");

INSERT INTO employee(emp_id, emp_name, position, emp_salary, location) VALUES(63, "shubhman gill", "manager", 45000, "mumbai");

INSERT INTO employee(emp_id, emp_name, position, emp_salary, location) VALUES(66, "rishab pant", "manager", 45000, "pune");

INSERT INTO employee(emp_id, emp_name, position, emp_salary, location) VALUES(81, "ajikya rahane", "IT", 60000, "dilhi");

INSERT INTO employee(emp_id, emp_name, position, emp_salary, location) VALUES(31, "yuzvendra chahal", "manager", 45000, "ahemdabad");

SELECT * FROM employee;

 -- salary greater than (>)
 select * from employee where emp_salary > 45000;
 
 select * from employee where emp_id > 66;
 
  -- find 
  select * from employee where position = 'manager';
 