CREATE DATABASE JOINSPractice;

USE JOINSPractice;

CREATE TABLE Customers (
CustomerID VARCHAR(10),
CustomerName VARCHAR(100),
Region VARCHAR(50)
);

CREATE TABLE Products (
ProductID VARCHAR(10),
ProductName VARCHAR(100),
Category VARCHAR(50)
);

CREATE TABLE Orders (
OrderID VARCHAR(10),
CustomerID VARCHAR(10),
ProductID VARCHAR(10),
OrderDate DATE,
Quantity INT,
Sales DECIMAL(10,2)
);

INSERT INTO Customers(CustomerID, CustomerName, Region) VALUES("C001", "Alice", "East");

INSERT INTO Customers(CustomerID, CustomerName, Region) VALUES("C002",  "Bob", "West");

INSERT INTO Customers(CustomerID, CustomerName, Region) VALUES("C003", "Charlie", "South");

 -- product
 
 INSERT INTO Products(ProductID, ProductName, Category) VALUES("P001", "Chair", "Furnicher");
 
 INSERT INTO Products(ProductID, ProductName, Category) VALUES("P002", "Pen", "Stationery");
 
 INSERT INTO Products(ProductID, ProductName, Category) VALUES("P003", "Laptop", "Technology");
 
  -- Orders
  
  INSERT INTO orders values
('o001','c001','p001','2023-01-10',2,400.00),
('o002','c002','p002','2023-01-11',5,25.00),
('o003','c003','p003','2023-02-15',1,1200),
('o004','c004','p004','2023-03-05',3,150.00);

select * from customers;
  
  SELECT o.OrderID, c.CustomerName,
  p.ProductName, o.Sales
  from Orders o
  INNER JOIN Customer.c on o.CustomerID = c.CustomerID
  INNER JOIN Products.p on o.ProductID = p.ProductID;
  
   -- LEFT JOIN
   
   SELECT o.OrderID, c.CustomerName, p.ProductName, o.Sales
   FROM Orders o
   LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
   LEFT JOIN Products p ON o.ProductID = p.ProductID;
   
    -- RIGHT JOIN 
    
    SELECT o.OrderID, c.CustomerName, p.ProductName, o.Sales
    From Orders o
    RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
    RIGHT JOIN Products p ON o.productID = p.ProductID;
    
     -- UNION 
     
     SELECT o.OrderID, c.CustomerName,
     p.ProductName, oSales
     FROM Orders o
     LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
     LEFT JOIN Products p ON o.ProductID = p.ProductID;
     
     UNION
     
     SELECT o.OrderID, c.CustomerName,
     p.ProductName, o.Sales
     FROM Orders o
     RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
     RIGHT JOIN Products p ON 
     o.ProductID = p.ProductID;
   
  
  