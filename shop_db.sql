CREATE DATABASE shop_db;
USE shop_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    quantity INT,
    city VARCHAR(50)
);

INSERT INTO products (product_id, product_name, category, price, quantity, city) VALUES
(1, 'Laptop', 'Electronics', 55000, 10, 'Mumbai'),
(2, 'Headphones', 'Electronics', 2000, 50, 'Delhi'),
(3, 'Keyboard', 'Electronics', 1500, 40, 'Pune'),
(4, 'Shirt', 'Clothing', 1200, 35, 'Mumbai'),
(5, 'Jeans', 'Clothing', 1800, 25, 'Delhi'),
(6, 'Jacket', 'Clothing', 3500, 15, 'Pune'),
(7, 'Refrigerator', 'Appliances', 30000, 8, 'Mumbai'),
(8, 'Microwave', 'Appliances', 8000, 12, 'Delhi'),
(9, 'Mixer', 'Appliances', 2500, 18, 'Pune'),
(10, 'Watch', 'Accessories', 3000, 20, 'Delhi'),
(11, 'Wallet', 'Accessories', 800, 30, 'Mumbai'),
(12, 'Shoes', 'Accessories', 2500, 22, 'Pune');

 SELECT * FROM products;
 
-- 1) Find the total number of products.
SELECT COUNT(*) AS total_product FROM products;
 
-- 2) Find the total quantity of all products.
SELECT SUM(quantity) AS total_quantity FROM products;

-- 3) Find the highest product price.
SELECT MAX(price) AS MAX_price FROM products;

-- 4) Find the lowest product price.
SELECT MIN(price) AS MIN_price FROM products;

-- 5) Find the average price of all products.
SELECT AVG(price) AS AVG_price FROM products;

-- 6) Count how many products belong to the Electronics category.
SELECT COUNT(*) AS total_product FROM products WHERE category = 'Electronics';

-- 7) Find the total quantity of Clothing products.
SELECT category, SUM(quantity) AS total_quantity FROM products WHERE category = 'Clothing'; 

-- 8) Find the average price of Accessories.
SELECT category, AVG(price) AS AVG_price FROM products WHERE category = 'Accessories';

-- 9) Find the minimum price in the Appliances category.
SELECT category, MIN(price) AS MIN_price FROM products WHERE category = 'Appliances';

-- 10) Find the maximum quantity among all products. 
SELECT MAX(quantity) AS MAX_quantity FROM products;

-- 11) Show average price for each category.
SELECT category, AVG(price) AS AVG_price FROM products GROUP BY category;

-- 12) Show total quantity for each city.
SELECT city, SUM(quantity) AS total_quantiry FROM products GROUP BY city;

-- 13) Show highest price in each category.
SELECT category, MAX(price) AS MAX_price FROM products GROUP BY category;

-- 14) Show lowest price in each city.
SELECT city, MIN(price) AS MIN_price FROM products GROUP BY city;

-- 15) Count products in each category.
SELECT category, COUNT(*) AS total_product FROM products GROUP BY category;

-- 16) Show total stock value for each category. (stock value = price × quantity)
SELECT category, SUM(price * quantity) AS stock_value FROM products GROUP BY category;

-- 17) Show total price sum per city.
SELECT city, SUM(price) AS total_price FROM products GROUP BY city;

-- 18) Show count of products per city. 
SELECT city, COUNT(*) AS total_product FROM products GROUP BY city;

-- 19) Show categories where average price > 3000.
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category
HAVING AVG(price) > 3000;

-- 20) Show cities where total quantity > 50.
SELECT city, SUM(quantity) AS total_quantity FROM products GROUP BY city HAVING SUM(quantity) > 50;

-- 21) Show categories having more than 2 products.
SELECT category, COUNT(*) AS total_category FROM products GROUP BY category HAVING COUNT(category) > 2;

-- 22) Show cities having average price less than 5000.
SELECT city, AVG(price) AS AVG_price FROM products GROUP BY city HAVING AVG(price) > 5000;

-- 23) Show categories where total price sum > 50,000.
SELECT category, SUM(price) AS total_price FROM products GROUP BY category HAVING SUM(price) > 50000;

-- 24) Show cities where max product price > 10,000.
SELECT city, MAX(price) AS MAX_price FROM products GROUP BY city HAVING MAX(price) > 10000;

-- 25) Show categories where minimum price is above 1000. 
SELECT category, MIN(price) AS MIN_price FROM products GROUP BY category HAVING MIN(price) < 1000;