select * 
from PG_DATABASE
;

select distinct(tablename) 
from pg_table_def 
--where schemaname = 'public'
; 



select distinct(tablename) 
from pg_table_def 
where schemaname = 'public'
; 


-- find all schema names
select * 
from pg_namespace
;

