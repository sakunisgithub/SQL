-- Question 17: Display the medicines consumed on each day starting from most to least.

USE hospital;

SELECT a_date, SUM(medicines) AS total_medicines
FROM medicines
GROUP BY a_date
ORDER BY total_medicines DESC;