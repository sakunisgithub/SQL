SELECT DISTINCT num AS ConsecutiveNums
FROM(SELECT *,
        LEAD(num) OVER() AS next_num,
        LEAD(num, 2) OVER() AS next_to_next_num
    FROM Logs) AS t
WHERE t.num = t.next_num AND t.next_num = t.next_to_next_num;