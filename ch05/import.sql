create table us_counties_pop_est_2019 (
	state_fips text,
	county_fips text,
	region smallint,
	state_name text,
	county_name text,
	area_land bigint,
	area_water bigint,
	internal_point_lat numeric(10,7),
	internal_point_lon numeric(10,7),
	pop_est_2018 integer,
	pop_est_2019 integer,
	births_2019 integer,
	deaths_2019 integer,
	international_migr_2019 integer,
	domestic_migr_2019 integer,
	residual_2019 integer,
	constraint counties_2019_key primary key (state_fips, county_fips)
);

select * from us_counties_pop_est_2019;

copy us_counties_pop_est_2019
from '/tmp/us_counties_pop_est_2019.csv'
with (format csv, header);

select county_name, state_name, area_land
from us_counties_pop_est_2019
order by area_land desc
limit 3;

select county_name, state_name, internal_point_lat, internal_point_lon
from us_counties_pop_est_2019
order by internal_point_lon desc
limit 5;

create table supervisor_salaries (
	id integer generated always as identity primary key,
	town text,
	county text,
	supervisor text,
	start_date date,
	salary numeric(10,2),
	benefits numeric(10,2)
);

copy supervisor_salaries (town, supervisor, salary)
from '/tmp/supervisor_salaries.csv'
with (format csv, header);

select * from supervisor_salaries;

delete from supervisor_salaries;

copy supervisor_salaries (town, supervisor, salary)
from '/tmp/supervisor_salaries.csv'
with (format csv, header)
where town = 'New Brillig';

































