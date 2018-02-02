-- show all table names


select distinct(tablename) 
from pg_table_def 
where schemaname = 'public'
; 

