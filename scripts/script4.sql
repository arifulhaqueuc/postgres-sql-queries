-- This is inner join
-- general syntax

select 
  table_1.col_1,
  table_1.col_2,
  table_2.col_1
from table_1
inner join table_2
on table_1.col_1 = table_2.col_2  
;
 


-- inner join----
select 
  president_table.country_name, 
  president_table.president_name, 
  president_table.job_started, 
  population_table.pop_size, 
  population_table.gdp
from president as president_table
inner join population as population_table
on president_table.country_name =  population_table.country_name
;


