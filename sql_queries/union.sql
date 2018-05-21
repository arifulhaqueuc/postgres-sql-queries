-- This is an example on "Union"
drop table if exists x
;
create temp table x(
  country_name varchar(30)
)
;

drop table if exists y
;
create temp table y(
  country_name varchar(30)
)
;

insert into x
values
('123'),
('abc')
;

select *
from x
;


insert into y
values
('990'),
('xyz'),
('123')
;

select *
from y
;

drop table if exists x_y
;

create temp table x_y as
(
select country_name
from x
union
select country_name
from y
);

select *
from x_y
;
