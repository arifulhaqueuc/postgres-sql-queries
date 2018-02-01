-- find the fifth highest salary

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
  job_ended Date,
  salary float
)
;

insert into president
values
('USA','Trump','male',85,'Liberal', '2017-05-20','2030-02-05', 10.20),
('India','Modi','male',65,'Conservative', '2010-07-11','2017-09-04', 20.09),
('Uganda','Alex','male',46,'Independent', '2017-05-20','2030-03-31',1.20),
('Indonesia','Larry','male',49,'Conservative', '2010-07-11','2017-09-12',100.30),
('England','May','female',54,'Conservative', '2019-05-20','2030-03-24',30),
('Canada','Justin','male',23,'Conservative', '2000-07-11','2017-09-02',40.78),
('Bangladesh','Hasina','female',25,'Independent', '1999-05-20','2030-02-01',50),
('Qatar','Zahed','male',35,'Liberal', '1998-07-11','2018-10-10',80),
('New Zeland','Joshrin','female',55,'Liberal', '2003-07-11','2018-10-10',60),
('Germany','Merkel','female',50,'Liberal', '2000-03-21','2019-09-02',70)
;

select *
from president
;


select TOP 1 salary
from president
(

  select distinct TOP 5 salary
  from president
  order by salary desc

) a
order by salary
;


