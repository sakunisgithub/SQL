# String Functions

# LENGTH
SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2;

# UPPER
SELECT UPPER('Ananda');

# LOWER
SELECT LOWER('Shweta');

# TRIM ----- gets rid of the leading and trailing whitespaces
SELECT TRIM('            kuttus                 ');

# LTRIM ----- left trim, only gets rid of the left hand side whitespaces
SELECT LTRIM('                 kuttus             ');

# RTRIM ----- right trim
SELECT RTRIM('                 kuttus             ');

# Substring

SELECT first_name, LEFT(first_name, 4) # we want to select 4 characters from left
FROM parks_and_recreation.employee_demographics;

SELECT first_name, RIGHT(first_name, 4)
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
LEFT(birth_date, 4) AS birth_year,
SUBSTRING(birth_date, 6, 2) AS birth_month, # select 2 characters from 6th position onwards
RIGHT(birth_date, 2) AS birth_date
FROM parks_and_recreation.employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM parks_and_recreation.employee_demographics;


SELECT LOCATE('n', 'Ananda');

SELECT first_name, LOCATE('An', first_name)
FROM parks_and_recreation.employee_demographics;


SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS employee_name
FROM parks_and_recreation.employee_demographics;