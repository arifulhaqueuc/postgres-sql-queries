-- find the list of databases 
select * 
from PG_DATABASE
;

-- find list of all schemas
select * 
from pg_namespace
;


-- find list of schema names in a database
-- ???

-- find the list of tables
select distinct(tablename) 
from pg_table_def 
; 

-- find list of tables in a particular schema
select distinct(tablename) 
from pg_table_def 
where schemaname = 'public'
; 

