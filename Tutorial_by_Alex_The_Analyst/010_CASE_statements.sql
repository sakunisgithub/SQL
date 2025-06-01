SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 60 THEN 'Mid'
    WHEN age >= 61 THEN 'Old'
END AS age_category
FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.parks_departments;

SELECT first_name, last_name, salary,
CASE
	WHEN salary <= 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN (salary * 0.1)
END AS bonus
FROM parks_and_recreation.employee_salary;
    