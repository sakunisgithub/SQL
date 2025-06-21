-- Question 03 : Display the average fees taken by each Doctor.

USE hospital;

SELECT doctor_name, AVG(fees) AS average_fees
FROM patients
GROUP BY doctor_name;