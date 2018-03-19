

-- The following is a SQL MINUS operator example that has one field with the same data type:

SELECT supplier_id
FROM suppliers
MINUS
SELECT supplier_id
FROM orders;
