-- general syntax

DATE_PART ( datepart, {date|timestamp} )


select salesid, extract(week from saletime) as weeknum
from sales where pricepaid > 9999 order by 2;




create table seconds(micro timestamp);

insert into seconds values('2009-09-21 11:10:03.189717');

select extract(sec from micro) from seconds;
date_part
-----------
3
(1 row)

select date_part(sec, micro) from seconds;
pgdate_part





select extract (century from timestamp '2000-12-16 12:21:13');
date_part
-----------
20
(1 row)

select extract (century from timestamp '2001-12-16 12:21:13');
date_part
-----------
21


