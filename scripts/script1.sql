drop table if exists president
;

create temp table president(
  country_name varchar(10),
  president_name varchar(30),
  president_gender varchar(10),
  president_age int,
  job_started Date,
  job_ended Date
)
;

insert into president
values
('USA','Trump','male',85, '2017-05-20','2030-02-01'),
('India','Modi','male',35, '2010-07-11','2017-09-02')
;

drop table if exists population
;

create temp table population(
  country_name varchar(30),
  pop_size int,
  gdp float
)
;

insert into population
values 
('Belgium','11','50.10'),
('Mexico','40','150.10'),
('Brazil','10','1450.10')
;

select *
from president
;

select *
from population
;


select president_table.country_name, president_table.president_name, president_table.job_started, 
  population_table.pop_size, 
  population_table.gdp
from president as president_table
inner join population as population_table
on president_table.country_name =  population_table.country_name
;
