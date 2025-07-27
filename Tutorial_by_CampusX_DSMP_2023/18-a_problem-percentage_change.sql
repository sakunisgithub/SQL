-- Get percentage increase in views of YouTube videos of TED YouTube channel. Use TED_YouTube.views dataset.

USE ted_youtube;

SELECT *,
		ROUND(((views - views_in_last_month) / views_in_last_month) * 100, 2) AS `% increse`
FROM(SELECT YEAR(`date`) AS `year`, MONTHNAME(`date`) AS `month`, SUM(views) AS views,
		LEAD(SUM(views)) OVER() AS views_in_last_month
	FROM views
	GROUP BY YEAR(`date`), MONTH(`date`), MONTHNAME(`date`)
	ORDER BY YEAR(`date`) DESC, MONTH(`date`) DESC) AS t;