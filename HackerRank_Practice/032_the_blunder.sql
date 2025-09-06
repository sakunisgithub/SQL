SELECT CEIL(AVG(Salary) - AVG(REPLACE(CONVERT(Salary, CHAR), '0', '') + 0))
FROM EMPLOYEES;
# doing a + 0 to a string column whose strings are just numbers casts the column values to integers