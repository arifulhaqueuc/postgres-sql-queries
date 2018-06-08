
-- product table

drop table if exists product
;

create temp table product(
  pname varchar(10),
  pid smallint,
  unitprice smallint,
    quant smallint



    )
;

insert into product
values
('pen',120,12,1200),
('pencil',928,10,12)

;


-- find total price for each product
select
 pname,
 pid,
 unitprice,
 quant,
 (unitprice*quant) as total

from product
ORDER BY total DESC


;



-- find how many products are there
select count(*)
from product
;


