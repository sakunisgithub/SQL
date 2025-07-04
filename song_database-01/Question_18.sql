-- Question 18 : Which artists did not release any album during the 1980's and the 1990's?

USE songs;

SELECT artist_name
FROM artist
WHERE id != ALL (SELECT DISTINCT artist_id
			FROM album
			WHERE album_year >= 1980 AND album_year <= 1999)
ORDER BY artist_name;