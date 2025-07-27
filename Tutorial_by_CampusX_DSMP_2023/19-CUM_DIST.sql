USE campusx;

SELECT *, CUME_DIST() OVER(ORDER BY marks) AS cumulative_prob
FROM marks;