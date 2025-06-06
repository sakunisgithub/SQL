-- Question 11 : Get the number of albums recorded for each year.

USE songs;

SELECT album_year, COUNT(album_year) AS number_of_albums
FROM album
GROUP BY album_year
ORDER BY album_year;