-- Question 08 : Display the director name and their total box office collection which are greater than 50 crores.

USE films;

SELECT Director_name, total_box_office_collection
FROM director
INNER JOIN (
	SELECT director_id, SUM(box_collection) AS total_box_office_collection
	FROM movie
	GROUP BY director_id
	HAVING total_box_office_collection > 500000000
) AS director_wise_total_collection
	ON director.Director_ID = director_wise_total_collection.Director_ID;