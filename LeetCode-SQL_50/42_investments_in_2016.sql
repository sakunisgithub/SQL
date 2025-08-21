# consider unique lat-lon pairs, discard unique tiv_2015 values

WITH t1 AS(
    SELECT lat, lon, COUNT(*) AS freq
    FROM Insurance
    GROUP BY lat, lon
    HAVING freq = 1
),
t2 AS(
    SELECT tiv_2015, COUNT(*) AS freq
    FROM Insurance
    GROUP BY tiv_2015
    HAVING freq > 1
)
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
INNER JOIN t1
    ON (Insurance.lat, Insurance.lon) = (t1.lat, t1.lon)
INNER JOIN t2
    ON Insurance.tiv_2015 = t2.tiv_2015;