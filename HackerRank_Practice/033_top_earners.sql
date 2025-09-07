SELECT months * salary, COUNT(*)
FROM Employee
WHERE months * salary = (SELECT MAX(months * salary) FROM Employee)
GROUP BY months * salary;