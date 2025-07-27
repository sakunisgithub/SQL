-- RANK()

-- ranking on whole data

SELECT *,
	RANK() OVER(ORDER BY marks DESC) AS `rank`
FROM marks;

-- ranking on each branch

SELECT *,
	RANK() OVER(PARTITION BY branch ORDER BY marks DESC) AS `rank`
FROM marks;

-- DENSE_RANK()

SELECT *,
	RANK() OVER(PARTITION BY branch ORDER BY marks DESC) AS `rank`,
	DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks DESC) AS `dense_rank`
FROM marks;

-- ROW_NUMBER()

SELECT *,
	ROW_NUMBER() OVER(PARTITION BY branch) AS `row_numbers_by_branch`
FROM marks;

SELECT *,
	CONCAT(branch, '-', ROW_NUMBER() OVER(PARTITION BY branch)) AS roll_number
FROM marks;