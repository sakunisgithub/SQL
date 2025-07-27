-- Get running average of MS Dhoni. Use ipl dataset.

USE campusx;

SELECT 
	batter,
	CONCAT('Match-', ROW_NUMBER() OVER(ORDER BY ID)) AS match_number,
    runs_in_match AS runs,
	ROUND(AVG(runs_in_match) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 2) AS ipl_career_average,
    ROUND(AVG(runs_in_match) OVER(ROWS BETWEEN 9 PRECEDING AND CURRENT ROW), 2) AS running_average
FROM(SELECT ID, batter, SUM(batsman_run) AS runs_in_match
	FROM ipl
	WHERE batter = 'MS Dhoni'
	GROUP BY ID
	ORDER BY ID) AS t;