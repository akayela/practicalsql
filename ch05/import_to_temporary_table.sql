create temporary table supervisor_salaries_temp
(like supervisor_salaries including all);

copy supervisor_salaries_temp (town, supervisor, salary)
from '/tmp/supervisor_salaries.csv'
with (format csv, header);

insert into supervisor_salaries (town, county, supervisor, salary)
select town, 'Mills', supervisor, salary
from supervisor_salaries_temp;

drop table supervisor_salaries_temp;