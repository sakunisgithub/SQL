# GROUP BY
select * from parks_and_recreation.employee_demographics;

select gender from parks_and_recreation.employee_demographics group by gender;

select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender;

select gender, avg(age), max(age), min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;

select * from parks_and_recreation.employee_salary;

select occupation from parks_and_recreation.employee_salary group by occupation;

select occupation, salary
from parks_and_recreation.employee_salary
group by occupation, salary;


# ORDER BY
select * from parks_and_recreation.employee_demographics order by first_name;

select * from parks_and_recreation.employee_demographics order by age;

select * from parks_and_recreation.employee_demographics order by age ASC;

select * from parks_and_recreation.employee_demographics order by age DESC;

select * 
from parks_and_recreation.employee_demographics 
order by gender, age;

select *
from parks_and_recreation.employee_demographics
order by 5, 4; # by column number, numbering starts from 1, # not a good practice

select * 
from parks_and_recreation.employee_demographics 
order by gender, age DESC;