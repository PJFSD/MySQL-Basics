CREATE DATABASE Office;

USE Office;

CREATE TABLE Employees (
EmpName VARCHAR(50),
Department VARCHAR(50),
Salary INT
);

INSERT INTO Employees (EmpName, Department, Salary) Values
("Amit", "HR", 30000),
("Ravi", "IT", 50000),
("Sneha", "Finamce", 45000),
("Priya", "IT", 60000),
("Manish", "Finance",35000),
("Kiran", "HR", 35000);

SELECT * FROM Employees;

 -- a) Find employees earning more than the average salary
 SELECT EmpName, Salary
 FROM Employees 
 WHERE Salary > (SELECT AVG(Salary) FROM Employees);
 
  -- b) Find employees in the same department as 'Sneha'
  SELECT EmpName, Department
  FROM Employees
  WHERE Department = (SELECT Department FROM Employees WHERE EmpName = "Sneha");
  
 -- c) Get highest salary using a subquery
 SELECT EmpName, Salary
 FROM Employees
 WHERE Salary = (SELECT MAX(Salary) FROM Employees);
 
-- d) Employees who earn less than any IT employee
SELECT EmpName, Salary
FROM Employees
WHERE Salary < (SELECT MIN(Salary) FROM Employees WHERE Department = "IT");
 
  -- e) Employees salary less than 30000
 SELECT EmpName, Salary WHERE < 30000;
 
 