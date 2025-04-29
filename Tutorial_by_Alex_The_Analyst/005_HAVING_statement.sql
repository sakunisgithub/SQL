select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender;

#select gender, avg(age)
#from parks_and_recreation.employee_demographics
#where avg(age) > 40
#group by gender; ----- throws error, avg(age) is created only after 'group by gender' is performed, so when 'where avg(age) > 40' comes, there is no avg(age) created yet. so there is an error

# HAVING statement was created for handling exactly this issue

select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;

select * from parks_and_recreation.employee_salary;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
group by occupation
having avg(salary) < 50000;