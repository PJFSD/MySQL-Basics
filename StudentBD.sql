CREATE DATABASE StudentBD;

USE StudentBD;

CREATE TABLE Student(
StudentID INT PRIMARY KEY,
FIRSTName VARCHAR(50),
LASTName VARCHAR(50),
Age INT,
Email VARCHAR(100)
);

INSERT INTO Student(StudentID, FIRSTName, LASTName, Age, Email) VALUES(1, 'Rahul', 'Sharma', 20, 'rahul.sharma@example.com');

INSERT INTO Student(StudentID, FIRSTName, LASTName, Age, Email) VALUES(2, 'priya', 'kumar', 22, 'priya.kumar@example.com');

INSERT INTO Student(StudentID, FIRSTName, LASTName, Age, Email) VALUES(3, 'rinku', 'singh', 24, 'rinku.singh@exmaple.com');

INSERT INTO Student(StudentID, FIRSTName, LASTName, Age, Email) VALUES(4, 'pradeep', 'narwal', 26, 'pradeep.narwal@example.com');

INSERT INTO Student(StudentID, FIRSTName, LASTName, Age, Email) VALUES(5, 'hardik', 'pandya', 28, 'hardik.pandya@example.com');

select * from student;
-- Find Order
select * from student where age > 20; 

 
select * from student where FirstName = 'priya';


 -- Update 
update student set email = 'new.email@example.com' where studentID = '2';


update student set age = '34' where studentID = '5';


 -- Delete
delete from student where studentID = '1';


 -- Count
 select count(*) as totalstudent from student;
 
 
 select count(*) as totalEmailID from student;


 -- order by
 select * from student order by age asc;
 
 
 select * from student order by age desc;
 
  -- Find 
  select * from student where email like '%@example.com';
  
  select * from student where age like  '28';
  
  
 
