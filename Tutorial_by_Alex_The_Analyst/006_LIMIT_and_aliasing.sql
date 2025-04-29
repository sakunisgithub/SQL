select * 
from parks_and_recreation.employee_salary
limit 3;

select *
from parks_and_recreation.employee_demographics
order by age desc
limit 3; # limit 3, 1 --- gives the exact one row after first 3 rows


# Aliasing

select gender, avg(age) as average_age # avg(age) average_age -- also works
from parks_and_recreation.employee_demographics
group by gender
having average_age > 40;