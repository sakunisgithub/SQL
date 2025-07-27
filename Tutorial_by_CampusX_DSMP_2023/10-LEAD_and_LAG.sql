USE campusx;

-- LAG()

SELECT *,
	LAG(marks) OVER(ORDER BY student_id) AS marks_of_previous_student
FROM marks;

-- LEAD()

SELECT *,
	LEAD(marks) OVER(ORDER BY student_id) AS marks_of_next_student
FROM marks;