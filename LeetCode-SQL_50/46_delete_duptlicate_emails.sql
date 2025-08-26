DELETE FROM Person
WHERE id NOT IN (
    SELECT t.min_id
    FROM (
        SELECT MIN(id) AS min_id
        FROM Person
        GROUP BY email
    ) t
);