WITH within_dates AS
(
    SELECT *,
            CASE WHEN status = "cancelled_by_driver" OR status = "cancelled_by_client"
                    THEN 1
                    ELSE 0
            END AS status_one_hot
    FROM Trips
    WHERE request_at BETWEEN "2013-10-01" AND "2013-10-03"
),
within_dates_and_banned_status AS
(
    SELECT t1.*, t2.banned AS client_banned, t3.banned AS driver_banned
    FROM within_dates AS t1
    INNER JOIN Users AS t2
        ON t1.client_id = t2.users_id
    INNER JOIN Users AS t3
        ON t1.driver_id = t3.users_id
)
SELECT request_at AS Day, 
        ROUND(SUM(status_one_hot) / COUNT(status_one_hot), 2) AS `Cancellation Rate`
FROM within_dates_and_banned_status
WHERE client_banned = "No" AND driver_banned = "No"
GROUP BY request_at;