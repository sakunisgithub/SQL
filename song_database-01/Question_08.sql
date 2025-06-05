-- Question 08 : For each artist and album how many songs were less than 5 minutes long?

USE songs;

WITH songs_less_than_5_minutes AS
(
	SELECT album_id, song_name, duration
    FROM song
    WHERE duration < 5
)
SELECT artist_name, album_name, COUNT(2) AS `# songs_with_duration_less_than_5_minutes`
FROM songs_less_than_5_minutes AS a
JOIN album AS b
	ON a.album_id = b.id
JOIN artist AS c
	ON b.artist_id = c.id
GROUP BY artist_name, album_name;