-- Question 09 : In which year or years were the most songs recorded?

USE songs;

WITH songs_per_album AS
(
	SELECT album_id, COUNT(1) AS `# songs`
    FROM song
    GROUP BY album_id
),
album_year_and_songs AS
(
	SELECT album_id, album_name, album_year, `# songs`
    FROM songs_per_album AS a
    JOIN album AS b
		ON a.album_id = b.id
),
year_wise_songs AS
(	
	SELECT album_year AS `year`, SUM(`# songs`) AS `# songs`
	FROM album_year_and_songs
	GROUP BY `year`
	ORDER BY `# songs` DESC
)
SELECT *
FROM year_wise_songs
WHERE `# songs` = (SELECT MAX(`# songs`) FROM year_wise_songs);