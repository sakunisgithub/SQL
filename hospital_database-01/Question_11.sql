-- Question 11 : Display doctor names and their corresponding floors.

USE hospital;

SELECT doctor_name, `floor`
FROM timetable
INNER JOIN ward
	ON timetable.ward_no = ward.ward_no
ORDER BY `floor`;