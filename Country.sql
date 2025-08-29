CREATE DATABASE Country;

USE Country;

CREATE TABLE India(
    state_name VARCHAR(100),
    capital VARCHAR(100),
    population BIGINT,
    area_sq_km DECIMAL(10,2)
);

INSERT INTO India(state_name, capital, population, area_sq_km) VALUES('Maharashtra' , 'Mumbai', 124904071, 307713.00);

INSERT INTO India(state_name, capital, population, area_sq_km) VALUES('Uttar Pradesh', 'Lucknow', 231502578, 243286.00);

INSERT INTO India(state_name, capital, population, area_sq_km) VALUES('Karnataka', 'Bengaluru', 69595888, 191791.00);

INSERT INTO India(state_name, capital, population, area_sq_km) VALUES('Tamil Nadu', 'Chennai', 77841267, 130058.00);

SELECT * FROM India;

SELECT * FROM India ORDER BY population desc;

SELECT * FROM India ORDER BY area_sq_km asc;

