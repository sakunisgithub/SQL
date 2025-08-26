SELECT sell_date,
    COUNT(*) AS num_sold,
    GROUP_CONCAT(product ORDER BY product SEPARATOR ',') as products
FROM (SELECT DISTINCT * FROM Activities) AS t
GROUP BY sell_date
ORDER BY sell_date;