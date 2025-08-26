WITH player_count AS(
SELECT COUNT(*) AS cnt
FROM(
    SELECT player_id
    FROM (
        SELECT player_id, event_date,
            MIN(event_date) OVER(PARTITION BY player_id) AS initial_date
        FROM Activity) AS t
    WHERE DATEDIFF(t.event_date, t.initial_date) = 1) AS t1
),
total_player AS(
    SELECT COUNT(DISTINCT player_id) AS total_player FROM Activity
)
SELECT ROUND(player_count.cnt / total_player.total_player, 2) AS fraction
FROM player_count
CROSS JOIN total_player;