CREATE DATABASE Sample_Practice1;

USE Sample_Practice1;

CREATE TABLE Bank_Details (
SchemeID INT,
LowerLimit INT,
UpperLimit INT,
InterestRate DECIMAL(5,2),
CreatedDate DATE,
CreatedBy INT,
ModifiedDate DATE,
ModifiedBy INT
);
 
INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (1, 0, 2000, 5.40, '2005-01-01', 4, '2006-02-05', 2);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (1, 4000, 6000, 5.60, '2005-01-01', 4, '2006-02-05', 2);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (1, 6000, 15000, 5.80, '2005-01-01', 4, '2006-02-05', 2);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (1, 15000, 100000, 6.10, '2005-01-01', 4, '2006-02-05', 2);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (2, 0, 1000, 2.40, '2007-09-03', 5, '2008-10-07', 1);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (2, 1000, 3000, 2.60, '2007-09-03', 5, '2008-10-07', 1);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (2, 3000, 10000, 2.80, '2007-09-03', 5, '2008-10-07', 1);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (2, 10000, 100000, 3.10, '2007-09-03', 5, '2008-10-07', 1);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (3, 0, 1000, 3.92, '2006-04-06', 6, '2007-05-11', 3);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (3, 10000, 20000, 3.85, '2006-04-06', 6, '2007-05-11', 3);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (3, 20000, 50000, 3.79, '2006-04-06', 6, '2007-05-11', 3);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (3, 50000, 100000, 3.74, '2006-04-06', 6, '2007-05-11', 3);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (4, 0, 7000, 4.07, '2006-08-13', 2, '2007-09-17', 4);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (4, 7000, 15000, 4.00, '2006-08-13', 2, '2007-09-17', 4);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (4, 15000, 40000, 3.94, '2006-08-13', 2, '2007-09-17', 4);

INSERT INTO Bank_Details (SchemeID, LowerLimit, UpperLimit, InterestRate, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy)
VALUES (4, 40000, 80000, 3.89, '2006-08-13', 2, '2007-09-17', 4);

SELECT * FROM Bank_Details;

 -- (1) Find the highest and lowest interest rates available across all schemes.
SELECT MAX(InterestRate) AS HighestRate,
MIN(InterestRate) AS LowestRate 
FROM Bank_Details;

 -- (2) List all schemes with an interest rate greater than 5%.
SELECT * FROM Bank_Details WHERE InterestRate > "5%";

 -- (3) Find the average interest rate for each Scheme ID.
SELECT
 SchemeID,
 AVG(InterestRate)  AS AvgRate
FROM Bank_Details
GROUP BY SchemeID;

-- (4) Show all records created by user ID 5.
SELECT * FROM Bank_Details WHERE CreatedBy = '5';

 -- (5) Count how many records were modified after 01-Jan-2007.
SELECT COUNT(*) AS ModifiedCount
FROM Bank_Details
WHERE ModifiedDate > "2007-01-01";

 -- (6) List all schemes where the range (UpperLimit – LowerLimit) is more than 50,000.
SELECT SchemeID, LowerLimit, UpperLimit,
(UpperLimit - LowerLimit)
FROM Bank_Details
WHERE (UpperLimit - LowerLimit) > "50000";

 -- (7) Identify which user (CreatedBy) has created the maximum number of records.
 SELECT 
    CreatedBy, 
    COUNT(*) AS RecordCount
FROM Bank_Details
GROUP BY CreatedBy
ORDER BY RecordCount DESC
LIMIT 1;

-- (8) Find all schemes where the interest rate decreased after modification.


-- (9) Calculate the average interest rate for all schemes with LowerLimit greater than 10,000.
SELECT 
    AVG(InterestRate) AS AvgInterestRate
FROM Bank_Details
WHERE LowerLimit > 10000;

-- (10)  Show the Scheme IDs which were modified by more than one unique user.
SELECT 
    SchemeID,
    COUNT(DISTINCT ModifiedBy) AS UniqueUsers
FROM Bank_Details
GROUP BY SchemeID
HAVING COUNT(DISTINCT ModifiedBy) > 1;

   








