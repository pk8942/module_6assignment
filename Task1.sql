SELECT COUNT(o.order_id) AS TotalNumberOfOrder,c.name,c.email,c.location 
FROM customers c 
INNER JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY (c.customer_id)
ORDER BY TotalNumberOfOrder DESC;