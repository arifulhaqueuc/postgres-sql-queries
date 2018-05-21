
--Write a SQL statement to find the highest purchase amount 
-- ordered by the each customer 
-- on a particular date 

-- final result should be 
-- ID, order date and highest purchase amount


SELECT 
	customer_id
	,ord_date
	,MAX(purch_amt) 


FROM orders 


GROUP BY 
	customer_id
	,ord_date;
