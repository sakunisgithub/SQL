-- Question 12 : Display average number of beds on each floor.

USE hospital;

SELECT `floor`, FLOOR(AVG(beds)) AS average_beds
FROM ward
GROUP BY `floor`;