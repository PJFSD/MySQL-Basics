CREATE DATABASE Airline;

USE Airline;

CREATE TABLE Flight(
id_no int,
name VARCHAR(100),
ticket_price int,
date date
);

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(201, 'swastik chiraga', 6000, '2024-12-02');

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(202, 'pawan kumar', 7000, '2023-11-01');

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(203, 'ravi nikam', 4000, '2021-01-09');

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(204, 'rutuja ingwale', 2000, '2021-05-11');

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(205, 'faf duplessi', 8000, '2024-01-12');

INSERT INTO Flight(id_no, name, ticket_price, date) VALUES(206, 'crise glyle', 2000, '2024-01-12');


SELECT * FROM Flight;

SELECT * FROM Flight where id_no = '2000';
SELECT * FROM Flight where not (ticket_price = 2000);

SELECT * FROM Flight order by ticket_price ASC;

SELECT * FROM Flight order by date desc;

UPDATE Flight
 SET ticket_price = 3000
 WHERE id_no = 202;

