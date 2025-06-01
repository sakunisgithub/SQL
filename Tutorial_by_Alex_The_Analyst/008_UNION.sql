# UNION ----- joins rows
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION # actually it is UNION DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary;

# if we want to show all of the data without DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary;

# a usecase ---- we want to extract employees who are old or highly paid
SELECT first_name, last_name, 'Old' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000;