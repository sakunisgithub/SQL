-- Question 24: Display Doctor_ID and names treating patients having 's' as their initial.

USE hospital;

SELECT doctors.doctor_id, a.doctor_name, a.patient_name
FROM (SELECT * FROM patients WHERE patient_name LIKE 's%') AS a
INNER JOIN doctors
	ON a.doctor_name = doctors.doctor_name;