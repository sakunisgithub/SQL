WITH buyers_in_2019 AS
(
    SELECT buyer_id, COUNT(buyer_id) AS orders_in_2019
    FROM Orders
    WHERE YEAR(order_date) = 2019
    GROUP BY buyer_id
)
SELECT user_id AS buyer_id,
       join_date,
       IFNULL(orders_in_2019, 0) AS orders_in_2019
FROM Users
LEFT OUTER JOIN buyers_in_2019
    ON Users.user_id = buyers_in_2019.buyer_id;