WITH red_orders AS
(
    SELECT sales_id
    FROM Orders
    WHERE com_id = (SELECT DISTINCT com_id FROM Company WHERE name = "red")
)
SELECT name
FROM SalesPerson
WHERE sales_id != ALL(SELECT sales_id FROM red_orders);