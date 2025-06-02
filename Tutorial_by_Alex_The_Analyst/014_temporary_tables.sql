# Temporary Tables

# creating temporary table - method 1
CREATE TEMPORARY TABLE temp_table1
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);

SELECT * FROM temp_table1;

INSERT INTO temp_table1
VALUES('Ananda', 'Biswas', 'M. S. Dhoni : The Untold Story');

SELECT * FROM temp_table1;

# creating temporary table - method 2

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT * FROM salary_over_50k;