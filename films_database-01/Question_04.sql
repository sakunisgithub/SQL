-- Question 04 : Calculate the total box office collection for movies of each genre.

USE films;

SELECT genre, SUM(box_collection) AS total_box_office_collection
FROM movie
GROUP BY genre;