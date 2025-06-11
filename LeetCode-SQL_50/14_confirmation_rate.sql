WITH non_zero_confirmation_rates AS
(
    SELECT user_id,            
           ROUND(number_of_confirmations / number_of_requests, 2) AS confirmation_rate
    FROM (
        SELECT user_id,
            COUNT(time_stamp) AS number_of_requests,
            SUM(action = 'confirmed') AS number_of_confirmations
        FROM confirmations
        GROUP BY user_id
    ) AS request_and_confirmation_count
    
)
SELECT b.user_id,
       ifnull(a.confirmation_rate, 0) AS confirmation_rate
FROM non_zero_confirmation_rates AS a
RIGHT OUTER JOIN signups AS b
    ON a.user_id = b.user_id;