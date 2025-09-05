CREATE DATABASE supermarket;

USE supermarket;

CREATE TABLE products(
productName VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
quantity int,
price DECIMAL(10,2)
);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('milk 1L', 'dairy', 'amul', 50, 55.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('bread loaf', 'bakery', 'britannia', 40, 35.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('basmati rice 1kg', 'grocery', 'daawat', 30, 120.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('toothpaste 100g', 'personal care', 'colgate', 60, 45.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('shampoo 200ml', 'personal care', 'dove', 35, 180.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('eggs pack of 6', 'poultry', 'localfarm', 25, 65.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('butter 500g', 'dairy', 'amul', 20, 250.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('detergent 1kg', 'household', 'surf excel', 45, 210.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('tomato ketchup 500g', 'grocery', 'kissan', 55, 95.00);

INSERT INTO products (productName, category, brand, quantity, price) VALUES('mineral water 1L', 'beverages', 'bisleri', 80, 20.00);

SELECT * FROM products;

select min(price) as min_price from products;

select max(price) as max_price from products;

select sum(price) as avarage_price from products;

select * from products order by price asc;

select * from products order by quantity desc;

select * from products where category = 'personal care';

select * from products where brand = 'kissan' and price > 55;

UPDATE products SET quantity = 40 WHERE brand = 'kissan';

select * from products;

delete from products where brand = 'dove';

select * from products where price between 20 and 200;


