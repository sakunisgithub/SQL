-- Question 15 : Display count of patients from each condition type.

USE hospital;

SELECT patient_condition, COUNT(1) AS number_of_patients
FROM patients
GROUP BY patient_condition;