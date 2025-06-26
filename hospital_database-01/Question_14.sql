-- Question 14 : Display count of patients treated on each day. 

USE hospital;

SELECT treatment_date, COUNT(1) AS number_of_patients
FROM patients
GROUP BY treatment_date;