WITH products_price_and_units_sold AS
(
    SELECT p.product_id, p.price, u.units
    FROM Prices as p
    LEFT OUTER JOIN UnitsSold AS u
        ON p.product_id = u.product_id
        AND p.start_date <= u.purchase_date
        AND p.end_date >= u.purchase_date    
)
SELECT product_id, 
    ROUND(ifnull(SUM(price * units) / SUM(units), 0), 2) AS average_price
FROM products_price_and_units_sold
GROUP BY product_id;