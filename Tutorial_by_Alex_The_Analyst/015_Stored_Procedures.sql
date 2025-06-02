# Stored Procedures

CREATE PROCEDURE high_salaries()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

CALL high_salaries();


DELIMITER $$
CREATE PROCEDURE high_salaries2()
BEGIN
	SELECT *
    FROM parks_and_recreation.employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM parks_and_recreation.employee_salary
    WHERE salary >= 10000;
END $$
DELIMITER ;


CALL high_salaries2();


CREATE PROCEDURE new_procedure(employee_id_param INT)
SELECT salary
FROM parks_and_recreation.employee_salary
WHERE employee_id = employee_id_param;

CALL new_procedure(1);