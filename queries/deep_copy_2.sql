

To perform a deep copy using CREATE TABLE LIKE
1. Create a new table using CREATE TABLE LIKE. 
2. Use an INSERT INTO … SELECT statement to copy the rows from the current table to the new table. 
3. Drop the current table. 
4. Use an ALTER TABLE statement to rename the new table to the original table name.
The following example performs a deep copy on the SALES table using CREATE TABLE LIKE.

create table likesales (like sales); 

insert into likesales (select * from sales);

drop table sales; 

alter table likesales rename to sales;
