-- Question 21: Display number of patients treated by doctors having more than 3 years of experience in each ward.

USE hospital;

SELECT ward_no, COUNT(patient_id) AS number_of_patients
FROM patients
WHERE doctor_name = ANY (SELECT doctor_name FROM doctors WHERE experience > 3)
GROUP BY ward_no
ORDER BY ward_no;