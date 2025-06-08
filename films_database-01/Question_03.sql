-- Question 03 : Find the oldest released movie of each genre.

USE films;

SELECT genre, MIN(release_year)
FROM movie
GROUP BY genre;