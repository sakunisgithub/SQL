-- Get top 5 batsmen from each IPL team. Use ipl dataset.

USE campusx;

SELECT *
FROM(
	SELECT BattingTeam, batter, SUM(batsman_run) AS runs,
		DENSE_RANK() OVER(PARTITION BY BattingTeam ORDER BY SUM(batsman_run) DESC) AS `rank_by_runs`
	FROM ipl
	GROUP BY BattingTeam, batter) AS t
WHERE t.rank_by_runs <= 5;