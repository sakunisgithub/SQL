-- Chapter 2 : Exercise 2

USE farmers_market;

SELECT *
FROM customer
ORDER BY customer_last_name, customer_first_name
LIMIT 10;