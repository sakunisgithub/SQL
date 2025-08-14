WITH ids_stacked AS
(
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL 

    SELECT accepter_id AS id
    FROM RequestAccepted
)
SELECT id, COUNT(*) AS num
FROM ids_stacked
GROUP BY id
ORDER BY num DESC
LIMIT 1;