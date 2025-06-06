-- Question 12 : What is the max number of recorded albums across all the years?

USE songs;

SELECT MAX(number_of_albums) AS most_albums_in_a_year
FROM
(
	SELECT COUNT(album_year) AS number_of_albums
    FROM album
    GROUP BY album_year
) AS album_count;