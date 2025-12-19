CREATE DATABASE MySQL_Revegion;

USE MySQL_Revegion;

CREATE TABLE students (
id INT,
name VARCHAR(50)
);

CREATE TABLE classes (
id INT,
class VARCHAR(20)
);

INSERT INTO students VALUES
(1, "Gaurav"),
(2, "Raju"),
(3, "Sam");

SELECT * FROM students;

INSERT INTO classes VALUES
(1, "10th"),
(3, "12th"),
(4, "9th");

SELECT * FROM classes;


-- INNER JOIN  (only matching ids)
SELECT students.id, name, class
FROM students
INNER JOIN classes
ON students.id = classes.id; 