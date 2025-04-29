select * from parks_and_recreation.employee_salary;

# where searches in rows
select * from parks_and_recreation.employee_salary where first_name = "Tom";

select * from parks_and_recreation.employee_salary where salary >= 60000;

select * from parks_and_recreation.employee_salary where salary < 60000;

select * from parks_and_recreation.employee_demographics;

select * from parks_and_recreation.employee_demographics where gender = "Female";

select * from parks_and_recreation.employee_demographics where gender != "Female";

select * from parks_and_recreation.employee_demographics where birth_date > "1985-01-01";

# Logical Operators -- and or not

select * from parks_and_recreation.employee_demographics where birth_date > "1985-01-01" and gender = "Male";

select * from parks_and_recreation.employee_demographics where birth_date > "1985-01-01" or gender = "Male";

select * from parks_and_recreation.employee_demographics where birth_date > "1985-01-01" or not gender = "Male";

select * from parks_and_recreation.employee_demographics
where (gender = "Female") or (age > 50);

# LIKE statement

select * from parks_and_recreation.employee_demographics
where first_name like "Don%"; # anything after 'Don'

select * from parks_and_recreation.employee_demographics
where first_name like "%on%"; # first_name has 'on', anything before 'on', anything after 'on'

select * from parks_and_recreation.employee_demographics
where first_name like "%a%"; # first_name has 'a'

select * from parks_and_recreation.employee_demographics
where first_name like "a__"; # starts with a and exactly two characters after it

select * from parks_and_recreation.employee_demographics
where first_name like "a___"; # starts with a and exactly three characters after it

select * from parks_and_recreation.employee_demographics
where first_name like "a___%"; # starts with a and exactly three characters after it and anything after it

select * from parks_and_recreation.employee_demographics
where birth_date like "1989%";