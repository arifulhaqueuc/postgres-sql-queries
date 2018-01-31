-- This is inner join

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


