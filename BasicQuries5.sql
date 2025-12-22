CREATE DATABASE Bacic_Quries5;

USE Bacic_Quries5;

CREATE TABLE sales_2024 (
customer_name VARCHAR(50),
amount INT
);

CREATE TABLE sales_2025 (
customer_name VARCHAR(50),
amount INT
);

INSERT INTO sales_2024 VALUES
('Alice', 5000),
('Bob', 3000),
('Charlie', 2000);

INSERT INTO sales_2025 VALUES
('Alice', 5000),
('David', 4000),
('Eve',  2500);

 -- UNION removes duplicates
 
 SELECT customer_name, amount FROM
 sales_2024
 UNION
 SELECT customer_name, amount
 FROM sales_2025;
 
  -- SQL UNION ALL
 
 SELECT customer_name, amount FROM
 sales_2024
 UNION ALL
 SELECT customer_name, amount
 FROM sales_2025;
 
  -- SQL GROUP BY
  
  CREATE TABLE orders (
  customer_name VARCHAR(50),
  product VARCHAR(50),
  quantity INT
  );
  
  INSERT INTO orders VALUES
  ('Alice', 'Laptop', 2),
  ('Bob', 'Phone', 1),
  ('Alice', 'Mouse', 5),
  ('Bob', 'Phone', 3);
  
  SELECT customer_name, SUM(quantity) AS
  total_quantity
  FROM orders
  GROUP BY customer_name;
  
   -- SQL HAVING
   
   SELECT customer_name, SUM(quantity) AS
   total_quantity
   FROM orders
   GROUP BY customer_name
   HAVING SUM(quantity) > 3;
   
    -- SQL EXISTS
    
    CREATE TABLE customers (
    customer_name VARCHAR(50),
    city VARCHAR(50)
    );
    
    INSERT INTO customers VALUES
    ('Alice', 'New York'),
    ('Bob', 'Chicago'),
    ('David', 'Boston');
    
     -- Find customers who  have placed orders 
     
     SELECT customer_name
     from customers c
     WHERE EXISTS (
     SELECT 1
     FROM orders o
     WHERE o.customer_name = 
     c.customer_name);
   
    -- SQL ANY & ALL
    
    SELECT customer_name
    FROM orders
    WHERE quantity > ANY (
    SELECT quantity FROM orders WHERE 
    customer_name = 'Bob'
    );
    
     SELECT customer_name
     FROM oredrs
     WHERE quantity > ALL (
     SELECT quantity FROM orders WHERE 
     customer_name = 'Bob'
     );
     
     
     
  
 