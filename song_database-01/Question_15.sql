-- Question 15 : For which artist and album are there no songs less than 5 minutes long?

WITH albums_with_all_songs_longer_than_5 AS
(
	SELECT album_name, artist_id
	FROM song
	JOIN album
		ON song.album_id = album.id
	GROUP BY album_name, artist_id
	HAVING MIN(duration) >= 5
)
SELECT artist_name, album_name
FROM albums_with_all_songs_longer_than_5 AS a
JOIN artist
	ON a.artist_id = artist.id;