SELECT Department, Employee, salary
FROM(
    SELECT Department.name AS Department, 
            Employee.name AS Employee, 
            salary,
            DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS ranks
    FROM Employee
    INNER JOIN Department
        ON Department.id = Employee.departmentId) AS t1
WHERE t1.ranks <= 3;