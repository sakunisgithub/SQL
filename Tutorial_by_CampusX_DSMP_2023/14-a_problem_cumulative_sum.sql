-- Get the cumulative runs of M.S. Dhoni. Use ipl dataset.

USE campusx;

SELECT 
	batter,
	CONCAT('Match-', ROW_NUMBER() OVER(ORDER BY ID)) AS match_number,
    runs_in_match AS runs,
	SUM(runs_in_match) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS ipl_career_runs
FROM(SELECT ID, batter, SUM(batsman_run) AS runs_in_match
	FROM ipl
	WHERE batter = 'MS Dhoni'
	GROUP BY ID
	ORDER BY ID) AS t;