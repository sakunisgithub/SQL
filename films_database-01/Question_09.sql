-- Question 09 : Give the count of movies of each genre in decreasing order of count.

USE films;

SELECT genre, COUNT(1) AS movie_count
FROM movie
GROUP BY genre
ORDER BY movie_count DESC;