To perform a deep copy using the original table DDL 

1. (Optional) Recreate the table DDL by running a script called v_generate_tbl_ddl. 
2. Create a copy of the table using the original CREATE TABLE DDL. 
3. Use an INSERT INTO … SELECT statement to populate the copy with data from the original table. 
4. Drop the original table. 5. Use an ALTER TABLE statement to rename the copy to the original table name.


The following example performs a deep copy on the SALES table using a duplicate of SALES named SALESCOPY.

create table salescopy ( … ); 

insert into salescopy (select * from sales); 

drop table sales; 

alter table salescopy rename to sales;

