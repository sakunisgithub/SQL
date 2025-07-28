WITH products_with_changed_prices AS
(
    SELECT DISTINCT product_id, 
        LAST_VALUE(new_price) OVER(PARTITION BY product_id ORDER BY change_date
                                    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS price
    FROM Products
    WHERE change_date <= '2019-08-16'
),
all_products AS
(   
    SELECT DISTINCT product_id
    FROM Products
),
joined_with_null AS
(
    SELECT b.product_id, a.price
    FROM all_products AS b
    LEFT JOIN products_with_changed_prices AS a
    ON b.product_id = a.product_id
)
SELECT product_id, ifnull(price, 10) AS price
FROM joined_with_null;