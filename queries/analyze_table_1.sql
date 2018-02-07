
-- option 1
select "column", type, encoding, distkey, sortkey 
from pg_table_def 
;


-- option 2
select "column", type, encoding, distkey, sortkey 
from pg_table_def 
where tablename = 'listing'
;
