-- Question 04 : Which specialist has used the maximum number of injections on date ‘01-02-22’?

USE hospital;

WITH max_injection_on_the_date AS
(
	SELECT doctor_name, SUM(injections) AS total_injections
    FROM medicines
    WHERE a_date = '01-02-22'
    GROUP BY doctor_name
    ORDER BY total_injections DESC
    LIMIT 1
)
SELECT specialty
FROM doctors
WHERE doctors.doctor_name = ALL (SELECT doctor_name FROM max_injection_on_the_date);
    