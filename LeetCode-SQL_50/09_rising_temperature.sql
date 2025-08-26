SELECT id
FROM (
    SELECT *,
        LAG(recordDate) OVER() AS prev_date,
        LAG(temperature) OVER() AS prev_temp
    FROM Weather
    ORDER BY recordDate) AS t
WHERE DATEDIFF(t.recordDate, t.prev_date) = 1 AND t.temperature > t.prev_temp;