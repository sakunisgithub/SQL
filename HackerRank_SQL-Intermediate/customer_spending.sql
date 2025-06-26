WITH customers_of_interset AS
(
    SELECT customer_id, total_price 
    FROM invoice
    WHERE total_price < (SELECT AVG(total_price) FROM invoice) * 0.25
)
SELECT customer.customer_name, 
        FORMAT(a.total_price, 6) AS total_price
FROM customer
INNER JOIN customers_of_interset AS a
    ON a.customer_id = customer.id;