-- Question 10 : List the artist, song and year of the top 5 longest recorded songs.

USE songs;

WITH top_5_longest_songs AS
(
	SELECT album_id, song_name, duration
    FROM song
    ORDER BY duration DESC
    LIMIT 5
)
SELECT artist_name, album_name, song_name, album_year, duration
FROM top_5_longest_songs AS a
JOIN album AS b
	ON a.album_id = b.id
JOIN artist AS c
	ON b.artist_id = c.id;