SELECT customer_id, COUNT(1) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
    ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.transaction_id IS NULL
GROUP BY customer_id;