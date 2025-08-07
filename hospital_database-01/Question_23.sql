-- Question 23: How many doctors are available at each time of the day?

USE hospital;

SELECT time_of_doctor, COUNT(1) AS number_of_doctors
FROM timetable
GROUP BY time_of_doctor;