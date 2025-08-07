-- Question 19: Give the doctor specialities available at 10am. 

USE hospital;

SELECT specialty
FROM doctors
WHERE doctor_name = ANY(SELECT doctor_name FROM timetable WHERE time_of_doctor = '10am');