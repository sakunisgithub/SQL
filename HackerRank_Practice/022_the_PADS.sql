SELECT CONCAT(Name, '(', SUBSTRING(Occupation FROM 1 FOR 1), ')')
FROM OCCUPATIONS
ORDER BY Name;

WITH occupation_count_table AS
(
    SELECT Occupation, COUNT(1) AS occupation_count
    FROM OCCUPATIONS
    GROUP BY Occupation
    ORDER BY occupation_count, Occupation
)
SELECT CONCAT('There are a total of', ' ', occupation_count, ' ', LOWER(Occupation), 's.')
FROM occupation_count_table;