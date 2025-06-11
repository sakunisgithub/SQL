-- Question 07 : Show the release year and number of movies released in each year only if more than 1 movie is released that year.

USE films;

SELECT release_year, COUNT(1) AS number_of_movies
FROM movie
GROUP BY release_year
HAVING number_of_movies > 1;