WITH customer_transactions_encoded AS
(
    SELECT *,
        CASE WHEN transaction_type = 'purchase' THEN 1 ELSE 0 END AS transaction_type_encoded
    FROM customer_transactions
),
customer_record AS
(
    SELECT customer_id,
        SUM(transaction_type_encoded) AS purchase_transactions,
        DATEDIFF(MAX(transaction_date), MIN(transaction_date)) AS active_days,
        1 - (SUM(transaction_type_encoded) * 1.0 / COUNT(transaction_id)) AS refund_rate
    FROM customer_transactions_encoded
    GROUP BY customer_id
)
SELECT DISTINCT customer_id
FROM customer_record
WHERE purchase_transactions >= 3 and active_days >= 30 and refund_rate < 0.2
ORDER BY customer_id;