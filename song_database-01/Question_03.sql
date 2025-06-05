-- Question 03 : Which record labels have no artists?

USE songs;

SELECT * FROM record_label;

SELECT * FROM artist;

SELECT DISTINCT studio_name
FROM record_label
LEFT OUTER JOIN artist
	ON record_label.id = artist.record_label_id
WHERE artist.artist_name IS NULL;