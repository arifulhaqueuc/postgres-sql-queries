-- Write a SQL statement find the number of customers who gets at least a gradation for his/her performance.

--appraoch 1
SELECT COUNT (ALL grade) 
FROM customer;

--approach 2
SELECT COUNT(DISTINCT cust_name)
FROM customer
where grade IS NULL
;
