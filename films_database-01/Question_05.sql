-- Question 05 : Display the names of directors, current count of movies and total count of movies directed by him/her.

USE films;

SELECT Director_name, current_count_of_movies, no_of_movies
FROM director
JOIN (SELECT director_id, COUNT(1) AS current_count_of_movies
	  FROM movie
      GROUP BY director_id) AS current_count
	ON current_count.director_id = director.Director_ID;