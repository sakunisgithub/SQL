USE campusx;

SELECT *, AVG(marks) OVER(PARTITION BY branch) AS avg_branch_marks FROM marks;

SELECT *, 
	MIN(marks) OVER() AS min_marks, # overall min marks
    MAX(marks) OVER() AS max_marks # overall max marks
FROM marks
ORDER BY student_id; # to preserve original order of the data

-- the ordering does NOT happen because of window functions, it is done by the database engine

SELECT *, 
	MIN(marks) OVER(PARTITION BY branch) AS min_marks_in_branch,
    MAX(marks) OVER(PARTITION BY branch) AS max_marks_in_branch
FROM marks
ORDER BY student_id;