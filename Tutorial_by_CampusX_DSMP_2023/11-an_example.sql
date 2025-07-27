-- Question : Find Month-on-Month revenue from orders table of zomato database.

USE zomato;

SELECT *, (revenue - LAG(revenue) OVER())/(LAG(revenue) OVER())
FROM(
	SELECT MONTH(date), SUM(amount) AS revenue
	FROM orders
	GROUP BY MONTH(date)
	ORDER BY MONTH(date) ASC) AS a;