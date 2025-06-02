SELECT roll_number, name
FROM student_information AS a
JOIN faculty_information AS b
	ON a.advisor = b.employee_ID
WHERE (b.gender = 'M' and b.salary > 15000) OR
	  (b.gender = 'F' and b.salary > 20000);