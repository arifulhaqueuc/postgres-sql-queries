
-- find the 10th highest salary from the employee table

-- solution
-- step 1: create a sub table of top 10 salaries
-- step 2: find the 1st value from the top_ten_salary_table


-- given employee table

drop table if exists employee_table
;

create temp table employee_table
(
  emp_birth_country varchar(10),
  emp_name varchar(30),
  emp_gender varchar(10),
  emp_age int,
  emp_salary int,
  emp_job_started Date,
  emp_job_ended Date
)
;

insert into employee_table
values
('USA','Trump','male',85, 10,'2017-05-20','2030-02-05'),
('India','Modi','male',65, 1101, '2010-07-11','2017-09-04'),
('Uganda','Alex','male',46, 102, '2017-05-20','2030-03-31'),
('Indonesia','Larry','male',49, 33, '2010-07-11','2017-09-12'),
('England','Trump','male',54, 1043, '2019-05-20','2030-03-24'),
('Canada','Justin','male',23, 1235, '2000-07-11','2017-09-02'),
('Bangladesh','Hasina','female',25, 100006, '1999-05-20','2030-02-01'),
('Qatar','Zahed','male',35, 1017, '1998-07-11','2018-10-10'),
('China','Xie','female',25, 108, '2000-07-11','2016-10-10'),
('China','Chao','male',31, 10909, '1998-07-11','2018-10-10'),
('Qatar','Lahiri','male',30, 11010, '1998-07-11','2018-10-10'),
('Germany','Merkel','female',50, 112, '2000-03-21','2019-09-02')
;



select *
from employee_table
;




-- step 1
drop table if exists top_ten_salary
;

create temp table top_ten_salary as
(
select emp_salary
from employee_table 
--group by emp_salary
order by emp_salary desc
limit 10
)
;


-- step 2
select emp_salary
from top_ten_salary
order by emp_salary asc
limit 1
;


