-- Question 18: Which ward has treated the most number of patients who went in good condition?

USE hospital;

SELECT ward_no, COUNT(patient_id) AS number_of_patients
FROM patients
WHERE patient_condition = 'good'
GROUP BY ward_no
ORDER BY number_of_patients
LIMIT 1;