-- Question 20: Display the wards with their number of nurses where more than 20 injections are used.

USE hospital;

SELECT a.ward_no, ward.nurses, a.total_injections
FROM ward
INNER JOIN (SELECT ward_no, SUM(injections) AS total_injections
			FROM medicines
			GROUP BY ward_no
            HAVING total_injections > 20) AS a
	ON ward.ward_no = a.ward_no;