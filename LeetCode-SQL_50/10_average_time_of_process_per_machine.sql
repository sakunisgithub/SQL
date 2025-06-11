WITH start_times AS
(
    SELECT machine_id, process_id, timestamp AS start_time 
    FROM Activity
    WHERE activity_type = 'start'
),
end_times AS
(
    SELECT machine_id, process_id, timestamp AS end_time
    FROM Activity
    WHERE activity_type = 'end'
)
SELECT a.machine_id, ROUND(AVG(b.end_time - a.start_time), 3) AS processing_time
FROM start_times AS a
LEFT JOIN end_times AS b
    ON a.machine_id = b.machine_id
    AND a.process_id = b.process_id
GROUP BY a.machine_id;