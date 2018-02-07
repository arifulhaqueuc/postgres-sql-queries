To perform a deep copy by creating a temporary table and truncating the original table

1. Use CREATE TABLE AS to create a temporary table with the rows from the original table. 

2. Truncate the current table. 

3. Use an INSERT INTO … SELECT statement to copy the rows from the temporary table to the original table. 

4. Drop the temporary table.

The following example performs a deep copy on the SALES table by creating a temporary table and truncating the original table:

create temp table salestemp as select * 
from sales
; 

truncate sales
; 

insert into sales (select * from salestemp)
; 

drop table salestemp
;
