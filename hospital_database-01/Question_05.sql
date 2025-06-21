-- Question 05 : How many nurses were present on Wednesday with Dr.Rutuja?

USE hospital;

SELECT nurses
FROM ward
WHERE ward_no = ALL (SELECT ward_no
						FROM timetable
						WHERE weekday = 'Wednesday' AND doctor_name = 'Dr.Rutuja');