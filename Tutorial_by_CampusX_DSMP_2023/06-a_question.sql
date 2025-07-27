-- Question : Find top 2 msot paying customers of each month.

USE zomato;

SELECT *
FROM (SELECT MONTH(date) AS `month`, user_id,
		SUM(amount) AS total_amount,
		RANK() OVER(PARTITION BY MONTH(date) ORDER BY SUM(amount) DESC) AS user_rank
	FROM orders
	GROUP BY MONTH(date), user_id
	ORDER BY MONTH(date)) AS a
WHERE a.user_rank <= 2;