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

/* using distinct on multiple columns */
select distinct school, salary
from teachers
order by school, salary;

/* filtering rows with where */
select last_name, school, hire_date
from teachers
where school = 'Myers Middle School';

/* comparison and matching operators in PostgreSQL
=        : where school = 'Myers Middle School',
<> or != : where shcool != 'Baker Middle',
>        : where salary > 2000,
<        : where salary < 3000,
>=       : where salary >= 3000,
<=       : where salary <= 4000, 
BETWEEN  : where salary BETWEEN 2000 And 4000 (means within a range),
IN       : where last_name IN ('Bush', 'Roush') (match one of a set of values),
LIKE     : where last_name LIKE 'Sam%' (match a pattern - case sensitive),
ILIKE    : where last_name ILIKE 'sam%' (match a pattern - case insensitive),
NOT      : where last_name NOT ILIKE 'sam%' (negates a condition)
*/

/* combining operators with AND and OR */
select *
from teachers
where school = 'Myers Middle School'
and salary < 40000;

select * 
from teachers
where last_name = 'Cole'
or last_name = 'Bush';

select *
from teachers
where school ILIKE 'F.D%'
and (salary < 38000 or salary > 40000);

/* ch03 Try it yourself */
select school, last_name
from teachers
order by school, last_name;

select first_name
from teachers
where first_name Like 'S%'
and salary > 40000;

select *
from teachers
where hire_date >= '2010-01-01'
order by salary desc;
