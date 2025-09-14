CREATE DATABASE Showroom;

USE Showroom;

CREATE TABLE CarShowroom (
CarID INT PRIMARY KEY,
CarName VARCHAR(50),
Brand VARCHAR(30),
ModelYear INT,
Price DECIMAL(10,2),
Color VARCHAR(20),
FuelType VARCHAR(15),
Quantity INT,
ShowroomLocation VARCHAR(50)
);

INSERT INTO CarShowroom (CarID, CarName, Brand, ModelYear, Price, Color, FuelType, Quantity, ShowroomLocation)
VALUES 
(1, "Swift", "Maruti", 2022, 600000, "Red", "Petrol", 5, "Delhi"),
(2, "Baleno", "Maruti", 2023, 800000, "Blue", "Diesel", 3, "Delhi"),
(3, "Creta", "Hyundai", 2023, 1500000, "White", "Petrol", 4, "Mumbai"),
(4, "Venue", "Hyundai", 2022, 1200000, "Black", "Petrol", 2, "Mumbai"),
(5, "Fortuner", "Toyota", 2023, 3500000, "Black", "Diesel", 2, "Banglore"),
(6, "Innova", "Toyota", 2021, 2000000, "silver", "Diesel", 4, "Banglore"),
(7, "City", "Honda", 2023, 1300000, "White", "Petrol", 6, "Chennai"),
(8, "Amaze", "Honda", 2022, 900000, "Grey", "Diesel", 3, "Chennai"),
(9, "XUV700", "Mahindra", 2023, 2200000, "Blue", "Diesel", 5, "Pune"),
(10, "Thar", "Mahindra", 2022, 1800000, "Red", "Petrol", 2, "Pune"),
(11, "Altroz", "Tata", 2023, 850000, "Yellow", "Petrol", 4, "Delhi"),
(12, "Nexon", "Tata", 2022, 1200000, "White", "diesel", 3, "Delhi"),
(13, "i20", "Hyundai", 2023, 950000, "Blue", "Petrol", 6, "Mumbai"),
(14, "Harrier", "Tata", 2023, 2200000, "Black", "Diesel", 2, "Banglore"),
(15, "Kushaq", "Skoda", 2022, 1500000, "Silver", "Petrol", 3, "Chennai");

select * From CarShowroom;

 -- (1) Show all cars available in the Delhi showroom.
select * From CarShowroom where ShowroomLocation = 'Delhi';

-- (2) Find the most expensive car in the showroom.
select * From CarShowroom order by Price DESC;

-- (3) List all cars whose price is greater than 15 lakhs.
Select * From CarShowroom where price > 1500000;

 -- (4) Count how many cars are available per brand.
select Brand, COUNT(*) AS Brand_count From CarShowroom group By Brand;

 -- (5) Find the average price of Hyundai cars.
 Select AVG(price) as AvgHyundaiPrice From CarShowroom where Brand = 'Hyundai';
 select AVG(price) as AvgTataPrice From Carshowroom where Brand = 'Tata';
 
  -- (6) Show all Petrol cars with price less than 10 lakhs.
  Select * From CarShowroom where FuelType = 'Petrol' And Price < 1000000;
  
  -- (7) Find the total quantity of cars available in Mumbai.
  Select * From CarShowroom Where ShowroomLocation = 'Mumbai';
  
   -- (8) List all cars from 2023 model year.
   Select * From CarShowroom where ModelYear = '2023';
  
 -- (9) Show cars where color is Black and FuelType is Diesel.
 Select * From CarShowroom Where Color = 'Black' And FuelType = 'Diesel';
 
-- (10) Find the cheapest car in Bangalore showroom.
Select * From CarShowroom Where ShowroomLocation = 'Banglore' order by Price ASC LIMIT 1;

 -- (11) Count the number of distinct brands available.
 Select DISTINCT Brand From CarShowroom;
 
-- (12) Find cars whose name starts with 'C'.
  Select * From CarShowroom where CarName Like 'C%';
  
-- (13) Show the top 3 costliest cars in the database.
   Select * From CarShowroom order by Price Desc LIMIT 3;
   
-- (14) Find the total stock value (Price × Quantity) of each showroom.
    Select ShowroomLocation,
    SUM(Price * Quantity) As TotalStockValue
    From CarShowroom
    group by ShowroomLocation;
    
-- (15) List cars brand-wise sorted by price (descending order).
SElECT Brand, CarName, Price, ShowroomLocation
From CarShowroom
order by Brand, Price DESC;