-- Question 25: Which doctor can see a patient if Dr.Simran is not available?

USE hospital;

SELECT doctor_name
FROM timetable
WHERE `weekday` = ANY (SELECT `weekday` FROM timetable WHERE doctor_name = 'Dr.Simran')
	AND doctor_name != 'Dr.Simran';