CREATE DATABASE Banks;

USE Banks;

CREATE TABLE Customers (
CustomerID VARCHAR(10),
CustomerName VARCHAR(100),
Gender VARCHAR(10),
City VARCHAR(50)
);

CREATE TABLE Accounts(
AccountID VARCHAR(10),
CustomerID VARCHAR(10),
AccountType VARCHAR(20),
Balance DECIMAL(12,2)
);

CREATE TABLE Transacations(
TransactionID VARCHAR(10),
AccountID VARCHAR(10),
TransactionDate DATE,
Type VARCHAR(10), -- 'Deposit' or 'Withdraw'
Amount DECIMAL(10,2)
);

INSERT INTO Customers (CustomerID, CustomerName, Gender, City) VALUES("C001", "Alice Sharma", "Female", "Delhi");

INSERT INTO Customers (CustomerID, CustomerName, Gender, City) VALUES("C002", "Bob Verma", "Male", "Mumbai");

INSERT INTO Customers (CustomerID, CustomerName, Gender, City) VALUES("C003", "Carol D\"Souza", "Female", "Banglore");

INSERT INTO Customers (CustomerID, CustomerName, Gender, City) VALUES("C004", "David Khan", "Male", "Hyderabad");


INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance) VALUES("A001", "C001", "Saving", 5000.00);

INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance) VALUES("A002", "C001", "Current", 12000.00);

INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance) VALUES("A003", "C002", "Savings", 15000.00);

INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance) VALUES("A004", "C003", "Savings", 8000.00);

INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance) VALUES("A005", "C004", "Current", 3000.00);


INSERT INTO Transacations VALUES
('T001', 'A001', '2023-01-01', 'Deposit', 2000.00),
('T002', 'A001', '2023-01-05', 'Withdraw', 1000.00),
('T003', 'A002', '2023-01-10', 'Deposit', 5000.00),
('T004', 'A003', '2023-02-01', 'Withdraw', 3000.00),
('T005', 'A004', '2023-02-10', 'Deposit', 4000.00),
('T006', 'A005', '2023-02-20', 'Withdraw', 1000.00),
('T007', 'A001', '2023-03-01', 'Deposit', 1500.00),
('T008', 'A002', '2023-03-05', 'Withdraw', 2000.00);




