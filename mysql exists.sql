CREATE DATABASE MySQL_Exitst;

USE MySQL_Exitst;

CREATE TABLE Customers (
customer_id INT,
name VARCHAR(50),
city VARCHAR(50)
);

-- Order Table 
CREATE TABLE Orders (
order_id INT,
customer_id INT,
product VARCHAR(50),
amount DECIMAL(10,2)
);

-- Customers
INSERT INTO Customers VALUES
(1, "Amit", "Pune"),
(2, "Sneha", "Mumbai"),
(3, "Rahul", "Delhi"),
(4, "Priya", "Bangalore");

-- Orders 
INSERT INTO Orders VALUES
(101, 1, "Laptop", 55000),
(102, 1, "Mouse", 500),
(103, 2, "Mobile", 20000),
(104, 4, "Tablet", 15000);  

--  Example 1: Find customers who have placed at least one order
SELECT name, city
FROM Customers c
WHERE EXISTS (
SELECT 1
FROM Orders o
WHERE o.customer_id = c.customer_id
);

--  Example 2: Find customers who have not placed any order
SELECT name, city
FROM Customers c
WHERE NOT EXISTS (
SELECT 1
FROM Orders o
WHERE o.customer_id = c.customer_id
);


 