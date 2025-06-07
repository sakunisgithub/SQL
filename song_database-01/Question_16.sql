-- Question 16 : Display a table of all artists, albums, songs and song duration, all ordered in ascending order by artist, album and song.

USE songs;

SELECT artist_name, album_name, song_name, duration
FROM song
JOIN album
	ON song.album_id = album.id
JOIN artist
	ON album.artist_id = artist.id
ORDER BY artist_name, album_name, song_name;