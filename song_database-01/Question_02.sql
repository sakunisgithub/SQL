-- Question 02 : List all artists for each record label sorted by artist name.

USE songs;

SELECT * FROM artist;

SELECT * FROM record_label;

SELECT artist.artist_name, record_label.studio_name
FROM artist
JOIN record_label
	ON artist.record_label_id = record_label.id
ORDER BY artist.artist_name;