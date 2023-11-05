SELECT c.category_name,sum(o.quantity*o.unit_price) as totalreveneue
FROM categories c INNER JOIN products p 
ON c.product_id = p.product_id
INNER JOIN orderitems o 
ON p.product_id = o.product_id
GROUP BY (c.category_name)
ORDER BY totalreveneue DESC;