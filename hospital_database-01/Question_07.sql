-- Question 07 : Obtain the count of patients with good condition treated by each doctor.

USE hospital;

SELECT doctor_name, COUNT(patient_id) AS patient_count
FROM patients
WHERE patient_condition = 'Good'
GROUP BY doctor_name;