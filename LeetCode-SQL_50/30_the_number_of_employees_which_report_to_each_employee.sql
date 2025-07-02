WITH manager_report AS
(
    SELECT reports_to AS employee_id,
            COUNT(employee_id) AS reports_count,
            ROUND(AVG(age), 0) AS average_age
    FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
)
SELECT a.employee_id, b.name, a.reports_count, a.average_age
FROM Employees AS b
INNER JOIN manager_report AS a
    ON a.employee_id = b.employee_id
ORDER BY a.employee_id;