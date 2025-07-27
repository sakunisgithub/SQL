-- Question : Print the name of the least performing student, his branch and his marks for each of the branches.

USE campusx;

-- approach 1 (tedious, repitition, not managable query)

SELECT DISTINCT *
FROM (
	SELECT 
		LAST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS worst_student,
		LAST_VALUE(branch) OVER(PARTITION BY branch ORDER BY marks DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS from_branch,
		LAST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS lowest_marks
	FROM marks) AS a;


-- apporach 2 (efficient)

SELECT DISTINCT *
FROM (
	SELECT
		LAST_VALUE(name) OVER w AS worst_student,
		LAST_VALUE(branch) OVER w AS from_branch,
		LAST_VALUE(marks) OVER w AS lowest_marks
	FROM marks
    WINDOW w AS(PARTITION BY branch ORDER BY marks DESC 
				ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)) AS a;
