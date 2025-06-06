WITH cities_sorted_by_length AS
(
    SELECT CITY, LENGTH(CITY) AS length
    FROM STATION
    ORDER BY LENGTH(CITY)
),
city_with_shortest_length AS
(
    SELECT CITY, length
    FROM cities_sorted_by_length
    WHERE length = (SELECT MIN(length) FROM cities_sorted_by_length)
    ORDER BY CITY
    LIMIT 1
),
city_with_longest_length AS
(
    SELECT CITY, length
    FROM cities_sorted_by_length
    WHERE length = (SELECT MAX(length) FROM cities_sorted_by_length)
    ORDER BY CITY
    LIMIT 1
)
SELECT * 
FROM city_with_shortest_length
UNION ALL
SELECT * 
FROM city_with_longest_length;