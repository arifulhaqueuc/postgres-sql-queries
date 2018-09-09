
-- create a temp table
drop table if exists table_name
;


create temp table table_name
(
  id int,
  name varchar(25),
  dob Date

)
;


-- create a temp table from a given table

create temp table top_ten_salary as
(
  select emp_salary
  from employee_table 
  order by emp_salary desc
  limit 10
)
;


