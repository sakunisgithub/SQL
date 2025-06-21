SELECT MAX(num) AS num
FROM (
    SELECT num, COUNT(num) AS frequency
    FROM MyNumbers
    GROUP BY num
    HAVING frequency = 1
) AS freq;