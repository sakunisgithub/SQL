-- Question : Print the topper, his branch and his marks for each of the branches.

USE campusx;

SELECT DISTINCT *
FROM (
	SELECT 
		FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC) AS topper,
		FIRST_VALUE(branch) OVER(PARTITION BY branch ORDER BY marks DESC) AS from_branch,
		FIRST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC) AS highest_marks
	FROM marks) AS a;