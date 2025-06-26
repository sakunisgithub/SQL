-- Question 06 : At what time is Dr.Rutuja available on Wednesday?

USE hospital;

SELECT time_of_doctor
FROM timetable
WHERE `weekday` = 'Wednesday' AND doctor_name = 'Dr.Rutuja';