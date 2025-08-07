-- Question 16: Display the total number of injections and medicines used by each doctor for doctor having doctor id greater than 3.

USE hospital;

SELECT our_doctors.doctor_id, SUM(medicines.injections) AS total_injections, SUM(medicines.medicines) AS total_medicines
FROM medicines
INNER JOIN (SELECT * FROM doctors WHERE doctor_id > 3) AS our_doctors
	ON medicines.doctor_name = our_doctors.doctor_name
GROUP BY our_doctors.doctor_id;