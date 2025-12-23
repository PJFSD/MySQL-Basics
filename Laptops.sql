CREATE DATABASE Laptops;

USE Laptops;

SELECT * FROM laptop;

-- 1.	Display all laptop models with their price and rating.
SELECT Model, Price, Rating FROM laptop;

-- 2.	Find all laptops running on Windows 11 OS.
SELECT * FROM laptop WHERE OS = '11 OS';
    
-- 3.	List laptops with a rating greater than 70.
SELECT * FROM laptop WHERE Rating > 70;    
    
-- 4.	Show laptops priced below ₹30,000.
SELECT Model, Price FROM laptop WHERE Price < 30000;

-- 5.	Count the total number of laptops in the dataset.
SELECT COUNT(*) AS Total_Number_Laptop FROM laptop;

-- 6.	List all distinct processor generations available.
SELECT DISTINCT Generation FROM laptop;

-- 7.	Find laptops that have 8 GB RAM.
SELECT * FROM laptop WHERE Ram = 8;

-- 8.	Display all laptops with Intel graphics.
SELECT * FROM laptop WHERE Graphics = "Intel";

-- 9.	Find laptops with 1 Year Warranty.
SELECT * FROM laptop WHERE Warranty = 1;

-- 10.	Sort laptops by price in ascending order.
SELECT * FROM laptop ORDER BY Price ASC;

-- 11.	Find the average price of all laptops.
SELECT AVG(Price) AS avg_price FROM laptop;

-- 12.	Find the maximum and minimum laptop price.
SELECT
 MAX(Price) AS max_price,
 MIN(Price) AS min_Price FROM laptop;

-- 13.	Count how many laptops belong to each OS.
SELECT
    OS,
    COUNT(*) AS total_laptops
FROM laptop
GROUP BY OS;

-- 	14.	Find the average rating per processor generation.
SELECT Generation, AVG(Rating) AS avg_rating FROM laptop GROUP BY Generation;

-- 15.	Count laptops grouped by RAM configuration.
SELECT Ram, COUNT(*) AS Ram_Configuration FROM laptop GROUP BY Ram;

-- 16.	Find the total number of laptops with SSD ≥ 512 GB.
SELECT COUNT(*) AS Total_Laptop FROM laptop WHERE SSD >= 512; 

-- 17.	Display the average price for each graphics type.
SELECT Graphics, AVG(Price) AS avg_price FROM laptop GROUP BY Graphics;

	-- 18.	Find the number of laptops for each warranty type.
SELECT Warranty, COUNT(*) AS total_laptops FROM laptop GROUP BY Warranty;

-- 19.	Show processor generations having more than 2 laptops.
SELECT Generation, COUNT(*) AS total_laptops FROM laptop GROUP BY Generation HAVING COUNT(*) > 2;

-- 20.	Find the highest-rated laptop.
SELECT Model, Rating
FROM laptop
ORDER BY Rating DESC
LIMIT 1;

--  21.	Find laptops whose model name contains “Gaming”.
SELECT *
FROM laptop WHERE Model LIKE '%Gaming%';

-- 	22.	Display laptops with AMD Ryzen processors.
SELECT *
FROM laptop WHERE Core LIKE '%Ryzen%' OR Generation LIKE '%Ryzen%';

--  23.	Find laptops that have NVIDIA graphics.
SELECT * FROM laptop WHERE Graphics LIKE '%NVIDIA%';

-- 	24.	List laptops with Touch Screen display.
SELECT * FROM laptop WHERE Display LIKE '%Touch%';

-- 	25.	Find laptops with rating between 60 and 80.
SELECT * FROM laptop WHERE Rating BETWEEN 60 AND 80;

-- 	26.	Display laptops priced between ₹40,000 and ₹70,000. (ChatGPT)
SELECT *
FROM laptop
WHERE CAST(
        REPLACE(REPLACE(Price, '₹', ''), ',', '') AS UNSIGNED
      )
BETWEEN 40000 AND 70000;

-- 	27.	Find laptops with Quad Core or higher processors.
SELECT *
FROM laptop WHERE Core LIKE '%Quad%' OR Core LIKE '%Hexa%' OR Core LIKE '%Octa%';

-- 	28.	Show laptops where RAM is greater than 8 GB.
SELECT * FROM laptop WHERE CAST(RAM AS UNSIGNED) > 8;

-- 	29.	Find laptops having RTX series graphics.
SELECT * FROM laptop WHERE Graphics LIKE '%RTX%';

-- 	30.	Display laptops whose display size is 15.6 inches.
SELECT * FROM laptop WHERE Display LIKE '%15.6%';
