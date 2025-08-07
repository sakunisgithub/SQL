-- Question 22: Display the contact no. each patient should contact in case of further assistance.

USE hospital;

SELECT patient_name, contact_no
FROM patients
INNER JOIN doctors
	ON patients.doctor_name = doctors.doctor_name;