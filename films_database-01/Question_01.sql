-- Question 01 : Display the count of actors and actresses.

USE films;

SELECT Gender, COUNT(1) AS person_count
FROM actor
GROUP BY Gender;