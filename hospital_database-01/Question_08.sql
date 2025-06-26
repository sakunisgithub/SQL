-- Question 08 : Get the ward(s) and their corresponding floor that has used the minimum number of medicines on date ‘02-02-22’.

USE hospital;

WITH ward_with_minimum_medicine AS
(
	SELECT ward_no, SUM(medicines) AS total_medicine
	FROM medicines
	WHERE a_date = '02-02-22'
	GROUP BY ward_no
	ORDER BY total_medicine
	LIMIT 1
)
SELECT a.ward_no, b.floor, a.total_medicine
FROM ward AS b
INNER JOIN ward_with_minimum_medicine AS a
	ON a.ward_no = b.ward_no;