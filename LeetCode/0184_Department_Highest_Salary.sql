WITH max_salaries AS
(
    SELECT *,
        MAX(salary) OVER(PARTITION BY departmentId) AS max_salary_in_dept
    FROM Employee
)
SELECT Department.name AS Department,
       t.name AS Employee,
       t.salary AS Salary
FROM (SELECT * FROM max_salaries WHERE salary = max_salary_in_dept) AS t
INNER JOIN Department
    ON Department.id = t.departmentId;