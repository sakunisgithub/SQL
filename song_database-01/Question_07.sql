-- Question 07 : Which artists have recorded songs longer than 5 minutes, and how many songs was that?

USE songs;

SELECT * FROM artist;

SELECT * FROM album;

SELECT * FROM song;

WITH songs_longer_than_5_minutes AS
(
	SELECT album_id, song_name, duration
    FROM song
    WHERE duration > 5
),
artist_id_with_songs AS
(
	SELECT album_id, artist_id, song_name, duration
    FROM songs_longer_than_5_minutes AS a
    JOIN album AS b
		ON a.album_id = b.id
)
SELECT artist_name, COUNT(1) AS `# songs_with_duration_more_than_5_minutes`
FROM artist_id_with_songs AS a
JOIN artist AS b
	ON a.artist_id = b.id
GROUP BY artist_name;