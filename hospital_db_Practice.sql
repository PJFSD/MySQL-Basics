CREATE DATABASE hospital_db_Practice;

USE hospital_db_Practice;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(100)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    experience INT,
    city VARCHAR(100)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    fees INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO patients (name, age, gender, city) VALUES
('Amit', 25, 'Male', 'Mumbai'),
('Priya', 30, 'Female', 'Pune'),
('Ravi', 40, 'Male', 'Delhi'),
('Neha', 35, 'Female', 'Mumbai'),
('Karan', 28, 'Male', 'Bangalore');

SELECT * FROM patients;

INSERT INTO doctors (name, specialization, experience, city) VALUES
('Dr. Sharma', 'Cardiologist', 10, 'Mumbai'),
('Dr. Mehta', 'Dermatologist', 8, 'Pune'),
('Dr. Singh', 'Neurologist', 15, 'Delhi'),
('Dr. Rao', 'Orthopedic', 12, 'Bangalore'),
('Dr. Gupta', 'Dentist', 5, 'Mumbai');

SELECT * FROM doctors;

INSERT INTO appointments (patient_id, doctor_id, appointment_date, fees) VALUES
(1, 1, '2025-01-10', 800),
(2, 2, '2025-01-12', 500),
(3, 3, '2025-01-15', 1200),
(4, 1, '2025-01-18', 900),
(5, 4, '2025-01-19', 700);

SELECT * FROM appointments;

-- 1) Show name and age of patients.
SELECT name, age FROM patients; 

-- 2) Show doctors who have more than 10 years experience.
SELECT * FROM doctors WHERE experience > 10;

-- 3)  Show patients from Mumbai.
SELECT * FROM patients WHERE city = 'Mumbai';

-- 4) Show doctors from Delhi.
SELECT * FROM doctors WHERE city = 'Delhi';

-- 5) Show appointments with fees > 800.
SELECT * FROM appointments WHERE fees > 800;

-- 6) Show male patients only.
SELECT * FROM patients WHERE gender = 'Male';

-- 7) Show doctors whose specialization is “Cardiologist”
SELECT * FROM doctors WHERE specialization = 'Cardiologist';

-- 8) Show patients ordered by age (descending).
SELECT age, name FROM patients ORDER BY age DESC;
 
-- 9) Show doctors ordered by experience (ascending).
SELECT experience, name FROM doctors ORDER BY experience ASC;

-- 10) Count total number of patients.
SELECT COUNT(*) AS total_patients FROM patients;

-- 11) Count doctors in Mumbai.
SELECT COUNT(*) AS total_doctors FROM doctors WHERE city = 'Mumbai'; 

-- 12) Find average fees of appointments.
SELECT AVG(fees) AS AVG_fees FROM appointments;

-- 13) Find maximum age of patients.
SELECT MAX(age) AS MAX_age FROM patients;

-- 14) Find minimum experience among doctors.
SELECT MIN(experience) AS MIN_experience FROM doctors;

-- 15)  Show number of patients by city.
SELECT city, COUNT(*) AS total_patients FROM patients GROUP BY city;

-- 16) Show number of doctors by specialization.
SELECT specialization, COUNT(*) AS total_doctors FROM doctors GROUP BY specialization;

-- 17) Show total fees collected by each doctor.
 SELECT doctor_id, SUM(fees) AS total_fees
FROM appointments
GROUP BY doctor_id;

-- 18) Show average age of patients in each city.
SELECT city, AVG(age) AS AVG_age FROM patients GROUP BY city;