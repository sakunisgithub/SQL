WITH managers AS
(   
    SELECT id, name, salary
    FROM Employee
    WHERE id = ANY(SELECT managerId FROM Employee)
),
employee_with_manager_salary AS
(
    SELECT Employee.*, managers.salary AS manager_salary
    FROM Employee
    LEFT OUTER JOIN managers
        ON managers.id = Employee.managerId
)
SELECT name AS Employee
FROM employee_with_manager_salary
WHERE salary > manager_salary;