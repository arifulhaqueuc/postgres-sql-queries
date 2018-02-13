

-- The following script creates and populates the sample WINSALES table.

create table winsales(
salesid int,
dateid date,
sellerid int,
buyerid char(10),
qty int,
qty_shipped int);

insert into winsales values
(30001, '8/2/2003', 3, 'b', 10, 10),
(10001, '12/24/2003', 1, 'c', 10, 10),
(10005, '12/24/2003', 1, 'a', 30, null),	
(40001, '1/9/2004', 4, 'a', 40, null),	
(10006, '1/18/2004', 1, 'c', 10, null),	
(20001, '2/12/2004', 2, 'b', 20, 20),
(40005, '2/12/2004', 4, 'a', 10, 10),
(20002, '2/16/2004', 2, 'c', 20, 20),
(30003, '4/18/2004', 3, 'b', 15, null),
(30004, '4/18/2004', 3, 'b', 20, null),	
(30007, '9/7/2004', 3, 'c', 30, null);	




-- Ranking with ORDER BY
-- Order the table by the quantity sold (default ascending), and assign a rank to each row. The results are sorted after the window function results are applied:

select salesid, qty,
rank() over (order by qty) as rnk
from winsales
order by 2,1;




-- Compute a rolling average of quantities sold by date; order the results by date ID and sales ID:

select salesid, dateid, sellerid, qty,
avg(qty) over
(order by dateid, salesid rows unbounded preceding) as avg
from winsales
order by 2,1;


-- Cumulative Sums (Running Totals)
-- Create a cumulative (rolling) sum of sales quantities ordered by date and sales ID:

select salesid, dateid, sellerid, qty,
sum(qty) over (order by dateid, salesid rows unbounded preceding) as sum
from winsales
order by 2,1;




-- Create a cumulative (rolling) sum of sales quantities by date, partition the results by seller ID, and order the results by date and sales ID within the partition:

select salesid, dateid, sellerid, qty,
sum(qty) over (partition by sellerid
order by dateid, salesid rows unbounded preceding) as sum
from winsales
order by 2,1;



-- Number all of the rows in the result set, ordered by the SELLERID and SALESID columns:

select salesid, sellerid, qty,
sum(1) over (order by sellerid, salesid rows unbounded preceding) as rownum
from winsales
order by 2,1;



-- Number all rows in the result set, partition the results by SELLERID, and order the results by SELLERID and SALESID within the partition:

select salesid, sellerid, qty,
sum(1) over (partition by sellerid
order by sellerid, salesid rows unbounded preceding) as rownum
from winsales
order by 2,1;



-- Ranking with PARTITION BY and ORDER BY
-- In this example, the ordering is reversed for the window function (order by qty desc). Now the highest rank value applies to the highest QTY value.

select salesid, qty,
rank() over (order by qty desc) as rank
from winsales
order by 2,1;



-- Partition the table by SELLERID and order each partition by the quantity (in descending order) and assign a rank to each row. The results are sorted after the window function results are applied.

select salesid, sellerid, qty, rank() over
(partition by sellerid
order by qty desc) as rank
from winsales
order by 2,3,1;
