-- show running queries

--option 1
-- show all queries
select query, pid, elapsed, substring 
from svl_qlog
order by starttime desc
limit 10
;



--option2 
-- filter by userID
select query, pid, elapsed, substring 
from svl_qlog
where userid = xxx
order by starttime desc
;
