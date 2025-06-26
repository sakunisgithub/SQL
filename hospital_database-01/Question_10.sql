-- Question 10 : Display total experience of doctors with specialty as ‘Cardiologist’.

USE hospital;

SELECT specialty, SUM(experience) AS total_experience
FROM doctors
GROUP BY specialty
HAVING specialty = 'Cardiologist';