-- Question 13 : In which year(s) were the maximum number of albums recorded, and how many were they?

USE songs;

WITH album_count AS
(
	SELECT album_year, COUNT(album_year) AS number_of_albums
    FROM album
    GROUP BY album_year
)
SELECT album_year, number_of_albums
FROM album_count 
WHERE number_of_albums = (SELECT MAX(number_of_albums) FROM album_count);