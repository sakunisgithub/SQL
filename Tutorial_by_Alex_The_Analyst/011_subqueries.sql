# Subqueries

SELECT * FROM parks_and_recreation.employee_demographics
WHERE employee_id IN
	(SELECT employee_id # here we must have only 1 column
		FROM parks_and_recreation.employee_salary
        WHERE dept_id = 1);
        
# subqueiry in a SELECT statement
SELECT first_name, salary,
(SELECT AVG(salary) FROM parks_and_recreation.employee_salary) AS average_salary
FROM parks_and_recreation.employee_salary;