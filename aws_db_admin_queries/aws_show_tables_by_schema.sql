
-- show tables for a specific schema
select distinct(tablename) 
from pg_table_def 
where schemaname = 'public'
; 

