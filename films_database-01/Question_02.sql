-- Question 02 : Display the count of movies of each genre.

USE films;

SELECT genre, COUNT(1) genre_count
FROM movie
GROUP BY genre;