
-- show all databases
select * 
from PG_DATABASE
;


-- show all tables
select distinct(tablename) 
from pg_table_def 
; 


-- show all tables for a specific schema
select distinct(tablename) 
from pg_table_def 
where schemaname = 'public'
; 


-- find all schema names
select * 
from pg_namespace
;

