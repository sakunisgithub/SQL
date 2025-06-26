WITH more_contact_counts AS
(
    SELECT user_account_id, customer_id, COUNT(id) AS contact_count
    FROM contact
    GROUP BY user_account_id, customer_id
    HAVING contact_count > 1
)
SELECT a.user_account_id,
        user_account.first_name, 
        user_account.last_name,
        a.customer_id,
        customer.customer_name,
        a.contact_count
FROM more_contact_counts AS a
INNER JOIN user_account
    ON user_account.id = a.user_account_id
INNER JOIN customer
    ON a.customer_id = customer.id;