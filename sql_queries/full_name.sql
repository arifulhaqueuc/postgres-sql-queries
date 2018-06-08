
-- president table
drop table if exists president
;

create temp table president(
  country_name varchar(10),
  first_name varchar(30),
  last_name varchar(30),
  president_gender varchar(10),
  president_age int,
  party varchar(50),
  job_started Date,
  job_ended Date
)
;

insert into president
values
('USA','Alex','Rider','male',85, '2017-05-20','2030-02-05'),
('Canada','Ian','Hervy','male',65, '2010-07-11','2017-09-04')

;




select

 country_name,
 first_name || ' ' || last_name as full_name

from president
;


