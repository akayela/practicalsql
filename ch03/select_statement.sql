/* select all rows and columns from table */
select * from teachers;

/* select a subset of the columns */
select last_name, first_name, salary from teachers;

/* sorting data with order by */
select first_name, last_name, salary
from teachers
order by salary desc;

/* order by using column number instead of column name */
select last_name, school, hire_date
from teachers
order by 3 desc;

/* sort using multiple columns */
select first_name, last_name, salary
from teachers
order by school asc, hire_date desc;

/* using distinct to find unique values */
select distinct school
from teachers
order by school;

