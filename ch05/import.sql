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