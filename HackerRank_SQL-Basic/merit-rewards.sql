SELECT info.employee_ID, info.name
FROM employee_information AS info
JOIN last_quarter_bonus AS last_bonus
	ON info.employee_ID = last_bonus.employee_ID
WHERE info.division = 'HR' AND last_bonus.bonus >= 5000;