CREATE DATABASE Cafe;

USE Cafe;

CREATE TABLE Food(
Table_no int,
Food_name VARCHAR(100),
Customer_name VARCHAR(100),
Loction VARCHAR(100)
);

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(211, 'Pizza', 'pravin nangre', 'ahemdabad');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(212, 'Burger', 'nagrag manjule', 'pune');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(213, 'Vadapav', 'pravin patil', 'Mumbai');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(214, 'mirchi bhajji', 'sumit nikam', 'Dilhi');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(215, 'Pohe', 'pramod naik', 'nagpur');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(216, 'sandwich', 'umesh latam', 'adkur');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(217, 'maska pav', 'suraj more', 'kolhapur');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(218, 'dahi vada', 'sejal kole', 'satara');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(219, 'pani puri', 'kishor kumar', 'karad');

INSERT INTO Food(Table_no, Food_name, Customer_name, Loction) VALUES(220, 'biryani', 'mukesh ambani', 'dharashiv');

SELECT * FROM Food;

select * from Food where Food_name = 'Pizza';

select distinct loction from Food;

select Customer_name from Food where loction = 'pune';

select loction, count(*)as Total_Customers from Food group by loction;

drop database cafe;
