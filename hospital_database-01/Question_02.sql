-- Question 02 : Display number of patients treated by the same doctor and in the same ward.

USE hospital;

SELECT doctor_name, ward_no, COUNT(patient_id) AS number_of_patients
FROM patients
GROUP BY doctor_name, ward_no;