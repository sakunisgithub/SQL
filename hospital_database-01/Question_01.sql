-- Question 01 : Display patient names recommending Dr.Simran.

USE hospital;

SELECT patient_name
FROM patients
WHERE doctor_name = 'Dr.Simran';