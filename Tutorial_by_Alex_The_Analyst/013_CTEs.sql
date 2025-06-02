# Common Table Expressions(CTEs)

WITH CTE_example AS
(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT * FROM CTE_example; # you can only use CTE immediately after it is created


WITH CTE_example (Gender, Avg_salary, Max_salary, Min_salary) AS
(
SELECT gender, AVG(salary), MAX(salary), MIN(salary)
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT * FROM CTE_example;


WITH CTE_example1 AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_example2 AS
(SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example1
JOIN CTE_example2
	ON CTE_example1.employee_id = CTE_example2.employee_id;