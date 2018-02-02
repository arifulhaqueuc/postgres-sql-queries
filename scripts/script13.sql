-- show running queries

select query, pid, elapsed, substring from svl_qlog
--where userid = 100
order by starttime desc
limit 5
;


