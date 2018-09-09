
-- syntax for sql keyword "not in"
select
 a
 , b
 , c
 
from
 table1

where 
 b not in
  (
    select 
     m
    from 
     table2
  )


