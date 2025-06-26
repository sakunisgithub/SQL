-- Question 09 :  Display ward no. having minimum number of beds.

USE hospital;

SELECT ward_no, beds
FROM ward
ORDER BY beds
LIMIT 1;