# Triggers

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON parks_and_recreation.employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO parks_and_recreation.employee_demographics(employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name,  NEW.last_name);
END $$
DELIMITER ;


INSERT INTO parks_and_recreation.employee_salary
VALUES(13, 'Ananda', 'Biswas', 'Statistician', 500000, NULL);

SELECT * FROM parks_and_recreation.employee_salary;

SELECT * FROM parks_and_recreation.employee_demographics;



# Events

SELECT * FROM parks_and_recreation.employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
	DELETE
    FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SELECT * FROM parks_and_recreation.employee_demographics;