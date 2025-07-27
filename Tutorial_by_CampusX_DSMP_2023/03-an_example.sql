-- Question : Find all the students who have marks higher than the average marks of their respective branch.

USE campusx;

SELECT *
FROM (SELECT *,
		AVG(marks) OVER(PARTITION BY branch) AS branch_avg
	FROM marks) AS a
WHERE a.marks > a.branch_avg;