CREATE DATABASE Shope;

USE Shope;

CREATE TABLE products(
productCode VARCHAR(10),
productName VARCHAR(100),
price INT
);


CREATE TABLE employee(
employeeID VARCHAR(10),
employeeName VARCHAR(100),
salary INT
);

INSERT INTO products(productCode, productName, price) VALUES("P001", "Mango", 100);

INSERT INTO products(productCode, productName, price) VALUES("P002", "Achar", 245);

INSERT INTO products(productCode, productName, price) VALUES("P003", "Mehandi", 70);

INSERT INTO products(productCode, productName, price) VALUES("P004", "Jeans", 1200);

 -- EMPLOYEE
 
 INSERT INTO employee(employeeID, employeeName, salary) VALUES("E111", "Pradip Narwal", 45000);
 
 INSERT INTO employee(employeeID, employeeName, salary) VALUES("E112", "Sidharth Desai", 50000);
 
 INSERT INTO employee(employeeID, employeeName, salary) VALUES("E113", "Surendar Nada", 35000);
 
 INSERT INTO employee(employeeID, employeeName, salary) VALUES("E114", "Anup Kumar", 42000);
 
 UPDATE products SET employeeID = "E111" WHERE productCode = "P001";
 
 ALTER TABLE products ADD employeeID VARCHAR(10);
 
 update products SET employeeID = "E111" WHERE productCode = "P001";
 
 UPDATE products SET employeeID = 'E112' WHERE productCode = 'P002';
 
UPDATE products SET employeeID = 'E113' WHERE productCode = 'P003';

 -- INNER JOIN
 
 SELECT p.productName, e.employeeName
 FROM products p
 INNER JOIN employee e
 ON p.employeeID = e.employeeID;

 -- LEFT JOIN
 
 SELECT p.productName, e.employeeName
 FROM products p
 LEFT JOIN employee e
 ON p.employeeID = e.employeeID;
 
  -- RIGHT JOIN
  
  SELECT p.productName, e.employeeName
  FROM products p
  RIGHT JOIN employee e
  ON p.employeeID = e.employeeID;
  
   -- CROSS JOIN
   SELECT p.productName, e.employeeName
   FROM products p
   CROSS JOIN employee e;