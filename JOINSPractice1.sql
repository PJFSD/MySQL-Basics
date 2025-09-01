CREATE DATABASE JOINSPractice1;

USE JOINSPractice1;

CREATE TABLE Producer (
producerID VARCHAR(50),
producerName VARCHAR(50),
region VARCHAR(100)
);

CREATE TABLE Director (
directorID VARCHAR(50),
directorName VARCHAR(100),
category VARCHAR(50)
);

CREATE TABLE Films (
filmID VARCHAR(10),
filmName VARCHAR(50),
releseDate DATE,
rating DECIMAL(10,9)
);

INSERT INTO Producer(producerID, producerName, region) VALUES("P001", "karan johar", "india");

INSERT INTO Producer(producerID, producerName, region) VALUES("P002", "steven cameron", "USA");

INSERT INTO Producer(producerID, producerName, region) VALUES("P003", "Charistopher Nolan", "UK");

 -- Director
 
 INSERT INTO Director(directorID, directorName, category) VALUES("D001", "rajkumar hirani", "comedy");
 
 INSERT INTO Director(directorID, directorName, category) VALUES("D002", "james cameron", "sci-fi");
 
 INSERT INTO Director(directorID, directorName, category) VALUES("D003", "sanjay leela bhansali", "drama");
 
  -- Films
  
  INSERT INTO Films(filmID, filmName, releseDate, rating) VALUES("F001", "3idiots", "2009-12-25", 8.5);
  
  INSERT INTO Films(filmID, filmName, releseDate, rating) VALUES("F002", "avtar", "2009-12-18", 9.1);
  
  INSERT INTO Films(filmID, filmName, releseDate, rating) VALUES("F003", "inception", "2010-07-16", 8.8);
 

