CREATE DATABASE MySQL_joins;

USE MySQL_joins;




CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    course_id INT
);

CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Anil', 101),
(2, 'Bina', 102),
(3, 'Chetan', 103),
(4, 'Deepa', NULL),
(5, 'Esha', 105);

INSERT INTO courses VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'English'),
(104, 'History');

#INNER JOIN
SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;

#LEFT JOIN
SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.course_id = c.course_id;

#RIGHT JOIN
SELECT s.name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.course_id = c.course_id;

#FULL OUTER JOIN
SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.course_id

#CROSS JOIN
SELECT s.name, c.course_name
FROM students s
CROSS JOIN courses c;
  