




drop table if exists july_viewers
;
create temp table july_viewers(
  id int
)
;



drop table if exists yr_viewers
;
create temp table yr_viewers(
  id int
)
;



insert into july_viewers
values
(123),
(223),
(333)
;




insert into yr_viewers
values
(123),
(456),
(398),
(100),
(223)
;



select *
from july_viewers
;


select *
from yr_viewers
;


-- test an "inner join" to find out the common numbers 
-- in two tables

select 
  distinct july_viewers.id
from july_viewers
inner join yr_viewers
on july_viewers.id = yr_viewers.id
;


-- now, find the numbers that are in yr_viewers
-- but not in july_viewers
-- so this is basically (yr_viewers - july_viewers) operation

select 
  yr_viewers.id
from yr_viewers
except 
select 
  july_viewers.id
from july_viewers

;



