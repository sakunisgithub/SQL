-- Question 14 : Get total duration of all songs recorded by each artist in descending order.

USE songs;

SELECT artist_name, ROUND(SUM(duration), 2) AS total_duration
FROM song
JOIN album
	ON song.album_id = album.id
JOIN artist
	ON album.artist_id = artist.id
GROUP BY artist_name
ORDER BY total_duration DESC;