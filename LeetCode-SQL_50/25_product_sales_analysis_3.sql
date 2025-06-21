WITH product_id_and_first_year AS
(
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)
SELECT a.product_id, a.first_year, b.quantity, b.price
FROM product_id_and_first_year AS a
INNER JOIN Sales AS b
    ON a.product_id = b.product_id
    AND a.first_year = b.year;