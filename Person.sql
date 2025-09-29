CREATE DATABASE Person;

USE Person;

CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100),
city VARCHAR(100),
country VARCHAR(100)
);

CREATE TABLE suppliers (
supplier_id INT PRIMARY KEY AUTO_INCREMENT,
supplier_name VARCHAR(100),
city VARCHAR(100),
country VARCHAR(100)
);

-- Insert into customers
INSERT INTO customers (customer_name, city, country) VALUES
('Rahul Sharma', 'Mumbai', 'India'),
('Anita Desai', 'Pune', 'India'),
('John Smith', 'New York', 'USA'),
('Maria Garcia', 'Madrid', 'Spain');

-- Insert into suppliers
INSERT INTO suppliers (supplier_name, city, country) VALUES
('Tata Supplies', 'Mumbai', 'India'),
('Infosys Vendor', 'Bangalore', 'India'),
('Amazon Wholesale', 'New York', 'USA'),
('Ikea Distributors', 'Stockholm', 'Sweden');

-- Combine customers and suppliers into a singal result set.alter
SELECT customer_name AS name, city, country , "Customer" AS type
FROM customers
UNION
SELECT supplier_name AS name, city, country, "Supplier" AS type
FROM suppliers;

-- UNION ALL
SELECT customer_name AS name, city,
country, "Customer" AS type
FROM customers
UNION ALL
SELECT supplier_name AS name, city,
country, "Supplier" AS type 
FROM suppliers; 

 



