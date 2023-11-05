SELECT c.name,SUM(o.totalamount) AS totalpurchaseamount
FROM customers c INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY (c.name)
ORDER BY totalpurchaseamount DESC;