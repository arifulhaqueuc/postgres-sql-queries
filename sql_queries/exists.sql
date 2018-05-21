

drop table if exists order_details
;


create temp table order_details
(
	order_date date,
	dateid int(10)
)
;



select 
	dateid 

from date

where exists (
	select 1 
	from sales
	where date.dateid = sales.dateid
)
order by dateid;

