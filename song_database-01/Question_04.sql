-- Question 04 : List the number of songs per artist in descending order.

USE songs;

SELECT * FROM artist;

SELECT * FROM album;

SELECT * FROM song;

WITH songs_per_album AS
(
	SELECT album_id, COUNT(1) AS number_of_songs
    FROM song
    GROUP BY album_id
),
artists_and_albums AS
(
	SELECT artist_name, album.id AS album_id, album.album_name
    FROM artist
    LEFT OUTER JOIN album
		ON artist.id = album.artist_id
)
SELECT artist_name, SUM(number_of_songs) AS `#songs`
FROM artists_and_albums AS a
JOIN songs_per_album AS b
	ON a.album_id = b.album_id
GROUP BY artist_name
ORDER BY `#songs` DESC;