
SELECT p.product_name,COUNT(p.product_name),SUM(p.product_price) 
FROM products p 
INNER JOIN orders o
ON p.order_id = o.order_id
GROUP BY (p.product_name)
ORDER BY(p.order_id) ASC;