WITH average_tokens AS
(
    SELECT *,
    AVG(tokens) OVER(PARTITION BY user_id) AS avg_tokens,
    CASE 
        WHEN tokens > AVG(tokens) OVER(PARTITION BY user_id) THEN 1 
        ELSE 0 
    END AS greater_than_avg
    FROM prompts
)
SELECT user_id, COUNT(1) AS prompt_count, ROUND(AVG(tokens), 2) AS avg_tokens
FROM average_tokens
GROUP BY user_id
HAVING prompt_count >= 3 and SUM(greater_than_avg) > 0
ORDER BY avg_tokens DESC, user_id ASC;