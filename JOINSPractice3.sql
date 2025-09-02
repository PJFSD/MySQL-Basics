CREATE DATABASE Univercity;

USE Univercity;

CREATE TABLE college(
collegeID int,
collegeName VARCHAR(100),
location VARCHAR(100)
);

CREATE TABLE teachers(
teacherID int,
teacherName VARCHAR(100),
salary int
);

CREATE TABLE students(
studentID int,
studentName VARCHAR(100),
courseName VARCHAR(100)
);

INSERT INTO college(collegeID, collegeName, location) VALUES(1, "Sunrice College", "Mumbai");


INSERT INTO college(collegeID, collegeName, location) VALUES(2, "Greenfield Institute", "Pune");


INSERT INTO college(collegeID, collegeName, location) VALUES(3, "Skyline University", "Delhi");

 -- TEACHERS (2)
 
 INSERT INTO teachers(teacherID, teacherName, Salary) VALUES(101, "Anjali Sharma", 50000);
 
 
 INSERT INTO teachers(teacherID, teacherName, Salary) VALUES(102, "Ravi Patel", 55000);
 
 
 INSERT INTO teachers(teacherID, teacherName, Salary) VALUES(103, "Neha Singh", 52000);
 
  -- STUDENTS (3)
  
  INSERT INTO students(studentID, studentName, courseName) VALUES(201, "Aman Verma", "B.Sc");
  
  
  INSERT INTO students(studentID, studentName, courseName) VALUES(202, "Priya Mehta", "B.Com");
  
  
  INSERT INTO students(studentID, studentName, courseName) VALUES(203, "Rahul Das", "B.Tech");
  
  ALTER TABLE teachers ADD collegeID INT;
  
  ALTER TABLE students ADD collegeID INT;
  
  
  UPDATE teachers SET collegeID = 1 WHERE teacherID = 101;
  
  UPDATE teachers SET collegeID = 2 WHERE teacherID = 102;
  
  UPDATE teachers SET collegeID = 3 WHERE teacherID = 103;
  
  
  UPDATE students SET collegeID = 1 WHERE studentID = 201;
  
  UPDATE students SET collegeID = 2 WHERE studentID = 202;
  
  UPDATE students SET collegeID = 3 WHERE studentID = 203;
  
   -- INNER JOIN 
   SELECT teachers.teacherName, college.collegeName,
   college.location 
   FROM teachers
   INNER JOIN college ON teachers.collegeID = college.collegeID;