select * from parks_and_recreation.employee_demographics;

select * from parks_and_recreation.employee_salary;

# INNER JOIN

select *
from parks_and_recreation.employee_demographics
inner join parks_and_recreation.employee_salary # only 'join' also works, 'join' by default means inner join
	on parks_and_recreation.employee_demographics.employee_id = parks_and_recreation.employee_salary.employee_id;

# inner join reports the rows with similar column values, here the rows with similar employee_id values are joined
select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;

select dem.employee_id, age, occupation
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
# OUTER JOIN

# LEFT OUTER JOIN - keeps everything of the left table and the matches of the right table

select *
from parks_and_recreation.employee_demographics as dem # the left table
left outer join parks_and_recreation.employee_salary as sal # the right table, only 'left join' also works
	on dem.employee_id = sal.employee_id;
    
    
# RIGHT OUTER JOIN -- keeps everything of the right table and the matches of the left table
select *
from parks_and_recreation.employee_demographics as dem # the right table
right outer join parks_and_recreation.employee_salary as sal # the left table, only 'right join' also works
	on dem.employee_id = sal.employee_id;
    
    
    
# SELF JOIN

select table1.employee_id as emp_santa, 
table1.first_name as first_name_santa,
table1.last_name as last_name_santa,
table2.employee_id as emp_name, 
table2.first_name as first_name_employee,
table2.last_name as last_name_employee
from parks_and_recreation.employee_salary as table1
join parks_and_recreation.employee_salary as table2
	on table1.employee_id + 1 = table2.employee_id;
    
    
    
# joining multiple tables

select * from parks_departments;

select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id;