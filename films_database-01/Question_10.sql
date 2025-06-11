-- Question 10 : Sort the movie names based on director names.

USE films;

SELECT Movie_name, Director_name
FROM movie
INNER JOIN director
	ON director.Director_ID = movie.director_id
ORDER BY Director_name;