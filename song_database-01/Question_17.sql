-- Question 17 : Get total album length for all songs on the 'Greatest Hits' album - in minutes and seconds.

USE songs;

WITH total_album_length AS
(
	SELECT SUM(duration) AS total_duration
	FROM song
	WHERE album_id = ANY (SELECT id
					  FROM album
                      WHERE album_name = 'Greatest Hits')
)
SELECT FLOOR(total_duration) AS minutes, 
	   (total_duration - FLOOR(total_duration)) * 60 AS seconds
FROM total_album_length;
