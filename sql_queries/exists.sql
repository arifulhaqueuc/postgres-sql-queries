

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

from order_details

where exists (
	select 1 
	from sales
	where order_details.dateid = sales.dateid
)
order by dateid
;

