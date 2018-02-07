

-- To change from date to epoch in Redshift you can use either extract or date_part.

select 
  extract('epoch' from timestamp '2017-06-01') as extract_test,
  date_part(epoch, '2017-06-01') as date_part_test;

-- This returns:
-- extract_test | date_part_test
-- 1496275200 | 1496275200
When actually selecting from a table the query might look like this:

select 
  extract('epoch' from timestamp date_day_value_in_table) as extract_test,
  date_part(epoch, date_day_value_in_table) as date_part_test
from a_table_with_dates
