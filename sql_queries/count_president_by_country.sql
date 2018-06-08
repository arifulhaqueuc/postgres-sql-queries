-- president table
drop table if exists president
;

create temp table president(
  country_name varchar(10),
  president_name varchar(30),
  president_gender varchar(10),
  president_age int,
  party varchar(50),
  job_started Date,
  job_ended Date
)
;

insert into president
values
('USA','Trump','male',85, '2017-05-20','2030-02-05'),
('USA','Modi','male',65, '2010-07-11','2017-09-04'),
('Bangladesh','Alex','male',46, '2017-05-20','2030-03-31'),
('Canada','Trump','male',54, '2019-05-20','2030-03-24'),
('Canada','Vidal','male',23, '2000-07-11','2017-09-02'),
('Bangladesh','Hasina','female',25, '1999-05-20','2030-02-01'),
('Canada','Zahed','male',35, '1998-07-11','2018-10-10'),
('Bangladesh','Merkel','female',50, '2000-03-21','2019-09-02')
;




select
 country_name,
 count(president_name) as count_of_pres

from president
group by country_name
;





