WITH per_manager_report_count AS
(
    SELECT managerId, COUNT(1) AS report_count
    FROM employee
    GROUP BY managerId
    HAVING report_count >= 5
)
SELECT emp.name
FROM per_manager_report_count AS man
INNER JOIN employee AS emp
    ON man.managerId = emp.id;