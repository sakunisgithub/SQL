WITH high_balance AS
(
    SELECT account, SUM(amount) AS balance
    FROM Transactions
    GROUP BY account
    HAVING balance > 10000
)
SELECT Users.name, high_balance.balance
FROM Users
INNER JOIN high_balance
    ON Users.account = high_balance.account;