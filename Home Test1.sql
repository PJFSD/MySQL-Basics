CREATE DATABASE Lones;

USE Lones;

CREATE TABLE Customers (
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    City VARCHAR(50)
);

CREATE TABLE Accounts (
    AccountID VARCHAR(10),
    CustomerID VARCHAR(10),
    AccountType VARCHAR(20),
    Balance DECIMAL(12,2)
);

CREATE TABLE Transactions (
    TransactionID VARCHAR(10),
    AccountID VARCHAR(10),
    TransactionDate DATE,
    Type VARCHAR(10), -- 'Deposit' or 'Withdraw'
    Amount DECIMAL(10,2)
);

INSERT INTO Customers VALUES
('C001', 'Alice Sharma', 'Female', 'Delhi'),
('C002', 'Bob Verma', 'Male', 'Mumbai'),
('C003', 'Carol D\'Souza', 'Female', 'Bangalore'),
('C004', 'David Khan', 'Male', 'Hyderabad');

INSERT INTO Accounts VALUES
('A001', 'C001', 'Savings', 5000.00),
('A002', 'C001', 'Current', 12000.00),
('A003', 'C002', 'Savings', 15000.00),
('A004', 'C003', 'Savings', 8000.00),
('A005', 'C004', 'Current', 3000.00);

INSERT INTO Transactions VALUES
('T001', 'A001', '2023-01-01', 'Deposit', 2000.00),
('T002', 'A001', '2023-01-05', 'Withdraw', 1000.00),
('T003', 'A002', '2023-01-10', 'Deposit', 5000.00),
('T004', 'A003', '2023-02-01', 'Withdraw', 3000.00),
('T005', 'A004', '2023-02-10', 'Deposit', 4000.00),
('T006', 'A005', '2023-02-20', 'Withdraw', 1000.00),
('T007', 'A001', '2023-03-01', 'Deposit', 1500.00),
('T008', 'A002', '2023-03-05', 'Withdraw', 2000.00);
 
 -- (1)List all accounts with balance greater than 7000.

SELECT * FROM Accounts WHERE balance > "7000";


 -- (2)Show total deposite and total withdrawals per account.
SELECT  
    AccountID,
    SUM(CASE WHEN Type = 'Deposit' THEN Amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN Type = 'Withdraw' THEN Amount ELSE 0 END) AS TotalWithdrawals
FROM 
    Transactions
GROUP BY 
    AccountID;
 
 -- (3) Find the customer who has the highest total balance.

SELECT 
    C.CustomerID,
    C.CustomerName,
    SUM(A.Balance) AS TotalBalance
FROM 
    Customers C
JOIN 
    Accounts A ON C.CustomerID = A.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
ORDER BY 
    TotalBalance DESC
LIMIT 1;

 -- (4) Show average transaction amount per account type.
SELECT 
    A.AccountType,
    AVG(T.Amount) AS AverageTransactionAmount
FROM 
    Transactions T
JOIN 
    Accounts A ON T.AccountID = A.AccountID
GROUP BY 
    A.AccountType;
    
     -- (5)Find customers with more than one account.
SELECT 
    C.CustomerID,
    C.CustomerName,
    COUNT(A.AccountID) AS NumberOfAccounts
FROM 
    Customers C
JOIN 
    Accounts A ON C.CustomerID = A.CustomerID
GROUP BY 
    C.CustomerID, C.CustomerName
HAVING 
    COUNT(A.AccountID) > 1;
    
     -- (6) List all customers who have done withdrawals.
     SELECT DISTINCT 
    C.CustomerID,
    C.CustomerName,
    C.Gender,
    C.City
FROM 
    Transactions T
JOIN 
    Accounts A ON T.AccountID = A.AccountID
JOIN 
    Customers C ON A.CustomerID = C.CustomerID
WHERE 
    T.Type = 'Withdraw';


