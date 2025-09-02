CREATE DATABASE JOINSPractice2;

USE JOINSPractice2;

CREATE TABLE hotels (
hotelNo INT,
hotelName VARCHAR(100),
location VARCHAR(50)
);

CREATE TABLE customer (
customerID INT,
customerName VARCHAR(100),
region VARCHAR(50)
);

CREATE TABLE manager (
managerID INT,
managerName VARCHAR(100),
joining DATE,
salary INT
);

 -- HOLETS
 
 INSERT INTO hotels(hotelNo, hotelName, location) VALUES(1, "Taj Palace", "Delhi");
 
 INSERT INTO hotels(hotelNo, hotelName, location) VALUES(2, "The Oberoi", "Mumbai");
 
 INSERT INTO hotels(hotelNo, hotelName, location) VALUES(3, "Leela Palace", "Bangalore");
 
  -- CUSTOMER
  
  INSERT INTO customer(customerID, customerName, region) VALUES(101, "Ravi Kumar", "Nprth");
  
  INSERT INTO customer(customerID, customerName, region) VALUES(102, "Asha Mehta", "West");
  
  INSERT INTO customer(customerID, customerName, region) VALUES(103, "Rahul Sen", "South");
  
   -- MANAGER
   
   INSERT INTO manager(managerID, managerName, joining, salary) VALUES(201, "Anil Kapoor", "2020-01-15", 75000);
   
   INSERT INTO manager(managerID, managerName, joining, salary) VALUES(202, "Suamn Rao", "2021-06-01", 820000);
   
   INSERT INTO manager(managerID, managerName, joining, salary) VALUES(203, "Vikram Das", "2019-11-10", 90000);
   
   
   ALTER TABLE manager ADD hotelNo INT; 
   
   UPDATE manager SET hotelNo = 1 WHERE managerID = 201;
   
   UPDATE manager SET hotelNo = 2 WHERE managerID = 202;
   
   UPDATE manager SET hotelNo = 3 WHERE managerID = 203;
   
   
    -- INNER JOIN
    
   SELECT hotels.hotelName, hotels.location,
   manager.managerName, manager.salary
   FROM
   hotels
   INNER JOIN
   manager ON hotels.hotelNo = manager.hotelNo;
   
   
    -- LEFT JOIN 
    
    SELECT 
     hotels.hotelName, hotels.location,
     manager.managerName,
     manager.salary
    FROM
     hotels
	LEFT JOIN
     manager ON hotels.hotelNo = manager.hotelNo;
    
     -- RIGHT JOIN 
     
     SELECT
      hotels.hotelName, hotels.location,
      manager.managerName, 
      manager.salary
	 FROM
      hotels
	 RIGHT JOIN 
      manager ON hotels.hotelNo = manager.hotelNo; 
      
       -- CROSS JOIN
       
       SELECT
        hotels.hotelName, manager.managerName
        FROM
         hotels
        CROSS JOIN 
         manager;
         
          -- FULL OUTER JOIN
          
          SELECT
		   hotels.hotelName, hotels.location,
           manager.managerName, manager.salary
		  FROM
           hotels
		  LEFT JOIN
           manager ON hotels.hotelNo = manager.hotelNo
           
           UNION
           
           SELECT
            hotels.hotelName, hotels.location,
            manager.managerName, manager.salary
		   FROM
            hotels
		   RIGHT JOIN
            manager ON hotels.hotelNo = manager.hotelNo;
      
   
   